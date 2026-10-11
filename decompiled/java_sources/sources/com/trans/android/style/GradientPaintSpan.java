package com.trans.android.style;

import android.graphics.Shader;
import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;

/* loaded from: classes10.dex */
public class GradientPaintSpan extends MetricAffectingSpan {
    private Shader shader;

    public GradientPaintSpan(Shader shader) {
        this.shader = shader;
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        textPaint.setShader(this.shader);
    }

    @Override // android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint textPaint) {
        textPaint.setShader(this.shader);
    }
}
