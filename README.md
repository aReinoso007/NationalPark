# NationalPark
A small project checking out Swift UI features


## Computed properties
In the file LandmarkList, we use a computed property to show a filtered list, this list depends upon 2 properties:
1. `showFavoritesOnly`.
This property is defined in the landmark list view and we use the anotation `@State` to hold information that's specific to a view and its subviews, so we must always create state as `private`.
2. `isFavorite`.
This property is defined in the Landmark model to show a yellow star next to the item.

so once we got these 2 covered we can defined the computed property    `filteredLandmarks`. So to define that is an array of a given type we use   `[Landmark]` to tell this variable is an array of Landmark objets. 

Computed properties in Swift allow the developers to dynamically compute and return a value based on the current state of the object. 

In this code we use the `filter` method on the `landmarks` array to itererate through each element in the array, and then we ask if the object `landmark` is `in` the given closure's logic to determine whether the element should be included in the filtered result.
```Swift
    var filteredLandmarks: [Landmark] {
        landmarks.filter{ landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
```