package com.onyx.poi.service;

import android.graphics.LinearGradient;
import android.graphics.Shader;
import com.trans.android.poi.POIService;
import com.trans.android.util.ColorUtils;
import java.awt.Paint;
import org.apache.poi.sl.draw.PathGradientPaint;

/* loaded from: classes9.dex */
public class AndroidPOIService implements POIService {
    @Override // com.trans.android.poi.POIService
    public Shader getShader(Paint paint) {
        PathGradientPaint pathGradientPaint = (PathGradientPaint) paint;
        return new LinearGradient(0.0f, 0.0f, pathGradientPaint.fractions[r0.length - 1], 0.0f, ColorUtils.toColorInt(pathGradientPaint.colors), pathGradientPaint.fractions, Shader.TileMode.CLAMP);
    }

    @Override // com.trans.android.poi.POIService
    public boolean isPOIPaint(Paint paint) {
        return paint instanceof PathGradientPaint;
    }
}
