package com.onyx.android.sdk.geometry.data;

import android.graphics.Matrix;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0010J\u0006\u0010\u0012\u001a\u00020\u0010J\u0006\u0010\u0013\u001a\u00020\u0014J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\u0006\u0010\u0018\u001a\u00020\u0000J'\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\u0006\u0010\u001e\u001a\u00020\u0010J\u0006\u0010\u001f\u001a\u00020\u0010J\u0006\u0010 \u001a\u00020\u0014J\u0006\u0010!\u001a\u00020\u0010J\u0006\u0010\"\u001a\u00020\u0014J\u0006\u0010#\u001a\u00020\u0010J\u0006\u0010$\u001a\u00020\u0010J\b\u0010%\u001a\u00020&H\u0016J\u0010\u0010'\u001a\u00020\u00002\b\u0010(\u001a\u0004\u0018\u00010)R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\n¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/AnglePoints;", "", "center", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "previous", Constants.NEXT, "(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "getCenter", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "setCenter", "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "getNext", "setNext", "getPrevious", "setPrevious", "absoluteAngle", "", "angle", "centerDirection", "centerLine", "Lcom/onyx/android/sdk/geometry/data/TouchPointPair;", "component1", "component2", "component3", "copy", "equals", "", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "hashCode", "", "longSideLength", "nextDirection", "nextLine", "previousDirection", "previousLine", "shortSideLength", "sideLengthDifferRate", "toString", "", com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_TRANSFORM_STRING, "matrix", "Landroid/graphics/Matrix;", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class AnglePoints {

    @NotNull
    private TouchPoint center;

    @NotNull
    private TouchPoint next;

    @NotNull
    private TouchPoint previous;

    public AnglePoints(@NotNull TouchPoint center, @NotNull TouchPoint previous, @NotNull TouchPoint next) {
        Intrinsics.checkNotNullParameter(center, "center");
        Intrinsics.checkNotNullParameter(previous, "previous");
        Intrinsics.checkNotNullParameter(next, "next");
        this.center = center;
        this.previous = previous;
        this.next = next;
    }

    public static /* synthetic */ AnglePoints copy$default(AnglePoints anglePoints, TouchPoint touchPoint, TouchPoint touchPoint2, TouchPoint touchPoint3, int i, Object obj) {
        if ((i & 1) != 0) {
            touchPoint = anglePoints.center;
        }
        if ((i & 2) != 0) {
            touchPoint2 = anglePoints.previous;
        }
        if ((i & 4) != 0) {
            touchPoint3 = anglePoints.next;
        }
        return anglePoints.copy(touchPoint, touchPoint2, touchPoint3);
    }

    public final float absoluteAngle() {
        return Math.abs(angle());
    }

    public final float angle() {
        return GeometryUtils.INSTANCE.intersectionAngle(this.center, this.previous, this.next);
    }

    public final float centerDirection() {
        return MathUtils.INSTANCE.average(Float.valueOf(previousDirection()), Float.valueOf(nextDirection())).floatValue();
    }

    @NotNull
    public final TouchPointPair centerLine() {
        return previousLine().rotate(this.center, Float.valueOf((nextDirection() - previousDirection()) / 2));
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final TouchPoint getCenter() {
        return this.center;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final TouchPoint getPrevious() {
        return this.previous;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final TouchPoint getNext() {
        return this.next;
    }

    @NotNull
    public final AnglePoints copy(@NotNull TouchPoint center, @NotNull TouchPoint previous, @NotNull TouchPoint next) {
        Intrinsics.checkNotNullParameter(center, "center");
        Intrinsics.checkNotNullParameter(previous, "previous");
        Intrinsics.checkNotNullParameter(next, "next");
        return new AnglePoints(center, previous, next);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AnglePoints)) {
            return false;
        }
        AnglePoints anglePoints = (AnglePoints) other;
        return Intrinsics.areEqual(this.center, anglePoints.center) && Intrinsics.areEqual(this.previous, anglePoints.previous) && Intrinsics.areEqual(this.next, anglePoints.next);
    }

    @NotNull
    public final TouchPoint getCenter() {
        return this.center;
    }

    @NotNull
    public final TouchPoint getNext() {
        return this.next;
    }

    @NotNull
    public final TouchPoint getPrevious() {
        return this.previous;
    }

    public int hashCode() {
        return (((this.center.hashCode() * 31) + this.previous.hashCode()) * 31) + this.next.hashCode();
    }

    public final float longSideLength() {
        return Math.max(new TouchPointPair(this.center, this.previous).length(), new TouchPointPair(this.center, this.next).length());
    }

    public final float nextDirection() {
        return nextLine().direction();
    }

    @NotNull
    public final TouchPointPair nextLine() {
        return new TouchPointPair(this.center, this.next);
    }

    public final float previousDirection() {
        return previousLine().direction();
    }

    @NotNull
    public final TouchPointPair previousLine() {
        return new TouchPointPair(this.center, this.previous);
    }

    public final void setCenter(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "<set-?>");
        this.center = touchPoint;
    }

    public final void setNext(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "<set-?>");
        this.next = touchPoint;
    }

    public final void setPrevious(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "<set-?>");
        this.previous = touchPoint;
    }

    public final float shortSideLength() {
        return Math.min(new TouchPointPair(this.center, this.previous).length(), new TouchPointPair(this.center, this.next).length());
    }

    public final float sideLengthDifferRate() {
        return MathUtils.INSTANCE.differRateToShorter(Float.valueOf(shortSideLength()), Float.valueOf(longSideLength()));
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.previous.getX());
        sb.append(',');
        sb.append(this.previous.getY());
        sb.append('/');
        sb.append(this.center.getX());
        sb.append(',');
        sb.append(this.center.getY());
        sb.append('/');
        sb.append(this.next.getX());
        sb.append(',');
        sb.append(this.next.getY());
        return sb.toString();
    }

    @NotNull
    public final AnglePoints transform(@Nullable Matrix matrix) {
        return new AnglePoints(this.center.transform(matrix), this.previous.transform(matrix), this.next.transform(matrix));
    }

    @NotNull
    public final AnglePoints copy() {
        return new AnglePoints(this.center.copy(), this.previous.copy(), this.next.copy());
    }
}
