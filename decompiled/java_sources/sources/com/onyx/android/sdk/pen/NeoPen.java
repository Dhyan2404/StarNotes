package com.onyx.android.sdk.pen;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.pennative.NeoPenNative;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\b\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0010¢\u0006\u0004\b\u0016\u0010\u0017J\u0006\u0010\u0003\u001a\u00020\u0002J*\u0010\t\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\b\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004H'J(\u0010\t\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\b\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016J0\u0010\u000e\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\b\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\f2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004H'J8\u0010\u000e\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\b\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\f2\b\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016J*\u0010\u000f\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\b\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004H'J(\u0010\u000f\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\b\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016R\u001a\u0010\u0015\u001a\u00020\u00108\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/NeoPen;", "", "", "destroy", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "point", IStyleSheet.CLASS_PREDICTION, "Lkotlin/Pair;", "Lcom/onyx/android/sdk/pen/PenResult;", "onPenDown", "", "repaint", "", PointConstant.POINT_FILE_END, "onPenMove", "onPenUp", "", "a", "J", "getPenHandle$sdk_pen_release", "()J", "penHandle", Constants.CONSTRUCTOR_NAME, "(J)V", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public abstract class NeoPen {

    /* renamed from: a, reason: from kotlin metadata */
    public final long penHandle;

    public NeoPen(long j) {
        this.penHandle = j;
    }

    public final void destroy() {
        NeoPenNative.INSTANCE.destroyPen(this.penHandle);
    }

    /* renamed from: getPenHandle$sdk_pen_release, reason: from getter */
    public final long getPenHandle() {
        return this.penHandle;
    }

    @Deprecated(message = "")
    @NotNull
    public abstract Pair<PenResult, PenResult> onPenDown(@NotNull TouchPoint point, @Nullable TouchPoint prediction);

    @NotNull
    public Pair<PenResult, PenResult> onPenDown(@NotNull TouchPoint point, boolean repaint) {
        Intrinsics.checkNotNullParameter(point, "point");
        return new Pair<>(null, null);
    }

    @Deprecated(message = "")
    @NotNull
    public abstract Pair<PenResult, PenResult> onPenMove(@NotNull List<TouchPoint> points, @Nullable TouchPoint prediction);

    @NotNull
    public Pair<PenResult, PenResult> onPenMove(@NotNull List<TouchPoint> points, @Nullable TouchPoint prediction, boolean repaint) {
        Intrinsics.checkNotNullParameter(points, "points");
        return new Pair<>(null, null);
    }

    @Deprecated(message = "")
    @NotNull
    public abstract Pair<PenResult, PenResult> onPenUp(@NotNull TouchPoint point, @Nullable TouchPoint prediction);

    @NotNull
    public Pair<PenResult, PenResult> onPenUp(@NotNull TouchPoint point, boolean repaint) {
        Intrinsics.checkNotNullParameter(point, "point");
        return new Pair<>(null, null);
    }
}
