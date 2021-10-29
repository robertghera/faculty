open List;;
(*Tema 5 a)*)

let l = [1;2;4;5;6;123;13;1252;5334];;
let filt = filter (fun x -> (x mod 2 = 1)) (fold_right(fun nr rez-> nr::rez) l []);;

(*b)*) 

let l1 = [1;2;4;5;6;123;3;1252;5334];;
let f x = x == 13;; 
let verif f = exists f l;;
verif f;;
let verif f = exists f l1;;
verif f;;

(*Tema 6 a)*)

let f x = x mod 2 = 0;;
let countif f = fold_left (fun nr elem -> if f elem then 1 + nr else nr) 0 l;;
countif f;; 

(*b)*) 

let f x = x mod 2 = 1;;
let sumif f = fold_left (fun nr elem -> if f elem then elem + nr else nr) 0 l;;
sumif f;;

(*Tema 8*)

let f x = x >= 6 ;;
partition f l;;

(*Tema 9*)

let l3 = [1;2;4;5;6;3;3;1;5];;
fold_left (fun nr elem -> nr*10 + elem) 0 l3