package com.onyx.android.sdk.universal.editor.helper;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CanvasKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.geometry.data.AnglePoints;
import com.onyx.android.sdk.geometry.data.GeometryConfigurations;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.text.Typography;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0015\u001a\u00020\t\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u0016\u0012\b\b\u0002\u0010!\u001a\u00020\u0016¢\u0006\u0004\b\"\u0010#J6\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0016R\"\u0010\u0015\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u001d\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010!\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0018\u001a\u0004\b\u001f\u0010\u001a\"\u0004\b \u0010\u001c¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;", "Lcom/onyx/android/sdk/universal/editor/helper/AnglePainter;", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "shape", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", PointConstant.POINT_FILE_END, "", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "", "showRightAngle", "", "draw", "a", "F", "getRadius", "()F", "setRadius", "(F)V", "radius", "Landroid/graphics/Paint;", "b", "Landroid/graphics/Paint;", "getArcPaint", "()Landroid/graphics/Paint;", "setArcPaint", "(Landroid/graphics/Paint;)V", "arcPaint", "c", "getTextPaint", "setTextPaint", "textPaint", Constants.CONSTRUCTOR_NAME, "(FLandroid/graphics/Paint;Landroid/graphics/Paint;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPolygonAnglePainter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PolygonAnglePainter.kt\ncom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,151:1\n1549#2:152\n1620#2,3:153\n1855#2,2:156\n*S KotlinDebug\n*F\n+ 1 PolygonAnglePainter.kt\ncom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter\n*L\n48#1:152\n48#1:153,3\n50#1:156,2\n*E\n"})
/* loaded from: classes8.dex */
public final class PolygonAnglePainter implements AnglePainter {

    /* renamed from: a, reason: from kotlin metadata */
    public float radius;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public Paint arcPaint;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public Paint textPaint;

    public PolygonAnglePainter() {
        this(0.0f, null, null, 7, null);
    }

    @Override // com.onyx.android.sdk.universal.editor.helper.AnglePainter
    public void draw(@NotNull Canvas canvas, @NotNull UniversalShape shape, @NotNull List<TouchPoint> points, float strokeWidth, boolean showRightAngle) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        float f;
        float f2;
        List list;
        List<Integer> list2;
        TouchPoint findPointOnVector;
        float m41225c;
        int roundToInt;
        List list3;
        List<Integer> list4;
        Canvas canvas2;
        String str;
        PolygonAnglePainter polygonAnglePainter = this;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(points, "points");
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        List findAllSides$default = GeometryUtils.findAllSides$default(geometryUtils, points, false, 1, null);
        List findAllAngles$default = GeometryUtils.findAllAngles$default(geometryUtils, points, false, 1, null);
        List list5 = findAllAngles$default;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list5, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = list5.iterator();
        while (it2.hasNext()) {
            arrayList.add(Float.valueOf(((AnglePoints) it2.next()).absoluteAngle()));
        }
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            arrayList2.add(Float.valueOf(GeometryUtils.INSTANCE.radToDegree(((Number) it3.next()).floatValue())));
        }
        List<Integer> purifyAngles = AnglePurifierKt.purifyAngles(shape, arrayList2);
        Iterator it4 = (UniversalShapeAbilityFilterKt.drawSingleAngleOnly(shape) ? CollectionsKt___CollectionsKt.take(list5, 1) : findAllAngles$default).iterator();
        while (it4.hasNext()) {
            AnglePoints anglePoints = (AnglePoints) it4.next();
            float f3 = polygonAnglePainter.radius;
            Paint paint = new Paint(polygonAnglePainter.textPaint);
            Paint paint2 = new Paint(polygonAnglePainter.arcPaint);
            float direction = new TouchPointPair(anglePoints.getCenter(), anglePoints.getPrevious()).direction();
            float direction2 = new TouchPointPair(anglePoints.getCenter(), anglePoints.getNext()).direction();
            GeometryUtils geometryUtils2 = GeometryUtils.INSTANCE;
            float radToDegree = geometryUtils2.radToDegree(direction);
            float radToDegree2 = geometryUtils2.radToDegree(direction2) - radToDegree;
            float f4 = direction + direction2;
            float f5 = 2;
            float f6 = f4 / f5;
            Iterator it5 = it4;
            boolean z = !geometryUtils2.insideClosure(geometryUtils2.findPointByDistance(anglePoints.getCenter(), Double.valueOf(0.5d), Float.valueOf(f6)), points);
            if (z) {
                f = radToDegree;
                f2 = (Math.abs(radToDegree2) - 360) * MathUtils.INSTANCE.signFactor(Float.valueOf(radToDegree2));
            } else {
                f = radToDegree;
                f2 = radToDegree2;
            }
            boolean z2 = Math.abs(f2) < 180.0f;
            if (Math.abs(f2) == 180.0f) {
                z2 = z;
            }
            float f7 = strokeWidth / f5;
            AnglePoints strokedAnglePoints = geometryUtils2.getStrokedAnglePoints(anglePoints, Float.valueOf(f7), z2);
            if (strokedAnglePoints == null) {
                canvas2 = canvas;
                list4 = purifyAngles;
                list3 = findAllAngles$default;
            } else {
                if (z2) {
                    findPointOnVector = strokedAnglePoints.getCenter();
                    list = findAllAngles$default;
                    list2 = purifyAngles;
                } else {
                    list = findAllAngles$default;
                    list2 = purifyAngles;
                    findPointOnVector = new TouchPointPair(anglePoints.getCenter(), strokedAnglePoints.getCenter()).findPointOnVector(f7, anglePoints.getCenter());
                }
                if (geometryUtils2.insideClosure(strokedAnglePoints.getCenter(), points)) {
                    m41225c = PolygonAnglePainterKt.m41225c(findPointOnVector, anglePoints.getCenter(), findAllSides$default);
                    if (m41225c >= f7) {
                        float angleRadiusMaxPercent = (m41225c - f7) * GeometryConfigurations.INSTANCE.getAngleRadiusMaxPercent();
                        if (f3 > angleRadiusMaxPercent) {
                            float f8 = angleRadiusMaxPercent / f3;
                            f3 *= f8;
                            paint.setTextSize(paint.getTextSize() * f8);
                            paint2.setStrokeWidth(paint2.getStrokeWidth() * f8);
                        }
                        TouchPoint findPointByDistance = z ? geometryUtils2.findPointByDistance(findPointOnVector, Float.valueOf((-f3) * f5), Float.valueOf(f6)) : geometryUtils2.findPointByDistance(findPointOnVector, Float.valueOf(f5 * f3), Float.valueOf(f6));
                        roundToInt = MathKt__MathJVMKt.roundToInt(Math.abs(f2));
                        list3 = list;
                        if (!list2.isEmpty()) {
                            list4 = list2;
                            roundToInt = list4.get(list3.indexOf(anglePoints)).intValue();
                        } else {
                            list4 = list2;
                        }
                        StringBuilder sb = new StringBuilder();
                        sb.append(roundToInt);
                        sb.append(Typography.degree);
                        String sb2 = sb.toString();
                        RectF ovalRect = geometryUtils2.getOvalRect(findPointOnVector, Float.valueOf(f3), Float.valueOf(f3));
                        if (showRightAngle && roundToInt == 90) {
                            canvas2 = canvas;
                            AnglePainterKt.drawRightAngle(canvas2, strokedAnglePoints, f3, paint2);
                            str = sb2;
                        } else {
                            canvas2 = canvas;
                            str = sb2;
                            canvas.drawArc(ovalRect, f, f2, false, paint2);
                        }
                        CanvasKt.drawTextFromCenter(canvas2, paint, str, Float.valueOf(findPointByDistance.getX()), Float.valueOf(findPointByDistance.getY()));
                    }
                }
                canvas2 = canvas;
                list3 = list;
                list4 = list2;
            }
            polygonAnglePainter = this;
            findAllAngles$default = list3;
            purifyAngles = list4;
            it4 = it5;
        }
    }

    @NotNull
    public final Paint getArcPaint() {
        return this.arcPaint;
    }

    public final float getRadius() {
        return this.radius;
    }

    @NotNull
    public final Paint getTextPaint() {
        return this.textPaint;
    }

    public final void setArcPaint(@NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<set-?>");
        this.arcPaint = paint;
    }

    public final void setRadius(float f) {
        this.radius = f;
    }

    public final void setTextPaint(@NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<set-?>");
        this.textPaint = paint;
    }

    public PolygonAnglePainter(float f, @NotNull Paint arcPaint, @NotNull Paint textPaint) {
        Intrinsics.checkNotNullParameter(arcPaint, "arcPaint");
        Intrinsics.checkNotNullParameter(textPaint, "textPaint");
        this.radius = f;
        this.arcPaint = arcPaint;
        this.textPaint = textPaint;
    }

    public /* synthetic */ PolygonAnglePainter(float f, Paint paint, Paint paint2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? GeometryConfigurations.INSTANCE.getAngleDefaultRadius() : f, (i & 2) != 0 ? PolygonAnglePainterKt.m41223a() : paint, (i & 4) != 0 ? PolygonAnglePainterKt.m41224b() : paint2);
    }
}
