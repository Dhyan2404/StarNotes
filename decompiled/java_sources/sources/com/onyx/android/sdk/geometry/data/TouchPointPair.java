package com.onyx.android.sdk.geometry.data;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0011\n\u0002\u0010\u0004\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u0006\u0010\f\u001a\u00020\u0003J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0000J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0000J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0003J\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u0003J\u000e\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u0003J\u0006\u0010\u0017\u001a\u00020\u0014J\u0006\u0010\u0018\u001a\u00020\u0014J\u0014\u0010\u0019\u001a\u00020\u00032\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00030\u001bJ\u0014\u0010\u001c\u001a\u00020\u00002\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00030\u001bJ\u000e\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0003J\u000e\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u0000J\u0016\u0010 \u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00142\u0006\u0010!\u001a\u00020\u0003J\u0018\u0010\"\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00142\b\b\u0002\u0010#\u001a\u00020\u0003J\u0006\u0010$\u001a\u00020\u0000J\u000e\u0010%\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0003J\u000e\u0010&\u001a\u00020\u00112\u0006\u0010'\u001a\u00020\u0003J\u0016\u0010(\u001a\u00020\u00112\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003J\u0006\u0010)\u001a\u00020\u0014J\u0006\u0010*\u001a\u00020\u0014J\u0016\u0010+\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010,\u001a\u00020-J\u000e\u0010.\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u0003J\b\u0010/\u001a\u000200H\u0016J\u000e\u00101\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0014R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\t¨\u00062"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/TouchPointPair;", "", "p1", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "p2", "(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "getP1", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "setP1", "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "getP2", "setP2", "center", "componentAlongLineDirection", "line", "componentAlongPerpendicularDirection", "containsEndPoint", "", "p", "direction", "", "directionTo", "distance", "dx", "dy", "farthestPoint", PointConstant.POINT_FILE_END, "", "farthestPoints", "findCrossPoint", "outPoint", Constants.ATTRVAL_OTHER, "findPointByDistance", "crossPoint", "findPointOnVector", gon.f71290o0, "getCentralVerticalLine", "getVerticalLine", "isCrossPointOnVector", "point", "isSameSide", "length", "reversedDirection", "rotate", "rad", "", "signedDistance", "toString", "", "translate", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nTouchPointPair.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TouchPointPair.kt\ncom/onyx/android/sdk/geometry/data/TouchPointPair\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,267:1\n1855#2,2:268\n1855#2,2:270\n*S KotlinDebug\n*F\n+ 1 TouchPointPair.kt\ncom/onyx/android/sdk/geometry/data/TouchPointPair\n*L\n101#1:268,2\n117#1:270,2\n*E\n"})
/* loaded from: classes7.dex */
public class TouchPointPair {

    @NotNull
    private TouchPoint p1;

    @NotNull
    private TouchPoint p2;

    public TouchPointPair(@NotNull TouchPoint p1, @NotNull TouchPoint p2) {
        Intrinsics.checkNotNullParameter(p1, "p1");
        Intrinsics.checkNotNullParameter(p2, "p2");
        this.p1 = p1;
        this.p2 = p2;
    }

    public static /* synthetic */ TouchPoint findPointOnVector$default(TouchPointPair touchPointPair, float f, TouchPoint touchPoint, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: findPointOnVector");
        }
        if ((i & 2) != 0) {
            touchPoint = touchPointPair.p1;
        }
        return touchPointPair.findPointOnVector(f, touchPoint);
    }

    @NotNull
    public final TouchPoint center() {
        return GeometryUtils.INSTANCE.center(this.p1, this.p2);
    }

    @NotNull
    public final TouchPointPair componentAlongLineDirection(@NotNull TouchPointPair line) {
        Intrinsics.checkNotNullParameter(line, "line");
        return new TouchPointPair(this.p1, new TouchPointPair(this.p1, GeometryUtils.INSTANCE.findPointByDistance(this.p1, 100, Float.valueOf(line.direction()))).findCrossPoint(this.p2));
    }

    @NotNull
    public final TouchPointPair componentAlongPerpendicularDirection(@NotNull TouchPointPair line) {
        Intrinsics.checkNotNullParameter(line, "line");
        return new TouchPointPair(new TouchPointPair(this.p1, GeometryUtils.INSTANCE.findPointByDistance(this.p1, 100, Float.valueOf(line.direction()))).findCrossPoint(this.p2), this.p2);
    }

    public final boolean containsEndPoint(@NotNull TouchPoint p) {
        Intrinsics.checkNotNullParameter(p, "p");
        if (this.p1.getX() == p.getX()) {
            if (this.p1.getY() == p.getY()) {
                return true;
            }
        }
        if (this.p2.getX() == p.getX()) {
            if (this.p2.getY() == p.getY()) {
                return true;
            }
        }
        return false;
    }

    public final float direction() {
        if (this.p2.getY() == this.p1.getY()) {
            if (this.p2.getX() > this.p1.getX()) {
                return 0.0f;
            }
            if (this.p2.getX() < this.p1.getX()) {
                return 3.1415927f;
            }
        }
        float atan = (float) Math.atan(GeometryUtils.INSTANCE.slope(this.p1, this.p2));
        if (this.p2.getY() > this.p1.getY() && atan < 0.0f) {
            atan += 3.1415927f;
        }
        return (this.p2.getY() >= this.p1.getY() || atan <= 0.0f) ? atan : atan - 3.1415927f;
    }

    public final float directionTo(@NotNull TouchPoint p) {
        Intrinsics.checkNotNullParameter(p, "p");
        return new TouchPointPair(findCrossPoint(p), p).direction();
    }

    public final float distance(@NotNull TouchPoint p) {
        Intrinsics.checkNotNullParameter(p, "p");
        return Math.abs(signedDistance(p));
    }

    /* renamed from: dx */
    public final float m33278dx() {
        return this.p2.getX() - this.p1.getX();
    }

    /* renamed from: dy */
    public final float m33279dy() {
        return this.p2.getY() - this.p1.getY();
    }

    @NotNull
    public final TouchPoint farthestPoint(@NotNull List<TouchPoint> points) {
        Intrinsics.checkNotNullParameter(points, "points");
        TouchPoint touchPoint = this.p1;
        float f = 0.0f;
        for (TouchPoint touchPoint2 : points) {
            float distance = distance(touchPoint2);
            if (distance > f) {
                touchPoint = touchPoint2;
                f = distance;
            }
        }
        return touchPoint;
    }

    @NotNull
    public final TouchPointPair farthestPoints(@NotNull List<TouchPoint> points) {
        Intrinsics.checkNotNullParameter(points, "points");
        TouchPoint.Companion companion = TouchPoint.INSTANCE;
        TouchPoint empty = companion.getEmpty();
        TouchPoint empty2 = companion.getEmpty();
        float f = 0.0f;
        float f2 = 0.0f;
        for (TouchPoint touchPoint : points) {
            float signedDistance = signedDistance(touchPoint);
            if (signedDistance < 0.0f && signedDistance < f) {
                empty2 = touchPoint;
                f = signedDistance;
            }
            if (signedDistance > 0.0f && signedDistance > f2) {
                empty = touchPoint;
                f2 = signedDistance;
            }
        }
        return new TouchPointPair(empty2, empty);
    }

    @NotNull
    public final TouchPoint findCrossPoint(@NotNull TouchPoint outPoint) {
        Intrinsics.checkNotNullParameter(outPoint, "outPoint");
        if (containsEndPoint(outPoint)) {
            return outPoint.copy();
        }
        TouchPointPair touchPointPair = new TouchPointPair(this.p1, outPoint);
        float direction = touchPointPair.direction();
        float direction2 = direction();
        float length = touchPointPair.length() * ((float) Math.cos(direction - direction2));
        double d = direction2;
        float x = this.p1.getX() + (((float) Math.cos(d)) * length);
        float y = this.p1.getY() + (length * ((float) Math.sin(d)));
        TouchPoint touchPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
        touchPoint.setX(x);
        touchPoint.setY(y);
        return touchPoint;
    }

    @NotNull
    public final TouchPoint findPointByDistance(float distance, @NotNull TouchPoint crossPoint) {
        Intrinsics.checkNotNullParameter(crossPoint, "crossPoint");
        float direction = direction();
        TouchPoint touchPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
        double d = direction;
        touchPoint.setX(crossPoint.getX() - (((float) Math.sin(d)) * distance));
        touchPoint.setY(crossPoint.getY() + (distance * ((float) Math.cos(d))));
        return touchPoint;
    }

    @NotNull
    public final TouchPoint findPointOnVector(float distance, @NotNull TouchPoint start) {
        Intrinsics.checkNotNullParameter(start, "start");
        float length = distance / length();
        return new TouchPoint(start.getX() + ((this.p2.getX() - this.p1.getX()) * length), start.getY() + ((this.p2.getY() - this.p1.getY()) * length));
    }

    @NotNull
    public final TouchPointPair getCentralVerticalLine() {
        return getVerticalLine(center());
    }

    @NotNull
    public final TouchPoint getP1() {
        return this.p1;
    }

    @NotNull
    public final TouchPoint getP2() {
        return this.p2;
    }

    @NotNull
    public final TouchPointPair getVerticalLine(@NotNull TouchPoint crossPoint) {
        Intrinsics.checkNotNullParameter(crossPoint, "crossPoint");
        return rotate(crossPoint, Float.valueOf(1.5707964f));
    }

    public final boolean isCrossPointOnVector(@NotNull TouchPoint point) {
        Intrinsics.checkNotNullParameter(point, "point");
        TouchPoint findCrossPoint = findCrossPoint(point);
        MathUtils mathUtils = MathUtils.INSTANCE;
        return MathUtils.inRange$default(mathUtils, Float.valueOf(findCrossPoint.getX()), Float.valueOf(this.p1.getX()), Float.valueOf(this.p2.getX()), false, false, true, 12, null) && MathUtils.inRange$default(mathUtils, Float.valueOf(findCrossPoint.getY()), Float.valueOf(this.p1.getY()), Float.valueOf(this.p2.getY()), false, false, true, 12, null);
    }

    public final boolean isSameSide(@NotNull TouchPoint p1, @NotNull TouchPoint p2) {
        Intrinsics.checkNotNullParameter(p1, "p1");
        Intrinsics.checkNotNullParameter(p2, "p2");
        return signedDistance(p1) * signedDistance(p2) >= 0.0f;
    }

    public final float length() {
        return GeometryUtils.INSTANCE.distance(this.p1, this.p2);
    }

    public final float reversedDirection() {
        float direction = direction();
        return direction > 0.0f ? direction - 3.1415927f : direction + 3.1415927f;
    }

    @NotNull
    public final TouchPointPair rotate(@NotNull TouchPoint center, @NotNull Number rad) {
        Intrinsics.checkNotNullParameter(center, "center");
        Intrinsics.checkNotNullParameter(rad, "rad");
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        return new TouchPointPair(geometryUtils.rotationTransform(this.p1, center, rad.floatValue()), geometryUtils.rotationTransform(this.p2, center, rad.floatValue()));
    }

    public final void setP1(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "<set-?>");
        this.p1 = touchPoint;
    }

    public final void setP2(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "<set-?>");
        this.p2 = touchPoint;
    }

    public final float signedDistance(@NotNull TouchPoint p) {
        Intrinsics.checkNotNullParameter(p, "p");
        return new TouchPointPair(this.p1, p).length() * ((float) Math.sin(r0.direction() - direction()));
    }

    @NotNull
    public String toString() {
        return '(' + this.p1.getX() + ',' + this.p1.getY() + ")->(" + this.p2.getX() + ',' + this.p2.getY() + ") length=" + length();
    }

    @NotNull
    public final TouchPointPair translate(float distance) {
        return new TouchPointPair(findPointByDistance(distance, this.p1), findPointByDistance(distance, this.p2));
    }

    @NotNull
    public final TouchPoint findCrossPoint(@NotNull TouchPointPair other) {
        Intrinsics.checkNotNullParameter(other, "other");
        MathUtils mathUtils = MathUtils.INSTANCE;
        boolean areApproximatelyEqual$default = MathUtils.areApproximatelyEqual$default(mathUtils, this.p1.getX(), this.p2.getX(), 0.0f, 4, null);
        boolean areApproximatelyEqual$default2 = MathUtils.areApproximatelyEqual$default(mathUtils, other.p1.getX(), other.p2.getX(), 0.0f, 4, null);
        if (areApproximatelyEqual$default && areApproximatelyEqual$default2) {
            return TouchPoint.INSTANCE.getEmpty();
        }
        if (!areApproximatelyEqual$default && !areApproximatelyEqual$default2) {
            TouchPoint touchPoint = other.p1;
            TouchPoint touchPoint2 = other.p2;
            float y = (this.p2.getY() - this.p1.getY()) / (this.p2.getX() - this.p1.getX());
            float y2 = this.p1.getY() - (this.p1.getX() * y);
            float y3 = (touchPoint2.getY() - touchPoint.getY()) / (touchPoint2.getX() - touchPoint.getX());
            float y4 = touchPoint.getY() - (touchPoint.getX() * y3);
            if (y == y3) {
                return TouchPoint.INSTANCE.getEmpty();
            }
            float f = (y4 - y2) / (y - y3);
            TouchPoint touchPoint3 = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
            touchPoint3.setX(f);
            touchPoint3.setY((y * f) + y2);
            return touchPoint3;
        }
        TouchPointPair touchPointPair = areApproximatelyEqual$default ? this : other;
        if (areApproximatelyEqual$default) {
            this = other;
        }
        return new TouchPoint(touchPointPair.p1.getX(), this.p1.getY() - (((this.p2.getY() - this.p1.getY()) / (this.p2.getX() - this.p1.getX())) * (this.p1.getX() - touchPointPair.p1.getX())));
    }
}
