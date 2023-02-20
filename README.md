# ImagePathBugApp

This projects demonstrates an issue I am observing where when I use Live Navigation to navigate to a LiveView whose page content uses an image with a local url reference, the image does not load.

The image will load if I load the page directly, but if I navigate to the live view page from the home page (another live view) the local image url ref is based on the root `/` and not the expected `/demo/apple/`

I suspect maybe the contents of the page are updated before the URL is patched but that is just speculation.

## Demo Video

https://user-images.githubusercontent.com/52168/220205495-049db655-c2bc-4bff-b314-c1863a33119e.mp4
