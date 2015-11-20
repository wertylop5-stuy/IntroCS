;  rescursion
;   "Stanley Lin <slin55055@gmail.com> period9
;   worked with no one
;   help from no one
;   time started: 7:30pm

(display "#1  instruct Monkn") (newline)

#|

Move disk n from source to target
If another disk is on top, set the target
   of the disk above to the other unoccupied "tower"
If the disk is not disk one, set target of all disks
   to the tower that the current disk is on
If the disk is disk is unable to be moved, set the target
   of the above ring to the other tower that is not itself

|#

(display "-----------------") (newline) (newline)