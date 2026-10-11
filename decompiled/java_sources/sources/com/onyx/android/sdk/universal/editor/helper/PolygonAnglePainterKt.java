package com.onyx.android.sdk.universal.editor.helper;

import android.graphics.Paint;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.GeometryConfigurations;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a&\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0002\u001a\b\u0010\t\u001a\u00020\bH\u0002\u001a\b\u0010\n\u001a\u00020\bH\u0002¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/TouchPoint;", "strokedCenter", "angleCenter", "", "Lcom/onyx/android/sdk/geometry/data/TouchPointPair;", "sides", "", "c", "Landroid/graphics/Paint;", "a", "b", "sdk-universal_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PolygonAnglePainterKt {
    /* renamed from: a */
    public static final Paint m41223a() {
        Paint paint = new Paint();
        paint.setColor(-16776961);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(GeometryConfigurations.INSTANCE.getAngleDefaultStrokeWidth());
        return paint;
    }

    /* renamed from: b */
    public static final Paint m41224b() {
        Paint paint = new Paint();
        paint.setColor(-16776961);
        paint.setStyle(Paint.Style.FILL);
        paint.setTextSize(GeometryConfigurations.INSTANCE.getAngleDefaultTextSize());
        return paint;
    }

    /* renamed from: c */
    public static final float m41225c(TouchPoint touchPoint, TouchPoint touchPoint2, List<? extends TouchPointPair> list) {
        float distance;
        float distance2;
        if (list.size() <= 2) {
            return Float.MAX_VALUE;
        }
        Iterator<T> it2 = list.iterator();
        if (!it2.hasNext()) {
            throw new NoSuchElementException();
        }
        TouchPointPair touchPointPair = (TouchPointPair) it2.next();
        if (touchPointPair.containsEndPoint(touchPoint2)) {
            distance = Float.MAX_VALUE;
        } else if (touchPointPair.isCrossPointOnVector(touchPoint)) {
            distance = !touchPointPair.isSameSide(touchPoint2, touchPoint) ? 0.0f : touchPointPair.distance(touchPoint);
        } else {
            GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
            distance = Math.min(geometryUtils.distanceTo(touchPoint, touchPointPair.getP1()), geometryUtils.distanceTo(touchPoint, touchPointPair.getP2()));
        }
        while (it2.hasNext()) {
            TouchPointPair touchPointPair2 = (TouchPointPair) it2.next();
            if (touchPointPair2.containsEndPoint(touchPoint2)) {
                distance2 = Float.MAX_VALUE;
            } else if (touchPointPair2.isCrossPointOnVector(touchPoint)) {
                distance2 = !touchPointPair2.isSameSide(touchPoint2, touchPoint) ? 0.0f : touchPointPair2.distance(touchPoint);
            } else {
                GeometryUtils geometryUtils2 = GeometryUtils.INSTANCE;
                distance2 = Math.min(geometryUtils2.distanceTo(touchPoint, touchPointPair2.getP1()), geometryUtils2.distanceTo(touchPoint, touchPointPair2.getP2()));
            }
            distance = Math.min(distance, distance2);
        }
        return distance;
    }
}
