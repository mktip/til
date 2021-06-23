# When to Run

Sometimes, one would like to specify when a task should be run. It is easy to do
so via the `when:` field as such:

```yaml
- name: Pass Go and Collect $200
  shell:
    cmd: cd ~/go/ && cat collect
  when: (luck > 0.9)
```
