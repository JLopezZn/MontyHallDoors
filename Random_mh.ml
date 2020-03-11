
(*Random Monty Hall Simulation*)
        (*FCFM UANL*)

(* 
there is 3 doors and only one have a reward

random_reward:random door with the reward

random_choice:random door chosen by the pc

open_door:Door revealed by monty hall
*)

Random.self_init();;

let random_reward=Random.int 3;;
let random_choice=Random.int 3;;
let open_door=ref 0;;

(*The door revealed cannot be the door with the reward or the door chosen by the PC*)

while (!open_door=random_choice || !open_door=random_reward) do
open_door :=!open_door + 1;
done;;


if !open_door = 0 then Printf.printf "
________________   ________________   ________________
|  ___________  |  |  ___________  |  |  ___________  |
| |  /|,| |   | |  | |  _ _ _ _  | |  | |  _ _ _ _  | |
| | |,x,| |   | |  | | | | | | | | |  | | | | | | | | |
| | |,x,' |   | |  | | |-+-+-+-| | |  | | |-+-+-+-| | |
| | |,x   |   | |  | | |-+-+=+-| | |  | | |-+-+=+-| | |
| | |/    |   | |  | | |_|_|_|_| | |  | | |_|_|_|_| | |
| |    /] ,   | |  | |    ___    | |  | |    ___    | |   
| |   [/ ()   | |  | |   [___] ()| |  | |   [___] ()| |
| |     0 |   | |  | |      1    | |  | |      2    | |
| |       |   | |  | |         ||| |  | |         ||| |
| |       |   | |  | |         ()| |  | |         ()| |
| |      ,'   | |  | |           | |  | |           | |
| |   ,'      | |  | |           | |  | |           | |
|_|,'_________|_|  |_|___________|_|  |_|___________|_|
     **0**               **1**             **2**";;
if !open_door = 1 then Printf.printf "
________________   ________________   ________________
|  ___________  |  |  ___________  |  |  ___________  |
| |  _ _ _ _  | |  | |  /|,| |   | |  | |  _ _ _ _  | |
| | | | | | | | |  | | |,x,| |   | |  | | | | | | | | |
| | |-+-+-+-| | |  | | |,x,' |   | |  | | |-+-+-+-| | |
| | |-+-+=+-| | |  | | |,x   |   | |  | | |-+-+=+-| | |
| | |_|_|_|_| | |  | | |/    |   | |  | | |_|_|_|_| | |
| |    ___    | |  | |    /] ,   | |  | |    ___    | |   
| |   [___] ()| |  | |   [/ ()   | |  | |   [___] ()| |
| |     0     | |  | |     1 |   | |  | |     2     | |
| |         ||| |  | |       |   | |  | |         ||| |
| |         ()| |  | |       |   | |  | |         ()| |
| |           | |  | |      ,'   | |  | |           | |
| |           | |  | |   ,'      | |  | |           | |
|_|___________|_|  |_|,'_________|_|  |_|___________|_|
      **0**              **1**              **2**
";;
if !open_door = 2 then Printf.printf "
________________   ________________   ________________
|  ___________  |  |  ___________  |  |  ___________  |
| |  _ _ _ _  | |  | |  _ _ _ _  | |  | |  /|,| |   | |
| | | | | | | | |  | | | | | | | | |  | | |,x,| |   | |
| | |-+-+-+-| | |  | | |-+-+-+-| | |  | | |,x,' |   | |
| | |-+-+=+-| | |  | | |-+-+=+-| | |  | | |,x   |   | |
| | |_|_|_|_| | |  | | |_|_|_|_| | |  | | |/    |   | |
| |    ___    | |  | |    ___    | |  | |    /] ,   | |   
| |   [___] ()| |  | |   [___] ()| |  | |   [/ ()   | |
| |     0     | |  | |     1     | |  | |     2 |   | |
| |         ||| |  | |         ||| |  | |       |   | |
| |         ()| |  | |         ()| |  | |       |   | |
| |           | |  | |           | |  | |      ,'   | |
| |           | |  | |           | |  | |   ,'      | |
|_|___________|_|  |_|___________|_|  |_|,'_________|_|
      **0**              **1**              **2**
";;

(*the pc randomly decides if it changes doors or not*)

let changes=Random.int 2;;
let new_choice=ref 0;;
let o=open_door.contents;;

(*the new door cannot be the initial one and neither could the revealed door*)  

while (!new_choice=random_choice || !new_choice=o) do 
new_choice :=!new_choice +1;
done;;

(*validate if the pc won or not*)
let win=ref 0;;
if changes=1 then if (new_choice.contents=random_reward) then win:=1 ;;
if changes=0 then if (random_choice=random_reward) then win := 1 ;;

print_string "\n\n\n:";;
print_string "Door with reward:";;
print_int random_reward;;
print_endline " ";;
print_string "Chosen door:";;
print_int random_choice;;
print_endline " ";;
print_string "Reaveled door:";;
Printf.printf "%d\n" !open_door;

if changes=1 then print_string "\n[New choice :";;
if changes=1 then Printf.printf "%d]\n" !new_choice;;

if win.contents=1 then print_string "*** You won :) ***" else  print_string "*** You lost :( ***" ;;





