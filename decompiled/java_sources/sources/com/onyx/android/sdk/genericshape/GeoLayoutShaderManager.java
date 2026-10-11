package com.onyx.android.sdk.genericshape;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.LruCache;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\u0018\u0000 \u00142\u00020\u0001:\u0002\u0014\u0015B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J \u0010\u0010\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000fH\u0002J\u001e\u0010\u0013\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000fR\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager;", "", "()V", "shaderCache", "Landroid/util/LruCache;", "", "Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;", "shaderPaint", "Landroid/graphics/Paint;", "getShaderPaint", "()Landroid/graphics/Paint;", "generateGeoLayoutKey", "geoLayout", "Lcom/onyx/android/sdk/genericshape/GeoLayout;", "drawScale", "", "generateGeoLayoutShader", "scale", "space", "getGeoLayoutShader", "Companion", "GeoLayoutShader", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GeoLayoutShaderManager {
    public static final int SHADER_CACHE_COUNT = 4;

    @NotNull
    private final LruCache<String, GeoLayoutShader> shaderCache = new LruCache<>(4);

    @NotNull
    private final Paint shaderPaint = new Paint();

    @Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;", "", "shader", "Landroid/graphics/Shader;", "shaderMatrix", "Landroid/graphics/Matrix;", "(Landroid/graphics/Shader;Landroid/graphics/Matrix;)V", "getShader", "()Landroid/graphics/Shader;", "setShader", "(Landroid/graphics/Shader;)V", "getShaderMatrix", "()Landroid/graphics/Matrix;", "setShaderMatrix", "(Landroid/graphics/Matrix;)V", "component1", "component2", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final /* data */ class GeoLayoutShader {

        @NotNull
        private Shader shader;

        @NotNull
        private Matrix shaderMatrix;

        public GeoLayoutShader(@NotNull Shader shader, @NotNull Matrix shaderMatrix) {
            Intrinsics.checkNotNullParameter(shader, "shader");
            Intrinsics.checkNotNullParameter(shaderMatrix, "shaderMatrix");
            this.shader = shader;
            this.shaderMatrix = shaderMatrix;
        }

        public static /* synthetic */ GeoLayoutShader copy$default(GeoLayoutShader geoLayoutShader, Shader shader, Matrix matrix, int i, Object obj) {
            if ((i & 1) != 0) {
                shader = geoLayoutShader.shader;
            }
            if ((i & 2) != 0) {
                matrix = geoLayoutShader.shaderMatrix;
            }
            return geoLayoutShader.copy(shader, matrix);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final Shader getShader() {
            return this.shader;
        }

        @NotNull
        /* renamed from: component2, reason: from getter */
        public final Matrix getShaderMatrix() {
            return this.shaderMatrix;
        }

        @NotNull
        public final GeoLayoutShader copy(@NotNull Shader shader, @NotNull Matrix shaderMatrix) {
            Intrinsics.checkNotNullParameter(shader, "shader");
            Intrinsics.checkNotNullParameter(shaderMatrix, "shaderMatrix");
            return new GeoLayoutShader(shader, shaderMatrix);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof GeoLayoutShader)) {
                return false;
            }
            GeoLayoutShader geoLayoutShader = (GeoLayoutShader) other;
            return Intrinsics.areEqual(this.shader, geoLayoutShader.shader) && Intrinsics.areEqual(this.shaderMatrix, geoLayoutShader.shaderMatrix);
        }

        @NotNull
        public final Shader getShader() {
            return this.shader;
        }

        @NotNull
        public final Matrix getShaderMatrix() {
            return this.shaderMatrix;
        }

        public int hashCode() {
            return (this.shader.hashCode() * 31) + this.shaderMatrix.hashCode();
        }

        public final void setShader(@NotNull Shader shader) {
            Intrinsics.checkNotNullParameter(shader, "<set-?>");
            this.shader = shader;
        }

        public final void setShaderMatrix(@NotNull Matrix matrix) {
            Intrinsics.checkNotNullParameter(matrix, "<set-?>");
            this.shaderMatrix = matrix;
        }

        @NotNull
        public String toString() {
            return "GeoLayoutShader(shader=" + this.shader + ", shaderMatrix=" + this.shaderMatrix + ')';
        }
    }

    private final String generateGeoLayoutKey(GeoLayout geoLayout, float drawScale) {
        return geoLayout.getDisplayFillColor() + NameUtil.USCORE + geoLayout.getSpacing() + NameUtil.USCORE + geoLayout.getProperties().getLayoutType() + NameUtil.USCORE + drawScale;
    }

    private final GeoLayoutShader generateGeoLayoutShader(GeoLayout geoLayout, float scale, float space) {
        RectF rectF = new RectF(0.0f, 0.0f, space, space);
        RectFKt.scaleRect(rectF, scale);
        float radius = geoLayout.getProperties().getRadius();
        GeoLayout geoLayout2 = new GeoLayout();
        geoLayout2.getProperties().setLayoutType(geoLayout.getProperties().getLayoutType());
        Properties properties = geoLayout2.getProperties();
        StrokeAttr strokeAttr = geoLayout.getProperties().getStrokeAttr();
        properties.setStrokeAttr(strokeAttr != null ? strokeAttr.copy() : null);
        geoLayout2.getProperties().setForceFullFit(true);
        geoLayout2.getProperties().setRadius(radius);
        Properties properties2 = geoLayout2.getProperties();
        PageMargins pageMargins = new PageMargins();
        pageMargins.setSpacing(space);
        pageMargins.setLayoutRect(RectFKt.copy(rectF));
        properties2.setPageMargins(pageMargins);
        MathUtils mathUtils = MathUtils.INSTANCE;
        RectF rectF2 = new RectF(0.0f, 0.0f, ((Number) mathUtils.atLeast(Float.valueOf(rectF.width()), Float.valueOf(1.0f))).floatValue(), ((Number) mathUtils.atLeast(Float.valueOf(rectF.height()), Float.valueOf(1.0f))).floatValue());
        Bitmap createBitmapOrNull = BitmapUtils.INSTANCE.createBitmapOrNull(rectF2);
        Intrinsics.checkNotNull(createBitmapOrNull);
        createBitmapOrNull.eraseColor(geoLayout.getDisplayFillColor());
        Matrix matrix = new Matrix();
        matrix.postScale(scale, scale);
        geoLayout2.draw(new DrawContext(new Canvas(createBitmapOrNull), matrix, null, false, false, false, 0.0f, 100, null));
        Shader.TileMode tileMode = Shader.TileMode.REPEAT;
        BitmapShader bitmapShader = new BitmapShader(createBitmapOrNull, tileMode, tileMode);
        float width = (rectF2.width() / scale) / createBitmapOrNull.getWidth();
        Matrix matrix2 = new Matrix();
        matrix2.postScale(width, width);
        matrix2.postScale(scale, scale);
        return new GeoLayoutShader(bitmapShader, matrix2);
    }

    @NotNull
    public final GeoLayoutShader getGeoLayoutShader(@NotNull GeoLayout geoLayout, float drawScale, float space) {
        Intrinsics.checkNotNullParameter(geoLayout, "geoLayout");
        String generateGeoLayoutKey = generateGeoLayoutKey(geoLayout, drawScale);
        GeoLayoutShader geoLayoutShader = this.shaderCache.get(generateGeoLayoutKey);
        if (geoLayoutShader != null) {
            return geoLayoutShader;
        }
        GeoLayoutShader generateGeoLayoutShader = generateGeoLayoutShader(geoLayout, drawScale, space);
        this.shaderCache.put(generateGeoLayoutKey, generateGeoLayoutShader);
        return generateGeoLayoutShader;
    }

    @NotNull
    public final Paint getShaderPaint() {
        return this.shaderPaint;
    }
}
