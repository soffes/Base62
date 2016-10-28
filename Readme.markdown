# Base62

[![Version](https://img.shields.io/github/release/soffes/Base62.svg)](https://github.com/soffes/Base62/releases)
![Swift Version](https://img.shields.io/badge/swift-3.0.1-orange.svg)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)


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
