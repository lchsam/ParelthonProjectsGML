///collision_and_movement(collision_object)

/*
Using the triple slash comment (///) at the start of a script allows 
GameMaker to show helpers and use auto-completion
*/

var collision_object = argument0;


//Horizontal collision
if (place_meeting(x + hspd, y, collision_object)){
//Variables are able to be accessed because the script is run within the object so it has 
//access to the variables of the object.
    while (!place_meeting(x+sign(hspd),y,collision_object)){
        //The sign function returns the plus or negative one depending on the original argument.
        x+= sign(hspd);
    }
    hspd = 0;
}
x += hspd;

//Vertical Collsion
if (place_meeting(x, y + vspd, collision_object)){
    while (!place_meeting(x,y+sign(vspd),collision_object)){
        y+= sign(vspd);
    }
    vspd = 0;
}

y += vspd;
