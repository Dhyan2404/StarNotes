package com.sunia.HTREnginev2;

import android.animation.TypeEvaluator;

/* loaded from: classes3.dex */
public class ong implements TypeEvaluator<float[]> {

    /* renamed from: a */
    public float[] f79962a;

    public ong(float[] fArr) {
        this.f79962a = fArr;
    }

    @Override // android.animation.TypeEvaluator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public float[] evaluate(float f, float[] fArr, float[] fArr2) {
        float[] fArr3 = this.f79962a;
        if (fArr3 == null) {
            fArr3 = new float[fArr.length];
        }
        for (int i = 0; i < fArr3.length; i++) {
            float f2 = fArr[i];
            fArr3[i] = f2 + ((fArr2[i] - f2) * f);
        }
        return fArr3;
    }
}
