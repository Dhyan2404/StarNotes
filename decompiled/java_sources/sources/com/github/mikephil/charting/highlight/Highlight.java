package com.github.mikephil.charting.highlight;

import com.github.mikephil.charting.components.YAxis;

/* loaded from: classes4.dex */
public class Highlight {

    /* renamed from: a */
    public float f21655a;

    /* renamed from: b */
    public float f21656b;

    /* renamed from: c */
    public float f21657c;

    /* renamed from: d */
    public float f21658d;

    /* renamed from: e */
    public int f21659e;

    /* renamed from: f */
    public int f21660f;

    /* renamed from: g */
    public int f21661g;

    /* renamed from: h */
    public YAxis.AxisDependency f21662h;

    /* renamed from: i */
    public float f21663i;

    /* renamed from: j */
    public float f21664j;

    public Highlight(float f, float f2, int i) {
        this.f21659e = -1;
        this.f21661g = -1;
        this.f21655a = f;
        this.f21656b = f2;
        this.f21660f = i;
    }

    public boolean equalTo(Highlight highlight) {
        return highlight != null && this.f21660f == highlight.f21660f && this.f21655a == highlight.f21655a && this.f21661g == highlight.f21661g && this.f21659e == highlight.f21659e;
    }

    public YAxis.AxisDependency getAxis() {
        return this.f21662h;
    }

    public int getDataIndex() {
        return this.f21659e;
    }

    public int getDataSetIndex() {
        return this.f21660f;
    }

    public float getDrawX() {
        return this.f21663i;
    }

    public float getDrawY() {
        return this.f21664j;
    }

    public int getStackIndex() {
        return this.f21661g;
    }

    public float getX() {
        return this.f21655a;
    }

    public float getXPx() {
        return this.f21657c;
    }

    public float getY() {
        return this.f21656b;
    }

    public float getYPx() {
        return this.f21658d;
    }

    public boolean isStacked() {
        return this.f21661g >= 0;
    }

    public void setDataIndex(int i) {
        this.f21659e = i;
    }

    public void setDraw(float f, float f2) {
        this.f21663i = f;
        this.f21664j = f2;
    }

    public String toString() {
        return "Highlight, x: " + this.f21655a + ", y: " + this.f21656b + ", dataSetIndex: " + this.f21660f + ", stackIndex (only stacked barentry): " + this.f21661g;
    }

    public Highlight(float f, int i, int i2) {
        this(f, Float.NaN, i);
        this.f21661g = i2;
    }

    public Highlight(float f, float f2, float f3, float f4, int i, YAxis.AxisDependency axisDependency) {
        this.f21659e = -1;
        this.f21661g = -1;
        this.f21655a = f;
        this.f21656b = f2;
        this.f21657c = f3;
        this.f21658d = f4;
        this.f21660f = i;
        this.f21662h = axisDependency;
    }

    public Highlight(float f, float f2, float f3, float f4, int i, int i2, YAxis.AxisDependency axisDependency) {
        this(f, f2, f3, f4, i, axisDependency);
        this.f21661g = i2;
    }
}
