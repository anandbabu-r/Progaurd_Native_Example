# from project root
set -x
mkdir -p out/classes out/generated

# 1) Compile Java + generate JNI header
javac -h out/generated -d out/classes src/com/example/*.java

# 2) Build the JNI shared library
gcc -fPIC -shared \
  -I"$JAVA_HOME/include" -I"$JAVA_HOME/include/linux" -Iout/generated \
  out/generated/com_example_VehicleDiagnostics.h \
  src/C/vehiclediagjni.c \
  -o out/libvehiclediagjni.so


# 3) Jar the classes
jar -cvf out/VehicleDemo.jar -C out/classes .

# 4) Run Proguard
java -jar /home/ab/Programs/proguard/proguard-7.7.0/lib/proguard.jar  -injars out/VehicleDemo.jar -outjars out/VehicleDemo-proguard.jar -libraryjars "$JAVA_HOME/jre/lib/rt.jar" -include proguard-rules.pro -printmapping proguard-mapping-example.pro

# 5) Run
java -Djava.library.path=out -cp out/VehicleDemo-proguard.jar  com.example.VehicleDiagnostics


