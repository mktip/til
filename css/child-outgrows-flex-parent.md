# Child outgrows flex parent

For some reasone, flex children can outgrow their parent's boundries sometimes. In order to force the child to act in an expected manner we
need to set minimum height property on that child as such:

```css
parent child {
  min-height: 0px;
}
```
