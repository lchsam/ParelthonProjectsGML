///scr_autotile();
var iw, nUp, nDown, nRight, nLeft, count;
iw = sprite_width;
nUp = place_meeting(x,y-iw,obj_tile) //|| (y-iw) <= 0;
nDown = place_meeting(x,y+iw,obj_tile) //|| (y + iw) >= room_height;
nRight = place_meeting(x+iw,y,obj_tile) //|| (x+iw) >= room_width;
nLeft = place_meeting(x-iw,y,obj_tile) //|| (x - iw) <= 0;
count = 0;



if(nUp) count += 1;
if(nRight) count += 2;
if(nDown) count += 4;
if(nLeft) count += 8;

return count;
