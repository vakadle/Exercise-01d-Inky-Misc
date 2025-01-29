/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Warmup, 1 FirstH, 2 Halftime, 3 SecondH




-> bench

== bench ==
You are sitting on the bench. 

+ [Warmup] -> pregame
-> DONE

== pregame ==
You are going to strech and shot.
Curent stage {advance_time()}
* {time == 0} [Use roller to warm up] -> roller

+ [The game begins] -> game

== roller ==
Use roller to warm up
-> pregame

== shooting ==
Shooting around 
-> game

== game ==
{time < 4 : You are playing game.}
Curent stage {advance_time()}
* {time == 2} [Shooting around] -> shooting

+ [Continue game] -> game

== gameover ==
WE WIN!
-> END



== function advance_time ==

    ~ time = time + 1
    {time > 3:
        ~return "WE WIN"
        }
    
    
    {    
        - time == 0:
            ~ return "Warmup"
        
        - time == 1:
            ~ return "First Half"
        
        - time == 2:
            ~ return "Halftime"
            
         - time == 3:
            ~ return "Second Half"
        
         
    
    }
    
    
        
    ~ return time
    
    
    
