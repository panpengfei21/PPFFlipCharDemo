# PPFFlipChar
 字符翻牌效果

## 效果
![翻牌动画](https://upload-images.jianshu.io/upload_images/2261768-ffa63f66f0000dde.gif?imageMogr2/auto-orient/strip)


## 引用

```
pod 'PPFFlipChar', '~> 0.0.1'
```

## 怎么用
```
let v = PPFFlipCharView(frame: CGRect(x: 160, y: 50, width: 100, height: 150), char: Character("A"))
//设置上部字符字体
v.topCharFont = UIFont.systemFont(ofSize: 130,weight: .bold)
// 设置下部字符字体
v.bottomCharFont = UIFont.systemFont(ofSize: 130,weight: .bold)

//设置上部字符颜色
v.topCharColor = UIColor.black
//设置下部字符颜色
v.bottomCharColor = UIColor.brown

//设置上部字符背景色
v.topCharBackgroundColor = UIColor.brown
// 设置下部字符背景色
v.bottomCharBackground = UIColor.white

// 上下字符中间的空隙的距离
v.interspace = 10
            
view.addSubview(v)

//字符的变换
v.change(fromChar: Character("A"), toChar: Character("B"), animation: true)
v.convertToChar(Character("A"), animation: false)
```
