

const summary={
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


class UtsApiClient {
  Future<Map<String, dynamic>> getUTSSummary() =>
      // Imagine that this function is
  // more complex and slow.
  Future.delayed(
    const Duration(seconds: 2),
        () =>summary,
  );

}
