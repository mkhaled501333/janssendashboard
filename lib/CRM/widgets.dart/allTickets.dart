// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:janssendashboard/CRM/crmProvider.dart';
import 'package:janssendashboard/CRM/models/actions.dart';
import 'package:janssendashboard/CRM/models/customer.dart';
import 'package:janssendashboard/foam/utiles/extentions.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

final ValueNotifier<int> counter = ValueNotifier<int>(0);
final DataGridController _dataGridController = DataGridController();

String x = "0";

class DataGridForOrder extends StatelessWidget {
  const DataGridForOrder({super.key});
  final textstyle = const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 13.7,
      color: Color.fromARGB(255, 112, 110, 110));
  @override
  Widget build(BuildContext context) {
    return Consumer<CrmProvider>(
      builder: (context, myType, child) {
        return SfDataGridTheme(
          data: const SfDataGridThemeData(
            gridLineStrokeWidth: 0.6,
            // sortIcon: SizedBox(),
            // filterIcon: SizedBox()
          ),
          child: SfDataGrid(
            onSelectionChanged: (v, g) {
              counter.value = v.length;
              // counter.value = _dataGridController.selectedRows.length;
              // print(_dataGridController.selectedRows.length);
            },
            showCheckboxColumn: true,
            checkboxColumnSettings: const DataGridCheckboxColumnSettings(),
            selectionMode: SelectionMode.multiple,
            onQueryRowHeight: (details) {
              // print(
              //     "details.rowHeight ${details.rowHeight} details.rowIndex${details.rowIndex} ${details.getIntrinsicRowHeight(details.rowIndex)}");
              return details.rowIndex == 0
                  ? 30.0
                  : details.getIntrinsicRowHeight(details.rowIndex) == 65
                      ? 32
                      : details.getIntrinsicRowHeight(details.rowIndex) - 25;
            },
            frozenColumnsCount: 2,
            footerFrozenColumnsCount: 1,
            source: DataSource(customers: myType.customers.values.toList()),
            columnWidthMode: ColumnWidthMode.fill,
            allowSorting: true,
            allowMultiColumnSorting: true,
            allowFiltering: true,
            showSortNumbers: true,
            allowEditing: true,
            headerGridLinesVisibility: GridLinesVisibility.both,
            isScrollbarAlwaysShown: true,
            showHorizontalScrollbar: true,
            gridLinesVisibility: GridLinesVisibility.horizontal,
            highlightRowOnHover: true,
            columns: <GridColumn>[
              GridColumn(
                  allowFiltering: false,
                  width: 77,
                  columnName: 'ticketnum',
                  label: ValueListenableBuilder<int>(
                    valueListenable: counter,
                    builder: (c, value, _) {
                      return Text(
                        'ticket Num($value)',
                        style: textstyle,
                      );
                    },
                  )),
              GridColumn(
                  allowFiltering: false,
                  allowEditing: true,
                  width: 80,
                  columnName: 'date',
                  label: Center(
                    child: Text(
                      ' Date created',
                      style: textstyle,
                    ),
                  )),
              GridColumn(
                  allowFiltering: false,
                  allowEditing: true,
                  width: 118,
                  columnName: 'statues',
                  label: Center(
                    child: Text(
                      'Statues',
                      style: textstyle,
                    ),
                  )),
              GridColumn(
                  allowFiltering: true,
                  allowEditing: true,
                  width: 144,
                  columnName: 'client',
                  label: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 219, 219, 219),
                              borderRadius: BorderRadius.circular(4)),
                          child: const Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Text("11"),
                          ),
                        ),
                        const Gap(3),
                        Text(
                          'Client',
                          style: textstyle,
                        ),
                      ],
                    ),
                  )),
              GridColumn(
                  allowFiltering: true,
                  width: 112,
                  columnName: 'governomate',
                  label: Center(
                    child: Text(
                      'Governomate',
                      style: textstyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
              GridColumn(
                  allowFiltering: true,
                  width: 111,
                  columnName: 'city',
                  label: Center(
                    child: Text(
                      'City',
                      overflow: TextOverflow.ellipsis,
                      style: textstyle,
                    ),
                  )),
              GridColumn(
                  allowFiltering: false,
                  width: 111,
                  columnName: 'brand',
                  label: Center(
                    child: Text(
                      'brand',
                      style: textstyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
              GridColumn(
                  allowFiltering: true,
                  width: 190,
                  columnName: 'complainreason',
                  label: Center(
                    child: Text(
                      'Complain Reason',
                      style: textstyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
              GridColumn(
                  allowFiltering: true,
                  width: 130,
                  columnName: 'المعاينه',
                  label: Center(
                    child: Text(
                      'المعاينه',
                      style: textstyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
              GridColumn(
                  allowFiltering: false,
                  width: 111,
                  columnName: 'action',
                  label: Center(
                    child: Text(
                      'action',
                      style: textstyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
              GridColumn(
                  allowFiltering: false,
                  width: 120,
                  columnName: 'السحب',
                  label: Center(
                    child: Text(
                      'السحب',
                      style: textstyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
              GridColumn(
                  allowFiltering: false,
                  width: 120,
                  columnName: 'التسليم',
                  label: Center(
                    child: Text(
                      'التسليم',
                      style: textstyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
              GridColumn(
                  allowFiltering: false,
                  allowSorting: false,
                  width: 66,
                  columnName: '',
                  label: const Icon(Icons.settings)),
            ],
          ),
        );
      },
    );
  }
}

class DataSource extends DataGridSource {
  DataSource({required List<CustomerModel> customers}) {
    final tickets = customers.expand((e) => e.tickets).toList();
    _employeeData = tickets.map<DataGridRow>((e) {
      final req = e.requests;
      return DataGridRow(cells: [
        DataGridCell<int>(columnName: 'ticketnum', value: e.ticket_Num),
        DataGridCell<String>(
            columnName: 'date',
            value: e.actions
                .get_Date_of_action(TicketAction.creat_NewTicket.getTitle)
                .formatt_yMd()),
        DataGridCell<bool>(columnName: 'statues', value: e.Ticketresolved),
        DataGridCell<String>(
            columnName: 'client',
            value: customers
                .firstWhere((f) => f.customer_ID == e.customer_ID)
                .cusotmerName),
        DataGridCell<String>(
            columnName: 'governomate',
            value: customers
                .firstWhere((f) => f.customer_ID == e.customer_ID)
                .covernorate),
        DataGridCell<String>(
            columnName: 'city',
            value: customers
                .firstWhere((f) => f.customer_ID == e.customer_ID)
                .area),
        DataGridCell<List<String>>(
            columnName: 'brand',
            value: req.map((t) => t.pfodcut.ProdcutType).toList()),
        DataGridCell<List<String>>(
            columnName: 'complainreason',
            value: req.map((g) => g.reqreqson).toList()),
        DataGridCell<List<String>>(
            columnName: 'المعاينه',
            value: req
                .map((h) =>
                    h.visited == true ? "تمت المعاينه" : "لم يتم المعاينه")
                .toList()),
        DataGridCell<List<String>>(
            columnName: 'action',
            value: req.map((b) {
              if (b.replaceToSameModel == true) {
                return "استبدال لنفس النوع";
              } else if (b.replaceTosnotherModel == true) {
                return "استبدال لنوع اخر";
              } else {
                return "صيانه";
              }
            }).toList()),
        DataGridCell<List<String>>(
            columnName: 'السحب',
            value: req
                .map((h) => h.pulled1 || h.pulled2 || h.pulled3 == true
                    ? "تمت السحب"
                    : "لم يتم السحب")
                .toList()),
        DataGridCell<List<String>>(
            columnName: 'التسليم',
            value: req
                .map((h) => h.deleverd1 || h.deleverd2 || h.deleverd3 == true
                    ? "تمت التسليم"
                    : "لم يتم التسليم")
                .toList()),
        const DataGridCell<bool>(columnName: 'archived', value: false),
      ]);
    }).toList();
  }

  List<DataGridRow> _employeeData = [];

  @override
  List<DataGridRow> get rows => _employeeData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        color: const Color.fromARGB(255, 244, 244, 244),
        cells: row.getCells().map<Widget>((e) {
          return switch (e.columnName) {
            "ticketnum" => Row(
                children: [
                  Builder(builder: (context) {
                    return TextButton(
                        onPressed: () {
                          // context.read<SharedProvider>().x =
                          //     row.getCells().first.value.toString().toInt();
                          // Scaffold.of(context).openEndDrawer();

                          // print(context.read<OrderProvider>().v);
                        },
                        child: Text(e.value.toString()));
                  }),
                ],
              ),
            "brand" => Builder(builder: (context) {
                final v = e.value as List<String>;
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: v.map((t) => Text(t)).toList(),
                );
              }),
            "complainreason" => Builder(builder: (context) {
                final v = e.value as List<String>;
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: v.map((t) => Text(t)).toList(),
                );
              }),
            "السحب" => Builder(builder: (context) {
                final v = e.value as List<String>;
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: v.map((t) => Text(t)).toList(),
                );
              }),
            "المعاينه" => Builder(builder: (context) {
                final v = e.value as List<String>;
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: v.map((t) => Text(t)).toList(),
                );
              }),
            "action" => Builder(builder: (context) {
                final v = e.value as List<String>;
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: v.map((t) => Text(t)).toList(),
                );
              }),
            "التسليم" => Builder(builder: (context) {
                final v = e.value as List<String>;
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: v.map((t) => Text(t)).toList(),
                );
              }),
            "statues" => SizedBox(
                height: 20,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                  child: switch (e.value as bool) {
                    true => const Resolved(),
                    _ => const Opend()
                  },
                ),
              ),
            _ => Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(0.0),
                child: Text(
                  style: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.w500),
                  e.value.toString(),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
          };
        }).toList());
  }
}

class Resolved extends StatelessWidget {
  const Resolved({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 188, 218, 172),
          borderRadius: BorderRadius.circular(9)),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 2),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Gap(8),
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 115, 126, 102),
              radius: 4,
            ),
            Gap(4),
            Text(
              "Resolved",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
            Gap(8),
          ],
        ),
      ),
    );
  }
}

class Opend extends StatelessWidget {
  const Opend({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 241, 174, 140),
          borderRadius: BorderRadius.circular(9)),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 2),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Gap(8),
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 133, 106, 87),
              radius: 4,
            ),
            Gap(4),
            Text(
              "Opend",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            Gap(8),
          ],
        ),
      ),
    );
  }
}
