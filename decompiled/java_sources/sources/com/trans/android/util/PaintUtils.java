package com.trans.android.util;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Shader;
import com.onyx.common.util.JLog;
import com.trans.android.awt.TexturePaintUtils;
import com.trans.android.batik.BatikUtils;
import com.trans.android.poi.POIUtils;
import java.awt.IAndroidGradient;
import java.awt.Paint;
import java.awt.TexturePaint;
import java.backport.function.Function;

/* loaded from: classes10.dex */
public class PaintUtils {
    public static Shader getShader(Paint paint) {
        return getShader(paint, null);
    }

    public static Shader getShader(Paint paint, Function<Bitmap, Matrix> function) {
        if (paint instanceof IAndroidGradient) {
            return ((IAndroidGradient) paint).getShader();
        }
        if (POIUtils.isPOIPaint(paint)) {
            return POIUtils.getShader(paint);
        }
        if (BatikUtils.isBatikPaint(paint)) {
            return BatikUtils.getShader(paint);
        }
        if (paint instanceof TexturePaint) {
            return TexturePaintUtils.getShader((TexturePaint) paint, function);
        }
        JLog.m41642e(PaintUtils.class.getSimpleName(), "Unknown Paint: %s", paint.getClass().getName());
        return null;
    }
}
