package com.onyx.android.sdk.note.common.shape;

import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.neopdf.PdfHighlightInfo;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.shape.ShapeAttributes;
import com.onyx.android.sdk.note.common.shape.ShapeConnection;
import com.onyx.android.sdk.note.common.shape.ShapeConvert;
import com.onyx.android.sdk.note.common.shape.ShapePoints;
import com.onyx.android.sdk.note.common.shape.ShapeRender;
import com.onyx.android.sdk.note.common.shape.ShapeStyle;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeSourceBean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\b2\u00020\t2\u00020\n2\u00020\u000b2\u00020\f2\u00020\r2\u00020\u000e2\u00020\u000f2\u00020\u0010¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/Shape;", "Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;", "Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;", "Lcom/onyx/android/sdk/note/common/shape/ShapeExtraAttributes;", "Lcom/onyx/android/sdk/note/common/shape/ShapePoints;", "Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;", "Lcom/onyx/android/sdk/note/common/shape/ShapeRender;", "Lcom/onyx/android/sdk/note/common/shape/ShapeHWR;", "Lcom/onyx/android/sdk/note/common/shape/ShapeResAttributes;", "Lcom/onyx/android/sdk/note/common/shape/ShapeLink;", "Lcom/onyx/android/sdk/note/common/shape/ShapeTag;", "Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;", "Lcom/onyx/android/sdk/note/common/shape/ShapeConvert;", "Lcom/onyx/android/sdk/note/common/shape/ShapeRuntimeOptions;", "Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;", "Lcom/onyx/android/sdk/note/common/shape/ShapeTest;", "Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface Shape extends ShapeAttributes, ShapeStyle, ShapeExtraAttributes, ShapePoints, ShapeTransform, ShapeRender, ShapeHWR, ShapeResAttributes, ShapeLink, ShapeTag, ShapeRichText, ShapeConvert, ShapeRuntimeOptions, ShapePersistOptions, ShapeTest, ShapeConnection {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        public static void clearLowLatencyData(@NotNull Shape shape) {
            ShapeRender.DefaultImpls.clearLowLatencyData(shape);
        }

        public static void cloneLowLatencyData(@NotNull Shape shape, @NotNull Shape shape2) {
            Intrinsics.checkNotNullParameter(shape2, "shape");
            ShapeRender.DefaultImpls.cloneLowLatencyData(shape, shape2);
        }

        public static void cloneRenderData(@NotNull Shape shape, @NotNull Shape shape2) {
            Intrinsics.checkNotNullParameter(shape2, "shape");
            ShapeRender.DefaultImpls.cloneRenderData(shape, shape2);
        }

        @NotNull
        public static ShapeGuideLineHandler createGuideLineHandler(@NotNull Shape shape) {
            return ShapeRender.DefaultImpls.createGuideLineHandler(shape);
        }

        public static void enableFillColor(@NotNull Shape shape, boolean z) {
            ShapeStyle.DefaultImpls.enableFillColor(shape, z);
        }

        @NotNull
        public static ShapeSourceBean ensureShapeSourceBean(@NotNull Shape shape) {
            return ShapeConnection.DefaultImpls.ensureShapeSourceBean(shape);
        }

        public static int getLineStyle(@NotNull Shape shape) {
            return ShapeStyle.DefaultImpls.getLineStyle(shape);
        }

        public static int getRenderPointSize(@NotNull Shape shape) {
            return ShapeRender.DefaultImpls.getRenderPointSize(shape);
        }

        @NotNull
        public static TouchPointList getRenderPoints(@NotNull Shape shape) {
            return ShapePoints.DefaultImpls.getRenderPoints(shape);
        }

        public static int getUsePointCount(@NotNull Shape shape) {
            return ShapePoints.DefaultImpls.getUsePointCount(shape);
        }

        public static boolean hasReferenceShapeBeanList(@NotNull Shape shape) {
            return ShapeConnection.DefaultImpls.hasReferenceShapeBeanList(shape);
        }

        public static boolean isFillColorEnabled(@NotNull Shape shape) {
            return ShapeStyle.DefaultImpls.isFillColorEnabled(shape);
        }

        public static boolean lowLatencyFlush(@NotNull Shape shape, @NotNull RenderContext renderContext, boolean z) {
            Intrinsics.checkNotNullParameter(renderContext, "renderContext");
            return ShapeRender.DefaultImpls.lowLatencyFlush(shape, renderContext, z);
        }

        public static boolean lowLatencyRender(@NotNull Shape shape, @NotNull RenderContext renderContext) {
            Intrinsics.checkNotNullParameter(renderContext, "renderContext");
            return ShapeRender.DefaultImpls.lowLatencyRender(shape, renderContext);
        }

        public static boolean readyToLowLatencyFlush(@NotNull Shape shape) {
            return ShapeRender.DefaultImpls.readyToLowLatencyFlush(shape);
        }

        public static void resetConnection(@NotNull Shape shape) {
            ShapeConnection.DefaultImpls.resetConnection(shape);
        }

        public static void resetLowLatencyData(@NotNull Shape shape) {
            ShapeRender.DefaultImpls.resetLowLatencyData(shape);
        }

        public static void setLineStyle(@NotNull Shape shape, int i) {
            ShapeStyle.DefaultImpls.setLineStyle(shape, i);
        }

        @Nullable
        public static PdfHighlightInfo toPdfHighlight(@NotNull Shape shape, @NotNull EmbedShapeBean embedShapeBean) {
            Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
            return ShapeConvert.DefaultImpls.toPdfHighlight(shape, embedShapeBean);
        }

        public static boolean underContent(@NotNull Shape shape) {
            return ShapeAttributes.DefaultImpls.underContent(shape);
        }

        public static boolean useLowLatencyFlush(@NotNull Shape shape) {
            return ShapeRender.DefaultImpls.useLowLatencyFlush(shape);
        }
    }
}
