package com.onyx.engine.sdk;

import com.alibaba.fastjson2.annotation.JSONField;
import java.util.Objects;

/* loaded from: classes8.dex */
public class DisplayMetrics {
    private float density;
    private int densityDpi;
    private int height;
    private float scaledDensity;
    private int width;
    private float xDpi;
    private float yDpi;

    public static DisplayMetrics fromJson(String str) {
        return (DisplayMetrics) JsonUtils.fromJson(str, DisplayMetrics.class);
    }

    public void copy(DisplayMetrics displayMetrics) {
        if (displayMetrics == null) {
            return;
        }
        this.density = displayMetrics.density;
        this.width = displayMetrics.width;
        this.height = displayMetrics.height;
        this.scaledDensity = displayMetrics.scaledDensity;
        this.xDpi = displayMetrics.xDpi;
        this.yDpi = displayMetrics.yDpi;
        this.densityDpi = displayMetrics.densityDpi;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DisplayMetrics displayMetrics = (DisplayMetrics) obj;
        return Float.compare(displayMetrics.density, this.density) == 0 && this.width == displayMetrics.width && this.height == displayMetrics.height && Float.compare(displayMetrics.scaledDensity, this.scaledDensity) == 0 && Float.compare(displayMetrics.xDpi, this.xDpi) == 0 && Float.compare(displayMetrics.yDpi, this.yDpi) == 0 && this.densityDpi == displayMetrics.densityDpi;
    }

    public float getDensity() {
        return this.density;
    }

    public int getDensityDpi() {
        return this.densityDpi;
    }

    public int getHeight() {
        return this.height;
    }

    @JSONField(deserialize = false, serialize = false)
    public String getLayoutStyle() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.density);
        sb.append(',');
        sb.append(this.width);
        sb.append(',');
        sb.append(this.height);
        sb.append(',');
        sb.append(this.scaledDensity);
        sb.append(',');
        sb.append(this.xDpi);
        sb.append(',');
        sb.append(this.yDpi);
        sb.append(',');
        sb.append(this.densityDpi);
        return sb.toString();
    }

    public float getScaledDensity() {
        return this.scaledDensity;
    }

    public int getWidth() {
        return this.width;
    }

    public float getxDpi() {
        return this.xDpi;
    }

    public float getyDpi() {
        return this.yDpi;
    }

    public int hashCode() {
        return Objects.hash(Float.valueOf(this.density), Integer.valueOf(this.width), Integer.valueOf(this.height), Float.valueOf(this.scaledDensity), Float.valueOf(this.xDpi), Float.valueOf(this.yDpi), Integer.valueOf(this.densityDpi));
    }

    public void setDensity(float f) {
        this.density = f;
    }

    public void setDensityDpi(int i) {
        this.densityDpi = i;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public void setScaledDensity(float f) {
        this.scaledDensity = f;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    public void setxDpi(float f) {
        this.xDpi = f;
    }

    public void setyDpi(float f) {
        this.yDpi = f;
    }

    public String toJson() {
        return JsonUtils.toJson(this);
    }

    public String toString() {
        return "DisplayMetrics{density=" + this.density + ", width=" + this.width + ", height=" + this.height + ", scaledDensity=" + this.scaledDensity + ", xDpi=" + this.xDpi + ", yDpi=" + this.yDpi + ", densityDpi=" + this.densityDpi + '}';
    }

    public DisplayMetrics copy() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        displayMetrics.copy(this);
        return displayMetrics;
    }
}
