# Base62

Swift base62 library.


## Usage

Simply import the library and you're good to go.

```swift
import Base62

encode(integer: 123) // "1z"
decode(string: "funky") // 619367412
```

If you prefer, you can use `Base62.encode` instead of just `encode`.

It’s worth noting that you can’t decode an string with a value greater than `Int.max`.


## Thanks

Thanks to the [base62](https://github.com/jtzemp/base62) for a reference implementation.
