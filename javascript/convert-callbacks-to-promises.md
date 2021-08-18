# Convert callbacks to promises

Sometimes when using libraries that are intensively relying on callbacks one might fall into callback-hell pretty
quickly. Of course one can create a promise manually like this:

```javascript
new Promise((resolve, _reject) => {
  setTimeout(() => {
    resolve('see I promised you and now I deliver');
  }, 1000);
});
```

However, it can get troublesome the more we do it. Thankfully the `util` library provides us with a very useful function for such cases:

```javascript
import redis from 'redis';
import util  from 'util';

const client = redis.createClient();
const lpush  = util.promisify(client.lpush).bind(client);
```

> Note: Remember to **bind** to the original object when promisifying an object's method.
