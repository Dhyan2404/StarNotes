package com.google.android.material.internal;

import android.animation.TypeEvaluator;
import android.graphics.Rect;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public class RectEvaluator implements TypeEvaluator<Rect> {

    /* renamed from: a */
    public final Rect f31648a;

    public RectEvaluator(@NonNull Rect rect) {
        this.f31648a = rect;
    }

    @Override // android.animation.TypeEvaluator
    public Rect evaluate(float f, @NonNull Rect rect, @NonNull Rect rect2) {
        this.f31648a.set(rect.left + ((int) ((rect2.left - r0) * f)), rect.top + ((int) ((rect2.top - r1) * f)), rect.right + ((int) ((rect2.right - r2) * f)), rect.bottom + ((int) ((rect2.bottom - r6) * f)));
        return this.f31648a;
    }
}
