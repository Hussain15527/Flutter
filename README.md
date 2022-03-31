## Routing in Flutter

```dart
void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => Location(),
    },
  ));
}
```
This is how we define the routing in flutter, we have also created initial route, which will be out first page/tab when we launch the program, and the we have defined several routing links.

Here `(context)` referse to the current page/tab we are at, so `(context)=>Home()` means that wherever we at, we have to go to `Home()` from there.

## Linking in flutter
This is the dummy home page of our app. We have created a button that links this page to `Location()` page.
[![home](https://i.ibb.co/3RfNqf5/word-time-home-page.png "home")](https://i.ibb.co/3RfNqf5/word-time-home-page.png "home")

So by clicking we can go to `Location()` page,

[![location](https://i.ibb.co/HCmBhmx/location-page.png "location")](https://i.ibb.co/HCmBhmx/location-page.png "location")

CODE:
(Inside the Home() page):
```dart
TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: Icon(Icons.edit_location),
              label: Text("edit location")
              
          )
```























