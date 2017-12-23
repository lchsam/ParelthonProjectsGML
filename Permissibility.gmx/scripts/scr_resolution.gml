///scr_resolution()
//  Set the resolution we want to display, or get this value from device
//Resizing application surface is not ideal for
//anything related to copying the application surface.
//My animation relies on the application surface and this messes sizing up

var display_width = global.display_width; //display_get_width();
var display_height = global.display_height; //display_get_height();

//Set the size of GUI
display_set_gui_size(display_width, display_height);

// Set the size of the game window
window_set_size(display_width, display_height);

// Set the resolution we've programmed the game for
var base_width = 1080;
var base_height = 1920;

// Determine the aspect ratio
var aspect = base_width/base_height

//Work out the adjusted height and width
var height;
var width;
if (display_width >= display_height) {
    height = min(base_height, display_height);
    width = height * aspect;
}else {
    width = min(base_width, display_width);
    height = width/aspect;
}


// Resize the application surface to adjusted values
surface_resize(application_surface, width, height);


