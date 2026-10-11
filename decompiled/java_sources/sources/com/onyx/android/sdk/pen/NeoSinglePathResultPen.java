package com.onyx.android.sdk.pen;

import android.graphics.Path;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.lite.extension.PathKt;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\t\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010!\u001a\u00020 ¢\u0006\u0004\b\"\u0010#J*\u0010\u0007\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00052\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0016J(\u0010\u0007\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0016J0\u0010\f\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00052\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0016J8\u0010\f\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00052\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0006\u0010\t\u001a\u00020\bH\u0016J*\u0010\r\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00052\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0016J(\u0010\r\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0016J\u0016\u0010\u000f\u001a\u00020\u000e2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\nH\u0002J\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0002R\"\u0010\u0018\u001a\u00020\u00128\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001b\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001a¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/NeoSinglePathResultPen;", "Lcom/onyx/android/sdk/pen/NeoPen;", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "point", IStyleSheet.CLASS_PREDICTION, "Lkotlin/Pair;", "Lcom/onyx/android/sdk/pen/PenResult;", "onPenDown", "", "repaint", "", PointConstant.POINT_FILE_END, "onPenMove", "onPenUp", "Lcom/onyx/android/sdk/pen/PenPathResult;", "b", "predictPoint", "a", "Landroid/graphics/Path;", "Landroid/graphics/Path;", "getPath", "()Landroid/graphics/Path;", "setPath", "(Landroid/graphics/Path;)V", "path", "c", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "firstPoint", "d", "lastPoint", "e", "endPoint", "", "penHandle", Constants.CONSTRUCTOR_NAME, "(J)V", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public class NeoSinglePathResultPen extends NeoPen {

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public Path path;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public TouchPoint firstPoint;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public TouchPoint lastPoint;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public TouchPoint endPoint;

    public NeoSinglePathResultPen() {
        this(0L, 1, null);
    }

    /* renamed from: a */
    public final PenPathResult m34446a(TouchPoint predictPoint) {
        if (predictPoint == null) {
            return null;
        }
        Path path = new Path();
        path.moveTo(this.endPoint.getX(), this.endPoint.getY());
        path.quadTo(this.lastPoint.getX(), this.lastPoint.getY(), predictPoint.getX(), predictPoint.getY());
        return new PenPathResult(path, new RectF(this.endPoint.getX(), this.endPoint.getY(), predictPoint.getX(), predictPoint.getY()));
    }

    /* renamed from: b */
    public final PenPathResult m34447b(List<TouchPoint> points) {
        RectF rectF = new RectF(this.firstPoint.getX(), this.firstPoint.getY(), this.firstPoint.getX(), this.firstPoint.getY());
        for (TouchPoint touchPoint : points) {
            float quadToEndPos$default = PathKt.getQuadToEndPos$default(this.lastPoint.getX(), touchPoint.getX(), 0.0f, 4, null);
            float quadToEndPos$default2 = PathKt.getQuadToEndPos$default(this.lastPoint.getY(), touchPoint.getY(), 0.0f, 4, null);
            this.path.quadTo(this.lastPoint.getX(), this.lastPoint.getY(), quadToEndPos$default, quadToEndPos$default2);
            this.endPoint.setX(quadToEndPos$default);
            this.endPoint.setY(quadToEndPos$default2);
            this.lastPoint.set(touchPoint);
            rectF.union(quadToEndPos$default, quadToEndPos$default2);
        }
        return new PenPathResult(this.path, rectF);
    }

    @NotNull
    public final Path getPath() {
        return this.path;
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

    public final void setPath(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<set-?>");
        this.path = path;
    }

    public NeoSinglePathResultPen(long j) {
        super(j);
        this.path = new Path();
        this.firstPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
        this.lastPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
        this.endPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
    }

    @Override // com.onyx.android.sdk.pen.NeoPen
    @NotNull
    public Pair<PenResult, PenResult> onPenDown(@NotNull TouchPoint point, boolean repaint) {
        Intrinsics.checkNotNullParameter(point, "point");
        this.firstPoint = point;
        this.lastPoint.set(point);
        this.endPoint.set(point);
        Path path = new Path();
        this.path = path;
        path.moveTo(point.getX(), point.getY());
        return new Pair<>(null, null);
    }

    @Override // com.onyx.android.sdk.pen.NeoPen
    @NotNull
    public Pair<PenResult, PenResult> onPenMove(@NotNull List<TouchPoint> points, @Nullable TouchPoint prediction, boolean repaint) {
        Intrinsics.checkNotNullParameter(points, "points");
        if (points.isEmpty()) {
            return new Pair<>(null, null);
        }
        PenPathResult m34447b = m34447b(points);
        PenPathResult m34446a = m34446a(prediction);
        Path path = new Path();
        path.addPath(m34447b.getPath());
        if (m34446a != null) {
            path.addPath(m34446a.getPath());
            m34447b.getRect().union(m34446a.getRect());
        }
        return new Pair<>(new PenPathResult(path, m34447b.getRect()), m34446a);
    }

    @Override // com.onyx.android.sdk.pen.NeoPen
    @NotNull
    public Pair<PenResult, PenResult> onPenUp(@NotNull TouchPoint point, boolean repaint) {
        List<TouchPoint> listOf;
        Intrinsics.checkNotNullParameter(point, "point");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(point);
        return new Pair<>(m34447b(listOf), null);
    }

    public /* synthetic */ NeoSinglePathResultPen(long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j);
    }
}
