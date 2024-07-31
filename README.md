Using the OOPSLA '23 Artifact
=============================

The "artifact" is the Docker image distributed with the paper
["Generating Proof Certificates for a Language-Agnostic Deductive
Program Verifier"][paper] by Lin, Chen, Trinh, Wang, Rosu. The paper's
`README.md` is downloaded and committed here as [`ARTIFACT.md`].

The [`run`] command will download the artifact Docker image, load it,
and start a Docker container based on that image with this directory
mounted in the container as `/mnt`. (You can place/edit any files you
like in this directory to use them in the container; updates made
outside the container will be seen immediately inside it.)

When you enter the container you should first run the following to do
some additional setup, including setting up convenient aliases for
useful scripts. You may edit the file to add additional personal
configuration as well.

    . /mnt/container-setup.bash

The `/mnt/sample` directory contains a small toy imperative language, IMP,
and some programs written in it on which you can test this.

    cd /mnt/sample
    python3 -m scripts.prove_symbolic imp.k IMP assign.imp --output assign.out



<!-------------------------------------------------------------------->
[`ARTIFACT.md`]: ./ARTIFACT.md
[`run`]: ./run
[paper]: https://zenodo.org/records/7503088
