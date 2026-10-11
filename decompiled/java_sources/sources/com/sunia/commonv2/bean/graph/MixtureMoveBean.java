package com.sunia.commonv2.bean.graph;

import com.google.gson.annotations.SerializedName;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import com.sunia.commonv2.bean.BoundingBox;

/* loaded from: classes10.dex */
public class MixtureMoveBean {

    @SerializedName(IStyleSheet.CLASS_BOUNDING_BOX)
    private BoundingBox boundingBox;
    private String endDecoration;
    private String move;
    private String path;
    private String points;
    private String startDecoration;

    public BoundingBox getBoundingBox() {
        return this.boundingBox;
    }

    public String getEndDecoration() {
        return this.endDecoration;
    }

    public String getMove() {
        return this.move;
    }

    public String getPath() {
        return this.path;
    }

    public String getPoints() {
        return this.points;
    }

    public String getStartDecoration() {
        return this.startDecoration;
    }
}
