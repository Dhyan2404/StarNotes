package com.sunia.commonv2.bean.graph.elements.base;

import com.google.gson.annotations.SerializedName;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import com.sunia.commonv2.bean.BoundingBox;
import com.sunia.commonv2.bean.graph.elements.graph.GraphConnectedBean;
import java.util.List;

/* loaded from: classes10.dex */
public class ElementBeanBase {

    @SerializedName(IStyleSheet.CLASS_BOUNDING_BOX)
    private BoundingBox boundingBox;
    private boolean byMoveChanged;

    @SerializedName("connected")
    private List<GraphConnectedBean> connectedBeanList;

    /* renamed from: id */
    private int f92506id;
    private String kind;
    private String lineID;
    private boolean selected;
    private String type;

    @SerializedName("userPropertys")
    private Object userProperty;

    @SerializedName("xradius")
    private float xRadius;

    @SerializedName("yradius")
    private float yRadius;

    public ElementBeanBase() {
    }

    public BoundingBox getBoundingBox() {
        return this.boundingBox;
    }

    public List<GraphConnectedBean> getConnectedBeanList() {
        return this.connectedBeanList;
    }

    public int getId() {
        return this.f92506id;
    }

    public String getKind() {
        return this.kind;
    }

    public String getLineID() {
        return this.lineID;
    }

    public String getType() {
        return this.type;
    }

    public Object getUserProperty() {
        return this.userProperty;
    }

    public float getXRadius() {
        return this.xRadius;
    }

    public float getYRadius() {
        return this.yRadius;
    }

    public boolean isByMoveChanged() {
        return this.byMoveChanged;
    }

    public boolean isSelected() {
        return this.selected;
    }

    public ElementBeanBase(ElementBeanBase elementBeanBase) {
        this.boundingBox = elementBeanBase.getBoundingBox();
        this.byMoveChanged = elementBeanBase.isByMoveChanged();
        this.f92506id = elementBeanBase.getId();
        this.kind = elementBeanBase.getKind();
        this.lineID = elementBeanBase.getLineID();
        this.selected = elementBeanBase.isSelected();
        this.type = elementBeanBase.getType();
        this.userProperty = elementBeanBase.getUserProperty();
        this.connectedBeanList = elementBeanBase.getConnectedBeanList();
        this.xRadius = elementBeanBase.getXRadius();
        this.yRadius = elementBeanBase.getYRadius();
    }
}
