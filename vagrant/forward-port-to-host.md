# Forward Port to Host Machine

Forwarding ports is easy in vagrant and can be done as follows:

```ruby
Vagrant.configure("2") do |config|
  ...
  config.vm.network "forwarded_port", guest: 389, host: 3899
  ...
end
```

However, if issues arise make sure to check if the guest's sshd daemon allows port forwarding.
