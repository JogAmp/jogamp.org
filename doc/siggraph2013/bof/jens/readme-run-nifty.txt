# clone the repo
git clone https://github.com/void256/nifty-gui.git
cd nifty-gui

# and make sure we're on the right branch (1.3)
git checkout 1.3

# compile and install everything in the local maven repo
mvn install

# switch to the jogl examples project
cd nifty-examples-jogl

# run nifty 1.2 tutorial demo. options:
#  - without arguments            -> run standard old renderer
#  - add "-Dexec.arguments=batch" -> run batched renderer
#  - add "-Dexec.arguments=core"  -> run batched renderer using OpenGL core profile
mvn exec:java -Dexec.mainClass=de.lessvoid.nifty.examples.jogl.NiftyTutorialJOGL
mvn exec:java -Dexec.mainClass=de.lessvoid.nifty.examples.jogl.NiftyTutorialJOGL -Dexec.arguments=batch
mvn exec:java -Dexec.mainClass=de.lessvoid.nifty.examples.jogl.NiftyTutorialJOGL -Dexec.arguments=core

# run controls demo. options:
#  - without arguments            -> run standard old renderer
#  - add "-Dexec.arguments=batch" -> run batched renderer
#  - add "-Dexec.arguments=core"  -> run batched renderer using OpenGL core profile
mvn exec:java -Dexec.mainClass=de.lessvoid.nifty.examples.jogl.ControlsDemoJOGL
mvn exec:java -Dexec.mainClass=de.lessvoid.nifty.examples.jogl.ControlsDemoJOGL -Dexec.arguments=batch
mvn exec:java -Dexec.mainClass=de.lessvoid.nifty.examples.jogl.ControlsDemoJOGL -Dexec.arguments=core

