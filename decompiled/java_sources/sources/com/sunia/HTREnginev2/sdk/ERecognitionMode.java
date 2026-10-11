package com.sunia.HTREnginev2.sdk;

/* loaded from: classes10.dex */
public enum ERecognitionMode {
    MODE_ICR(1),
    MODE_ECR(2);

    private int value;

    ERecognitionMode(int i) {
        this.value = i;
    }

    public static boolean isAutoMode(int i) {
        return i == MODE_ICR.getValue();
    }

    public static boolean isManualMode(int i) {
        return i == MODE_ECR.getValue();
    }

    public int getValue() {
        return this.value;
    }
}
