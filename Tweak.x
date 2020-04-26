#import "Timer.h"

-(_Bool)_handlePhysicalButtonEvent:(UIPressesEvent *)arg1 {

  Timer *timer = [[%c(Timer) alloc] init]; // timer for measuring time elapsed since the button is pressed and released.
  UIPress *press = arg1.allPresses.allObjects[0];
  
  /*
  press.type 102 is volume up button.
  press.type 103 is volume down button.

  press.force 1 is button pressed.
  press.force 0 is button released.
  */

  if (press.type == 102) {
  
  [timer startTimer];
  
  (press.force == 1) {
  
  if ([timer timeElapsedInSeconds] == 4) {
      -(void)respring {
         system("killall -9 SpringBoard");  
      }
    }
    else {
    orig;
   }
 }

    //now press.force is 0
    [timer stopTimer];

  

%end 
