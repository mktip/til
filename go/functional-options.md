# Functional Options

A way to make it simpler to add new parameters to structures without having to
edit the constructor every time.

```go
type StructOptions func(*Struct)
```

The above type is the type which will be passed to the constructor as a
variadic parameter. Then as shown below, the options are applied to the struct
one by one, by passing the struct to the option funcs.

```go
func NewStruct(options ...StructOptions) {
    ...

    strct := &Struct{}

    ...

    // Apply the options on the struct
    for _, opts := range options {
        opts(strct)
    }

    ...
}
```
