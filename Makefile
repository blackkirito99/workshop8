JAVAHOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_111.jdk/Contents/Home/bin
JAVAC=$(JAVAHOME)/javac
JAVA=$(JAVAHOME)/java
DRIVER=Driver
TESTDIR=test
TEST=$(TESTDIR)/Driver.java
SRCDIR=src
SRC=$(SRCDIR)/Graph.java
CLASSES=classes/

compile: $(CLASSES)
	$(JAVAC) -d classes/ $(SRC) $(TEST)

test: compile
	$(JAVA) -ea -classpath $(CLASSES) $(DRIVER)

$(CLASSES):
	mkdir classes

clean:
	rm -rf $(CLASSES)
