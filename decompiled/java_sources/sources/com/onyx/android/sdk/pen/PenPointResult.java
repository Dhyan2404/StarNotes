package com.onyx.android.sdk.pen;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.pennative.PenInk;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB'\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0000¢\u0006\u0004\b\u0018\u0010\u0019J\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0016J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016R\u001d\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/PenPointResult;", "Lcom/onyx/android/sdk/pen/PenResult;", "add", RequestParameters.SUBRESOURCE_APPEND, "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Paint;", "paint", "", "draw", "", "getPointsCount", "", "Lcom/onyx/android/sdk/pen/PenPointInk;", "b", "Ljava/util/List;", "getPoints", "()Ljava/util/List;", PointConstant.POINT_FILE_END, "c", "Lcom/onyx/android/sdk/pen/PenPointResult;", "lastResult", "Landroid/graphics/RectF;", "rect", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Landroid/graphics/RectF;Lcom/onyx/android/sdk/pen/PenPointResult;)V", "Companion", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public class PenPointResult extends PenResult {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: d */
    public static final boolean f44299d = true;

    /* renamed from: e */
    public static int f44300e;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final List<PenPointInk> points;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public final PenPointResult lastResult;

    @Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\bJ\u0006\u0010\f\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/PenPointResult$Companion;", "", "()V", "DUMP_POINTS", "", "pointCount", "", "buildFromInkArray", "Lcom/onyx/android/sdk/pen/PenPointResult;", "ink", "Lcom/onyx/android/sdk/pennative/PenInk;", "lastResult", "dumpCount", "", "resetCount", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final PenPointResult buildFromInkArray(@Nullable PenInk ink, @Nullable PenPointResult lastResult) {
            IntRange until;
            IntProgression step;
            RectF rectF;
            if (ink == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            until = RangesKt___RangesKt.until(0, ink.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().length);
            step = RangesKt___RangesKt.step(until, 3);
            int first = step.getFirst();
            int last = step.getLast();
            int step2 = step.getStep();
            if ((step2 > 0 && first <= last) || (step2 < 0 && last <= first)) {
                rectF = null;
                while (true) {
                    float f = ink.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String()[first];
                    float f2 = ink.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String()[first + 1];
                    arrayList.add(new PenPointInk(f, f2, ink.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String()[first + 2]));
                    if (PenPointResult.f44299d) {
                        PenPointResult.f44300e++;
                    }
                    if (rectF == null) {
                        rectF = new RectF(f, f2, f, f2);
                    } else {
                        rectF.union(f, f2);
                    }
                    if (first == last) {
                        break;
                    }
                    first += step2;
                }
            } else {
                rectF = null;
            }
            if (rectF == null) {
                return null;
            }
            return new PenPointResult(arrayList, rectF, lastResult);
        }

        public final void dumpCount() {
            Debug.INSTANCE.m32052i(Companion.class, "point count: " + PenPointResult.f44300e, new Object[0]);
        }

        public final void resetCount() {
            PenPointResult.f44300e = 0;
        }

        public Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PenPointResult(@NotNull List<PenPointInk> points, @NotNull RectF rect, @Nullable PenPointResult penPointResult) {
        super(rect);
        Intrinsics.checkNotNullParameter(points, "points");
        Intrinsics.checkNotNullParameter(rect, "rect");
        this.points = points;
        this.lastResult = penPointResult;
    }

    @Override // com.onyx.android.sdk.pen.PenResult
    @Nullable
    public PenResult append(@Nullable PenResult add) {
        if (add == null) {
            return this;
        }
        PenPointResult penPointResult = (PenPointResult) add;
        final ArrayList arrayList = new ArrayList(this.points);
        arrayList.addAll(penPointResult.points);
        final RectF rectF = new RectF(getRect());
        rectF.union(penPointResult.getRect());
        final int f44303f = getF44303f() + penPointResult.getF44303f();
        final PenPointResult penPointResult2 = this.lastResult;
        return new PenPointResult(arrayList, rectF, penPointResult2) { // from class: com.onyx.android.sdk.pen.PenPointResult$append$1
            @Override // com.onyx.android.sdk.pen.PenPointResult, com.onyx.android.sdk.pen.PenResult
            /* renamed from: getPointsCount, reason: from getter */
            public int getF44303f() {
                return f44303f;
            }
        };
    }

    @Override // com.onyx.android.sdk.pen.PenResult
    public void draw(@NotNull Canvas canvas, @NotNull Paint paint) {
        Object first;
        Object last;
        Object last2;
        Object first2;
        Object first3;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(paint, "paint");
        float strokeWidth = paint.getStrokeWidth();
        Paint.Style style = paint.getStyle();
        paint.setStyle(Paint.Style.STROKE);
        if (this.lastResult != null && (!this.points.isEmpty())) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) this.points);
            paint.setStrokeWidth(((PenPointInk) first).getSize());
            last = CollectionsKt___CollectionsKt.last((List<? extends Object>) this.lastResult.points);
            float x = ((PenPointInk) last).getX();
            last2 = CollectionsKt___CollectionsKt.last((List<? extends Object>) this.lastResult.points);
            float y = ((PenPointInk) last2).getY();
            first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) this.points);
            float x2 = ((PenPointInk) first2).getX();
            first3 = CollectionsKt___CollectionsKt.first((List<? extends Object>) this.points);
            canvas.drawLine(x, y, x2, ((PenPointInk) first3).getY(), paint);
        }
        int size = this.points.size() - 1;
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            paint.setStrokeWidth(this.points.get(i2).getSize());
            canvas.drawLine(this.points.get(i).getX(), this.points.get(i).getY(), this.points.get(i2).getX(), this.points.get(i2).getY(), paint);
            i = i2;
        }
        paint.setStrokeWidth(strokeWidth);
        paint.setStyle(style);
    }

    @NotNull
    public final List<PenPointInk> getPoints() {
        return this.points;
    }

    @Override // com.onyx.android.sdk.pen.PenResult
    /* renamed from: getPointsCount */
    public int getF44303f() {
        return this.points.size();
    }
}
