# Access Project Storage in cloud functions

There might be a more "correct" way of doing it but that's what I found for now:

```javascript
const admin = require("firebase-admin");

admin.initializeApp({ storageBucket: "<Bucket Name>.appspot.com" })

// Now one can access the bucket object inside of the project's storage
const bucket = admin.storage().bucket()
```
