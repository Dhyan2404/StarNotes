package com.sunia.commonv2.bean;

import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.RectF;
import java.io.Serializable;

/* loaded from: classes10.dex */
public class BoundingBox implements Serializable {
    private static final long serialVersionUID = -5468799758138031232L;
    private float height;

    /* renamed from: id */
    private String f92482id;
    private String idss = "";
    private String lang = "";
    private int rownum;
    private float width;

    /* renamed from: x */
    private float f92483x;

    /* renamed from: y */
    private float f92484y;

    public static float mmToPx(double d) {
        return ((float) (d / 25.4d)) * Resources.getSystem().getDisplayMetrics().xdpi;
    }

    public final float centerX() {
        return this.f92483x + (this.width / 2.0f);
    }

    public final float centerY() {
        return this.f92484y + (this.height / 2.0f);
    }

    public float getHeight() {
        return this.height;
    }

    public String getId() {
        return this.f92482id;
    }

    public String getIdss() {
        return this.idss;
    }

    public String getLang() {
        return this.lang;
    }

    public int getRownum() {
        return this.rownum;
    }

    public float getWidth() {
        return this.width;
    }

    public float getX() {
        return this.f92483x;
    }

    public float getY() {
        return this.f92484y;
    }

    public Rect obtainRect() {
        return new Rect((int) mmToPx(this.f92483x), (int) mmToPx(this.f92484y), (int) mmToPx(this.f92483x + this.width), (int) mmToPx(this.f92484y + this.height));
    }

    public RectF obtainRectF() {
        float f = this.f92483x;
        float f2 = this.f92484y;
        return new RectF(f, f2, this.width + f, this.height + f2);
    }

    public void setHeight(float f) {
        this.height = f;
    }

    public void setId(String str) {
        this.f92482id = str;
    }

    public void setIdss(String str) {
        this.idss = str;
    }

    public void setRownum(int i) {
        this.rownum = i;
    }

    public void setWidth(float f) {
        this.width = f;
    }

    public void setX(float f) {
        this.f92483x = f;
    }

    public void setY(float f) {
        this.f92484y = f;
    }

    public String toString() {
        return "BoundingBox{x=" + this.f92483x + ", y=" + this.f92484y + ", width=" + this.width + ", height=" + this.height + '}';
    }
}
