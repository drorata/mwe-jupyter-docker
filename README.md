In this repository I'm trying to build a docker image from which you could run a Jupyter notebook.
My objective is not merely running a notebook; this can be achieved by following the instruction in the [minimal notebook](https://github.com/jupyter/docker-stacks/tree/master/minimal-notebook).
What I'm trying is to build an image which will contain data and a notebook.
Ultimately, I'm exploring possibilities for reproducible analysis/research/etc.
To that end, you need to ship an image which contains the data and the notebook/script which analyze it.
Note that this is very minimal and by and large not optimized or anything like that.

The magic happens with the [`Dockerfile`](./Dockerfile) where the instructions how to build the image are given.
See the inline comments for details.
Once you tuned the instructions, you can build the image on your local machine (after cloning this repository):

```bash
docker build -t mwe-jupyter-docker .
```

At this point, you can run the local image:

```bash
docker run -p 8888:8888 mwe-jupyter-docker
```