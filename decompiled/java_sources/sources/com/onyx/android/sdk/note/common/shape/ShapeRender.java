package com.onyx.android.sdk.note.common.shape;

import android.graphics.Path;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\fH&J\b\u0010\r\u001a\u00020\u000eH\u0016J\u001a\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u0010H\u0016J\u0010\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017H&J\u0010\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H&J\b\u0010\u0019\u001a\u00020\u0010H\u0016J\u0010\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H&J\b\u0010\u001b\u001a\u00020\u0003H\u0016J\b\u0010\u001c\u001a\u00020\u0010H\u0016¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/ShapeRender;", "", "clearLowLatencyData", "", "clearRender", "cloneLowLatencyData", "shape", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "cloneRenderData", "createGuideLineHandler", "Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;", "getPath", "Landroid/graphics/Path;", "getRenderPointSize", "", "lowLatencyFlush", "", "renderContext", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", Constants.RESET, "lowLatencyRender", "onLowLatencyTouchData", "touchData", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "prepareRender", "readyToLowLatencyFlush", "render", "resetLowLatencyData", "useLowLatencyFlush", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ShapeRender {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        public static void clearLowLatencyData(@NotNull ShapeRender shapeRender) {
        }

        public static void cloneLowLatencyData(@NotNull ShapeRender shapeRender, @NotNull Shape shape) {
            Intrinsics.checkNotNullParameter(shape, "shape");
        }

        public static void cloneRenderData(@NotNull ShapeRender shapeRender, @NotNull Shape shape) {
            Intrinsics.checkNotNullParameter(shape, "shape");
        }

        @NotNull
        public static ShapeGuideLineHandler createGuideLineHandler(@NotNull ShapeRender shapeRender) {
            return DefaultShapeGuideLineHandler.INSTANCE;
        }

        public static int getRenderPointSize(@NotNull ShapeRender shapeRender) {
            return 0;
        }

        public static boolean lowLatencyFlush(@NotNull ShapeRender shapeRender, @NotNull RenderContext renderContext, boolean z) {
            Intrinsics.checkNotNullParameter(renderContext, "renderContext");
            return false;
        }

        public static /* synthetic */ boolean lowLatencyFlush$default(ShapeRender shapeRender, RenderContext renderContext, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lowLatencyFlush");
            }
            if ((i & 2) != 0) {
                z = false;
            }
            return shapeRender.lowLatencyFlush(renderContext, z);
        }

        public static boolean lowLatencyRender(@NotNull ShapeRender shapeRender, @NotNull RenderContext renderContext) {
            Intrinsics.checkNotNullParameter(renderContext, "renderContext");
            return false;
        }

        public static boolean readyToLowLatencyFlush(@NotNull ShapeRender shapeRender) {
            return false;
        }

        public static void resetLowLatencyData(@NotNull ShapeRender shapeRender) {
        }

        public static boolean useLowLatencyFlush(@NotNull ShapeRender shapeRender) {
            return false;
        }
    }

    void clearLowLatencyData();

    void clearRender();

    void cloneLowLatencyData(@NotNull Shape shape);

    void cloneRenderData(@NotNull Shape shape);

    @NotNull
    ShapeGuideLineHandler createGuideLineHandler();

    @NotNull
    Path getPath();

    int getRenderPointSize();

    boolean lowLatencyFlush(@NotNull RenderContext renderContext, boolean reset);

    boolean lowLatencyRender(@NotNull RenderContext renderContext);

    void onLowLatencyTouchData(@NotNull RenderContext renderContext, @NotNull TouchData touchData);

    boolean prepareRender(@NotNull RenderContext renderContext);

    boolean readyToLowLatencyFlush();

    boolean render(@NotNull RenderContext renderContext);

    void resetLowLatencyData();

    boolean useLowLatencyFlush();
}
