export GMXBIN=gmx_mpi
for i in  T300 T318 T337 T356 T377 T398 T420 T444 T468 T493 T520 T547 T576 T606
do 
    $GMXBIN grompp -f nvtequil_input -c ../pre_ld/nptPR_whole.gro -p $i/scaled.top -o $i/nvtequil.tpr -po $i/nvtequil.mdp -pp $i/nvtequil.top
done
