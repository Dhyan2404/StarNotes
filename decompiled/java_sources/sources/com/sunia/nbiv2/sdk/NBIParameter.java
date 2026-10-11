package com.sunia.nbiv2.sdk;

/* loaded from: classes10.dex */
public class NBIParameter {
    private int autoSmooth;
    private int brushTexture;
    private int continuity;
    private int cursive;
    private int feiBai;
    private int lightBrush;
    private int smooth;
    private int width;
    private int yiYang;

    public NBIParameter(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        this.continuity = i;
        this.cursive = i2;
        this.lightBrush = i3;
        this.width = i4;
        this.feiBai = i5;
        this.brushTexture = i6;
        this.yiYang = i7;
        this.smooth = i8;
        this.autoSmooth = i9;
    }

    public int getAutoSmooth() {
        return this.autoSmooth;
    }

    public int getBrushTexture() {
        return this.brushTexture;
    }

    public int getContinuity() {
        return this.continuity;
    }

    public int getCursive() {
        return this.cursive;
    }

    public int getFeiBai() {
        return this.feiBai;
    }

    public int getLightBrush() {
        return this.lightBrush;
    }

    public int getSmooth() {
        return this.smooth;
    }

    public int getWidth() {
        return this.width;
    }

    public int getYiYang() {
        return this.yiYang;
    }
}
