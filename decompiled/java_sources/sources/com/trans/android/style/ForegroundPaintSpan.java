package com.trans.android.style;

import android.graphics.Shader;
import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import com.trans.android.util.PaintUtils;
import java.awt.Paint;

/* loaded from: classes10.dex */
public class ForegroundPaintSpan extends MetricAffectingSpan {
    private Paint paint;

    public ForegroundPaintSpan(Paint paint) {
        this.paint = paint;
    }

    private void apply(TextPaint textPaint) {
        Shader shader = PaintUtils.getShader(this.paint);
        textPaint.setShader(shader);
        if (shader != null) {
            textPaint.setAlpha(255);
        }
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        apply(textPaint);
    }

    @Override // android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint textPaint) {
        apply(textPaint);
    }
}
