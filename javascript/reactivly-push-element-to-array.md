# Reactivly Push Element to Array

Sometimes when using a reactive frontend framework (`svelte`, `vuejs`), pushing
elements to arrays using the `.push` method does not trigger reactive change.
There are however another way of pushing elements that will force the reactive
change to take place. This way relies on creating a new array and assinging it to
the same variable as follows:

```javascript
let arr = ["Banana", "Orange", "Apple"];

// The new forced assignment below triggers many reactive based models
arr = [...arr, "Avocado"];
```
