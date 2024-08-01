Using the OOPSLA '23 Artifact
=============================

The "artifact" is the Docker image distributed with the paper
["Generating Proof Certificates for a Language-Agnostic Deductive
Program Verifier"][paper] by Lin, Chen, Trinh, Wang, Rosu. The artifact's
`README.md` is downloaded and committed here as [`ARTIFACT.md`][ar].

The [`run`] command will download the artifact Docker image, load it,
and start a Docker container based on that image with this directory
mounted in the container as `/mnt`. (You can place/edit any files you
like in this directory to use them in the container; updates made
outside the container will be seen immediately inside it.)

There is a copy of the above paper in the container, in
`/opt/proof-generation/paper.pdf`. You can copy this to `/mnt/` to
extract it from the container so you can read it in your browser or
PDF viewer.

### Evaluation

You may, if you wish, run the evaluation as described in the 'Getting
Started" section of the [original README][r]. This is not required,
however, and takes ten minutes or more to run. All other operations below
work without this.

    cd /opt/proof-generation/evaluation
    make -j16           # Or approx. the number of cores/CPU threads you have
    python3 stats.py    # Might not work without container-setup below

### Symbolic Proofs

When you enter the container you should first run the following to do
some additional setup, including setting up convenient aliases for
useful scripts. You may edit the file to add additional personal
configuration as well.

    . /mnt/container-setup.bash

The `/mnt/sample` directory contains a small toy imperative language, IMP,
and some programs written in it on which you can test this.

    cd /mnt/sample
    psym imp.k IMP assign.imp --output out.assign/
    metamath out.assign/goal.mm         # give this REPL `verify proof *`

You should see the final claim appear, and a number of Metamath (`*.mm`) files
appear in the `out.assign/` subdirectory.



<!-------------------------------------------------------------------->
[ar]: ./ARTIFACT.md
[`run`]: ./run
[paper]: https://zenodo.org/records/7503088
