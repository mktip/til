# Generate /etc/shadow compatible password hash

Turns out there are many ways to do so, the one I felt was the simplest is to use
openssl as follows:

```bash session
$ #                                                                  -6: sha512
$ echo "great.. the secret is now in shell history" | openssl passwd -6         -salt "injury" -stdin
 $6$injury$BYh40NRvigFz/xdwZDrTCh9huXXd9bK7bz.cTwAsZx4yt/weIl1YgRx/zzOdk.mL8.T3ssZ/tP8tPG2iapCVM
```

There are other interesting ways where it comes [from](https://unix.stackexchange.com/questions/81240/manually-generate-password-for-etc-shadow)
