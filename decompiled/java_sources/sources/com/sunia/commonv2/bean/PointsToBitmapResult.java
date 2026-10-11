package com.sunia.commonv2.bean;

/* loaded from: classes10.dex */
public class PointsToBitmapResult {
    private byte[] bitmapByteArray;
    private float height;
    private float width;

    public PointsToBitmapResult(byte[] bArr, float f, float f2) {
        this.bitmapByteArray = bArr;
        this.width = f;
        this.height = f2;
    }

    public byte[] getBitmapByteArray() {
        return this.bitmapByteArray;
    }

    public float getHeight() {
        return this.height;
    }

    public float getWidth() {
        return this.width;
    }
}
