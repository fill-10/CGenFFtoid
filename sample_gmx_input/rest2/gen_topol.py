import subprocess
import sys
T_fac =[ \
300, \
318, \
337, \
356, \
377, \
398, \
420, \
444, \
468, \
493, \
520, \
547, \
576, \
606  ]

for i in T_fac:
    Lam = round(300/i,3)
    print('T=',i,', lambda', Lam)
    subprocess.run(['mkdir', 'T'+str(i)])
    subprocess.run(  \
        [ 'plumed','partial_tempering',\
          str(Lam), '<', 'rest_in.top',\
          '>', 'T'+str(i)+'/scaled.top'\
        ]         )
    print('finish scaling T = '+str(i)+'\n')
