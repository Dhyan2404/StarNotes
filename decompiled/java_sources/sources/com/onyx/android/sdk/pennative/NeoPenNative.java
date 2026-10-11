package com.onyx.android.sdk.pennative;

import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0013\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004J\u001b\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0082 J\u0011\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H\u0082 J!\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0082 J+\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0082 J!\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0082 J\u0011\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0006H\u0082 J\u001e\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J(\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00112\b\u0010\u001c\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u001e\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u001e\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0006¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/pennative/NeoPenNative;", "", "()V", "createPen", "", "penType", "", AbstractLogger.CONFIG, "Lcom/onyx/android/sdk/pennative/PenConfig;", "destroyPen", "", "pen", "nativeCreatePen", "nativeDestroyPen", "nativeOnPenDown", "Lcom/onyx/android/sdk/pennative/PenInkResult;", "point", "", "repaint", "", "nativeOnPenMove", IStyleSheet.CLASS_PREDICTION, "nativeOnPenUp", "nativeSetLogLevel", "level", "onPenDown", "pointArray", "onPenMove", "predictionArray", "onPenUp", "setLogLevel", "sdk-pennative_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NeoPenNative {

    @NotNull
    public static final NeoPenNative INSTANCE;

    static {
        NeoPenNative neoPenNative = new NeoPenNative();
        INSTANCE = neoPenNative;
        System.loadLibrary("neo_pen");
        neoPenNative.setLogLevel(2);
    }

    private final native long nativeCreatePen(int penType, PenConfig config);

    private final native void nativeDestroyPen(long pen);

    private final native PenInkResult nativeOnPenDown(long pen, double[] point, boolean repaint);

    private final native PenInkResult nativeOnPenMove(long pen, double[] point, double[] prediction, boolean repaint);

    private final native PenInkResult nativeOnPenUp(long pen, double[] point, boolean repaint);

    private final native void nativeSetLogLevel(int level);

    public final long createPen(int penType, @NotNull PenConfig config) {
        Intrinsics.checkNotNullParameter(config, "config");
        return nativeCreatePen(penType, config);
    }

    public final void destroyPen(long pen) {
        nativeDestroyPen(pen);
    }

    @NotNull
    public final PenInkResult onPenDown(long pen, @NotNull double[] pointArray, boolean repaint) {
        Intrinsics.checkNotNullParameter(pointArray, "pointArray");
        return nativeOnPenDown(pen, pointArray, repaint);
    }

    @NotNull
    public final PenInkResult onPenMove(long pen, @NotNull double[] pointArray, @Nullable double[] predictionArray, boolean repaint) {
        Intrinsics.checkNotNullParameter(pointArray, "pointArray");
        return nativeOnPenMove(pen, pointArray, predictionArray, repaint);
    }

    @NotNull
    public final PenInkResult onPenUp(long pen, @NotNull double[] pointArray, boolean repaint) {
        Intrinsics.checkNotNullParameter(pointArray, "pointArray");
        return nativeOnPenUp(pen, pointArray, repaint);
    }

    public final void setLogLevel(int level) {
        nativeSetLogLevel(level);
    }
}
