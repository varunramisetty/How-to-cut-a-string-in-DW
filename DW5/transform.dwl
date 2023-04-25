//How to cut a string in DW

%dw 2.0
output application/json
---
//to cut a string in DW here im providing two ways
code:payload.code as Number as String
 // 1st one is im using code function and giving Number as String  then we will easily able to cut the string in DW

//payload mapObject ( ($$):($ splitBy '')[-4 to -1] joinBy '')
// 2nd one is im using mapObject in wich im using to splitBy with '' and joinBy to give max number of 4 only

// if we have multiple data we can use this code 
//payload mapObject (($$) : $ replace /^0+/ with "")