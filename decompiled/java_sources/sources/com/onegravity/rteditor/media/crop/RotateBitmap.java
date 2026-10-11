package com.onegravity.rteditor.media.crop;

import android.graphics.Bitmap;
import android.graphics.Matrix;

/* loaded from: classes7.dex */
public class RotateBitmap {
    public static final String TAG = "RotateBitmap";

    /* renamed from: a */
    public Bitmap f40506a;

    /* renamed from: b */
    public int f40507b;

    public RotateBitmap(Bitmap bitmap) {
        this.f40506a = bitmap;
        this.f40507b = 0;
    }

    public Bitmap getBitmap() {
        return this.f40506a;
    }

    public int getHeight() {
        return isOrientationChanged() ? this.f40506a.getWidth() : this.f40506a.getHeight();
    }

    public Matrix getRotateMatrix() {
        Matrix matrix = new Matrix();
        if (this.f40507b != 0) {
            matrix.preTranslate(-(this.f40506a.getWidth() / 2), -(this.f40506a.getHeight() / 2));
            matrix.postRotate(this.f40507b);
            matrix.postTranslate(getWidth() / 2, getHeight() / 2);
        }
        return matrix;
    }

    public int getRotation() {
        return this.f40507b;
    }

    public int getWidth() {
        return isOrientationChanged() ? this.f40506a.getHeight() : this.f40506a.getWidth();
    }

    public boolean isOrientationChanged() {
        return (this.f40507b / 90) % 2 != 0;
    }

    public void recycle() {
        Bitmap bitmap = this.f40506a;
        if (bitmap != null) {
            bitmap.recycle();
            this.f40506a = null;
        }
    }

    public void setBitmap(Bitmap bitmap) {
        this.f40506a = bitmap;
    }

    public void setRotation(int i) {
        this.f40507b = i;
    }

    public RotateBitmap(Bitmap bitmap, int i) {
        this.f40506a = bitmap;
        this.f40507b = i % 360;
    }
}
