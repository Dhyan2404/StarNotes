package com.onyx.android.sdk.pen;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.pen.utils.PenUtils;
import com.onyx.android.sdk.pennative.NeoPenNative;
import com.onyx.android.sdk.pennative.PenInkResult;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J'\u0010\u0005\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0010¢\u0006\u0002\b\nJ*\u0010\u000b\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016J(\u0010\u000b\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J0\u0010\u0011\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\u00132\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016J8\u0010\u0011\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\u00132\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J*\u0010\u0014\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016J(\u0010\u0014\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/NeoNativePen;", "Lcom/onyx/android/sdk/pen/NeoPen;", "penHandle", "", "(J)V", "buildPenResult", "Lkotlin/Pair;", "Lcom/onyx/android/sdk/pen/PenResult;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "Lcom/onyx/android/sdk/pennative/PenInkResult;", "buildPenResult$sdk_pen_release", "onPenDown", "point", "Lcom/onyx/android/sdk/base/data/TouchPoint;", IStyleSheet.CLASS_PREDICTION, "repaint", "", "onPenMove", PointConstant.POINT_FILE_END, "", "onPenUp", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public abstract class NeoNativePen extends NeoPen {
    public NeoNativePen(long j) {
        super(j);
    }

    @NotNull
    public Pair<PenResult, PenResult> buildPenResult$sdk_pen_release(@Nullable PenInkResult result) {
        return new Pair<>(null, null);
    }

    @Override // com.onyx.android.sdk.pen.NeoPen
    @NotNull
    public Pair<PenResult, PenResult> onPenDown(@NotNull TouchPoint point, @Nullable TouchPoint prediction) {
        Intrinsics.checkNotNullParameter(point, "point");
        return onPenDown(point, false);
    }

    @Override // com.onyx.android.sdk.pen.NeoPen
    @NotNull
    public Pair<PenResult, PenResult> onPenMove(@NotNull List<TouchPoint> points, @Nullable TouchPoint prediction) {
        Intrinsics.checkNotNullParameter(points, "points");
        return onPenMove(points, prediction, false);
    }

    @Override // com.onyx.android.sdk.pen.NeoPen
    @NotNull
    public Pair<PenResult, PenResult> onPenUp(@NotNull TouchPoint point, @Nullable TouchPoint prediction) {
        Intrinsics.checkNotNullParameter(point, "point");
        return onPenUp(point, false);
    }

    @Override // com.onyx.android.sdk.pen.NeoPen
    @NotNull
    public Pair<PenResult, PenResult> onPenDown(@NotNull TouchPoint point, boolean repaint) {
        Intrinsics.checkNotNullParameter(point, "point");
        return buildPenResult$sdk_pen_release(NeoPenNative.INSTANCE.onPenDown(getPenHandle(), PenUtils.getPointDoubleArray$default(PenUtils.INSTANCE, point, 0.0f, 2, (Object) null), repaint));
    }

    @Override // com.onyx.android.sdk.pen.NeoPen
    @NotNull
    public Pair<PenResult, PenResult> onPenMove(@NotNull List<TouchPoint> points, @Nullable TouchPoint prediction, boolean repaint) {
        Intrinsics.checkNotNullParameter(points, "points");
        NeoPenNative neoPenNative = NeoPenNative.INSTANCE;
        long penHandle = getPenHandle();
        PenUtils penUtils = PenUtils.INSTANCE;
        return buildPenResult$sdk_pen_release(neoPenNative.onPenMove(penHandle, PenUtils.getPointDoubleArray$default(penUtils, points, 0.0f, 2, (Object) null), PenUtils.getPointDoubleArrayNullable$default(penUtils, prediction, 0.0f, 2, null), repaint));
    }

    @Override // com.onyx.android.sdk.pen.NeoPen
    @NotNull
    public Pair<PenResult, PenResult> onPenUp(@NotNull TouchPoint point, boolean repaint) {
        Intrinsics.checkNotNullParameter(point, "point");
        return buildPenResult$sdk_pen_release(NeoPenNative.INSTANCE.onPenUp(getPenHandle(), PenUtils.getPointDoubleArray$default(PenUtils.INSTANCE, point, 0.0f, 2, (Object) null), repaint));
    }
}
