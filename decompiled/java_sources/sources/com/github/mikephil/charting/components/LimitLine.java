package com.github.mikephil.charting.components;

import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import com.github.mikephil.charting.utils.Utils;

/* loaded from: classes4.dex */
public class LimitLine extends ComponentBase {

    /* renamed from: a */
    public float f21561a;

    /* renamed from: b */
    public float f21562b;

    /* renamed from: c */
    public int f21563c;

    /* renamed from: d */
    public Paint.Style f21564d;

    /* renamed from: e */
    public String f21565e;

    /* renamed from: f */
    public DashPathEffect f21566f;

    /* renamed from: g */
    public LimitLabelPosition f21567g;

    /* loaded from: classes4.dex */
    public enum LimitLabelPosition {
        LEFT_TOP,
        LEFT_BOTTOM,
        RIGHT_TOP,
        RIGHT_BOTTOM
    }

    public LimitLine(float f) {
        this.f21561a = 0.0f;
        this.f21562b = 2.0f;
        this.f21563c = Color.rgb(237, 91, 91);
        this.f21564d = Paint.Style.FILL_AND_STROKE;
        this.f21565e = "";
        this.f21566f = null;
        this.f21567g = LimitLabelPosition.RIGHT_TOP;
        this.f21561a = f;
    }

    public void disableDashedLine() {
        this.f21566f = null;
    }

    public void enableDashedLine(float f, float f2, float f3) {
        this.f21566f = new DashPathEffect(new float[]{f, f2}, f3);
    }

    public DashPathEffect getDashPathEffect() {
        return this.f21566f;
    }

    public String getLabel() {
        return this.f21565e;
    }

    public LimitLabelPosition getLabelPosition() {
        return this.f21567g;
    }

    public float getLimit() {
        return this.f21561a;
    }

    public int getLineColor() {
        return this.f21563c;
    }

    public float getLineWidth() {
        return this.f21562b;
    }

    public Paint.Style getTextStyle() {
        return this.f21564d;
    }

    public boolean isDashedLineEnabled() {
        return this.f21566f != null;
    }

    public void setLabel(String str) {
        this.f21565e = str;
    }

    public void setLabelPosition(LimitLabelPosition limitLabelPosition) {
        this.f21567g = limitLabelPosition;
    }

    public void setLineColor(int i) {
        this.f21563c = i;
    }

    public void setLineWidth(float f) {
        if (f < 0.2f) {
            f = 0.2f;
        }
        if (f > 12.0f) {
            f = 12.0f;
        }
        this.f21562b = Utils.convertDpToPixel(f);
    }

    public void setTextStyle(Paint.Style style) {
        this.f21564d = style;
    }

    public LimitLine(float f, String str) {
        this.f21561a = 0.0f;
        this.f21562b = 2.0f;
        this.f21563c = Color.rgb(237, 91, 91);
        this.f21564d = Paint.Style.FILL_AND_STROKE;
        this.f21565e = "";
        this.f21566f = null;
        this.f21567g = LimitLabelPosition.RIGHT_TOP;
        this.f21561a = f;
        this.f21565e = str;
    }
}
