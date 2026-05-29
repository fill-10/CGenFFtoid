for i in  T300 T318 T337 T356 T377 T398 T420 T444 T468 T493 T520 T547 T576 T606
do 
    echo 0 | gmx_mpi trjconv -f $i/nvtequil.trr -s $i/nvtequil.tpr -o $i/nvtequil_whole.gro -pbc whole -b 2000 -dt 1000
    gmx_mpi grompp -f nvtprod_input -c $i/nvtequil_whole.gro -p $i/scaled.top -o $i/nvtprod.tpr -po $i/nvtprod.mdp -pp $i/nvtprod.top
done
