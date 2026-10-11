package com.github.mikephil.charting.components;

import com.github.mikephil.charting.utils.Utils;

/* loaded from: classes4.dex */
public class XAxis extends AxisBase {
    public int mLabelWidth = 1;
    public int mLabelHeight = 1;
    public int mLabelRotatedWidth = 1;
    public int mLabelRotatedHeight = 1;
    protected float mLabelRotationAngle = 0.0f;

    /* renamed from: h */
    public boolean f21578h = false;

    /* renamed from: i */
    public XAxisPosition f21579i = XAxisPosition.TOP;

    /* loaded from: classes4.dex */
    public enum XAxisPosition {
        TOP,
        BOTTOM,
        BOTH_SIDED,
        TOP_INSIDE,
        BOTTOM_INSIDE
    }

    public XAxis() {
        this.mYOffset = Utils.convertDpToPixel(4.0f);
    }

    public float getLabelRotationAngle() {
        return this.mLabelRotationAngle;
    }

    public XAxisPosition getPosition() {
        return this.f21579i;
    }

    public boolean isAvoidFirstLastClippingEnabled() {
        return this.f21578h;
    }

    public void setAvoidFirstLastClipping(boolean z) {
        this.f21578h = z;
    }

    public void setLabelRotationAngle(float f) {
        this.mLabelRotationAngle = f;
    }

    public void setPosition(XAxisPosition xAxisPosition) {
        this.f21579i = xAxisPosition;
    }
}
