package com.sunia.graphv2.sdk;

import android.content.Context;
import android.graphics.RectF;
import com.sunia.HTREnginev2.sdk.RecognizePath;
import com.sunia.HTREnginev2.sdk.RecognizePoint;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.HTREnginev2.y4h;
import com.sunia.commonv2.bean.graph.elements.graph.GraphRequest;
import com.sunia.commonv2.bean.graph.elements.graph.GraphResponse;
import com.sunia.commonv2.bean.graph.elements.line.LineRequest;
import com.sunia.commonv2.bean.graph.elements.line.LineResponse;
import com.sunia.commonv2.bean.graph.elements.table.ChildrenTable;
import com.sunia.commonv2.global.HWREngineConstant;
import com.sunia.commonv2.util.HWRCommonUtil;
import com.sunia.commonv2.util.HWRUtil;
import com.sunia.graphv2.local.LocalGraphListenerImpl;
import com.sunia.graphv2.sdk.GraphEngineManager;
import com.sunia.nbiv2.sdk.NBIEngineManagerV2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;

/* loaded from: classes10.dex */
public class GraphEngineManager {
    private static final String TAG = "GraphEngineManager";
    private static GraphEngineManager instance;
    private IGraphEngine graphEngine;
    private ExecutorService executorService = Executors.newSingleThreadExecutor();
    private LocalGraphListenerImpl localGraphListener = new LocalGraphListenerImpl();

    private GraphEngineManager() {
        LogUtil.m57653d(TAG, "GraphEngineManager init");
        this.graphEngine = new GraphEngineImpl();
    }

    private void addTask(final Runnable runnable) {
        this.executorService.execute(new FutureTask(new Callable() { // from class: com.sunia.graphv2.sdk.GraphEngineManager.1
            @Override // java.util.concurrent.Callable
            public Object call() {
                try {
                    runnable.run();
                    return null;
                } catch (Exception e) {
                    LogUtil.m57657w(GraphEngineManager.TAG, "执行任务异常=" + LogUtil.getStackTraceString(e));
                    return null;
                }
            }
        }));
    }

    public static GraphEngineManager getInstance() {
        if (instance == null) {
            synchronized (NBIEngineManagerV2.class) {
                if (instance == null) {
                    instance = new GraphEngineManager();
                }
            }
        }
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$0(Context context, String str, GraphCallback graphCallback, String str2, String str3) {
        try {
            LogUtil.m57653d(TAG, "enter start");
            if (!this.graphEngine.graphAuthorizeFromFile(context, str)) {
                throw new Exception("鉴权失败");
            }
            IGraphEngine iGraphEngine = this.graphEngine;
            LocalGraphListenerImpl localGraphListenerImpl = this.localGraphListener;
            boolean graphSetCallback = iGraphEngine.graphSetCallback(localGraphListenerImpl, localGraphListenerImpl);
            LogUtil.m57653d(TAG, "setCallback result: " + graphSetCallback);
            if (!graphSetCallback) {
                throw new Exception("设置回调失败");
            }
            this.localGraphListener.setCallback(graphCallback);
            if (!this.graphEngine.graphCreateEngine(str2, str3)) {
                throw new Exception("图文引擎创建失败");
            }
            this.graphEngine.graphSetDPI(context.getResources().getDisplayMetrics().xdpi);
            graphCallback.onLoad();
        } catch (Exception e) {
            LogUtil.m57655e(TAG, e);
            LocalGraphListenerImpl localGraphListenerImpl2 = this.localGraphListener;
            if (localGraphListenerImpl2 == null) {
                LogUtil.m57654e(TAG, "localGraphListener is null");
            } else {
                localGraphListenerImpl2.onError(e);
            }
        }
    }

    public boolean addGraph(GraphRequest graphRequest) {
        String json = HWREngineConstant.Constant.GSON.toJson(graphRequest);
        LogUtil.m57653d(TAG, "添加图形=" + json);
        return this.graphEngine.graphAddNode(json);
    }

    public boolean addLine(LineRequest lineRequest) {
        String json = HWREngineConstant.Constant.GSON.toJson(lineRequest);
        LogUtil.m57653d(TAG, "添加线段=" + json);
        return this.graphEngine.graphAddNode(json);
    }

    public boolean addRecognizePath(RecognizePath recognizePath) {
        if (HWRUtil.isEmpty(recognizePath)) {
            return false;
        }
        double[] dArr = new double[recognizePath.getPoints().size()];
        double[] dArr2 = new double[recognizePath.getPoints().size()];
        for (int i = 0; i < recognizePath.getPoints().size(); i++) {
            RecognizePoint recognizePoint = recognizePath.getPoints().get(i);
            dArr[i] = recognizePoint.f84039x;
            dArr2[i] = recognizePoint.f84040y;
        }
        return !HWRUtil.isInvalidData(this.graphEngine.graphAddLine(dArr, dArr2));
    }

    public boolean addUserProperty(int i, String str, String str2) {
        if (HWRUtil.isInvalidData(i)) {
            return false;
        }
        return this.graphEngine.graphSetUserProperty(i, str, str2);
    }

    public void clear() {
        this.graphEngine.graphClear();
    }

    public List<RecognizePath> getRecognizePathList() {
        ArrayList arrayList = new ArrayList();
        int[] graphGetLinesID = this.graphEngine.graphGetLinesID();
        LogUtil.m57657w(TAG, "lineIdArray=" + Arrays.toString(graphGetLinesID));
        for (int i = 0; i < graphGetLinesID.length; i++) {
            int i2 = graphGetLinesID[i];
            int graphGetLinePointsCount = this.graphEngine.graphGetLinePointsCount(i2);
            if (!HWRUtil.isInvalidData(graphGetLinePointsCount)) {
                double[] dArr = new double[graphGetLinePointsCount];
                double[] dArr2 = new double[graphGetLinePointsCount];
                this.graphEngine.graphGetLinePoints(i2, dArr, dArr2);
                RecognizePath recognizePath = new RecognizePath();
                arrayList.add(recognizePath);
                for (int i3 = 0; i3 < graphGetLinePointsCount; i3++) {
                    recognizePath.getPoints().add(new RecognizePoint((float) dArr[i3], (float) dArr2[i3], 0L));
                }
            }
        }
        return arrayList;
    }

    public boolean graphCanPasteNodes() {
        return this.graphEngine.graphCanPasteNodes();
    }

    public boolean graphCanRedo() {
        return this.graphEngine.graphCanRedo();
    }

    public boolean graphCanUndo() {
        return this.graphEngine.graphCanUndo();
    }

    public boolean graphConvertNodeTo(int i, int i2) {
        return this.graphEngine.graphConvertNodeTo(i, i2);
    }

    public boolean graphCopyNodes(List<Integer> list) {
        if (HWRUtil.isEmpty((List<?>) list)) {
            return false;
        }
        return this.graphEngine.graphCopyNodes(list.stream().mapToInt(new y4h()).toArray());
    }

    public boolean graphCutNodes(List<Integer> list) {
        if (HWRUtil.isEmpty((List<?>) list)) {
            return false;
        }
        return this.graphEngine.graphCutNodes(list.stream().mapToInt(new y4h()).toArray());
    }

    public int graphFindNodeFromPoint(double d, double d2) {
        return this.graphEngine.graphFindNodeFromPoint(d, d2);
    }

    public int graphGetLineCount() {
        return this.graphEngine.graphGetLineCount();
    }

    public RectF graphGetNodeBoundingBox(int i) {
        return HWRUtil.getRectF(this.graphEngine.graphGetNodeBoundingBox(i));
    }

    public int graphGetNodeKind(int i) {
        return this.graphEngine.graphGetNodeKind(i);
    }

    public GraphResponse graphGetNodePropertyForGraph(int i) {
        LogUtil.m57653d(TAG, "graphGetNodePropertyForGraph nodeID=" + i);
        String graphGetNodeProperty = this.graphEngine.graphGetNodeProperty(i);
        try {
            return (GraphResponse) HWREngineConstant.Constant.GSON.fromJson(graphGetNodeProperty, GraphResponse.class);
        } catch (Exception e) {
            LogUtil.m57654e(TAG, "graphGetNodePropertyForGraph=" + graphGetNodeProperty);
            LogUtil.m57655e(TAG, e);
            return null;
        }
    }

    public LineResponse graphGetNodePropertyForLine(int i) {
        LogUtil.m57653d(TAG, "graphGetNodePropertyForLine nodeID=" + i);
        String graphGetNodeProperty = this.graphEngine.graphGetNodeProperty(i);
        try {
            return (LineResponse) HWREngineConstant.Constant.GSON.fromJson(graphGetNodeProperty, LineResponse.class);
        } catch (Exception e) {
            LogUtil.m57654e(TAG, "graphGetNodePropertyForLine=" + graphGetNodeProperty);
            LogUtil.m57655e(TAG, e);
            return null;
        }
    }

    public ChildrenTable graphGetNodePropertyForSubTable(int i) {
        LogUtil.m57653d(TAG, "graphGetNodePropertyForSubTable nodeID=" + i);
        String graphGetNodeProperty = this.graphEngine.graphGetNodeProperty(i);
        try {
            return (ChildrenTable) HWREngineConstant.Constant.GSON.fromJson(graphGetNodeProperty, ChildrenTable.class);
        } catch (Exception e) {
            LogUtil.m57654e(TAG, "graphGetNodePropertyForSubTable=" + graphGetNodeProperty);
            LogUtil.m57655e(TAG, e);
            return null;
        }
    }

    public boolean graphPasteNodes(double d, double d2) {
        return this.graphEngine.graphPasteNodes(d, d2);
    }

    public boolean graphRecognize() {
        return this.graphEngine.graphRecognize(0);
    }

    public boolean graphRedo() {
        return this.graphEngine.graphRedo();
    }

    public boolean graphRemoveNodes(int... iArr) {
        if (HWRUtil.isEmpty(iArr)) {
            return false;
        }
        return this.graphEngine.graphRemoveNodes(iArr);
    }

    public boolean graphRemoveNodesSubItem(int... iArr) {
        if (HWRUtil.isEmpty(iArr)) {
            return false;
        }
        boolean z = false;
        for (int i : iArr) {
            z = this.graphEngine.graphRemoveNode(i, 1);
        }
        return z;
    }

    public boolean graphScaleTo(int i, RectF rectF) {
        LogUtil.m57653d(TAG, "graphScaleTo nodeID=" + i + ",rectF=" + rectF);
        return this.graphEngine.graphScaleTo(i, rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    public void graphSetDebugLevel(int i) {
        this.graphEngine.graphSetDebugLevel(i);
    }

    public void graphSetLogDir(String str) {
        this.graphEngine.graphSetLogDir(str);
    }

    public int[] graphSupportedConvert(int i) {
        return this.graphEngine.graphSupportedConvert(i);
    }

    public boolean graphUndo() {
        return this.graphEngine.graphUndo();
    }

    public boolean isValidate() {
        return this.graphEngine.isValidate();
    }

    public boolean moveNodeList(List<Integer> list, RecognizePoint recognizePoint, RecognizePoint recognizePoint2) {
        LogUtil.m57653d(TAG, "批量移动节点,执行移动操作=" + list + "，startPoint=" + recognizePoint + "，endPoint=" + recognizePoint2);
        return this.graphEngine.graphMoveNodes(list.stream().mapToInt(new y4h()).toArray(), recognizePoint.f84039x, recognizePoint.f84040y, recognizePoint2.f84039x, recognizePoint2.f84040y, 0);
    }

    public boolean removeUserProperty(int i, String str) {
        if (HWRUtil.isInvalidData(i)) {
            return false;
        }
        return this.graphEngine.graphRemoveUserProperty(i, str);
    }

    public boolean saveFillColor(int i, int i2) {
        if (HWRUtil.isInvalidData(i)) {
            return false;
        }
        return addUserProperty(i, HWREngineConstant.GraphProperty.GRAPH_FILL_COLOR, String.valueOf(i2));
    }

    public void start(Context context, final String str, final String str2, final String str3, final GraphCallback graphCallback) {
        final Context applicationContent = HWRCommonUtil.getApplicationContent(context);
        addTask(new Runnable() { // from class: com.sunia.HTREnginev2.x4h
            @Override // java.lang.Runnable
            public final void run() {
                GraphEngineManager.this.lambda$start$0(applicationContent, str, graphCallback, str2, str3);
            }
        });
    }

    public boolean upNodeList(List<Integer> list, RecognizePoint recognizePoint, RecognizePoint recognizePoint2) {
        LogUtil.m57657w(TAG, "批量移动节点,执行抬手操作=" + list + "，startPoint=" + recognizePoint + "，endPoint=" + recognizePoint2);
        return this.graphEngine.graphMoveNodes(list.stream().mapToInt(new y4h()).toArray(), recognizePoint.f84039x, recognizePoint.f84040y, recognizePoint2.f84039x, recognizePoint2.f84040y, 1);
    }
}
