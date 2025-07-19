# Basic Pref iOS

Store key-value pairs across the app.

This library based on Swift `UserDefaults` class.

---

### Add Dependency

Go to `File > Add Package Dependencies...`. Paste this url to `Search Bar` and click `Copy Dependency`. That's it.

```
https://github.com/fovelas/basic-pref-ios
```

---

### Supported Types

- `Boolean`
- `Float`
- `Int`
- `String`

---

### Usage

Declare key-value pair:

```swift
let username: String = "John Doe"
BasicPref.getInstance().setString("name", username)

// other types
BasicPref.getInstance().setBoolean("is_login", true)
BasicPref.getInstance().setFloat("price", 32.77)
BasicPref.getInstance().setInt("click_count", 99)
```

Access key-value pair:

```swift
BasicPref.getInstance().getString("name", "default value")
// if key declared before function returns 'John Doe' else function returns 'default value'.

// other types
BasicPref.getInstance().getBoolean("is_login", false) // => true
BasicPref.getInstance().getFloat("price", 0) // => 32.77
BasicPref.getInstance().getInt("click_count", 0) // => 99
```

Remove key-value pair:

```swift
BasicPref.getInstance().remove("name")
BasicPref.getInstance().remove("is_login")
BasicPref.getInstance().remove("price")
BasicPref.getInstance().remove("click_count")
```

Clear all key-value pairs:

```swift
BasicPref.getInstance().clear()
```
