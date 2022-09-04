cd build
make clean
rm -rf *
cmake -DCMAKE_BUILD_TYPE=RelO3 ../721sim
make -j$(nproc)
cd ../run/473.astar_rivers_ref.252.0.28
rm -rf *
cp ../../build/uarchsim/721sim ./721sim
source /mnt/designkits/spec_2006_2017/O2_fno_bbreorder/activate.bash
ln -s /mnt/designkits/spec_2006_2017/O2_fno_bbreorder/app_storage/pk .
atool-simenv mkgen 473.astar_rivers_ref --checkpoint 473.astar_rivers_ref.252.0.28.gz
pwd
#make cleanrun SIM_FLAGS_EXTRA='-e100000000 --disambig=1,0,0 --perf=0,0,0,0 --fq=64 --cp=64 --al=128 --lsq=64 --iq=32 --iqnp=4 --fw=16 --dw=16 --iw=16 --rw=16 --lane=0xffff:0xffff:0xffff:0xffff:0xffff:0xffff:0xffff --lat=1:1:1:1:1:1:1 -b'
#make cleanrun SIM_FLAGS_EXTRA='--disambig=1,0,0 --perf=1,1,1,1 -t --fq=64 --cp=64 --al=1024 --lsq=512 --iq=256 --iqnp=16 --fw=16 --dw=16 --iw=16 --rw=16 -e1000000' > out1.txt
#Perfect configuration
make cleanrun SIM_FLAGS_EXTRA='--disambig=1,0,0 --perf=1,1,1,1 -t --tc_size=1024 --tc_assosc=2 --vc_en=0 --vc_size=1024 --fq=64 --cp=32 --al=1024 --lsq=512 --iq=256 --iqnp=16 --fw=16 --dw=16 --iw=16 --rw=16 -e1000000' > out1.txt

#Baseline
make cleanrun SIM_FLAGS_EXTRA='--disambig=1,0,0 --perf=0,1,1,0 --tc_size=1024 --tc_assosc=2 --vc_en=0 --vc_size=1024 --fq=64 --cp=32 --al=1024 --lsq=512 --iq=256 --iqnp=16 --fw=16 --dw=16 --iw=16 --rw=16 -e1000000' > out2.txt

#Real T$ with perfect BP no V$
make cleanrun SIM_FLAGS_EXTRA='--disambig=1,0,0 --perf=1,1,1,0 -t --tc_size=1024 --tc_assosc=2 --vc_en=0 --vc_size=1024 --fq=64 --cp=32 --al=1024 --lsq=512 --iq=256 --iqnp=16 --fw=16 --dw=16 --iw=16 --rw=16 -e1000000' > out3.txt
make cleanrun SIM_FLAGS_EXTRA='--disambig=1,0,0 --perf=1,1,1,0 -t --tc_size=2048 --tc_assosc=2 --vc_en=0 --vc_size=1024 --fq=64 --cp=32 --al=1024 --lsq=512 --iq=256 --iqnp=16 --fw=16 --dw=16 --iw=16 --rw=16 -e1000000' > out4.txt
make cleanrun SIM_FLAGS_EXTRA='--disambig=1,0,0 --perf=1,1,1,0 -t --tc_size=4096 --tc_assosc=2 --vc_en=0 --vc_size=1024 --fq=64 --cp=32 --al=1024 --lsq=512 --iq=256 --iqnp=16 --fw=16 --dw=16 --iw=16 --rw=16 -e1000000' > out5.txt
make cleanrun SIM_FLAGS_EXTRA='--disambig=1,0,0 --perf=1,1,1,0 -t --tc_size=8192 --tc_assosc=2 --vc_en=0 --vc_size=1024 --fq=64 --cp=32 --al=1024 --lsq=512 --iq=256 --iqnp=16 --fw=16 --dw=16 --iw=16 --rw=16 -e1000000' > out6.txt
make cleanrun SIM_FLAGS_EXTRA='--disambig=1,0,0 --perf=1,1,1,0 -t --tc_size=16384 --tc_assosc=2 --vc_en=0 --vc_size=1024 --fq=64 --cp=32 --al=1024 --lsq=512 --iq=256 --iqnp=16 --fw=16 --dw=16 --iw=16 --rw=16 -e1000000' > out7.txt
make cleanrun SIM_FLAGS_EXTRA='--disambig=1,0,0 --perf=1,1,1,0 -t --tc_size=32768 --tc_assosc=2 --vc_en=0 --vc_size=1024 --fq=64 --cp=32 --al=1024 --lsq=512 --iq=256 --iqnp=16 --fw=16 --dw=16 --iw=16 --rw=16 -e1000000' > out8.txt
make cleanrun SIM_FLAGS_EXTRA='--disambig=1,0,0 --perf=1,1,1,0 -t --tc_size=65536 --tc_assosc=2 --vc_en=0 --vc_size=1024 --fq=64 --cp=32 --al=1024 --lsq=512 --iq=256 --iqnp=16 --fw=16 --dw=16 --iw=16 --rw=16 -e1000000' > out9.txt


#Real T$ with perfect BP and V$
make cleanrun SIM_FLAGS_EXTRA='--disambig=1,0,0 --perf=1,1,1,0 -t --tc_size=1024 --tc_assosc=2 --vc_en=1 --vc_size=8192 --fq=64 --cp=32 --al=1024 --lsq=512 --iq=256 --iqnp=16 --fw=16 --dw=16 --iw=16 --rw=16 -e1000000' > out10.txt
make cleanrun SIM_FLAGS_EXTRA='--disambig=1,0,0 --perf=1,1,1,0 -t --tc_size=2048 --tc_assosc=2 --vc_en=1 --vc_size=8192 --fq=64 --cp=32 --al=1024 --lsq=512 --iq=256 --iqnp=16 --fw=16 --dw=16 --iw=16 --rw=16 -e1000000' > out11.txt
make cleanrun SIM_FLAGS_EXTRA='--disambig=1,0,0 --perf=1,1,1,0 -t --tc_size=4096 --tc_assosc=2 --vc_en=1 --vc_size=8192 --fq=64 --cp=32 --al=1024 --lsq=512 --iq=256 --iqnp=16 --fw=16 --dw=16 --iw=16 --rw=16 -e1000000' > out12.txt
make cleanrun SIM_FLAGS_EXTRA='--disambig=1,0,0 --perf=1,1,1,0 -t --tc_size=8192 --tc_assosc=2 --vc_en=1 --vc_size=8192 --fq=64 --cp=32 --al=1024 --lsq=512 --iq=256 --iqnp=16 --fw=16 --dw=16 --iw=16 --rw=16 -e1000000' > out13.txt
make cleanrun SIM_FLAGS_EXTRA='--disambig=1,0,0 --perf=1,1,1,0 -t --tc_size=16384 --tc_assosc=2 --vc_en=1 --vc_size=8192 --fq=64 --cp=32 --al=1024 --lsq=512 --iq=256 --iqnp=16 --fw=16 --dw=16 --iw=16 --rw=16 -e1000000' > out14.txt
make cleanrun SIM_FLAGS_EXTRA='--disambig=1,0,0 --perf=1,1,1,0 -t --tc_size=32768 --tc_assosc=2 --vc_en=1 --vc_size=8192 --fq=64 --cp=32 --al=1024 --lsq=512 --iq=256 --iqnp=16 --fw=16 --dw=16 --iw=16 --rw=16 -e1000000' > out15.txt
make cleanrun SIM_FLAGS_EXTRA='--disambig=1,0,0 --perf=1,1,1,0 -t --tc_size=65536 --tc_assosc=2 --vc_en=1 --vc_size=8192 --fq=64 --cp=32 --al=1024 --lsq=512 --iq=256 --iqnp=16 --fw=16 --dw=16 --iw=16 --rw=16 -e1000000' > out16.txt




