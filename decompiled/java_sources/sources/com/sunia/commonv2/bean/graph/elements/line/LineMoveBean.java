package com.sunia.commonv2.bean.graph.elements.line;

import com.sunia.HTREnginev2.sdk.RecognizePoint;
import com.sunia.commonv2.bean.graph.MixtureMoveBean;
import com.sunia.commonv2.util.HWRUtil;
import java.util.List;

/* loaded from: classes10.dex */
public class LineMoveBean {
    private String endDecoration;
    private String points;
    private String startDecoration;

    public LineMoveBean(MixtureMoveBean mixtureMoveBean) {
        this.startDecoration = "Node";
        this.endDecoration = "Node";
        this.startDecoration = mixtureMoveBean.getStartDecoration();
        this.endDecoration = mixtureMoveBean.getEndDecoration();
        this.points = mixtureMoveBean.getPoints();
    }

    public List<RecognizePoint> getAllPoint() {
        return HWRUtil.getAllPoint(this.points);
    }

    public String getEndDecoration() {
        return this.endDecoration;
    }

    public String getStartDecoration() {
        return this.startDecoration;
    }
}
