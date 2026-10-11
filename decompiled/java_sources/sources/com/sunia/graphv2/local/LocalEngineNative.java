package com.sunia.graphv2.local;

import android.content.res.AssetManager;

/* loaded from: classes10.dex */
public class LocalEngineNative {
    static {
        loadNativeLibrary();
    }

    public static native int graphAddLine(long j, double[] dArr, double[] dArr2);

    public static native boolean graphAddNode(long j, String str);

    public static native boolean graphAlignmentNodes(long j, int[] iArr, int i);

    public static native boolean graphAlignmentSelection(long j, int i);

    public static native boolean graphAuthorizeFromFile(Object obj, String str, String str2);

    public static native boolean graphCanPasteNodes(long j);

    public static native boolean graphCanredo(long j);

    public static native boolean graphCanundo(long j);

    public static native boolean graphChangeNodeProperty(long j, int i, String str);

    public static native boolean graphClear(long j);

    public static native boolean graphClearSelection(long j);

    public static native boolean graphConvertNodeTo(long j, int i, int i2);

    public static native boolean graphCopyNodes(long j, int[] iArr);

    public static native long graphCreateEngine(String str, String str2);

    public static native boolean graphCutNodes(long j, int[] iArr);

    public static native void graphDestroyEngine(long j);

    public static native boolean graphEngineValid(long j);

    public static native int[] graphFindLinesFromRange(long j, double[] dArr, double[] dArr2);

    public static native int graphFindNodeFromPoint(long j, double d, double d2);

    public static native int[] graphFindNodesFromRange(long j, double[] dArr, double[] dArr2);

    public static native int graphGetLineCount(long j);

    public static native boolean graphGetLinePoints(long j, int i, double[] dArr, double[] dArr2);

    public static native int graphGetLinePointsCount(long j, int i);

    public static native int[] graphGetLinesID(long j);

    public static native double[] graphGetNodeBoundingBox(long j, int i);

    public static native int graphGetNodeKind(long j, int i);

    public static native String graphGetNodeProperty(long j, int i);

    public static native int graphGetNodesCount(long j);

    public static native int[] graphGetNodesID(long j);

    public static native int graphGetParam(long j, int i);

    public static native int[] graphGetSelection(long j);

    public static native boolean graphIsSelected(long j, int i);

    public static native boolean graphMoveNode(long j, int i, double d, double d2, double d3, double d4, int i2);

    public static native boolean graphMoveNodes(long j, int[] iArr, double d, double d2, double d3, double d4, int i);

    public static native boolean graphOpenData(long j, String str);

    public static native boolean graphPasteNodes(long j, double d, double d2);

    public static native boolean graphRecognize(long j, int i);

    public static native boolean graphRecognizeRange(long j, double[] dArr, double[] dArr2, int i);

    public static native boolean graphRedo(long j);

    public static native boolean graphRemoveFromRange(long j, double[] dArr);

    public static native boolean graphRemoveFromRange(long j, double[] dArr, double[] dArr2);

    public static native boolean graphRemoveNode(long j, int i, int i2);

    public static native boolean graphRemoveNodes(long j, int[] iArr);

    public static native boolean graphRemoveUserProperty(long j, int i, String str);

    public static native boolean graphScaleTo(long j, int i, double d, double d2, double d3, double d4);

    public static native boolean graphSelectNode(long j, int i, boolean z);

    public static native int graphSetAAssetManager(AssetManager assetManager);

    public static native boolean graphSetCallback(LocalGraphListener localGraphListener, LocalGraphListener localGraphListener2);

    public static native boolean graphSetDPI(long j, float f);

    public static native void graphSetDebugLevel(int i);

    public static native void graphSetLogDir(String str);

    public static native boolean graphSetParam(long j, int i, int i2);

    public static native boolean graphSetUserProperty(long j, int i, String str, String str2);

    public static native boolean graphStop(long j);

    public static native int[] graphSupportedConvert(long j, int i);

    public static native boolean graphUndo(long j);

    private static void loadNativeLibrary() {
        synchronized (com.sunia.naiv2.local.LocalEngineNative.class) {
            System.loadLibrary("graphengine");
        }
    }
}
