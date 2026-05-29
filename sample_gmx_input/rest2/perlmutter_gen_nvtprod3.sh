for i in  T300 T318 T337 T356 T377 T398 T420 T444 T468 T493 T520 T547 T576 T606
do 
    echo 0 | gmx_mpi trjconv -f $i/nvtprod2.trr -s $i/nvtprod2.tpr -o $i/nvtprod2_whole.gro -pbc whole -b 20000 -dt 1000
    gmx_mpi grompp -f nvtprod_input -c $i/nvtprod2_whole.gro -p $i/scaled.top -o $i/nvtprod3.tpr -po $i/nvtprod3.mdp -pp $i/nvtprod3.top
done
