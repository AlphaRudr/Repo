all: README.md

README.md:
        echo '# UNIX WORKBENCH' > README.md
        echo '* This makefile was run at: $(shell date +%Y-%m-%d:%H:%M:%S)' >> README.md
        echo '* There were $(shell wc -l < GuessinGame.sh) lines in GuessinGame.sh' >> README.md
        echo '# This Repo was created for Peer Graded Project in The Unix Workbench course of Coursera'>>README.md

clean:
        rm README.md
