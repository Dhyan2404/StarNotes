package com.sunia.graphv2.sdk;

import android.app.Application;
import android.content.Context;
import android.content.res.AssetManager;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.commonv2.util.HWRCommonUtil;
import com.sunia.graphv2.local.LocalEngineNative;
import com.sunia.graphv2.local.LocalGraphListener;

/* loaded from: classes10.dex */
class GraphEngineImpl implements IGraphEngine {
    private static final String TAG = "GraphEngineImpl";
    private Application mContext;
    private long mHandler;

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public int graphAddLine(double[] dArr, double[] dArr2) {
        if (isValidate()) {
            return LocalEngineNative.graphAddLine(this.mHandler, dArr, dArr2);
        }
        return -1;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphAddNode(String str) {
        if (isValidate()) {
            return LocalEngineNative.graphAddNode(this.mHandler, str);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphAlignmentNodes(int[] iArr, int i) {
        if (isValidate()) {
            return LocalEngineNative.graphAlignmentNodes(this.mHandler, iArr, i);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphAlignmentSelection(int i) {
        if (isValidate()) {
            return LocalEngineNative.graphAlignmentSelection(this.mHandler, i);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphAuthorizeFromFile(Context context, String str) {
        Application application = (Application) HWRCommonUtil.getApplicationContent(context);
        this.mContext = application;
        graphSetAAssetManager(application.getAssets());
        boolean graphAuthorizeFromFile = LocalEngineNative.graphAuthorizeFromFile(context, str, str);
        if (!graphAuthorizeFromFile) {
            LogUtil.m57657w(TAG, "graph获取授权失败，稍后重试");
            try {
                Thread.sleep(1000L);
            } catch (InterruptedException e) {
                LogUtil.m57658w(TAG, e);
            }
            graphAuthorizeFromFile = LocalEngineNative.graphAuthorizeFromFile(context, str, str);
            if (graphAuthorizeFromFile) {
                LogUtil.m57657w(TAG, "graph获取授权重试成功");
            }
        }
        if (!graphAuthorizeFromFile) {
            LogUtil.m57653d(TAG, "graphAuthorizeFromFile result= false \r,graphCertifyFilePath=" + str);
        }
        return graphAuthorizeFromFile;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphCanPasteNodes() {
        if (isValidate()) {
            return LocalEngineNative.graphCanPasteNodes(this.mHandler);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphCanRedo() {
        if (isValidate()) {
            return LocalEngineNative.graphCanredo(this.mHandler);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphCanUndo() {
        if (isValidate()) {
            return LocalEngineNative.graphCanundo(this.mHandler);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphChangeNodeProperty(int i, String str) {
        if (isValidate()) {
            return LocalEngineNative.graphChangeNodeProperty(this.mHandler, i, str);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphClear() {
        if (isValidate()) {
            return LocalEngineNative.graphClear(this.mHandler);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphClearSelection() {
        if (isValidate()) {
            return LocalEngineNative.graphClearSelection(this.mHandler);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphConvertNodeTo(int i, int i2) {
        if (isValidate()) {
            return LocalEngineNative.graphConvertNodeTo(this.mHandler, i, i2);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphCopyNodes(int[] iArr) {
        if (isValidate()) {
            return LocalEngineNative.graphCopyNodes(this.mHandler, iArr);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphCreateEngine(String str, String str2) {
        long j = this.mHandler;
        if (j != 0) {
            LocalEngineNative.graphStop(j);
            LocalEngineNative.graphDestroyEngine(this.mHandler);
            this.mHandler = 0L;
        }
        long graphCreateEngine = LocalEngineNative.graphCreateEngine(str, str2);
        this.mHandler = graphCreateEngine;
        if (graphCreateEngine != 0) {
            return true;
        }
        LogUtil.m57654e(TAG, "Graph引擎创建失败:");
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphCutNodes(int[] iArr) {
        if (isValidate()) {
            return LocalEngineNative.graphCutNodes(this.mHandler, iArr);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public int[] graphFindLinesFromRange(double[] dArr, double[] dArr2) {
        return isValidate() ? LocalEngineNative.graphFindLinesFromRange(this.mHandler, dArr, dArr2) : new int[0];
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public int graphFindNodeFromPoint(double d, double d2) {
        if (isValidate()) {
            return LocalEngineNative.graphFindNodeFromPoint(this.mHandler, d, d2);
        }
        return -1;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public int[] graphFindNodesFromRange(double[] dArr, double[] dArr2) {
        return isValidate() ? LocalEngineNative.graphFindNodesFromRange(this.mHandler, dArr, dArr2) : new int[0];
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public int graphGetLineCount() {
        if (isValidate()) {
            return LocalEngineNative.graphGetLineCount(this.mHandler);
        }
        return -1;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphGetLinePoints(int i, double[] dArr, double[] dArr2) {
        if (isValidate()) {
            return LocalEngineNative.graphGetLinePoints(this.mHandler, i, dArr, dArr2);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public int graphGetLinePointsCount(int i) {
        if (isValidate()) {
            return LocalEngineNative.graphGetLinePointsCount(this.mHandler, i);
        }
        return -1;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public int[] graphGetLinesID() {
        return isValidate() ? LocalEngineNative.graphGetLinesID(this.mHandler) : new int[0];
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public double[] graphGetNodeBoundingBox(int i) {
        return isValidate() ? LocalEngineNative.graphGetNodeBoundingBox(this.mHandler, i) : new double[0];
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public int graphGetNodeKind(int i) {
        if (isValidate()) {
            return LocalEngineNative.graphGetNodeKind(this.mHandler, i);
        }
        return -1;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public String graphGetNodeProperty(int i) {
        return isValidate() ? LocalEngineNative.graphGetNodeProperty(this.mHandler, i) : "";
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public int graphGetNodesCount() {
        if (isValidate()) {
            return LocalEngineNative.graphGetNodesCount(this.mHandler);
        }
        return -1;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public int[] graphGetNodesID() {
        return isValidate() ? LocalEngineNative.graphGetNodesID(this.mHandler) : new int[0];
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public int graphGetParam(int i) {
        if (isValidate()) {
            return LocalEngineNative.graphGetParam(this.mHandler, i);
        }
        return -1;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public int[] graphGetSelection() {
        return isValidate() ? LocalEngineNative.graphGetSelection(this.mHandler) : new int[0];
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphIsSelected(int i) {
        if (isValidate()) {
            return LocalEngineNative.graphIsSelected(this.mHandler, i);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphMoveNode(int i, double d, double d2, double d3, double d4, int i2) {
        if (isValidate()) {
            return LocalEngineNative.graphMoveNode(this.mHandler, i, d, d2, d3, d4, i2);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphMoveNodes(int[] iArr, double d, double d2, double d3, double d4, int i) {
        if (isValidate()) {
            return LocalEngineNative.graphMoveNodes(this.mHandler, iArr, d, d2, d3, d4, i);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphOpenData(String str) {
        if (isValidate()) {
            return LocalEngineNative.graphOpenData(this.mHandler, str);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphPasteNodes(double d, double d2) {
        if (isValidate()) {
            return LocalEngineNative.graphPasteNodes(this.mHandler, d, d2);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphRecognize(int i) {
        if (isValidate()) {
            return LocalEngineNative.graphRecognize(this.mHandler, i);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphRecognizeRange(double[] dArr, double[] dArr2, int i) {
        if (isValidate()) {
            return LocalEngineNative.graphRecognizeRange(this.mHandler, dArr, dArr2, i);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphRedo() {
        if (isValidate()) {
            return LocalEngineNative.graphRedo(this.mHandler);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphRemoveFromRange(double[] dArr) {
        if (isValidate()) {
            return LocalEngineNative.graphRemoveFromRange(this.mHandler, dArr);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphRemoveNode(int i, int i2) {
        if (isValidate()) {
            return LocalEngineNative.graphRemoveNode(this.mHandler, i, i2);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphRemoveNodes(int[] iArr) {
        if (isValidate()) {
            return LocalEngineNative.graphRemoveNodes(this.mHandler, iArr);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphRemoveUserProperty(int i, String str) {
        if (isValidate()) {
            return LocalEngineNative.graphRemoveUserProperty(this.mHandler, i, str);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphScaleTo(int i, double d, double d2, double d3, double d4) {
        if (isValidate()) {
            return LocalEngineNative.graphScaleTo(this.mHandler, i, d, d2, d3, d4);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphSelectNode(int i, boolean z) {
        if (isValidate()) {
            return LocalEngineNative.graphSelectNode(this.mHandler, i, z);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public int graphSetAAssetManager(AssetManager assetManager) {
        return LocalEngineNative.graphSetAAssetManager(assetManager);
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphSetCallback(LocalGraphListener localGraphListener, LocalGraphListener localGraphListener2) {
        return LocalEngineNative.graphSetCallback(localGraphListener, localGraphListener2);
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphSetDPI(float f) {
        if (isValidate()) {
            return LocalEngineNative.graphSetDPI(this.mHandler, f);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public void graphSetDebugLevel(int i) {
        if (isValidate()) {
            LocalEngineNative.graphSetDebugLevel(i);
        }
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public void graphSetLogDir(String str) {
        if (isValidate()) {
            LocalEngineNative.graphSetLogDir(str);
        }
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphSetParam(int i, int i2) {
        if (isValidate()) {
            return LocalEngineNative.graphSetParam(this.mHandler, i, i2);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphSetUserProperty(int i, String str, String str2) {
        if (isValidate()) {
            return LocalEngineNative.graphSetUserProperty(this.mHandler, i, str, str2);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphStop() {
        if (isValidate()) {
            return LocalEngineNative.graphStop(this.mHandler);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public int[] graphSupportedConvert(int i) {
        return isValidate() ? LocalEngineNative.graphSupportedConvert(this.mHandler, i) : new int[0];
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphUndo() {
        if (isValidate()) {
            return LocalEngineNative.graphUndo(this.mHandler);
        }
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean isValidate() {
        long j = this.mHandler;
        if (j != 0) {
            return LocalEngineNative.graphEngineValid(j);
        }
        LogUtil.m57657w(TAG, "GraphEngine未初始化");
        return false;
    }

    @Override // com.sunia.graphv2.sdk.IGraphEngine
    public boolean graphRemoveFromRange(double[] dArr, double[] dArr2) {
        if (isValidate()) {
            return LocalEngineNative.graphRemoveFromRange(this.mHandler, dArr, dArr2);
        }
        return false;
    }
}
