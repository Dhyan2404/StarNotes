package com.sunia.graphv2.sdk;

import android.content.Context;
import android.content.res.AssetManager;
import com.sunia.commonv2.callback.INoProguard;
import com.sunia.graphv2.local.LocalGraphListener;

/* loaded from: classes10.dex */
interface IGraphEngine extends INoProguard {
    int graphAddLine(double[] dArr, double[] dArr2);

    boolean graphAddNode(String str);

    boolean graphAlignmentNodes(int[] iArr, int i);

    boolean graphAlignmentSelection(int i);

    boolean graphAuthorizeFromFile(Context context, String str);

    boolean graphCanPasteNodes();

    boolean graphCanRedo();

    boolean graphCanUndo();

    boolean graphChangeNodeProperty(int i, String str);

    boolean graphClear();

    boolean graphClearSelection();

    boolean graphConvertNodeTo(int i, int i2);

    boolean graphCopyNodes(int[] iArr);

    boolean graphCreateEngine(String str, String str2);

    boolean graphCutNodes(int[] iArr);

    int[] graphFindLinesFromRange(double[] dArr, double[] dArr2);

    int graphFindNodeFromPoint(double d, double d2);

    int[] graphFindNodesFromRange(double[] dArr, double[] dArr2);

    int graphGetLineCount();

    boolean graphGetLinePoints(int i, double[] dArr, double[] dArr2);

    int graphGetLinePointsCount(int i);

    int[] graphGetLinesID();

    double[] graphGetNodeBoundingBox(int i);

    int graphGetNodeKind(int i);

    String graphGetNodeProperty(int i);

    int graphGetNodesCount();

    int[] graphGetNodesID();

    int graphGetParam(int i);

    int[] graphGetSelection();

    boolean graphIsSelected(int i);

    boolean graphMoveNode(int i, double d, double d2, double d3, double d4, int i2);

    boolean graphMoveNodes(int[] iArr, double d, double d2, double d3, double d4, int i);

    boolean graphOpenData(String str);

    boolean graphPasteNodes(double d, double d2);

    boolean graphRecognize(int i);

    boolean graphRecognizeRange(double[] dArr, double[] dArr2, int i);

    boolean graphRedo();

    boolean graphRemoveFromRange(double[] dArr);

    boolean graphRemoveFromRange(double[] dArr, double[] dArr2);

    boolean graphRemoveNode(int i, int i2);

    boolean graphRemoveNodes(int[] iArr);

    boolean graphRemoveUserProperty(int i, String str);

    boolean graphScaleTo(int i, double d, double d2, double d3, double d4);

    boolean graphSelectNode(int i, boolean z);

    int graphSetAAssetManager(AssetManager assetManager);

    boolean graphSetCallback(LocalGraphListener localGraphListener, LocalGraphListener localGraphListener2);

    boolean graphSetDPI(float f);

    void graphSetDebugLevel(int i);

    void graphSetLogDir(String str);

    boolean graphSetParam(int i, int i2);

    boolean graphSetUserProperty(int i, String str, String str2);

    boolean graphStop();

    int[] graphSupportedConvert(int i);

    boolean graphUndo();

    boolean isValidate();
}
