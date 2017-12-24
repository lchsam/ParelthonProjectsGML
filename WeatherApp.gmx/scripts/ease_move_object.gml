///ease_move_object(speed, currentA, toB, duration, easingFactor)
//returns speed (note that it's scalar)
//You have to figure out which direction (negative vs positive)
//Easing Factor should be a positive number
//If amount is too high, it overshoots, since the implementation code only goes in one direction
//It'll keep on going to the same direction despite overshoot.
//If it overshoots, it also implies, the movement is ideal for animation
//There are a lot of limitations in this script
//-Current position cannot be zero
//-Should not overshoot or it breaks
//If currentA and toB has a huge difference, there could be a divide by zero problem.
var spd = abs(argument0);
var currentA = argument1 + 1000;
//offset to prevent divide by zero scenario
var toB = argument2 + 1000;
var duration = abs(argument3);
var easingFactor = abs(argument4);



var easeNumber = 1;
if (easingFactor > 0){
   if (currentA != 0){
      easeNumber = power(abs(toB/currentA), easingFactor);
   }else{
         easeNumber = power(abs(toB/currentA-1), easingFactor);
   }
   
}

if easeNumber == 0{
   show_message("Whatever you changed caused divide by zero exception");
   easeNumber = 1

}

var spido = ((abs(currentA - toB))/(duration*easeNumber))*spd;

if (spido <= 0.07){
   spdio = 0;
}
return spido;
