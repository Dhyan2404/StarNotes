package com.onyx.android.sdk.pen;

import android.graphics.Path;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.lite.extension.PathKt;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ*\u0010\u0007\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00052\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0016J(\u0010\u0007\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0016J0\u0010\f\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00052\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0016J8\u0010\f\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00052\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0006\u0010\t\u001a\u00020\bH\u0016J*\u0010\r\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00052\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0016J(\u0010\r\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0016J$\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00100\u00052\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J \u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u00052\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002R\u0016\u0010\u0014\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0013¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;", "Lcom/onyx/android/sdk/pen/NeoPen;", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "point", IStyleSheet.CLASS_PREDICTION, "Lkotlin/Pair;", "Lcom/onyx/android/sdk/pen/PenResult;", "onPenDown", "", "repaint", "", PointConstant.POINT_FILE_END, "onPenMove", "onPenUp", "Landroid/graphics/Path;", "path", "Landroid/graphics/RectF;", "b", "a", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "lastPoint", "c", "endPoint", "", "penHandle", Constants.CONSTRUCTOR_NAME, "(J)V", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NeoSegmentPathResultPen extends NeoPen {

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public TouchPoint lastPoint;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public TouchPoint endPoint;

    public NeoSegmentPathResultPen() {
        this(0L, 1, null);
    }

    /* renamed from: a */
    public final Pair<Path, RectF> m34444a(TouchPoint point) {
        if (point == null) {
            return null;
        }
        Path path = new Path();
        path.moveTo(this.endPoint.getX(), this.endPoint.getY());
        path.quadTo(this.lastPoint.getX(), this.lastPoint.getY(), point.getX(), point.getY());
        RectF rectF = new RectF(this.endPoint.getX(), this.endPoint.getY(), this.endPoint.getX(), this.endPoint.getY());
        rectF.union(point.getX(), point.getY());
        return new Pair<>(path, rectF);
    }

    /* renamed from: b */
    public final Pair<Path, RectF> m34445b(Path path, TouchPoint point) {
        float quadToEndPos$default = PathKt.getQuadToEndPos$default(this.lastPoint.getX(), point.getX(), 0.0f, 4, null);
        float quadToEndPos$default2 = PathKt.getQuadToEndPos$default(this.lastPoint.getY(), point.getY(), 0.0f, 4, null);
        path.quadTo(this.lastPoint.getX(), this.lastPoint.getY(), quadToEndPos$default, quadToEndPos$default2);
        RectF rectF = new RectF(this.endPoint.getX(), this.endPoint.getY(), this.endPoint.getX(), this.endPoint.getY());
        rectF.union(quadToEndPos$default, quadToEndPos$default2);
        this.endPoint.setX(quadToEndPos$default);
        this.endPoint.setY(quadToEndPos$default2);
        this.lastPoint.set(point);
        return new Pair<>(path, rectF);
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

    public NeoSegmentPathResultPen(long j) {
        super(j);
        this.lastPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
        this.endPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
    }

    @Override // com.onyx.android.sdk.pen.NeoPen
    @NotNull
    public Pair<PenResult, PenResult> onPenDown(@NotNull TouchPoint point, boolean repaint) {
        Intrinsics.checkNotNullParameter(point, "point");
        this.lastPoint.set(point);
        this.endPoint.set(point);
        return new Pair<>(null, null);
    }

    @Override // com.onyx.android.sdk.pen.NeoPen
    @NotNull
    public Pair<PenResult, PenResult> onPenMove(@NotNull List<TouchPoint> points, @Nullable TouchPoint prediction, boolean repaint) {
        Intrinsics.checkNotNullParameter(points, "points");
        if (points.isEmpty()) {
            return new Pair<>(null, null);
        }
        Path path = new Path();
        path.moveTo(this.endPoint.getX(), this.endPoint.getY());
        Iterator<TouchPoint> it2 = points.iterator();
        RectF rectF = null;
        while (it2.hasNext()) {
            Pair<Path, RectF> m34445b = m34445b(path, it2.next());
            if (rectF == null) {
                rectF = m34445b.getSecond();
            } else {
                rectF.union(m34445b.getSecond());
            }
        }
        PenPathResult penPathResult = rectF != null ? new PenPathResult(path, rectF) : null;
        Pair<Path, RectF> m34444a = m34444a(prediction);
        return new Pair<>(penPathResult, m34444a != null ? new PenPathResult(m34444a.getFirst(), m34444a.getSecond()) : null);
    }

    @Override // com.onyx.android.sdk.pen.NeoPen
    @NotNull
    public Pair<PenResult, PenResult> onPenUp(@NotNull TouchPoint point, boolean repaint) {
        Intrinsics.checkNotNullParameter(point, "point");
        Path path = new Path();
        path.moveTo(this.endPoint.getX(), this.endPoint.getY());
        Pair<Path, RectF> m34445b = m34445b(path, point);
        return new Pair<>(new PenPathResult(m34445b.getFirst(), m34445b.getSecond()), null);
    }

    public /* synthetic */ NeoSegmentPathResultPen(long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j);
    }
}
