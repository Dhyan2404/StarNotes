package com.sunia.commonv2.bean.graph.elements.graph;

import com.sunia.commonv2.bean.graph.MixtureMoveBean;

/* loaded from: classes10.dex */
public class GraphMoveBean {
    private String path;

    public GraphMoveBean(MixtureMoveBean mixtureMoveBean) {
        this.path = mixtureMoveBean.getPath();
    }

    public String getPath() {
        return this.path;
    }
}
