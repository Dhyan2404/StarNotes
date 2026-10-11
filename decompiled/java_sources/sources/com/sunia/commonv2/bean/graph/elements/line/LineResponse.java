package com.sunia.commonv2.bean.graph.elements.line;

import com.sunia.HTREnginev2.sdk.RecognizePoint;
import com.sunia.commonv2.bean.graph.MixtureElementBean;
import com.sunia.commonv2.bean.graph.MixtureMoveBean;
import com.sunia.commonv2.bean.graph.elements.base.ElementBeanBase;
import com.sunia.commonv2.util.HWRUtil;
import java.util.List;

/* loaded from: classes10.dex */
public class LineResponse extends ElementBeanBase {
    private String endDecoration;
    private LineMoveBean move;
    private String points;
    private String startDecoration;

    private LineResponse() {
        this.startDecoration = "Node";
        this.endDecoration = "Node";
    }

    public static LineResponse getResponseBean(MixtureElementBean mixtureElementBean) {
        LineResponse lineResponse = new LineResponse(mixtureElementBean);
        lineResponse.startDecoration = mixtureElementBean.getStartDecoration();
        lineResponse.endDecoration = mixtureElementBean.getEndDecoration();
        lineResponse.points = mixtureElementBean.getPoints();
        MixtureMoveBean mixtureMoveBean = mixtureElementBean.getMixtureMoveBean();
        if (HWRUtil.isNotEmpty(mixtureMoveBean)) {
            lineResponse.move = new LineMoveBean(mixtureMoveBean);
        }
        return lineResponse;
    }

    public List<RecognizePoint> getAllPoint() {
        return HWRUtil.getAllPoint(this.points);
    }

    public String getEndDecoration() {
        return this.endDecoration;
    }

    public LineMoveBean getMove() {
        return this.move;
    }

    public String getStartDecoration() {
        return this.startDecoration;
    }

    public LineResponse(MixtureElementBean mixtureElementBean) {
        super(mixtureElementBean);
        this.startDecoration = "Node";
        this.endDecoration = "Node";
    }
}
