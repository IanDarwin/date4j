#!/bin/sh

# To make the existing project structure compatible with Maven easily,
# make hardlinks from "classes/**/*.java" into src/main/java,
then move the test sources to src/test/java/.

# This is idempotent so it can be used to apply updates.

ln classes/hirondelle/date4j/*.java src/main/java/hirondelle/date4j/
mv src/main/java/hirondelle/date4j/TEST* src/test/java/hirondelle/date4j/

# This will replace the existing manifest with the updated one.
mv MANIFEST.MF src/main/resources/
