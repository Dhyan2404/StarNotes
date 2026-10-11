package com.sunia.commonv2.bean.graph.elements.text;

import com.google.gson.annotations.SerializedName;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import com.sunia.commonv2.bean.BoundingBox;
import com.sunia.commonv2.bean.graph.MixtureMoveBean;

/* loaded from: classes10.dex */
public class TextMoveBean {

    @SerializedName(IStyleSheet.CLASS_BOUNDING_BOX)
    private BoundingBox boundingBox;

    public TextMoveBean(MixtureMoveBean mixtureMoveBean) {
        this.boundingBox = mixtureMoveBean.getBoundingBox();
    }

    public BoundingBox getBoundingBox() {
        return this.boundingBox;
    }
}
