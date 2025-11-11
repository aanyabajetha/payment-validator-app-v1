%dw 2.0
output application/json
var supportedCurrencies = ["USD", "EUR", "INR"]
fun isValidCard(card) = (sizeOf(card) == 16) and (card matches /[0-9]+/)
fun isValidAmount(amount) = amount > 0
fun isValidCurrency(curr) = supportedCurrencies contains (curr default "N/A")
---
{
    paymentId: payload.paymentId,
    amount: payload.amount,
    cardNumber: payload.cardNumber,
    currency: payload.currency,
    isValidCard: isValidCard(payload.cardNumber),
    isValidAmount: isValidAmount(payload.amount),
    isValidCurrency: isValidCurrency(payload.currency),
    overallValid: isValidCard(payload.cardNumber) 
                  and isValidAmount(payload.amount) 
                  and isValidCurrency(payload.currency)
}