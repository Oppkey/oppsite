# oppsite

[Demo Site](https://oppkey.github.io/oppsite/)

## Loading Page

The loading page is constructed on `web/index.html`.

```html
<body  >
  <h1 style="color:black; font-family: Arial, Helvetica, sans-serif;">
    loading site
  </h1>
  <img src="assets/images/oppkey_logo.jpg">
```

## Building Web Site

```text
flutter build web --base-href=/oppsite/
```

In `./build/web/`, copy all files in `./docs/`

Push up to GitHub.

At the moment, there is a problem with the `assets/` folder.  You must
manually move the assets up one level to avoid `assets/assets`.



## References

* https://medium.com/flutter-community/flutter-web-getting-started-with-responsive-design-231511ef15d3