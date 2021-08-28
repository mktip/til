# Await Streams

Sometimes one would like to await a stream. Rather than using the listener and supplying a closure to run on "finish",
one can use the promise API provided by the pipeline utility from Node's standard library as follows:

```javascript
import { pipeline }  from 'stream/promises';
import fs from 'fs'

async function writeToFile() {
  const source = fs.createReadStream("test.txt")
  const target = fs.createWriteStream("tost.txt")

  await pipeline(source, target)
}

writeToFile()
```

If your node version is (10 <= version < 15):
  then use the following workaround to achieve a similar behaviour

```javascript
import stream from 'stream'
import util from 'util'
import fs from 'fs'

const pipeline = util.promisify(stream.pipeline)

async function writeToFile() {
  const source = fs.createReadStream("test.txt")
  const target = fs.createWriteStream("tost.txt")

  await pipeline(source, target)
}

writeToFile()
```
