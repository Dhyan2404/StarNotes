package com.google.android.material.animation;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;
import androidx.annotation.NonNull;

/* loaded from: classes6.dex */
public class MatrixEvaluator implements TypeEvaluator<Matrix> {

    /* renamed from: a */
    public final float[] f30178a = new float[9];

    /* renamed from: b */
    public final float[] f30179b = new float[9];

    /* renamed from: c */
    public final Matrix f30180c = new Matrix();

    @Override // android.animation.TypeEvaluator
    @NonNull
    public Matrix evaluate(float f, @NonNull Matrix matrix, @NonNull Matrix matrix2) {
        matrix.getValues(this.f30178a);
        matrix2.getValues(this.f30179b);
        for (int i = 0; i < 9; i++) {
            float[] fArr = this.f30179b;
            float f2 = fArr[i];
            float f3 = this.f30178a[i];
            fArr[i] = f3 + ((f2 - f3) * f);
        }
        this.f30180c.setValues(this.f30179b);
        return this.f30180c;
    }
}
