package com.sunia.HTREnginev2.impl_native.Local;

/* loaded from: classes10.dex */
public class LocalParamsNative {
    static {
        LocalEngineNative.loadNativeLibrary();
    }

    public static native long createNewParams();

    public static native int getMode(long j);

    public static native void setAssociateDataDir(long j, String str);

    public static native void setConfigName(long j, String str);

    public static native void setDataDir(long j, String str);

    public static native void setKeyValuesConfig(long j, String str);

    public static native void setMathEngineRadianOrDegree(long j, String str);

    public static native void setMathResultRoundingMode(long j, int i);

    public static native void setMathResultScale(long j, int i);

    public static native void setMode(long j, int i);

    public static native void setResultAssociational(long j, boolean z);

    public static native void setResultCalculate(long j, boolean z);

    public static native void setResultCandidate(long j, boolean z);

    public static native void setResultCoordinate(long j, boolean z);

    public static native void setResultPartitionCoordinate(long j, boolean z);

    public static native void setResultSpanProcessed(long j, boolean z);

    public static native void setWordSplitTimeLot(long j, long j2);
}
