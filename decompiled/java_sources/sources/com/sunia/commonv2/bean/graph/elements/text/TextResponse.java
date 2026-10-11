package com.sunia.commonv2.bean.graph.elements.text;

import com.sunia.commonv2.bean.graph.MixtureElementBean;
import com.sunia.commonv2.bean.graph.MixtureMoveBean;
import com.sunia.commonv2.bean.graph.elements.base.ElementBeanBase;
import com.sunia.commonv2.util.HWRUtil;

/* loaded from: classes10.dex */
public class TextResponse extends ElementBeanBase {
    private String label;
    private TextMoveBean move;

    private TextResponse(MixtureElementBean mixtureElementBean) {
        super(mixtureElementBean);
        this.label = "";
    }

    public static TextResponse getResponseBean(MixtureElementBean mixtureElementBean) {
        TextResponse textResponse = new TextResponse(mixtureElementBean);
        textResponse.label = mixtureElementBean.getLabel();
        MixtureMoveBean mixtureMoveBean = mixtureElementBean.getMixtureMoveBean();
        if (HWRUtil.isNotEmpty(mixtureMoveBean)) {
            textResponse.move = new TextMoveBean(mixtureMoveBean);
        }
        return textResponse;
    }

    public String getLabel() {
        return this.label;
    }

    public TextMoveBean getMove() {
        return this.move;
    }
}
