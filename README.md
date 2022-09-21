# Currency Converter App

Simple app to display popular people on TMDB.
## Architecture Layers
* Data
* Domain
* Presentation
## Libraries and tools used
* Routing with [AutoRoute](https://pub.dev/packages/auto_route)
* Functional Programming with [Dartz](https://pub.dev/packages/dartz)
* Handling http requests with [Dio](https://pub.dev/packages/dio)
* State Management with [Bloc](https://pub.dev/packages/bloc)
* Dependency Injection with [GetIt](https://pub.dev/packages/get_it) and [Injectable](https://pub.dev/packages/injectable)
* Generating Data/Union classes with [Freezed](https://pub.dev/packages/freezed)
* Caching Images with [cached_network_image]
## Requirements
* JDK 1.8
* Android SDK
* Latest Android SDK Tools and build tools
* TMDB api key
## Used APIs
* [TMDB api](https://developers.themoviedb.org/)
## App Features
* Get popular people with pagination enabled and infinite scrolling
* Get Basic info of person with images
* View full size image
* download image