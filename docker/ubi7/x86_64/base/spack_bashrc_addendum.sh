if [ -z "$BASHRC_READ" ]; then
        export BASHRC_READ=1
        source ${SPACK_ROOT}/share/spack/setup-env.sh
        source `spack location -i lmod`/lmod/lmod/init/bash
        module purge
        module unuse /spack/share/spack/modules/linux-rhel7-x86_64
        module use /spack/share/spack/lmod/linux-rhel7-x86_64/Core
        spack load gcc@7.3.0
        spack load mpich@3.2.1~wrapperrpath
        spack load cmake
fi
