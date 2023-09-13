# HPL Spack build
```
ssh mulatona.ccad.unc.edu.ar
git clone git@github.com:marcosmazz/hpltutorial.git
cd hpltutorial/build
<tmux> ./build-env.sh 2>&1 | tee build.log
4 hours later...

hpltutorial
├── build
│   ├── build-env.sh
│   ├── modules.yaml
│   ├── packages.yaml
│   └── spack.yaml
├── modules
│   └── hpl
│       ├── gcc-intel-oneapi-mkl
│       ├── gcc-openblas
│       ├── oneapi-intel-oneapi-mkl
│       └── oneapi-openblas
├── run
│   ├── HPL.dat
│   └── submit.sh
├── software
│   └── linux-rocky9-broadwell
│       ├── gcc-12.2.0
│       └── oneapi-2023.0.0
└── spack
    └── ...

cd run
<edit submit.sh>
<if build avoided>:
module use /home/shared/tutorial/modules
module load hpl/oneapi-intel-oneapi-mkl or <other>

<edit HPL.dat>

sbatch submit.sh
```
