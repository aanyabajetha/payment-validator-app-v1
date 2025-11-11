%dw 2.0
output application/json
---
[
  { "paymentId": "P001", "amount": 250.5, "cardNumber": "4111111111111111", "currency": "USD" },
  { "paymentId": "P002", "amount": -40, "cardNumber": "123456", "currency": "USD" },
  { "paymentId": "P003", "amount": 100, "cardNumber": "5555555555554444", "currency": "XYZ" }
]