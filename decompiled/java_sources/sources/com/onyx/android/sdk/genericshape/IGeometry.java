package com.onyx.android.sdk.genericshape;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.genericshape.erase.EraseBean;
import com.onyx.android.sdk.genericshape.erase.SplitShapeResult;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandlerManager;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH\u0016J\u001a\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J,\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u001a\u001a\u00020\u001bH\u0017J\b\u0010\u001c\u001a\u00020\u001dH&J\b\u0010\u001e\u001a\u00020\u0018H\u0017J\b\u0010\u001f\u001a\u00020\u001dH&J\u000e\u0010 \u001a\b\u0012\u0004\u0012\u00020\"0!H&J\u0018\u0010#\u001a\u00020\u00032\u0006\u0010$\u001a\u00020\t2\u0006\u0010%\u001a\u00020\tH&J\u0010\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)H\u0016J\u0016\u0010*\u001a\u00020\u00032\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\"0!H&¨\u0006,"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/IGeometry;", "", "applyFillColor", "", "color", "", "applyStrokeColor", "applyStrokeWidth", "width", "", "draw", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Canvas;", "matrix", "Landroid/graphics/Matrix;", "strokePaint", "Landroid/graphics/Paint;", "fillPaint", "drawContext", "Lcom/onyx/android/sdk/genericshape/DrawContext;", "renderContext", "Lcom/onyx/android/sdk/genericshape/GeoRenderContext;", "enableFillColor", "enable", "", EventHandlerManager.ERASE, "getBoundingRect", "Landroid/graphics/RectF;", "getFillPath", "Landroid/graphics/Path;", "isEnableFillColor", "loadRenderPath", "loadSelectionPoints", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "scaleSelectionPoints", "scaleX", "scaleY", "split", "Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;", "eraseBean", "Lcom/onyx/android/sdk/genericshape/erase/EraseBean;", "updateBySelectionPoints", "list", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface IGeometry {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        public static void applyFillColor(@NotNull IGeometry iGeometry, int i) {
        }

        public static void applyStrokeColor(@NotNull IGeometry iGeometry, int i) {
        }

        public static void applyStrokeWidth(@NotNull IGeometry iGeometry, float f) {
        }

        public static void draw(@NotNull IGeometry iGeometry, @NotNull Canvas canvas, @Nullable Matrix matrix) {
            Intrinsics.checkNotNullParameter(canvas, "canvas");
        }

        public static void enableFillColor(@NotNull IGeometry iGeometry, boolean z) {
        }

        public static void erase(@NotNull IGeometry iGeometry, @NotNull GeoRenderContext renderContext) {
            Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        }

        @JSONField(deserialize = false, serialize = false)
        @NotNull
        public static RectF getBoundingRect(@NotNull IGeometry iGeometry) {
            return TouchPointList.INSTANCE.getBoundingRect(iGeometry.loadSelectionPoints());
        }

        @JSONField(deserialize = false, serialize = false)
        public static boolean isEnableFillColor(@NotNull IGeometry iGeometry) {
            return true;
        }

        @NotNull
        public static SplitShapeResult split(@NotNull IGeometry iGeometry, @NotNull EraseBean eraseBean) {
            Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
            SplitShapeResult splitShapeResult = new SplitShapeResult();
            splitShapeResult.setShapeErased(true);
            return splitShapeResult;
        }

        public static void draw(@NotNull IGeometry iGeometry, @NotNull Canvas canvas, @Nullable Matrix matrix, @NotNull Paint strokePaint, @Nullable Paint paint) {
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            Intrinsics.checkNotNullParameter(strokePaint, "strokePaint");
        }

        public static void draw(@NotNull IGeometry iGeometry, @NotNull DrawContext drawContext) {
            Intrinsics.checkNotNullParameter(drawContext, "drawContext");
        }

        public static void draw(@NotNull IGeometry iGeometry, @NotNull GeoRenderContext renderContext) {
            Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        }
    }

    void applyFillColor(int color);

    void applyStrokeColor(int color);

    void applyStrokeWidth(float width);

    void draw(@NotNull Canvas canvas, @Nullable Matrix matrix);

    void draw(@NotNull Canvas canvas, @Nullable Matrix matrix, @NotNull Paint strokePaint, @Nullable Paint fillPaint);

    void draw(@NotNull DrawContext drawContext);

    void draw(@NotNull GeoRenderContext renderContext);

    void enableFillColor(boolean enable);

    void erase(@NotNull GeoRenderContext renderContext);

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    RectF getBoundingRect();

    @NotNull
    Path getFillPath();

    @JSONField(deserialize = false, serialize = false)
    boolean isEnableFillColor();

    @NotNull
    Path loadRenderPath();

    @NotNull
    List<TouchPoint> loadSelectionPoints();

    void scaleSelectionPoints(float scaleX, float scaleY);

    @NotNull
    SplitShapeResult split(@NotNull EraseBean eraseBean);

    void updateBySelectionPoints(@NotNull List<TouchPoint> list);
}
