FROM intelliseqngs/ubuntu-minimal-20.04:3.0.5
WORKDIR /home/hgpr
COPY env.txt demo.ipynb gpr_custom.py hgpr.py  ./
RUN pip3 install -r env.txt
CMD ["/bin/bash"]