package com.example;

public class VehicleDiagnostics {
    static {
        System.loadLibrary("vehiclediagjni"); // loads libvehiclediagjni.so
    }

    /** Inner class with multiple sensor types */
    public static class SensorReadings {
        @com.example.JniStruct public int sensor1;
        @com.example.JniStruct public double sensor2;

        @Override
        public String toString() {
            return "SensorReadings{sensor1=" + sensor1 +
                    ", sensor2=" + sensor2 + "}";
        }
    }
    public static void main(String[] args) {
        VehicleDiagnostics vd = new VehicleDiagnostics();
        SensorReadings sr = new SensorReadings();
        try {
            int param = 1; // for simplification, lets just hard-code this param.
            vd.getSensorValues(sr,param);
            System.out.println("sensor values :  " +  sr.toString());
        } catch (Throwable t) {
            t.printStackTrace();
        }
    }
    private native void getSensorValues(SensorReadings sr, int param);
}
