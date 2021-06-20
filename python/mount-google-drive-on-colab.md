# Mount Google Drive on Colab

To simply mount your google drive into a google colab session, use the builtin
`google.colab` library as follows:

```python
from google.colab import drive

drive.mount("/mnt")
```

It will provide a link which generates a token for your desired google account,
which then you can paste back in the prompt created.

If you wanted to access a shared resource on google colab, it can be hard to
locate therefore its better to `"Add shortcut to Drive"` so that it can be found
easily once the drive is mounted.
