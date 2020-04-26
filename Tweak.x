-(_Bool)_handlePhysicalButtonEvent:(UIPressesEvent *)arg1 {

  Timer *timer = [[%c(Timer) alloc] init]; // timer for measuring time elapsed since the button is pressed and released.
  UIPress *press = arg1.allPresses.allObjects[0];
  /*
  press.type 102 is volume up button.
  press.tupe 103 is volume down button.

  press.force 1 is button pressed.
  press.force 0 is button released.
  */

  if (press.type == 102 && press.force == 1) {
    return %orig;

  }

  if (press.type == 103) { //button is pressed

    [timer startTimer]; 

     (press.force == 1) {
      // notice the user when 2 and 4 seconds have passed for him to release the button
      if ([timer timeElapsedInSeconds] == 2) {
      AudioServicesPlaySystemSound(1519); // Sorry if this breaks it lol
      }

      if ([timer timeElapsedInSeconds] == 4) {
      AudioServicesPlaySystemSound(1519);  // Sorry if this breaks it lol
      }

    //now press.force is 0
    [timer stopTimer];

    if ([timer timeElapsedInSeconds] == 2) {
      MRMediaRemoteSendCommand(kMRNextTrack, nil);
    } else if ([timer timeElapsedInSeconds] == 2) {
      MRMediaRemoteSendCommand(kMRPreviousTrack, nil);
    } 

  }

  return %orig;

  }

}

%end 
