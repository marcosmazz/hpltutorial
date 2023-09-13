# HPL Spack build
```
ssh mulatona.ccad.unc.edu.ar
git clone git@github.com:marcosmazz/hpltutorial.git
cd hpltutorial/build
<tmux> ./build-env.sh
58min...

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

<edit HPL.dat>
<edit submit.sh>

sbatch submit.sh
```
