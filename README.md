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



<!-------------------------------------------------------------------->
[`ARTIFACT.md`]: ./ARTIFACT.md
[`run`]: ./run
[paper]: https://zenodo.org/records/7503088
