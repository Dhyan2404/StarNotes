package com.sunia.HTREnginev2.impl_native.Local;

import com.sunia.HTREnginev2.impl_native.LocalRecognizeListener;

/* loaded from: classes10.dex */
public class LocalEditorNative {
    static {
        LocalEngineNative.loadNativeLibrary();
    }

    public static native int[] addPoints(long j, double[] dArr, double[] dArr2, double[] dArr3, int[] iArr);

    public static native int[] addPointsAndIDsForMixture(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8);

    public static native int addStrokePoints(long j, double[] dArr, double[] dArr2, double[] dArr3);

    public static native long addStrokePointsForMixture(long j, double[] dArr, double[] dArr2, double[] dArr3, long j2);

    public static native long addStrokePointsPointerForMixture(long j, long j2, long j3, long j4, long j5, long j6);

    public static native String calculate(long j, String str);

    public static native void clearContent(long j);

    public static native int close(long j);

    public static native String commonInterface(long j, String str, String str2);

    public static native int deleteStrokePoints(long j, int i);

    public static native int deleteStrokesForMixture(long j, long j2, long j3);

    public static native void doAssociate(long j, String str);

    public static native void doChemicalStructure(long j, double[] dArr, double[] dArr2, int[] iArr, String str);

    public static native void doErrorReplace(long j, String str);

    public static native String doInteractForMixture(long j, long j2);

    public static native void doNTIStrokePreset(long j, String str);

    public static native void doPageRecognize(long j, boolean z);

    public static native byte[] doPointsToBitmap(long j, double[] dArr, double[] dArr2, int[] iArr, float[] fArr);

    public static native String doRecognizeForMixture(long j, String str);

    public static native String doSynthese(long j, String str);

    public static native void editorPause(long j);

    public static native String exportGraphMl(long j);

    public static native String getContent(long j);

    public static native String getMathEngineVersion(long j);

    public static native String getPartContentForMixture(long j, String str);

    public static native String getTotalContentForMixture(long j);

    public static native int inDoSaveForMixture(long j, String str);

    public static native String incLoadByPathForMixture(long j, String str);

    public static native int incRecDoSave(long j, String str);

    public static native String incRecLoadByPath(long j, String str);

    public static native boolean isChemValidForMixture(long j, String str);

    public static native boolean isClosed(long j);

    public static native boolean isEmpty(long j);

    public static native boolean isIdle(long j);

    public static native String latexToMathML(long j, String str);

    public static native String latexToOfficeMathML(long j, String str);

    public static native long obtainParams(long j);

    public static native int open(long j, long j2);

    public static native String pictureProcess(long j, String str);

    public static native void setCharacterSet(long j, String[] strArr);

    public static native void setRecognizeEngineListener(long j, LocalRecognizeListener localRecognizeListener);

    public static native void setReferWords(long j, String str, int i);

    public static native void setSyntheseWords(long j, String str, int i);

    public static native void setWritingForMixture(long j, boolean z);

    public static native String shapeEdite(long j, String str);

    public static native String syncRecognize(long j, double[] dArr, double[] dArr2, double[] dArr3);

    public static native int updateParams(long j, long j2);

    public static native void updateRecognizeWord(long j, int i, String str);

    public static native void waitForIdle(long j);
}
