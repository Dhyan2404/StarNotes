package com.sunia.graphv2.local;

import com.google.gson.reflect.TypeToken;
import com.sunia.HTREnginev2.sdk.RecognizePath;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.commonv2.bean.graph.GraphBaseResponse;
import com.sunia.commonv2.bean.graph.render.GraphRenderBean;
import com.sunia.commonv2.global.HWREngineConstant;
import com.sunia.commonv2.util.HWRUtil;
import com.sunia.graphv2.sdk.GraphCallback;
import com.sunia.graphv2.sdk.GraphEngineManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes10.dex */
public class LocalGraphListenerImpl implements LocalGraphListener, GraphCallback {
    private static final String TAG = "LocalGraphListenerImpl";
    private WeakReference<GraphCallback> callback;
    private volatile List<RecognizePath> recognizePathList = new ArrayList();

    /* renamed from: com.sunia.graphv2.local.LocalGraphListenerImpl$a */
    /* loaded from: classes10.dex */
    public class C14857a extends TypeToken<GraphBaseResponse> {
        public C14857a() {
        }
    }

    @Override // com.sunia.graphv2.sdk.GraphCallback
    public float[] getMetrics(GraphRenderBean graphRenderBean) {
        if (HWRUtil.isNotEmpty(this.callback) && HWRUtil.isNotEmpty(this.callback.get())) {
            return this.callback.get().getMetrics(graphRenderBean);
        }
        return null;
    }

    @Override // com.sunia.graphv2.sdk.GraphCallback
    public void onCancel() {
        if (HWRUtil.isNotEmpty(this.callback) && HWRUtil.isNotEmpty(this.callback.get())) {
            this.callback.get().onCancel();
        }
    }

    @Override // com.sunia.graphv2.sdk.GraphCallback
    public void onError(Exception exc) {
        if (HWRUtil.isNotEmpty(this.callback) && HWRUtil.isNotEmpty(this.callback.get())) {
            this.callback.get().onError(exc);
        }
    }

    @Override // com.sunia.graphv2.local.LocalGraphListener
    public int onGraphRenderCallback(long j, int i, String str, float[] fArr, int i2, int i3, float[] fArr2, int i4, float[] fArr3) {
        GraphRenderBean graphRenderBean = new GraphRenderBean(j, i, str, fArr, i2, i3, fArr2, i4, fArr3);
        LogUtil.m57653d(TAG, "onGraphRenderCallback: graphRenderBean=" + graphRenderBean);
        float[] metrics = getMetrics(graphRenderBean);
        if (HWRUtil.isEmpty(metrics)) {
            LogUtil.m57657w(TAG, "onGraphRenderCallback: uiMetrics is null");
            return 0;
        }
        if (metrics.length != 2) {
            LogUtil.m57657w(TAG, "onGraphRenderCallback: uiMetrics.length!= 2");
            return 0;
        }
        fArr3[0] = metrics[0];
        fArr3[1] = metrics[1];
        return 1;
    }

    @Override // com.sunia.graphv2.local.LocalGraphListener
    public void onGraphResultCallback(long j, int i, String str) {
        synchronized (TAG) {
            LogUtil.m57653d(TAG, "onGraphResultCallback: engine=" + j + ",resultCode=" + i + ",json= " + str);
            try {
            } catch (Exception e) {
                LogUtil.m57657w(TAG, "json解析报错=" + LogUtil.getStackTraceString(e));
                LogUtil.m57657w(TAG, "json解析报错=" + str);
                onError(e);
            }
            if (i != 0) {
                if (i == 2) {
                    LogUtil.m57657w(TAG, "图形引擎停止");
                    return;
                } else {
                    LogUtil.m57657w(TAG, "通知业务方，识别失败");
                    onError(new Exception(str));
                    return;
                }
            }
            GraphBaseResponse graphBaseResponse = (GraphBaseResponse) HWREngineConstant.Constant.GSON.fromJson(str, new C14857a().getType());
            int graphGetLineCount = GraphEngineManager.getInstance().graphGetLineCount();
            if (this.recognizePathList.size() != graphGetLineCount) {
                this.recognizePathList = GraphEngineManager.getInstance().getRecognizePathList();
            }
            graphBaseResponse.getRecognizePathList().addAll(this.recognizePathList);
            LogUtil.m57653d(TAG, "graphGetLineCount=" + graphGetLineCount);
            onResult(graphBaseResponse);
        }
    }

    @Override // com.sunia.graphv2.sdk.GraphCallback
    public void onLoad() {
        if (HWRUtil.isNotEmpty(this.callback) && HWRUtil.isNotEmpty(this.callback.get())) {
            this.callback.get().onLoad();
        }
    }

    @Override // com.sunia.graphv2.sdk.GraphCallback
    public void onResult(GraphBaseResponse graphBaseResponse) {
        if (HWRUtil.isNotEmpty(this.callback) && HWRUtil.isNotEmpty(this.callback.get())) {
            this.callback.get().onResult(graphBaseResponse);
        }
    }

    public void setCallback(GraphCallback graphCallback) {
        this.callback = new WeakReference<>(graphCallback);
    }
}
