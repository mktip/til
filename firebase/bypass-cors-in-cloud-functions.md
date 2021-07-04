# Bypass CORS in cloud functions

To bypass CORS errors (but one needs to understand it first rather than falling
into the tar pit of immediacy like me) in a cloud function one can do the following:

```javascript
const cors = require("cors")({ origin: true });

exports.whyAvoidCors = functions.https.onRequest((request, response) => {
  cors(request, response, () => {
    // Function code goes here
    ...
  });
});
```
