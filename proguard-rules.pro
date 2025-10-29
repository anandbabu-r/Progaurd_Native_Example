############################################################
# 1) Need to save the main-entry point class and the method
#    as otherwise, progaurd will remove this and other methods 
#    reachable from here.
############################################################
-keep public class com.example.VehicleDiagnostics {
    public static void main(java.lang.String[]);
}


############################################################
# 2) Generic: keep any class that declares native methods,
#    and keep the native method names/signatures intact.
############################################################
-keepclasseswithmembernames,includedescriptorclasses class * {
    native <methods>;
}

