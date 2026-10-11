package com.sunia.commonv2.bean.graph.elements.graph;

import com.google.gson.annotations.SerializedName;
import com.sunia.commonv2.bean.graph.MixtureElementBean;
import com.sunia.commonv2.bean.graph.MixtureMoveBean;
import com.sunia.commonv2.bean.graph.elements.base.ElementBeanBase;
import com.sunia.commonv2.util.HWRUtil;

/* loaded from: classes10.dex */
public class GraphResponse extends ElementBeanBase {
    private GraphMoveBean move;
    private String path;

    @SerializedName("xradius")
    private float xRadius;

    @SerializedName("yradius")
    private float yRadius;

    private GraphResponse(MixtureElementBean mixtureElementBean) {
        super(mixtureElementBean);
    }

    public static GraphResponse getResponseBean(MixtureElementBean mixtureElementBean) {
        GraphResponse graphResponse = new GraphResponse(mixtureElementBean);
        graphResponse.path = mixtureElementBean.getPath();
        MixtureMoveBean mixtureMoveBean = mixtureElementBean.getMixtureMoveBean();
        if (HWRUtil.isNotEmpty(mixtureMoveBean)) {
            graphResponse.move = new GraphMoveBean(mixtureMoveBean);
        }
        graphResponse.xRadius = mixtureElementBean.getXRadius();
        graphResponse.yRadius = mixtureElementBean.getYRadius();
        return graphResponse;
    }

    public GraphMoveBean getMove() {
        return this.move;
    }

    public String getPath() {
        return this.path;
    }

    @Override // com.sunia.commonv2.bean.graph.elements.base.ElementBeanBase
    public float getXRadius() {
        return this.xRadius;
    }

    @Override // com.sunia.commonv2.bean.graph.elements.base.ElementBeanBase
    public float getYRadius() {
        return this.yRadius;
    }
}
