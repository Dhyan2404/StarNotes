package com.trans.android.awt;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Matrix;
import android.graphics.Shader;
import com.onyx.common.util.JLog;
import com.trans.android.batik.BatikUtils;
import com.trans.android.service.ServiceUtils;
import java.awt.TexturePaint;
import java.backport.function.Function;

/* loaded from: classes10.dex */
public class TexturePaintUtils {
    private static final String TAG = BatikUtils.class.getSimpleName();
    private static TexturePaintConvert convert;

    public static TexturePaintConvert getConvert() {
        if (convert == null) {
            TexturePaintConvert texturePaintConvert = (TexturePaintConvert) ServiceUtils.getService(TexturePaintConvert.class);
            convert = texturePaintConvert;
            if (texturePaintConvert == null) {
                convert = new EmptyTexturePaintConvert();
                JLog.m41642e(TAG, "Not found TexturePaintConvert", new Object[0]);
            }
        }
        return convert;
    }

    public static Shader getShader(TexturePaint texturePaint) {
        return getShader(texturePaint, null);
    }

    public static Shader getShader(TexturePaint texturePaint, Function<Bitmap, Matrix> function) {
        Bitmap androidBitmap = texturePaint.getAndroidImage().getAndroidBitmap();
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(androidBitmap, tileMode, tileMode);
        if (function != null) {
            bitmapShader.setLocalMatrix(function.apply(androidBitmap));
        }
        return bitmapShader;
    }
}
