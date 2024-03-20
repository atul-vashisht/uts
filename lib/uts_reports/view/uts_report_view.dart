import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
//import 'package:uts_repository/uts_repository.dart';

import '../cubit/uts_reports_cubit.dart';
import '../models/summary_enum.dart';
import '../models/uts_reports_state.dart';

class UTSReportView extends StatefulWidget {
  const UTSReportView({super.key, required this.summaryType});
  final SummaryType summaryType;
  @override
  State<UTSReportView> createState() => _UTSReportView();
}

class _UTSReportView extends State<UTSReportView> {
  @override
  void initState() {
    super.initState();
    // print('hello from initState');
  }

  // List<Map> filterDataAsPerColumn(List<String> selectedColumns){
  //   return
  //
  // }
  final columns = <String>[];
  // final columns = [
  //   'OPERATORCODE',
  //   'TICKET_TYPE',
  //   'PSGN_BOOKED',
  //   'PSGN_CANCELLED',
  //   'BOOKED_TXN',
  //   'CANCELLED_TXN',
  //   'CREDITAMT',
  //   'DEBITAMT',
  //   'NET_TKT_AMT',
  //   'SMCRCHGAMT'
  // ];
  final selectedColumns = <String>[];

  dynamic summary;
  final ows = <Map<String, dynamic>>[
    {
      "OPERATORCODE": "ARA01K",
      "TICKET_TYPE": "J",
      "PSGN_BOOKED": 76,
      "PSGN_CANCELLED": 0,
      "BOOKED_TXN": 67,
      "CANCELLED_TXN": 0,
      "CREDITAMT": "0.00",
      "DEBITAMT": "3870.00",
      "NET_TKT_AMT": "3870.00",
      "SMCRCHGAMT": "0.00"
    },
    {
      "OPERATORCODE": "ARA01K",
      "TICKET_TYPE": "P",
      "PSGN_BOOKED": 1,
      "PSGN_CANCELLED": 0,
      "BOOKED_TXN": 1,
      "CANCELLED_TXN": 0,
      "CREDITAMT": "0.00",
      "DEBITAMT": "10.00",
      "NET_TKT_AMT": "10.00",
      "SMCRCHGAMT": "0.00"
    },
    {
      "OPERATORCODE": "ARA03K",
      "TICKET_TYPE": "J",
      "PSGN_BOOKED": 26,
      "PSGN_CANCELLED": 0,
      "BOOKED_TXN": 21,
      "CANCELLED_TXN": 0,
      "CREDITAMT": "0.00",
      "DEBITAMT": "855.00",
      "NET_TKT_AMT": "855.00",
      "SMCRCHGAMT": "0.00"
    }
  ];

  final data = {
    "operator_wise_summary": [
      {
        "OPERATORCODE": "ARA01K",
        "TICKET_TYPE": "J",
        "PSGN_BOOKED": 76,
        "PSGN_CANCELLED": 0,
        "BOOKED_TXN": 67,
        "CANCELLED_TXN": 0,
        "CREDITAMT": "0.00",
        "DEBITAMT": "3870.00",
        "NET_TKT_AMT": "3870.00",
        "SMCRCHGAMT": "0.00"
      },
      {
        "OPERATORCODE": "ARA01K",
        "TICKET_TYPE": "P",
        "PSGN_BOOKED": 1,
        "PSGN_CANCELLED": 0,
        "BOOKED_TXN": 1,
        "CANCELLED_TXN": 0,
        "CREDITAMT": "0.00",
        "DEBITAMT": "10.00",
        "NET_TKT_AMT": "10.00",
        "SMCRCHGAMT": "0.00"
      },
      {
        "OPERATORCODE": "ARA03K",
        "TICKET_TYPE": "J",
        "PSGN_BOOKED": 26,
        "PSGN_CANCELLED": 0,
        "BOOKED_TXN": 21,
        "CANCELLED_TXN": 0,
        "CREDITAMT": "0.00",
        "DEBITAMT": "855.00",
        "NET_TKT_AMT": "855.00",
        "SMCRCHGAMT": "0.00"
      }
    ],
    "payment_mode_wise_summary": [
      {
        "PAYMENT_MODE": "FREECHARGE",
        "TICKET_TYPE": "J",
        "PSGN_BOOKED": 3,
        "PSGN_CANCELLED": 0,
        "BOOKED_TXN": 3,
        "CANCELLED_TXN": 0,
        "CREDITAMT": "0.00",
        "DEBITAMT": "355.00",
        "NET_TKT_AMT": "355.00",
        "SMCRCHGAMT": "0.00"
      },
      {
        "PAYMENT_MODE": "PAYTMQR",
        "TICKET_TYPE": "J",
        "PSGN_BOOKED": 99,
        "PSGN_CANCELLED": 0,
        "BOOKED_TXN": 85,
        "CANCELLED_TXN": 0,
        "CREDITAMT": "0.00",
        "DEBITAMT": "4370.00",
        "NET_TKT_AMT": "4370.00",
        "SMCRCHGAMT": "0.00"
      },
      {
        "PAYMENT_MODE": "PAYTMQR",
        "TICKET_TYPE": "P",
        "PSGN_BOOKED": 1,
        "PSGN_CANCELLED": 0,
        "BOOKED_TXN": 1,
        "CANCELLED_TXN": 0,
        "CREDITAMT": "0.00",
        "DEBITAMT": "10.00",
        "NET_TKT_AMT": "10.00",
        "SMCRCHGAMT": "0.00"
      }
    ],
    "terminal_type_wise_summary": [
      {
        "TERMINAL_TYPE": "TVMKIOSKS",
        "PSGN_BOOKED": 103,
        "PSGN_CANCELLED": 0,
        "BOOKED_TXN": 89,
        "CANCELLED_TXN": 0,
        "CREDITAMT": "0.00",
        "DEBITAMT": "4735.00",
        "NET_TKT_AMT": "4735.00",
        "SMCRCHGAMT": "0.00"
      }
    ],
    "total": [
      {
        "GRAND_TOTAL": "10000",
        "PSGN_BOOKED": 103,
        "PSGN_CANCELLED": 0,
        "BOOKED_TXN": 89,
        "CANCELLED_TXN": 0,
        "CREDITAMT": "0.00",
        "DEBITAMT": "4735.00",
        "NET_TKT_AMT": "4735.00",
        "SMCRCHGAMT": "0.00"
      }
    ]
  };

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<UtsReportsCubit>().fetchUTSReportSummary();
    print('hello from didChangeDependencies ');
  }

  @override
  void didUpdateWidget(oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('hello from didUpdateWidget ');
    // context.read<UtsReportsCubit>().fetchUTSReportSummary();
    // print('hello from didUpdateWidget ');
  }

  @override
  Widget build(BuildContext context) {
    // print('hello from build methood');
    return Scaffold(
        // appBar: AppBar(
        //   automaticallyImplyLeading: false,
        //   title: Text('UTS Report'),
        // ),

        body: BlocBuilder<UtsReportsCubit, UtsReportsState>(
      builder: (context, state) {
        if (widget.summaryType == SummaryType.total) {
          columns.clear();
          state.summary?.total?.first.toJson().keys.forEach((element) {
            columns.add(element.toString());
          });
          print("hello from bloc");
          //print(state.summary?.toJson()['total']);
          //summary=List<Map<String,dynamic>>.from(state.summary?.toJson());
          //print(state.summary?.toJson());
          //summary=state.summary?.toJson()['total'];
          //print(summary);
          //summary = state.summary?.total;
        } else if (widget.summaryType == SummaryType.operatorWise) {
          columns.clear();
          state.summary?.operatorWiseSummary?.first
              .toJson()
              .keys
              .forEach((element) {
            columns.add(element.toString());
          });
          //summary=List.from(state.summary?.toJson()['operator_wise_summary']);
          //summary=state.summary?.total;
        } else if (widget.summaryType == SummaryType.paymentModeWise) {
          columns.clear();
          state.summary?.paymentModeWiseSummary?.first
              .toJson()
              .keys
              .forEach((element) {
            columns.add(element.toString());
          });
          //summary=List.from(state.summary?.toJson()['payment_mode_wise_summary']);
        } else if (widget.summaryType == SummaryType.terminalTypeWise) {
          // columns.clear();
          state.summary?.terminalTypeWiseSummary?.first
              .toJson()
              .keys
              .forEach((element) {
            columns.add(element.toString());
          });

          //summary=List.from(state.summary?.toJson()['terminal_type_wise_summary']);
          // print('My Columns');
          // print(columns);
          //setState(() {});
        }
         //return Text("hello");
        return ((state.isLoading ?? false))
            ? const Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text(switch (widget.summaryType) {
                    var summaryType when summaryType == SummaryType.total =>
                      'Total',
                    var summaryType
                        when summaryType == SummaryType.operatorWise =>
                      'Operator Wise Summary',
                    var summaryType
                        when summaryType == SummaryType.paymentModeWise =>
                      'Payment Wise Summary',
                    var summaryType
                        when summaryType == SummaryType.terminalTypeWise =>
                      'Terminal Type Wise Summary',
                    _ => ''
                  }),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MultiSelectDropDown<int>(
                      onOptionSelected: (List<ValueItem> selectedOptions) {
                        //print(selectedOptions);

                        selectedColumns.clear();
                        for (final option in selectedOptions) {
                          selectedColumns.add(option.label);
                          //print(selectedColumns.contains(option.label));
                        }
                        setState(() {});
                      },
                      options: [
                        for (int i = 0; i < columns.length; i++) ...[
                          ValueItem(label: columns[i], value: i),
                        ]
                      ],
                      selectionType: SelectionType.multi,
                      chipConfig: const ChipConfig(wrapType: WrapType.wrap),
                      dropdownHeight: 300,
                      optionTextStyle: const TextStyle(fontSize: 16),
                      selectedOptionIcon: const Icon(Icons.check_circle),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columns: <DataColumn>[
                          if (selectedColumns.isNotEmpty) ...[
                            for (final column in selectedColumns) ...[
                              DataColumn(
                                label: Expanded(
                                  child: Text(
                                    column,
                                    style: const TextStyle(
                                        fontStyle: FontStyle.italic),
                                  ),
                                ),
                              )
                            ],
                          ] else ...[
                            for (final column in columns) ...[
                              DataColumn(
                                label: Expanded(
                                  child: Text(
                                    column,
                                    style: const TextStyle(
                                        fontStyle: FontStyle.italic),
                                  ),
                                ),
                              )
                            ],
                          ]
                        ],
                        rows: <DataRow>[
                          for (final row in (switch (widget.summaryType) {
                            var summaryType
                                when summaryType == SummaryType.total =>
                              state.summary?.total ?? [],
                            var summaryType
                                when summaryType == SummaryType.operatorWise =>
                              state.summary?.operatorWiseSummary ?? [],
                            var summaryType
                                when summaryType ==
                                    SummaryType.paymentModeWise =>
                              state.summary?.paymentModeWiseSummary ?? [],
                            var summaryType
                                when summaryType ==
                                    SummaryType.terminalTypeWise =>
                              state.summary?.terminalTypeWiseSummary ?? [],
                            _ => []
                          })) ...[
                            DataRow(
                              cells: <DataCell>[
                                if (selectedColumns.isNotEmpty) ...[
                                  for (final key in selectedColumns) ...[
                                    DataCell(
                                        Text(row.toJson()[key].toString())),
                                  ]
                                ] else ...[
                                  for (final key in row.toJson().keys) ...[
                                    DataCell(
                                        Text(row.toJson()[key].toString())),
                                  ]
                                ]
                              ],
                            ),
                          ]
                        ],
                      ),
                    ),
                  ),
                ],
              );
      },
    ));
  }
}
