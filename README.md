# DrawerDemo
Demo that causes dynamic-stack-buffer-overflow

The issue is caused by the DrawerView protocol:

```
protocol DrawerView where Self: UIViewController {
    func configureDrawer(containerView: UIView, overlaidView: UIView)
}
```

If you remove the where condition, it will not crash.

```
protocol DrawerView {
    func configureDrawer(containerView: UIView, overlaidView: UIView)
}
```
