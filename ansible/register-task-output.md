# Register Task Output

When running Ansible tasks, sometimes it is needed to store the output as it can
determine what to do in other proceeding tasks. One can do so by storing the
output of the desired task using the register option.


Here we store the lines outputted by `cat`, representing URLs to ping, into a
variable called `urllist`.

```yaml
- name: "Retrieve URLS to visit"
  command:
    cmd: cat /etc/url-list
  register: urllist
  # The below option is helpful to stop showing a changed process when running ansible
  changed_when: false
```

In the case of the `command` module, it returns an object with many fields.  From
the urllist variable, the field we are interested in is called `stdout_lines`. It
is simply a list of the lines outputted by the command ran previously. We can use
it now in further tasks as such: (Example where we ping each of the URLs 4 times)

```yaml
- name: Ping URLS
  command:
    cmd: ping -c 4 "{{ item }}"
  with_items: "{{ urllist.stdout_lines }}"
```
