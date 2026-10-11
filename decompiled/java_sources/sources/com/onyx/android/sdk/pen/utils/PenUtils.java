package com.onyx.android.sdk.pen.utils;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.utils.DimenUtils;
import com.onyx.android.sdk.bean.DefaultPenParams;
import com.onyx.android.sdk.pen.NeoRenderPoint;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandlerManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0010\u0013\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010\b\n\u0002\b \bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\bb\u0010cJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006J,\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0012\u001a\u00020\u0011J+\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u0016j\b\u0012\u0004\u0012\u00020\u000f`\u00172\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u001c\u0010\u001d\u001a\u00020\u001c2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u001b\u001a\u00020\u001aJ\u001c\u0010 \u001a\u0004\u0018\u00010\u001f2\b\u0010\u001e\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u001b\u001a\u00020\u001aJ\u0018\u0010!\u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u000f2\b\b\u0002\u0010\u001b\u001a\u00020\u001aJ\u001e\u0010!\u001a\u00020\u001f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\b\b\u0002\u0010\u001b\u001a\u00020\u001aJ\u000e\u0010#\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020\u001aJ\u000e\u0010%\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020\u001aJ\u001e\u0010)\u001a\u0004\u0018\u00010&*\u0004\u0018\u00010&2\u0006\u0010'\u001a\u00020\u001a2\u0006\u0010(\u001a\u00020\u001aJ\f\u0010*\u001a\u00020\u001a*\u0004\u0018\u00010&J\f\u0010+\u001a\u00020\u001a*\u0004\u0018\u00010&J\f\u0010,\u001a\u00020\u001c*\u0004\u0018\u00010&J\n\u0010-\u001a\u00020\u001a*\u00020\u001cJ\n\u0010.\u001a\u00020\u001a*\u00020\u001cR\u0014\u00100\u001a\u00020/8\u0006X\u0086T¢\u0006\u0006\n\u0004\b0\u00101R\u0014\u00102\u001a\u00020\u001a8\u0006X\u0086T¢\u0006\u0006\n\u0004\b2\u00103R\u0014\u00105\u001a\u00020\u001a8\u0002X\u0082D¢\u0006\u0006\n\u0004\b4\u00103R\u0018\u00108\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0014\u00109\u001a\u00020\u001a8\u0006X\u0086T¢\u0006\u0006\n\u0004\b9\u00103R\u0014\u0010:\u001a\u00020\u001a8\u0006X\u0086T¢\u0006\u0006\n\u0004\b:\u00103R\u0014\u0010;\u001a\u00020\u001a8\u0006X\u0086T¢\u0006\u0006\n\u0004\b;\u00103R\u0014\u0010<\u001a\u00020\u001a8\u0006X\u0086T¢\u0006\u0006\n\u0004\b<\u00103R\u0014\u0010=\u001a\u00020\u001a8\u0006X\u0086T¢\u0006\u0006\n\u0004\b=\u00103R\u0014\u0010>\u001a\u00020\u001a8\u0006X\u0086T¢\u0006\u0006\n\u0004\b>\u00103R\u0014\u0010?\u001a\u00020\u001a8\u0006X\u0086T¢\u0006\u0006\n\u0004\b?\u00103R\u0014\u0010@\u001a\u00020\u001a8\u0006X\u0086T¢\u0006\u0006\n\u0004\b@\u00103R\u0014\u0010A\u001a\u00020\u001a8\u0006X\u0086T¢\u0006\u0006\n\u0004\bA\u00103R\u0014\u0010C\u001a\u00020\u001a8\u0002X\u0082T¢\u0006\u0006\n\u0004\bB\u00103R\u0014\u0010E\u001a\u00020D8\u0006X\u0086T¢\u0006\u0006\n\u0004\bE\u0010FR\u0014\u0010G\u001a\u00020\u001a8\u0006X\u0086T¢\u0006\u0006\n\u0004\bG\u00103R\u0017\u0010K\u001a\u00020\u001a8\u0006¢\u0006\f\n\u0004\bH\u00103\u001a\u0004\bI\u0010JR\u0014\u0010L\u001a\u00020\u001a8\u0006X\u0086T¢\u0006\u0006\n\u0004\bL\u00103R\u0014\u0010M\u001a\u00020\u001a8\u0006X\u0086T¢\u0006\u0006\n\u0004\bM\u00103R\u0014\u0010N\u001a\u00020\u001a8\u0006X\u0086T¢\u0006\u0006\n\u0004\bN\u00103R\u0014\u0010O\u001a\u00020\u001a8\u0006X\u0086T¢\u0006\u0006\n\u0004\bO\u00103R\u0014\u0010P\u001a\u00020\u001a8\u0006X\u0086T¢\u0006\u0006\n\u0004\bP\u00103R\u0014\u0010Q\u001a\u00020\u001a8\u0006X\u0086T¢\u0006\u0006\n\u0004\bQ\u00103R\u0014\u0010R\u001a\u00020\u001a8\u0006X\u0086T¢\u0006\u0006\n\u0004\bR\u00103R\u0014\u0010S\u001a\u00020\u001a8\u0006X\u0086T¢\u0006\u0006\n\u0004\bS\u00103R\u0014\u0010T\u001a\u00020\u001a8\u0006X\u0086T¢\u0006\u0006\n\u0004\bT\u00103R\u0014\u0010U\u001a\u00020\u001a8\u0006X\u0086T¢\u0006\u0006\n\u0004\bU\u00103R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010WR\u0011\u0010Y\u001a\u00020\u001a8F¢\u0006\u0006\u001a\u0004\bX\u0010JR\u0011\u0010[\u001a\u00020\u001a8F¢\u0006\u0006\u001a\u0004\bZ\u0010JR\u0011\u0010]\u001a\u00020\u001a8F¢\u0006\u0006\u001a\u0004\b\\\u0010JR\u0011\u0010_\u001a\u00020\u001a8F¢\u0006\u0006\u001a\u0004\b^\u0010JR\u0011\u0010a\u001a\u00020\u001a8F¢\u0006\u0006\u001a\u0004\b`\u0010J¨\u0006d"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/utils/PenUtils;", "", "Lcom/onyx/android/sdk/bean/DefaultPenParams;", "defaultPenParams", "", "initDefaultPenParams", "Landroid/graphics/Rect;", "drawRect", "Landroid/graphics/Bitmap;", "ensurePenBitmapCreated", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Paint;", "paint", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", PointConstant.POINT_FILE_END, "", EventHandlerManager.ERASE, "drawStrokeByPointSize", "", "Lcom/onyx/android/sdk/pen/NeoRenderPoint;", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "toTouchPoints", "([Lcom/onyx/android/sdk/pen/NeoRenderPoint;)Ljava/util/ArrayList;", "", "maxTouchPressure", "", "getPointArray", "point", "", "getPointDoubleArrayNullable", "getPointDoubleArray", "percentValue", "toNormalizedPressureSensitivity", "normalizedValue", "toPercentPressureSensitivity", "Landroid/graphics/Matrix;", "scaleX", "scaleY", "scaleTranslate", "getTransX", "getTransY", "getMatrixValue", "getMatrixTransX", "getMatrixTransY", "", "DEFAULT_PARAMS_CONFIG_RAW_NAME", Constants.STRING_SIG, "FLOAT_ONE", "F", "a", "ERASE_EXTRA_STROKE_WIDTH", "b", "Landroid/graphics/Bitmap;", "penBitmap", "DEFAULT_MIN_WIDTH", "DEFAULT_TILT_SCALE", "DEFAULT_BRUSH_SPACING", "MAX_PRESSURE", "MIN_PRESSURE", "FINGER_DEFAULT_PRESSURE", "FINGER_DOWN_UP_PRESSURE", "MIN_PRESSURE_SENSITIVITY", "MAX_PRESSURE_SENSITIVITY", "c", "RANGE_PRESSURE_SENSITIVITY", "", "PRESSURE_SENSITIVITY_LEVEL", "I", "DEFAULT_PRESSURE_SENSITIVITY", "d", "getLOW_QUALITY_WIDTH", "()F", "LOW_QUALITY_WIDTH", "DEFAULT_ALPHA_FACTOR", "MIN_ALPHA_FACTOR", "MAX_ALPHA_FACTOR", "DEFAULT_DPI", "MIN_PRECISION", "MAX_PRECISION", "MIN_TEXTURE_STEP", "MIDDLE_PRECISION", "DEFAULT_SMOOTH_LEVEL", "DEFAULT_PENCIL_SMOOTH_LEVEL", "e", "Lcom/onyx/android/sdk/bean/DefaultPenParams;", "getDEFAULT_VELOCITY_SENSITIVITY", "DEFAULT_VELOCITY_SENSITIVITY", "getDEFAULT_VELOCITY_AMPLIFIER", "DEFAULT_VELOCITY_AMPLIFIER", "getDEFAULT_VELOCITY_IGNORE_THRESHOLD", "DEFAULT_VELOCITY_IGNORE_THRESHOLD", "getDEFAULT_VELOCITY_LOWER_BOUND", "DEFAULT_VELOCITY_LOWER_BOUND", "getDEFAULT_VELOCITY_UPPER_BOUND", "DEFAULT_VELOCITY_UPPER_BOUND", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PenUtils {
    public static final float DEFAULT_ALPHA_FACTOR = 1.0f;
    public static final float DEFAULT_BRUSH_SPACING = 0.25f;
    public static final float DEFAULT_DPI = 320.0f;
    public static final float DEFAULT_MIN_WIDTH = 0.05f;

    @NotNull
    public static final String DEFAULT_PARAMS_CONFIG_RAW_NAME = "pen_default_params_config";
    public static final float DEFAULT_PENCIL_SMOOTH_LEVEL = 0.2f;
    public static final float DEFAULT_PRESSURE_SENSITIVITY = 0.375f;
    public static final float DEFAULT_SMOOTH_LEVEL = 0.2f;
    public static final float DEFAULT_TILT_SCALE = 3.0f;
    public static final float FINGER_DEFAULT_PRESSURE = 0.7f;
    public static final float FINGER_DOWN_UP_PRESSURE = 0.105000004f;
    public static final float FLOAT_ONE = 1.0f;
    public static final float MAX_ALPHA_FACTOR = 2.0f;
    public static final float MAX_PRECISION = 8.0f;
    public static final float MAX_PRESSURE = 1.0f;
    public static final float MAX_PRESSURE_SENSITIVITY = 0.6f;
    public static final float MIDDLE_PRECISION = 4.0f;
    public static final float MIN_ALPHA_FACTOR = 0.05f;
    public static final float MIN_PRECISION = 1.0f;
    public static final float MIN_PRESSURE = 0.001f;
    public static final float MIN_PRESSURE_SENSITIVITY = 0.15f;
    public static final float MIN_TEXTURE_STEP = 2.0f;
    public static final int PRESSURE_SENSITIVITY_LEVEL = 10;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public static Bitmap penBitmap = null;

    /* renamed from: c, reason: from kotlin metadata */
    public static final float RANGE_PRESSURE_SENSITIVITY = 0.45000002f;

    @NotNull
    public static final PenUtils INSTANCE = new PenUtils();

    /* renamed from: a, reason: from kotlin metadata */
    public static final float ERASE_EXTRA_STROKE_WIDTH = 1.0f;

    /* renamed from: d, reason: from kotlin metadata */
    public static final float LOW_QUALITY_WIDTH = DimenUtils.INSTANCE.dp2PxFloat(2.0f);

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static DefaultPenParams defaultPenParams = new DefaultPenParams();

    public static /* synthetic */ double[] getPointDoubleArray$default(PenUtils penUtils, TouchPoint touchPoint, float f, int i, Object obj) {
        if ((i & 2) != 0) {
            f = 1.0f;
        }
        return penUtils.getPointDoubleArray(touchPoint, f);
    }

    public static /* synthetic */ double[] getPointDoubleArrayNullable$default(PenUtils penUtils, TouchPoint touchPoint, float f, int i, Object obj) {
        if ((i & 2) != 0) {
            f = 1.0f;
        }
        return penUtils.getPointDoubleArrayNullable(touchPoint, f);
    }

    public final void drawStrokeByPointSize(@NotNull Canvas canvas, @NotNull Paint paint, @NotNull List<TouchPoint> points, boolean erase) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(paint, "paint");
        Intrinsics.checkNotNullParameter(points, "points");
        Paint paint2 = new Paint(paint);
        paint2.setStyle(Paint.Style.FILL_AND_STROKE);
        paint2.setStrokeCap(Paint.Cap.ROUND);
        paint2.setStrokeJoin(Paint.Join.ROUND);
        paint2.setAntiAlias(true);
        int size = points.size() - 1;
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            float size2 = points.get(i2).getSize();
            if (erase) {
                size2 += ERASE_EXTRA_STROKE_WIDTH;
            }
            paint2.setStrokeWidth(size2);
            canvas.drawLine(points.get(i).getX(), points.get(i).getY(), points.get(i2).getX(), points.get(i2).getY(), paint2);
            i = i2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0023, code lost:
    
        if (r1.getHeight() != r2.height()) goto L8;
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap ensurePenBitmapCreated(@org.jetbrains.annotations.NotNull android.graphics.Rect r2) {
        /*
            r1 = this;
            java.lang.String r1 = "drawRect"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r1)
            android.graphics.Bitmap r1 = com.onyx.android.sdk.pen.utils.PenUtils.penBitmap
            if (r1 == 0) goto L25
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            int r1 = r1.getWidth()
            int r0 = r2.width()
            if (r1 != r0) goto L25
            android.graphics.Bitmap r1 = com.onyx.android.sdk.pen.utils.PenUtils.penBitmap
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            int r1 = r1.getHeight()
            int r0 = r2.height()
            if (r1 == r0) goto L35
        L25:
            int r1 = r2.width()
            int r2 = r2.height()
            android.graphics.Bitmap$Config r0 = android.graphics.Bitmap.Config.ARGB_8888
            android.graphics.Bitmap r1 = android.graphics.Bitmap.createBitmap(r1, r2, r0)
            com.onyx.android.sdk.pen.utils.PenUtils.penBitmap = r1
        L35:
            android.graphics.Bitmap r1 = com.onyx.android.sdk.pen.utils.PenUtils.penBitmap
            if (r1 == 0) goto L3d
            r2 = 0
            r1.eraseColor(r2)
        L3d:
            android.graphics.Bitmap r1 = com.onyx.android.sdk.pen.utils.PenUtils.penBitmap
            java.lang.String r2 = "null cannot be cast to non-null type android.graphics.Bitmap"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1, r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.pen.utils.PenUtils.ensurePenBitmapCreated(android.graphics.Rect):android.graphics.Bitmap");
    }

    public final float getDEFAULT_VELOCITY_AMPLIFIER() {
        return defaultPenParams.getDefaultVelocityAmplifier();
    }

    public final float getDEFAULT_VELOCITY_IGNORE_THRESHOLD() {
        return defaultPenParams.getDefaultVelocityIgnoreThreshold();
    }

    public final float getDEFAULT_VELOCITY_LOWER_BOUND() {
        return defaultPenParams.getDefaultVelocityLowerBound();
    }

    public final float getDEFAULT_VELOCITY_SENSITIVITY() {
        return defaultPenParams.getDefaultVelocitySensitivity();
    }

    public final float getDEFAULT_VELOCITY_UPPER_BOUND() {
        return defaultPenParams.getDefaultVelocityUpperBound();
    }

    public final float getLOW_QUALITY_WIDTH() {
        return LOW_QUALITY_WIDTH;
    }

    public final float getMatrixTransX(@NotNull float[] fArr) {
        Intrinsics.checkNotNullParameter(fArr, "<this>");
        return fArr[2];
    }

    public final float getMatrixTransY(@NotNull float[] fArr) {
        Intrinsics.checkNotNullParameter(fArr, "<this>");
        return fArr[5];
    }

    @NotNull
    public final float[] getMatrixValue(@Nullable Matrix matrix) {
        float[] fArr = new float[9];
        if (matrix != null) {
            matrix.getValues(fArr);
        }
        return fArr;
    }

    @NotNull
    public final float[] getPointArray(@NotNull List<TouchPoint> points, float maxTouchPressure) {
        Intrinsics.checkNotNullParameter(points, "points");
        float[] fArr = new float[points.size() * 5];
        int size = points.size();
        for (int i = 0; i < size; i++) {
            int i2 = i * 5;
            fArr[i2] = points.get(i).getX();
            fArr[i2 + 1] = points.get(i).getY();
            fArr[i2 + 2] = points.get(i).getPressure() / maxTouchPressure;
            fArr[i2 + 3] = points.get(i).getSize();
            fArr[i2 + 4] = (float) points.get(i).getTimestamp();
        }
        return fArr;
    }

    @NotNull
    public final double[] getPointDoubleArray(@NotNull TouchPoint point, float maxTouchPressure) {
        Intrinsics.checkNotNullParameter(point, "point");
        return new double[]{point.getX(), point.getY(), point.getPressure() / maxTouchPressure, point.getSize(), point.getTiltX(), point.getTiltY(), point.getTimestamp()};
    }

    @Nullable
    public final double[] getPointDoubleArrayNullable(@Nullable TouchPoint point, float maxTouchPressure) {
        if (point == null) {
            return null;
        }
        return getPointDoubleArray(point, maxTouchPressure);
    }

    public final float getTransX(@Nullable Matrix matrix) {
        if (matrix == null) {
            return 0.0f;
        }
        return getMatrixTransX(getMatrixValue(matrix));
    }

    public final float getTransY(@Nullable Matrix matrix) {
        if (matrix == null) {
            return 0.0f;
        }
        return getMatrixTransY(getMatrixValue(matrix));
    }

    public final void initDefaultPenParams(@NotNull DefaultPenParams defaultPenParams2) {
        Intrinsics.checkNotNullParameter(defaultPenParams2, "defaultPenParams");
        defaultPenParams = defaultPenParams2;
    }

    @Nullable
    public final Matrix scaleTranslate(@Nullable Matrix matrix, float f, float f2) {
        if (matrix == null) {
            return null;
        }
        float[] matrixValue = getMatrixValue(matrix);
        float matrixTransX = getMatrixTransX(matrixValue);
        float matrixTransY = getMatrixTransY(matrixValue);
        matrix.postTranslate(-matrixTransX, -matrixTransY);
        matrix.postTranslate(matrixTransX * f, matrixTransY * f2);
        return matrix;
    }

    public final float toNormalizedPressureSensitivity(float percentValue) {
        return Math.min(0.6f, (percentValue * 0.45000002f) + 0.15f);
    }

    public final float toPercentPressureSensitivity(float normalizedValue) {
        return Math.max(normalizedValue - 0.15f, 0.0f) / 0.45000002f;
    }

    @NotNull
    public final ArrayList<TouchPoint> toTouchPoints(@NotNull NeoRenderPoint[] points) {
        NeoRenderPoint[] points2 = points;
        Intrinsics.checkNotNullParameter(points2, "points");
        ArrayList<TouchPoint> arrayList = new ArrayList<>();
        int length = points2.length;
        int i = 0;
        while (i < length) {
            NeoRenderPoint neoRenderPoint = points2[i];
            arrayList.add(new TouchPoint(neoRenderPoint.getX(), neoRenderPoint.getY(), 0.0f, neoRenderPoint.getSize(), 0, 0, 0L, 96, null));
            i++;
            points2 = points;
        }
        return arrayList;
    }

    public static /* synthetic */ double[] getPointDoubleArray$default(PenUtils penUtils, List list, float f, int i, Object obj) {
        if ((i & 2) != 0) {
            f = 1.0f;
        }
        return penUtils.getPointDoubleArray((List<TouchPoint>) list, f);
    }

    @NotNull
    public final double[] getPointDoubleArray(@NotNull List<TouchPoint> points, float maxTouchPressure) {
        Intrinsics.checkNotNullParameter(points, "points");
        double[] dArr = new double[points.size() * 7];
        int size = points.size();
        for (int i = 0; i < size; i++) {
            int i2 = i * 7;
            dArr[i2] = points.get(i).getX();
            dArr[i2 + 1] = points.get(i).getY();
            dArr[i2 + 2] = Math.min(1.0f, points.get(i).getPressure() / maxTouchPressure);
            dArr[i2 + 3] = points.get(i).getSize();
            dArr[i2 + 4] = points.get(i).getTiltX();
            dArr[i2 + 5] = points.get(i).getTiltY();
            dArr[i2 + 6] = points.get(i).getTimestamp();
        }
        return dArr;
    }
}
