# SingletonInSwift
This is an attempt to make an Interface-Builder-friendly Singleton in Swift as mentioned [here](http://stackoverflow.com/questions/37711521/use-singleton-in-interface-builder-with-swift).

It all works, but **somehow** the `vc1` variable in the test becomes `nil` after it's set (and the setter is not called again). Baffling!

Console Log After Pressing:

1. Print Status
2. VC2
3. Print Status

```
Hello, I am <Universe: 0x7fbcb2c35050> and vc1 is Optional(<SingletonInSwift.ViewController: 0x7fbcb2c071c0>) and vc2 is nil
Hello, I am <Universe: 0x7fbcb2c35050> and vc1 is nil and vc2 is Optional(<SingletonInSwift.SecondViewController: 0x7fbcb4a166c0>)
```

**Any help or advice would be appreciated.**

