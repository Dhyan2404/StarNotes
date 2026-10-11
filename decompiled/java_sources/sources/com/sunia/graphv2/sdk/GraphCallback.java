package com.sunia.graphv2.sdk;

import com.sunia.commonv2.bean.graph.GraphBaseResponse;
import com.sunia.commonv2.bean.graph.render.GraphRenderBean;
import com.sunia.commonv2.callback.INoProguard;

/* loaded from: classes10.dex */
public interface GraphCallback extends INoProguard {
    float[] getMetrics(GraphRenderBean graphRenderBean);

    void onCancel();

    void onError(Exception exc);

    void onLoad();

    void onResult(GraphBaseResponse graphBaseResponse);
}
