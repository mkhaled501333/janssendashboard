// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:janssendashboard/CRM/crmProvider.dart';
import 'package:janssendashboard/CRM/models.dart';
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
              counter.value = _dataGridController.selectedRows.length;
              print(_dataGridController.selectedRows.length);
            },
            showCheckboxColumn: true,
            checkboxColumnSettings: const DataGridCheckboxColumnSettings(),
            selectionMode: SelectionMode.multiple,
            controller: _dataGridController,
            onQueryRowHeight: (details) {
              print(
                  "h ${details.rowHeight} i${details.rowIndex} ${details.getIntrinsicRowHeight(details.rowIndex)}");
              return details.rowIndex == 0
                  ? 30.0
                  : details.getIntrinsicRowHeight(details.rowIndex) == 65
                      ? 30
                      : details.getIntrinsicRowHeight(details.rowIndex) - 25;
            },
            frozenColumnsCount: 2,
            footerFrozenColumnsCount: 1,
            source: DataSource(data: myType.customers.values.toList()),
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
                  width: 70,
                  columnName: 'ticketnum',
                  label: ValueListenableBuilder<int>(
                    valueListenable: counter,
                    builder: (c, value, _) {
                      return Text(
                        ' ticket  Num ($value)',
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
                  width: 80,
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
                  width: 111,
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
                  width: 111,
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
  /// Creates the employee data source class with required details.
  DataSource({required List<CustomerModel> data}) {
    _employeeData = data
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<int>(columnName: 'ticketnum', value: e.customer_ID),
              DataGridCell<String>(columnName: 'date', value: e.adress),
              const DataGridCell<String>(columnName: 'statues', value: ""),
              const DataGridCell<String>(
                  columnName: 'client', value: "e.governomate"),
              const DataGridCell<String>(
                  columnName: 'governomate', value: "e.city"),
              DataGridCell<String>(columnName: 'city', value: e.adress),
              const DataGridCell<int>(columnName: 'brand', value: 5455),
              DataGridCell<String>(
                  columnName: 'complainreason', value: getstatues(e)),
              DataGridCell<List<String>>(
                  columnName: 'المعاينه', value: e.mobilenum),
              const DataGridCell<String>(
                  columnName: 'action', value: "e.payingWay"),
              const DataGridCell<double>(columnName: 'السحب', value: 010),
              const DataGridCell<String>(
                  columnName: 'التسليم', value: "e.cancelReason"),
              const DataGridCell<bool>(columnName: 'archived', value: false),
            ]))
        .toList();
  }

  String getstatues(CustomerModel e) {
    return "";
    // if (e.a == true) {
    //   return "deleverd";
    // } else if (e.canceled == true) {
    //   return "canceld";
    // } else {
    //   return "inProgress";
    // }
  }
//  String getlocation(OrderModel e){
//     if(e.deleverdLocation){
//       return "deleverd";
//     }else if(e.canceled==true){return "canceld";}else{return "inProgress";}
//   }

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
            "location" => Builder(builder: (context) {
                return e.value.toString() == "deleverd"
                    ? IconButton(
                        icon: const Icon(
                          Icons.location_on,
                          size: 15,
                        ),
                        onPressed: () {},
                      )
                    : const SizedBox();
              }),
            "calls" => Builder(builder: (context) {
                final f = e.value as List<String>;
                return Column(
                  children: f.map((e) => Text(e.toString())).toList(),
                );
              }),
            "statues" => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                child: switch (e.value.toString()) {
                  "deleverd" => const Column(
                      children: [],
                    ),
                  "canceld" => const SizedBox(),
                  "inProgress" => const SizedBox(),
                  _ => const Column(
                      children: [],
                    )
                },
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
