package com.onyx.android.sdk.universal.editor.helper;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CanvasKt;
import com.onyx.android.sdk.geometry.data.AnglePoints;
import com.onyx.android.sdk.geometry.data.GeometryConfigurations;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.text.Typography;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0015\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0015\u001a\u00020\t\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u0016\u0012\b\b\u0002\u0010!\u001a\u00020\u0016¢\u0006\u0004\b)\u0010*J6\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0016R\"\u0010\u0015\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u001d\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010!\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0018\u001a\u0004\b\u001f\u0010\u001a\"\u0004\b \u0010\u001cR\"\u0010(\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'¨\u0006+"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;", "Lcom/onyx/android/sdk/universal/editor/helper/AnglePainter;", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "shape", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", PointConstant.POINT_FILE_END, "", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "", "showRightAngle", "", "draw", "a", "F", "getRadius", "()F", "setRadius", "(F)V", "radius", "Landroid/graphics/Paint;", "b", "Landroid/graphics/Paint;", "getArcPaint", "()Landroid/graphics/Paint;", "setArcPaint", "(Landroid/graphics/Paint;)V", "arcPaint", "c", "getTextPaint", "setTextPaint", "textPaint", "d", Constants.HASIDCALL_INDEX_SIG, "getSupportAngleGreaterThan180", Constants.BOOLEAN_VALUE_SIG, "setSupportAngleGreaterThan180", "(Z)V", "supportAngleGreaterThan180", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(FLandroid/graphics/Paint;Landroid/graphics/Paint;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SingleAnglePainter implements AnglePainter {

    /* renamed from: a, reason: from kotlin metadata */
    public float radius;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public Paint arcPaint;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public Paint textPaint;

    /* renamed from: d, reason: from kotlin metadata */
    public boolean supportAngleGreaterThan180;

    public SingleAnglePainter() {
        this(0.0f, null, null, 7, null);
    }

    @Override // com.onyx.android.sdk.universal.editor.helper.AnglePainter
    public void draw(@NotNull Canvas canvas, @NotNull UniversalShape shape, @NotNull List<TouchPoint> points, float strokeWidth, boolean showRightAngle) {
        Object firstOrNull;
        float f;
        Paint paint;
        TouchPoint findPointOnVector;
        Paint paint2;
        int roundToInt;
        Canvas canvas2;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(points, "points");
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        boolean z = false;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) GeometryUtils.findAllAngles$default(geometryUtils, points, false, 1, null));
        AnglePoints anglePoints = (AnglePoints) firstOrNull;
        if (anglePoints == null) {
            return;
        }
        float clockwiseAngle = geometryUtils.getClockwiseAngle(anglePoints);
        float radToDegree = geometryUtils.radToDegree(clockwiseAngle);
        float f2 = this.radius;
        Paint paint3 = new Paint(this.textPaint);
        Paint paint4 = new Paint(this.arcPaint);
        TouchPointPair touchPointPair = new TouchPointPair(anglePoints.getCenter(), anglePoints.getPrevious());
        TouchPointPair touchPointPair2 = new TouchPointPair(anglePoints.getCenter(), anglePoints.getNext());
        float direction = touchPointPair.direction();
        boolean z2 = radToDegree < 180.0f;
        if (!z2 && !this.supportAngleGreaterThan180) {
            z = true;
        }
        boolean z3 = z2 | z;
        float f3 = 2;
        float f4 = strokeWidth / f3;
        AnglePoints strokedAnglePoints = geometryUtils.getStrokedAnglePoints(anglePoints, Float.valueOf(f4), true);
        if (strokedAnglePoints == null) {
            return;
        }
        if (z3) {
            findPointOnVector = strokedAnglePoints.getCenter();
            f = radToDegree;
            paint = paint4;
        } else {
            f = radToDegree;
            paint = paint4;
            findPointOnVector = new TouchPointPair(anglePoints.getCenter(), strokedAnglePoints.getCenter()).findPointOnVector(f4, anglePoints.getCenter());
        }
        float f5 = (clockwiseAngle / f3) + direction;
        if (z) {
            f5 += 3.1415927f;
        }
        TouchPoint findPointByDistance = geometryUtils.findPointByDistance(findPointOnVector, Float.valueOf(paint3.getTextSize() + f2), Float.valueOf(f5));
        float min = Math.min(touchPointPair.distance(findPointByDistance), touchPointPair2.distance(findPointByDistance));
        float measureText = paint3.measureText("888") + f4;
        if (z3 && min < measureText) {
            f2 *= measureText / min;
        }
        float shortSideLength = strokedAnglePoints.shortSideLength() * GeometryConfigurations.INSTANCE.getAngleSingleRadiusMaxPercent();
        if (f2 > shortSideLength) {
            float f6 = shortSideLength / f2;
            f2 *= f6;
            paint3.setTextSize(paint3.getTextSize() * f6);
            paint2 = paint;
            paint2.setStrokeWidth(paint.getStrokeWidth() * f6);
        } else {
            paint2 = paint;
        }
        TouchPoint findPointByDistance2 = geometryUtils.findPointByDistance(findPointOnVector, Float.valueOf(paint3.getTextSize() + f2), Float.valueOf(f5));
        roundToInt = MathKt__MathJVMKt.roundToInt(Math.abs(z ? 360 - f : f));
        StringBuilder sb = new StringBuilder();
        sb.append(roundToInt);
        sb.append(Typography.degree);
        String sb2 = sb.toString();
        RectF ovalRect = geometryUtils.getOvalRect(findPointOnVector, Float.valueOf(f2), Float.valueOf(f2));
        if (showRightAngle && roundToInt == 90) {
            canvas2 = canvas;
            AnglePainterKt.drawRightAngle(canvas2, strokedAnglePoints, f2, paint2);
        } else {
            canvas2 = canvas;
            canvas.drawArc(ovalRect, geometryUtils.radToDegree(direction), z ? f - 360 : f, false, paint2);
        }
        CanvasKt.drawTextFromCenter(canvas2, paint3, sb2, Float.valueOf(findPointByDistance2.getX()), Float.valueOf(findPointByDistance2.getY()));
    }

    @NotNull
    public final Paint getArcPaint() {
        return this.arcPaint;
    }

    public final float getRadius() {
        return this.radius;
    }

    public final boolean getSupportAngleGreaterThan180() {
        return this.supportAngleGreaterThan180;
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

    public final void setSupportAngleGreaterThan180(boolean z) {
        this.supportAngleGreaterThan180 = z;
    }

    public final void setTextPaint(@NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<set-?>");
        this.textPaint = paint;
    }

    public SingleAnglePainter(float f, @NotNull Paint arcPaint, @NotNull Paint textPaint) {
        Intrinsics.checkNotNullParameter(arcPaint, "arcPaint");
        Intrinsics.checkNotNullParameter(textPaint, "textPaint");
        this.radius = f;
        this.arcPaint = arcPaint;
        this.textPaint = textPaint;
    }

    public /* synthetic */ SingleAnglePainter(float f, Paint paint, Paint paint2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? GeometryConfigurations.INSTANCE.getAngleDefaultRadius() : f, (i & 2) != 0 ? new Paint() : paint, (i & 4) != 0 ? new Paint() : paint2);
    }
}
