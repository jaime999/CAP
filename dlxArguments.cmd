universe = vanilla
executable = dlx
input = ordena.s
output = salida.$(Process)
stderr = salida.$(Process)
log = salida.log
should_transfer_files = Yes
when_to_transfer_output = ON_EXIT_OR_EVICT

arguments = dlx -s final -d p -c p -f ordena.s
queue
arguments = dlx -s final -d c -c p -f ordena.s
queue
arguments = dlx -s final -d p -c t -f ordena.s
queue
arguments = dlx -s final -d c -c t -f ordena.s
queue

input = ordena3.s
arguments = dlx -s final -d p -c 3 -f ordena3.s
queue
arguments = dlx -s final -d c -c 3 -f ordena3.s