package com.sunia.HTREnginev2;

import android.graphics.Matrix;
import android.graphics.RectF;

/* loaded from: classes3.dex */
public class pgj {

    /* renamed from: a */
    public static final Matrix f80772a = new C14240a();

    /* renamed from: com.sunia.HTREnginev2.pgj$a */
    /* loaded from: classes3.dex */
    public class C14240a extends Matrix {
        /* renamed from: a */
        public void m56258a() {
            throw new IllegalStateException("Matrix can not be modified");
        }

        @Override // android.graphics.Matrix
        public boolean postConcat(Matrix matrix) {
            m56258a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean postRotate(float f, float f2, float f3) {
            m56258a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean postScale(float f, float f2, float f3, float f4) {
            m56258a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean postSkew(float f, float f2, float f3, float f4) {
            m56258a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean postTranslate(float f, float f2) {
            m56258a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preConcat(Matrix matrix) {
            m56258a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preRotate(float f, float f2, float f3) {
            m56258a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preScale(float f, float f2, float f3, float f4) {
            m56258a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preSkew(float f, float f2, float f3, float f4) {
            m56258a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preTranslate(float f, float f2) {
            m56258a();
            return false;
        }

        @Override // android.graphics.Matrix
        public void reset() {
            m56258a();
        }

        @Override // android.graphics.Matrix
        public void set(Matrix matrix) {
            m56258a();
        }

        @Override // android.graphics.Matrix
        public boolean setConcat(Matrix matrix, Matrix matrix2) {
            m56258a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean setPolyToPoly(float[] fArr, int i, float[] fArr2, int i2, int i3) {
            m56258a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean setRectToRect(RectF rectF, RectF rectF2, Matrix.ScaleToFit scaleToFit) {
            m56258a();
            return false;
        }

        @Override // android.graphics.Matrix
        public void setRotate(float f, float f2, float f3) {
            m56258a();
        }

        @Override // android.graphics.Matrix
        public void setScale(float f, float f2, float f3, float f4) {
            m56258a();
        }

        @Override // android.graphics.Matrix
        public void setSinCos(float f, float f2, float f3, float f4) {
            m56258a();
        }

        @Override // android.graphics.Matrix
        public void setSkew(float f, float f2, float f3, float f4) {
            m56258a();
        }

        @Override // android.graphics.Matrix
        public void setTranslate(float f, float f2) {
            m56258a();
        }

        @Override // android.graphics.Matrix
        public void setValues(float[] fArr) {
            m56258a();
        }

        @Override // android.graphics.Matrix
        public boolean postRotate(float f) {
            m56258a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean postScale(float f, float f2) {
            m56258a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean postSkew(float f, float f2) {
            m56258a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preRotate(float f) {
            m56258a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preScale(float f, float f2) {
            m56258a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preSkew(float f, float f2) {
            m56258a();
            return false;
        }

        @Override // android.graphics.Matrix
        public void setRotate(float f) {
            m56258a();
        }

        @Override // android.graphics.Matrix
        public void setScale(float f, float f2) {
            m56258a();
        }

        @Override // android.graphics.Matrix
        public void setSinCos(float f, float f2) {
            m56258a();
        }

        @Override // android.graphics.Matrix
        public void setSkew(float f, float f2) {
            m56258a();
        }
    }
}
