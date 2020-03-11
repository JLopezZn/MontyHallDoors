Random.self_init();;
let random_reward = Random.int 3;;

print_endline "
________________   ________________   ________________
|  ___________  |  |  ___________  |  |  ___________  |
| |  _ _ _ _  | |  | |  _ _ _ _  | |  | |  _ _ _ _  | |
| | | | | | | | |  | | | | | | | | |  | | | | | | | | |
| | |-+-+-+-| | |  | | |-+-+-+-| | |  | | |-+-+-+-| | |
| | |-+-+=+-| | |  | | |-+-+=+-| | |  | | |-+-+=+-| | |
| | |_|_|_|_| | |  | | |_|_|_|_| | |  | | |_|_|_|_| | |
| |    ___    | |  | |    ___    | |  | |    ___    | |   
| |   [___] ()| |  | |   [___] ()| |  | |   [___] ()| |
| |     0     | |  | |     1     | |  | |     2     | |
| |         ||| |  | |         ||| |  | |         ||| |
| |         ()| |  | |         ()| |  | |         ()| |
| |           | |  | |           | |  | |           | |
| |           | |  | |           | |  | |           | |
|_|___________|_|  |_|___________|_|  |_|___________|_|";;
print_endline " ";;
let first_choice = ref 5;;
while first_choice <> ref 0 && first_choice <> ref 1 && first_choice <> ref 2 do
print_endline "Elige una puerta 0 1 2:";
first_choice := read_int();
done;;

let open_door=ref 0;;
while (!open_door=first_choice.contents || !open_door=random_reward) do
open_door :=!open_door + 1;
done;;

print_endline " ";;
print_string "Puerta escogida: ";;
print_int !first_choice;;
print_endline " ";;

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
|_|,'_________|_|  |_|___________|_|  |_|___________|_|";;
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
|_|___________|_|  |_|,'_________|_|  |_|___________|_|";;
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
|_|___________|_|  |_|___________|_|  |_|,'_________|_|";;

Printf.printf "\nSe ha revelado que la puerta %d no tiene premio \n" !open_door;;

let changes = ref 5;;
while changes <> ref 0 && changes <> ref 1 do
print_endline "Deseas cambiar de puerta? [0.No / 1.Si]: ";
changes := read_int();
done;;

let new_choice = ref !first_choice;;
if !changes = 1 then new_choice := Random.int 3;;

while (changes.contents = 1) && (new_choice.contents = first_choice.contents || new_choice.contents = open_door.contents) do
  new_choice := Random.int 3
done;;

 if !changes = 1 then print_string "Has cambiado a la puerta: ";;
 if !changes = 0 then print_string "Te has quedado en la puerta: ";;
 print_int !new_choice;;
 print_endline " ";;

if !new_choice = random_reward then print_endline "Ganaste!" else Printf.printf "Perdiste! El premio estaba en la puerta %d" random_reward;;
