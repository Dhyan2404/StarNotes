package com.sunia.commonv2.bean.graph.elements.table;

import com.sunia.commonv2.bean.graph.MixtureMoveBean;

/* loaded from: classes10.dex */
public class TableMoveBean {
    private String path;

    public TableMoveBean(MixtureMoveBean mixtureMoveBean) {
        this.path = mixtureMoveBean.getPath();
    }

    public String getPath() {
        return this.path;
    }
}
