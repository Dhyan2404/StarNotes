package com.github.mikephil.charting.data;

/* loaded from: classes4.dex */
public abstract class BaseEntry {
    private Object mData;

    /* renamed from: y */
    private float f21596y;

    public BaseEntry() {
        this.f21596y = 0.0f;
        this.mData = null;
    }

    public Object getData() {
        return this.mData;
    }

    public float getY() {
        return this.f21596y;
    }

    public void setData(Object obj) {
        this.mData = obj;
    }

    public void setY(float f) {
        this.f21596y = f;
    }

    public BaseEntry(float f) {
        this.mData = null;
        this.f21596y = f;
    }

    public BaseEntry(float f, Object obj) {
        this(f);
        this.mData = obj;
    }
}
