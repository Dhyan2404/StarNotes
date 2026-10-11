package com.onyx.android.sdk.base.extension;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.FloatRange;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.blankj.utilcode.util.LogUtils;
import com.onyx.android.sdk.base.data.MatrixValues;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import java.util.Iterator;
import java.util.List;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.ranges.RangesKt;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\b\u001a\f\u0010\u0001\u001a\u00020\u0000*\u0004\u0018\u00010\u0000\u001a\f\u0010\u0002\u001a\u00020\u0000*\u0004\u0018\u00010\u0000\u001a%\u0010\u0005\u001a\u00020\u00002\u0016\u0010\u0004\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00000\u0003\"\u0004\u0018\u00010\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001d\u0010\b\u001a\u00020\u0007*\u0004\u0018\u00010\u0000\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0000\u001a\u0004\b\u0002\u0010\u0000\u001a\u001d\u0010\t\u001a\u00020\u0007*\u0004\u0018\u00010\u0000\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0000\u001a\u0004\b\u0002\u0010\u0000\u001a\f\u0010\u000b\u001a\u00020\n*\u0004\u0018\u00010\u0000\u001a\f\u0010\f\u001a\u00020\n*\u0004\u0018\u00010\u0000\u001a\f\u0010\r\u001a\u00020\n*\u0004\u0018\u00010\u0000\u001a\f\u0010\u000e\u001a\u00020\n*\u0004\u0018\u00010\u0000\u001a\f\u0010\u000f\u001a\u00020\n*\u0004\u0018\u00010\u0000\u001a\f\u0010\u0010\u001a\u00020\n*\u0004\u0018\u00010\u0000\u001a\f\u0010\u0011\u001a\u00020\n*\u0004\u0018\u00010\u0000\u001a\u001e\u0010\u0014\u001a\u0004\u0018\u00010\u0000*\u0004\u0018\u00010\u00002\u0006\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\n\u001a\f\u0010\u0016\u001a\u00020\u0015*\u0004\u0018\u00010\u0000\u001a\f\u0010\u0018\u001a\u00020\u0017*\u0004\u0018\u00010\u0000\u001a\f\u0010\u001a\u001a\u00020\u0019*\u0004\u0018\u00010\u0000\u001a\f\u0010\u001b\u001a\u00020\u0000*\u0004\u0018\u00010\u0000\u001a\u0006\u0010\u001c\u001a\u00020\u0017\u001a\f\u0010\u001d\u001a\u00020\n*\u0004\u0018\u00010\u0000\u001a\u000e\u0010\u001e\u001a\u00020\n*\u0004\u0018\u00010\u0000H\u0007\u001a\u000e\u0010\u001f\u001a\u00020\n*\u0004\u0018\u00010\u0000H\u0007\u001a\u0012\u0010\u001d\u001a\u00020\n*\u00020\u00002\u0006\u0010!\u001a\u00020 \u001a\u0018\u0010$\u001a\u0004\u0018\u00010\"*\u0004\u0018\u00010\u00002\b\u0010#\u001a\u0004\u0018\u00010\"\u001a\f\u0010\u0018\u001a\u00020\u0017*\u0004\u0018\u00010\u0019\u001a\f\u0010%\u001a\u00020\u0000*\u0004\u0018\u00010\u0019\u001a\n\u0010&\u001a\u00020\n*\u00020\u0017\u001a\n\u0010'\u001a\u00020\n*\u00020\u0017\u001a\n\u0010(\u001a\u00020\n*\u00020\u0017\u001a\n\u0010)\u001a\u00020\n*\u00020\u0017\u001a\f\u0010*\u001a\u00020\n*\u0004\u0018\u00010\u0017\u001a\f\u0010%\u001a\u00020\u0000*\u0004\u0018\u00010\u0017\u001a\f\u0010+\u001a\u00020\u0007*\u0004\u0018\u00010\u0017\u001a\n\u0010\u001d\u001a\u00020\n*\u00020\u0017\u001a\f\u0010\u001e\u001a\u00020\n*\u00020\u0017H\u0007\u001a\f\u0010\u001f\u001a\u00020\n*\u00020\u0017H\u0007\u001a\u0014\u0010\u001d\u001a\u00020\n*\u0004\u0018\u00010\u00172\u0006\u0010!\u001a\u00020 \u001a\u0016\u0010-\u001a\u00020\u0007*\u0004\u0018\u00010\u00172\b\u0010,\u001a\u0004\u0018\u00010\u0017\u001a\u0012\u00100\u001a\u00020.*\u00020\u00002\u0006\u0010/\u001a\u00020.\u001a\u001a\u00100\u001a\u00020.*\u00020\u00002\u0006\u00101\u001a\u00020\n2\u0006\u00102\u001a\u00020\n\u001a\u0012\u00104\u001a\u000203*\u00020\u00002\u0006\u0010/\u001a\u00020.\u001a\u0012\u00106\u001a\u00020\n*\u00020\u00002\u0006\u00105\u001a\u00020\n\u001a\n\u00107\u001a\u000203*\u00020\u0000\"\u0014\u0010:\u001a\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109¨\u0006;"}, m61528d2 = {"Landroid/graphics/Matrix;", "nonNull", "copy", "", "matrices", Keywords.FUNC_CONCAT_STRING, "([Landroid/graphics/Matrix;)Landroid/graphics/Matrix;", "", "isEmpty", "isNullOrEmpty", "", "getMaxScale", "getMinScale", "getAverageScale", "getTransX", "getTransY", "getScaleX", "getScaleY", "scaleX", "scaleY", "scaleTranslate", "", PrivilegedApp.f6532i, "", "getMatrixValue", "Lcom/onyx/android/sdk/base/data/MatrixValues;", "toMatrixValues", "invertMatrix", "getDefaultMatrixValue", "getMatrixRotateAngel", "getMatrixFloatRotate", "getHorizontalAngle", "Landroid/graphics/RectF;", "rectF", "Landroid/graphics/Rect;", "rect", "mapRect", "getMatrixByValues", "getMatrixScaleX", "getMatrixScaleY", "getMatrixTransX", "getMatrixTransY", "getMatrixMinScale", "isEmptyMatrix", "m2", "safelyEquals", "Landroid/graphics/PointF;", "pointF", "mapPoint", "x", "y", "", "mapSelfPoint", "value", "getScaledFloat", "validateScaleLimit", "a", "Landroid/graphics/Matrix;", "EMPTY", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nMatrix.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Matrix.kt\ncom/onyx/android/sdk/base/extension/MatrixKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,330:1\n1855#2,2:331\n337#3:333\n344#3,3:334\n*S KotlinDebug\n*F\n+ 1 Matrix.kt\ncom/onyx/android/sdk/base/extension/MatrixKt\n*L\n41#1:331,2\n182#1:333\n184#1:334,3\n*E\n"})
/* loaded from: classes7.dex */
public final class MatrixKt {

    /* renamed from: a */
    @NotNull
    public static final Matrix f40741a = new Matrix();

    @NotNull
    public static final Matrix concat(@NotNull Matrix... matrices) {
        List filterNotNull;
        Intrinsics.checkNotNullParameter(matrices, "matrices");
        Matrix matrix = new Matrix();
        filterNotNull = ArraysKt___ArraysKt.filterNotNull(matrices);
        Iterator it2 = filterNotNull.iterator();
        while (it2.hasNext()) {
            matrix.postConcat((Matrix) it2.next());
        }
        return matrix;
    }

    @NotNull
    public static final Matrix copy(@Nullable Matrix matrix) {
        return matrix == null ? new Matrix() : new Matrix(matrix);
    }

    public static final float getAverageScale(@Nullable Matrix matrix) {
        return (getMinScale(matrix) + getMaxScale(matrix)) / 2.0f;
    }

    @NotNull
    public static final float[] getDefaultMatrixValue() {
        return getMatrixValue(f40741a);
    }

    @FloatRange(from = -90.0d, m280to = 90.0d)
    public static final float getHorizontalAngle(@Nullable Matrix matrix) {
        return getHorizontalAngle(getMatrixValue(matrix));
    }

    @NotNull
    public static final Matrix getMatrixByValues(@Nullable MatrixValues matrixValues) {
        float[] values;
        Matrix matrix = new Matrix();
        if (matrixValues != null && (values = matrixValues.getValues()) != null && values.length >= 9) {
            matrix.setValues(values);
        }
        return matrix;
    }

    @FloatRange(from = -180.0d, m280to = 180.0d)
    public static final float getMatrixFloatRotate(@Nullable Matrix matrix) {
        return getMatrixFloatRotate(getMatrixValue(matrix));
    }

    public static final float getMatrixMinScale(@Nullable float[] fArr) {
        if (fArr != null) {
            if (!(fArr.length == 0)) {
                return RangesKt.coerceAtMost(getMatrixScaleX(fArr), getMatrixScaleY(fArr));
            }
        }
        Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        return FLOAT_ONE.floatValue();
    }

    public static final float getMatrixRotateAngel(@Nullable Matrix matrix) {
        return getMatrixRotateAngel(getMatrixValue(matrix));
    }

    public static final float getMatrixScaleX(@NotNull float[] fArr) {
        Intrinsics.checkNotNullParameter(fArr, "<this>");
        float f = fArr[0];
        float f2 = fArr[3];
        return (float) Math.sqrt((f * f) + (f2 * f2));
    }

    public static final float getMatrixScaleY(@NotNull float[] fArr) {
        Intrinsics.checkNotNullParameter(fArr, "<this>");
        float f = fArr[4];
        float f2 = fArr[1];
        return (float) Math.sqrt((f * f) + (f2 * f2));
    }

    public static final float getMatrixTransX(@NotNull float[] fArr) {
        Intrinsics.checkNotNullParameter(fArr, "<this>");
        return fArr[2];
    }

    public static final float getMatrixTransY(@NotNull float[] fArr) {
        Intrinsics.checkNotNullParameter(fArr, "<this>");
        return fArr[5];
    }

    @NotNull
    public static final float[] getMatrixValue(@Nullable Matrix matrix) {
        if (matrix == null) {
            matrix = f40741a;
        }
        float[] fArr = new float[9];
        matrix.getValues(fArr);
        return fArr;
    }

    public static final float getMaxScale(@Nullable Matrix matrix) {
        if (matrix != null) {
            float[] matrixValue = getMatrixValue(matrix);
            return RangesKt.coerceAtLeast(getMatrixScaleX(matrixValue), getMatrixScaleY(matrixValue));
        }
        Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        return FLOAT_ONE.floatValue();
    }

    public static final float getMinScale(@Nullable Matrix matrix) {
        if (matrix != null) {
            return getMatrixMinScale(getMatrixValue(matrix));
        }
        Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        return FLOAT_ONE.floatValue();
    }

    public static final float getScaleX(@Nullable Matrix matrix) {
        if (matrix == null) {
            return 1.0f;
        }
        return getMatrixScaleX(getMatrixValue(matrix));
    }

    public static final float getScaleY(@Nullable Matrix matrix) {
        if (matrix == null) {
            return 1.0f;
        }
        return getMatrixScaleY(getMatrixValue(matrix));
    }

    public static final float getScaledFloat(@NotNull Matrix matrix, float f) {
        Intrinsics.checkNotNullParameter(matrix, "<this>");
        return f * getMinScale(matrix);
    }

    public static final float getTransX(@Nullable Matrix matrix) {
        if (matrix == null) {
            return 0.0f;
        }
        return getMatrixTransX(getMatrixValue(matrix));
    }

    public static final float getTransY(@Nullable Matrix matrix) {
        if (matrix == null) {
            return 0.0f;
        }
        return getMatrixTransY(getMatrixValue(matrix));
    }

    @NotNull
    public static final String info(@Nullable Matrix matrix) {
        if (matrix == null) {
            return "matrix is null";
        }
        return "sx=" + getScaleX(matrix) + " sy=" + getScaleY(matrix) + " translateX=" + getTransX(matrix) + " translateY=" + getTransY(matrix) + " rotation=" + getMatrixRotateAngel(matrix);
    }

    @NotNull
    public static final Matrix invertMatrix(@Nullable Matrix matrix) {
        Matrix matrix2 = new Matrix();
        if (matrix == null) {
            return matrix2;
        }
        matrix.invert(matrix2);
        return matrix2;
    }

    public static final boolean isEmpty(@Nullable Matrix matrix) {
        return isNullOrEmpty(matrix);
    }

    public static final boolean isEmptyMatrix(@Nullable float[] fArr) {
        return Intrinsics.areEqual(getMatrixByValues(fArr), f40741a);
    }

    public static final boolean isNullOrEmpty(@Nullable Matrix matrix) {
        return matrix == null || Intrinsics.areEqual(matrix, f40741a);
    }

    @NotNull
    public static final PointF mapPoint(@NotNull Matrix matrix, @NotNull PointF pointF) {
        Intrinsics.checkNotNullParameter(matrix, "<this>");
        Intrinsics.checkNotNullParameter(pointF, "pointF");
        float[] fArr = {pointF.x, pointF.y};
        matrix.mapPoints(fArr);
        return new PointF(fArr[0], fArr[1]);
    }

    @Nullable
    public static final Rect mapRect(@Nullable Matrix matrix, @Nullable Rect rect) {
        if (matrix == null || rect == null) {
            return rect;
        }
        RectF rectF = new RectF(rect);
        matrix.mapRect(rectF);
        Rect rect2 = new Rect();
        rectF.roundOut(rect2);
        return rect2;
    }

    public static final void mapSelfPoint(@NotNull Matrix matrix, @NotNull PointF pointF) {
        Intrinsics.checkNotNullParameter(matrix, "<this>");
        Intrinsics.checkNotNullParameter(pointF, "pointF");
        float[] fArr = {pointF.x, pointF.y};
        matrix.mapPoints(fArr);
        pointF.set(fArr[0], fArr[1]);
    }

    @NotNull
    public static final Matrix nonNull(@Nullable Matrix matrix) {
        return matrix == null ? new Matrix() : matrix;
    }

    public static final boolean safelyEquals(@Nullable float[] fArr, @Nullable float[] fArr2) {
        if (fArr == null && fArr2 == null) {
            return true;
        }
        if (fArr == null || fArr2 == null || fArr.length != fArr2.length) {
            return false;
        }
        int length = fArr.length;
        for (int i = 0; i < length; i++) {
            if (Float.compare(fArr[i], fArr2[i]) != 0) {
                return false;
            }
        }
        return true;
    }

    @Nullable
    public static final Matrix scaleTranslate(@Nullable Matrix matrix, float f, float f2) {
        if (matrix == null) {
            return null;
        }
        float transX = getTransX(matrix);
        float transY = getTransY(matrix);
        matrix.postTranslate(-transX, -transY);
        matrix.postTranslate(transX * f, transY * f2);
        return matrix;
    }

    @NotNull
    public static final MatrixValues toMatrixValues(@Nullable Matrix matrix) {
        return new MatrixValues(getMatrixValue(matrix));
    }

    public static final void validateScaleLimit(@NotNull Matrix matrix) {
        String stackTraceToString;
        Intrinsics.checkNotNullParameter(matrix, "<this>");
        if (getScaleX(matrix) >= 1000.0f || getScaleY(matrix) >= 1000.0f) {
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(new Throwable("scale over limit: sx=" + getScaleX(matrix) + ", sy=" + getScaleY(matrix)));
            LogUtils.file(stackTraceToString);
        }
    }

    @FloatRange(from = -90.0d, m280to = 90.0d)
    public static final float getHorizontalAngle(@NotNull float[] fArr) {
        Intrinsics.checkNotNullParameter(fArr, "<this>");
        float f = -getMatrixFloatRotate(fArr);
        if (Float.compare(f, 0.0f) == 0) {
            return 0.0f;
        }
        return (90.0f >= f || f > 180.0f) ? (-180.0f > f || f >= -90.0f) ? f : 180 + f : f - 180;
    }

    @FloatRange(from = -180.0d, m280to = 180.0d)
    public static final float getMatrixFloatRotate(@NotNull float[] fArr) {
        Intrinsics.checkNotNullParameter(fArr, "<this>");
        return (float) Math.toDegrees(Math.atan2(fArr[1], fArr[0]));
    }

    public static final float getMatrixRotateAngel(@NotNull Matrix matrix, @NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(matrix, "<this>");
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        float f = rectF.top;
        float[] fArr = {rectF.left, f};
        float[] fArr2 = {rectF.right, f};
        matrix.mapPoints(fArr);
        matrix.mapPoints(fArr2);
        return -MathUtils.INSTANCE.calculateAngle(fArr[0], fArr[1], fArr2[0], fArr2[1]);
    }

    @NotNull
    public static final float[] getMatrixValue(@Nullable MatrixValues matrixValues) {
        float[] values;
        float[] fArr = new float[9];
        return (matrixValues == null || (values = matrixValues.getValues()) == null) ? fArr : values;
    }

    @NotNull
    public static final PointF mapPoint(@NotNull Matrix matrix, float f, float f2) {
        Intrinsics.checkNotNullParameter(matrix, "<this>");
        PointF pointF = new PointF(f, f2);
        mapSelfPoint(matrix, pointF);
        return pointF;
    }

    @NotNull
    public static final Matrix getMatrixByValues(@Nullable float[] fArr) {
        Matrix matrix = new Matrix();
        if (fArr != null && fArr.length >= 9) {
            matrix.setValues(fArr);
        }
        return matrix;
    }

    public static final float getMatrixRotateAngel(@NotNull float[] fArr) {
        int roundToInt;
        Intrinsics.checkNotNullParameter(fArr, "<this>");
        roundToInt = MathKt__MathJVMKt.roundToInt(Math.toDegrees(Math.atan2(fArr[1], fArr[0])));
        return roundToInt;
    }

    public static final float getMatrixRotateAngel(@Nullable float[] fArr, @NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        return getMatrixRotateAngel(getMatrixByValues(fArr), rectF);
    }
}
