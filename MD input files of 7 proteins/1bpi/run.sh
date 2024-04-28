export CUDA_VISIBLE_DEVICES=0
pmemd.cuda -O -i min1.in -o min1.out -p pep.top -c pep.crd  -r min1.rst -ref pep.crd
pmemd.cuda -O -i min2.in -o min2.out -p pep.top -c min1.rst -r min2.rst
pmemd.cuda -O -i md0.in  -o md0.out  -p pep.top -c min2.rst -r md0.rst  -ref min2.rst -x md0.crd
pmemd.cuda -O -i md1.in  -o md1.out  -p pep.top -c md0.rst  -r md1.rst  -x md1.crd -ref md0.rst
pmemd.cuda -O -i md2.in  -o md2.out  -p pep.top -c md1.rst  -r md2.rst  -x md2.crd -ref md1.rst

