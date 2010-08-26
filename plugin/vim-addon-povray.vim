" note: for Linux use beta version. The 3.6 has a broken exit code!

" this error format is good enough for me
let s:efm = 'set efm=File:\ %f\ \ Line:\ %l'
call actions#AddAction('run povray', {'action': funcref#Function('actions#CompileRHSSimple', {'args': [[s:efm], ["povray", "Declare=custom_declare=value", funcref#Function('return expand("%")')]]})})
call actions#AddAction('show povray result ', {'action': funcref#Function('actions#CompileRHSSimple', {'args': [[], ["feh", funcref#Function('return "./".expand("%:r:t").".png"')]]})})
