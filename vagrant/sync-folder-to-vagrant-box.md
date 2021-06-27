# Sync Folder to Vagrant box

Vagrant provides many ways to exchange folders/files with the virtual machine.
Rsync is a simple one and is done as follow:

```ruby
#         proc_name     host folder  vm folder   method of communication
config.vm.synced_folder "."        , "/vagrant", type: "rsync"
```

If you needed to disable the synchronization temporarily you can append `,
disabled: true` to the `sync_folder` call:

```ruby
config.vm.synced_folder ".", "/vagrant", type: "rsync", disabled: true
```

More options can be found [here](https://www.vagrantup.com/docs/synced-folders/)
