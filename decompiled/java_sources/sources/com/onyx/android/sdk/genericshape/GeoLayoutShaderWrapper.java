package com.onyx.android.sdk.genericshape;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.LruCache;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\t\u0018\u0000 :2\u00020\u0001:\u0001:B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010$\u001a\u00020%J\u0016\u0010&\u001a\u00020%2\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*J\u001e\u0010+\u001a\u00020%2\u0006\u0010,\u001a\u00020-2\u0006\u0010)\u001a\u00020*2\u0006\u0010.\u001a\u00020\u000eJ\u0006\u0010/\u001a\u00020\u0017J\u0012\u00100\u001a\u0004\u0018\u00010\b2\u0006\u00101\u001a\u000202H\u0002J\u0010\u00103\u001a\u00020%2\u0006\u00104\u001a\u00020\u0007H\u0002J\u0010\u00105\u001a\u00020%2\u0006\u00104\u001a\u00020\u0007H\u0002J\u000e\u00106\u001a\u00020%2\u0006\u00107\u001a\u00020(J\u0016\u00108\u001a\u00020%2\u0006\u00109\u001a\u00020*2\u0006\u0010\r\u001a\u00020\u000eR'\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0004R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0018\"\u0004\b\u001c\u0010\u001aR\u000e\u0010\u001d\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020!X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020!X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006;"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;", "", "geoLayout", "Lcom/onyx/android/sdk/genericshape/GeoLayout;", "(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V", "bitmapShaderLruCache", "Landroid/util/LruCache;", "", "Landroid/graphics/Shader;", "getBitmapShaderLruCache", "()Landroid/util/LruCache;", "bitmapShaderLruCache$delegate", "Lkotlin/Lazy;", "boundingRectF", "Landroid/graphics/RectF;", "getBoundingRectF", "()Landroid/graphics/RectF;", "setBoundingRectF", "(Landroid/graphics/RectF;)V", "getGeoLayout", "()Lcom/onyx/android/sdk/genericshape/GeoLayout;", "setGeoLayout", "isEnabledUnionCanvasBoundingRectF", "", Constants.BOOLEAN_VALUE_SIG, "setEnabledUnionCanvasBoundingRectF", "(Z)V", "isVisible", "setVisible", "renderRectF", "shaderPaint", "Landroid/graphics/Paint;", "shaderRenderLocalMatrix", "Landroid/graphics/Matrix;", "shaderTempLocalMatrix", "transformMatrix", "clearCache", "", "drawVirtualPage", "pageCanvas", "Landroid/graphics/Canvas;", "virtualPage", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "drawVirtualPageClipRectF", "bitmap", "Landroid/graphics/Bitmap;", "clipRectF", "isEnabled", "loadShaderBitmap", "scaleFactor", "", "logD", NotificationCompat.CATEGORY_MESSAGE, "logW", "onDraw", IStyleSheet.CLASS_CANVAS, "updateViewportAndBoundingRectF", "viewport", "Companion", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGeoLayoutShaderWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoLayoutShaderWrapper.kt\ncom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper\n+ 2 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n*L\n1#1,171:1\n43#2,3:172\n*S KotlinDebug\n*F\n+ 1 GeoLayoutShaderWrapper.kt\ncom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper\n*L\n85#1:172,3\n*E\n"})
/* loaded from: classes7.dex */
public final class GeoLayoutShaderWrapper {
    private static final int CACHE_MAX_COUNT = 10;
    public static final boolean DEBUG = false;

    /* renamed from: bitmapShaderLruCache$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy bitmapShaderLruCache;

    @NotNull
    private RectF boundingRectF;

    @Nullable
    private GeoLayout geoLayout;
    private boolean isEnabledUnionCanvasBoundingRectF;
    private boolean isVisible;

    @NotNull
    private RectF renderRectF;

    @NotNull
    private final Paint shaderPaint;

    @NotNull
    private Matrix shaderRenderLocalMatrix;

    @NotNull
    private Matrix shaderTempLocalMatrix;

    @NotNull
    private Matrix transformMatrix;

    public GeoLayoutShaderWrapper(@Nullable GeoLayout geoLayout) {
        Lazy lazy;
        this.geoLayout = geoLayout;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LruCache<String, Shader>>() { // from class: com.onyx.android.sdk.genericshape.GeoLayoutShaderWrapper$bitmapShaderLruCache$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LruCache<String, Shader> invoke() {
                return new LruCache<>(10);
            }
        });
        this.bitmapShaderLruCache = lazy;
        this.shaderPaint = new Paint();
        this.boundingRectF = new RectF();
        this.transformMatrix = new Matrix();
        this.renderRectF = new RectF();
        this.shaderTempLocalMatrix = new Matrix();
        this.shaderRenderLocalMatrix = new Matrix();
    }

    private final LruCache<String, Shader> getBitmapShaderLruCache() {
        return (LruCache) this.bitmapShaderLruCache.getValue();
    }

    private final Shader loadShaderBitmap(float scaleFactor) {
        GeoLayout geoLayout = this.geoLayout;
        if (geoLayout == null) {
            return null;
        }
        RectF rectF = new RectF(0.0f, 0.0f, geoLayout.getSpacing(), geoLayout.getSpacing());
        RectF copy = RectFKt.copy(rectF);
        RectFKt.scaleRect(copy, scaleFactor);
        int max = (int) Math.max(1.0f, copy.width());
        if (max < 1) {
            logW("geo shader bitmap create fail");
            return null;
        }
        int displayFillColor = geoLayout.getDisplayFillColor();
        float width = copy.width() / max;
        String str = geoLayout.getProperties().getLayoutType() + NameUtil.USCORE + max + NameUtil.USCORE + displayFillColor;
        Shader shader = getBitmapShaderLruCache().get(str);
        if (shader == null) {
            Bitmap createBitmap = Bitmap.createBitmap(max, max, Bitmap.Config.ARGB_8888);
            Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
            createBitmap.eraseColor(displayFillColor);
            logD("key = " + str + ", deltaScale = " + width + ", scaleFactor = " + scaleFactor + ", color = " + displayFillColor + ", scaleRect = " + copy + ", bitmapBoundingRectF = " + BitmapKt.boundingRectF(createBitmap));
            PageMargins pageMargins = geoLayout.getProperties().getPageMargins();
            if (pageMargins != null) {
                pageMargins.setLayoutRect(RectFKt.copy(rectF));
            }
            Canvas canvas = new Canvas(createBitmap);
            Matrix matrix = new Matrix();
            matrix.setScale(scaleFactor, scaleFactor);
            geoLayout.draw(new DrawContext(canvas, matrix, null, false, false, false, 0.0f, 108, null));
            Shader.TileMode tileMode = Shader.TileMode.REPEAT;
            shader = new BitmapShader(createBitmap, tileMode, tileMode);
            getBitmapShaderLruCache().put(str, shader);
        }
        this.shaderTempLocalMatrix.reset();
        this.shaderTempLocalMatrix.setScale(width, width);
        shader.setLocalMatrix(this.shaderTempLocalMatrix);
        this.shaderTempLocalMatrix.reset();
        return shader;
    }

    private final void logD(String msg) {
    }

    private final void logW(String msg) {
        Debug.INSTANCE.m32062w(AnyKt.toSimpleNameString(this), msg, new Object[0]);
    }

    public final void clearCache() {
        getBitmapShaderLruCache().evictAll();
    }

    public final void drawVirtualPage(@NotNull Canvas pageCanvas, @NotNull BoxInfo virtualPage) {
        Intrinsics.checkNotNullParameter(pageCanvas, "pageCanvas");
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        if (isEnabled()) {
            updateViewportAndBoundingRectF(virtualPage, virtualPage.getBox());
            onDraw(pageCanvas);
        }
    }

    public final void drawVirtualPageClipRectF(@NotNull Bitmap bitmap, @NotNull BoxInfo virtualPage, @NotNull RectF clipRectF) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        Intrinsics.checkNotNullParameter(clipRectF, "clipRectF");
        if (isEnabled()) {
            updateViewportAndBoundingRectF(virtualPage, virtualPage.getBox());
            this.transformMatrix.postTranslate(clipRectF.left, clipRectF.top);
            onDraw(new Canvas(bitmap));
        }
    }

    @NotNull
    public final RectF getBoundingRectF() {
        return this.boundingRectF;
    }

    @Nullable
    public final GeoLayout getGeoLayout() {
        return this.geoLayout;
    }

    public final boolean isEnabled() {
        return this.geoLayout != null;
    }

    /* renamed from: isEnabledUnionCanvasBoundingRectF, reason: from getter */
    public final boolean getIsEnabledUnionCanvasBoundingRectF() {
        return this.isEnabledUnionCanvasBoundingRectF;
    }

    /* renamed from: isVisible, reason: from getter */
    public final boolean getIsVisible() {
        return this.isVisible;
    }

    public final void onDraw(@NotNull Canvas canvas) {
        Shader shader;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (isEnabled() && this.isVisible && (shader = this.shaderPaint.getShader()) != null) {
            this.shaderTempLocalMatrix.reset();
            shader.getLocalMatrix(this.shaderTempLocalMatrix);
            this.shaderRenderLocalMatrix.reset();
            this.shaderRenderLocalMatrix.set(this.shaderTempLocalMatrix);
            this.shaderRenderLocalMatrix.postConcat(this.transformMatrix);
            shader.setLocalMatrix(this.shaderRenderLocalMatrix);
            this.transformMatrix.mapRect(this.renderRectF, this.boundingRectF);
            if (this.isEnabledUnionCanvasBoundingRectF) {
                this.renderRectF.union(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight());
            }
            canvas.drawRect(this.renderRectF, this.shaderPaint);
            shader.setLocalMatrix(this.shaderTempLocalMatrix);
        }
    }

    public final void setBoundingRectF(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.boundingRectF = rectF;
    }

    public final void setEnabledUnionCanvasBoundingRectF(boolean z) {
        this.isEnabledUnionCanvasBoundingRectF = z;
    }

    public final void setGeoLayout(@Nullable GeoLayout geoLayout) {
        this.geoLayout = geoLayout;
    }

    public final void setVisible(boolean z) {
        this.isVisible = z;
    }

    public final void updateViewportAndBoundingRectF(@NotNull BoxInfo viewport, @NotNull RectF boundingRectF) {
        Intrinsics.checkNotNullParameter(viewport, "viewport");
        Intrinsics.checkNotNullParameter(boundingRectF, "boundingRectF");
        if (isEnabled()) {
            this.shaderPaint.setShader(loadShaderBitmap(viewport.getActualScale()));
            this.boundingRectF.set(boundingRectF);
            this.transformMatrix.setTranslate(-viewport.left(), -viewport.top());
            this.isVisible = true;
        }
    }
}
