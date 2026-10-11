package com.onyx.android.sdk.genericshape;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.FloatKt;
import com.onyx.android.sdk.geometry.data.GeometryType;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.extension.PathKt;
import com.onyx.android.sdk.pen.NeoPencilPen;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000j\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u001aD\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e\u001a\"\u0010\u0010\u001a\u00020\u000e*\n\u0018\u00010\u0011j\u0004\u0018\u0001`\u00122\u000e\u0010\u0013\u001a\n\u0018\u00010\u0011j\u0004\u0018\u0001`\u0012\u001aG\u0010\u0014\u001a\u00020\u000e*\u001a\u0012\u0012\u0012\u0010\u0012\b\u0012\u00060\u0011j\u0002`\u00120\u0015j\u0002`\u00160\u0015j\u0002`\u00172\u001e\u0010\u0018\u001a\u001a\u0012\u0012\u0012\u0010\u0012\b\u0012\u00060\u0011j\u0002`\u00120\u0015j\u0002`\u00160\u0015j\u0002`\u0017¢\u0006\u0002\u0010\u0019\u001a*\u0010\u001a\u001a\u00020\n*\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e\u001a\n\u0010\u001b\u001a\u00020\u0011*\u00020\u001c\u001a\u001b\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00110\u0015*\b\u0012\u0004\u0012\u00020\u001c0\u001d¢\u0006\u0002\u0010\u001e\u001a#\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001d*\u0010\u0012\b\u0012\u00060\u0011j\u0002`\u00120\u0015j\u0002` ¢\u0006\u0002\u0010!\u001a-\u0010\"\u001a\b\u0012\u0004\u0012\u00020#0\u001d*\u001a\u0012\u0012\u0012\u0010\u0012\b\u0012\u00060\u0011j\u0002`\u00120\u0015j\u0002`\u00160\u0015j\u0002`\u0017¢\u0006\u0002\u0010$\u001a-\u0010%\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001d*\u001a\u0012\u0012\u0012\u0010\u0012\b\u0012\u00060\u0011j\u0002`\u00120\u0015j\u0002`\u00160\u0015j\u0002`\u0017¢\u0006\u0002\u0010$*\u0014\u0010&\"\u0002` 2\f\u0012\b\u0012\u00060\u0011j\u0002`\u00120\u0015*$\u0010'\"\b\u0012\u0004\u0012\u0002`\u00160\u00152\u0016\u0012\u0012\u0012\u0010\u0012\b\u0012\u00060\u0011j\u0002`\u00120\u0015j\u0002`\u00160\u0015*\n\u0010(\"\u00020\u00112\u00020\u0011*\u001a\u0010)\"\b\u0012\u0004\u0012\u0002`\u00120\u00152\f\u0012\b\u0012\u00060\u0011j\u0002`\u00120\u0015*.\u0010*\"\b\u0012\u0004\u0012\u0002`\u00170\u00152 \u0012\u001c\u0012\u001a\u0012\u0012\u0012\u0010\u0012\b\u0012\u00060\u0011j\u0002`\u00120\u0015j\u0002`\u00160\u0015j\u0002`\u00170\u0015¨\u0006+"}, m61528d2 = {"drawArrowPath", "", "Lcom/onyx/android/sdk/genericshape/Geometry;", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Canvas;", "matrix", "Landroid/graphics/Matrix;", "strokePaint", "Landroid/graphics/Paint;", "renderPath", "Landroid/graphics/Path;", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "", "drawStartArrow", "", "drawEndArrow", "isApproximatelyEqual", "", "Lcom/onyx/android/sdk/genericshape/Position;", "position", "isEquals", "", "Lcom/onyx/android/sdk/genericshape/Line;", "Lcom/onyx/android/sdk/genericshape/Lines;", "lines", "([[[F[[[F)Z", "loadArrowPath", "toFloatArray", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "", "(Ljava/util/List;)[[F", "toTouchPointList", "Lcom/onyx/android/sdk/genericshape/Positions;", "([[F)Ljava/util/List;", "toTouchPointPairs", "Lcom/onyx/android/sdk/geometry/data/TouchPointPair;", "([[[F)Ljava/util/List;", "toTouchPoints", GeometryType.LINE, "Lines", "Position", "Positions", GeoConstant.Surface, "sdk-genericshape_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGeoJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/GeoJsonKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1558:1\n1549#2:1559\n1620#2,3:1560\n1549#2:1565\n1620#2,3:1566\n1549#2:1569\n1620#2,3:1570\n1549#2:1573\n1620#2,3:1574\n37#3,2:1563\n13374#4,3:1577\n1#5:1580\n*S KotlinDebug\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/GeoJsonKt\n*L\n1488#1:1559\n1488#1:1560,3\n1491#1:1565\n1491#1:1566,3\n1495#1:1569\n1495#1:1570,3\n1504#1:1573\n1504#1:1574,3\n1488#1:1563,2\n1513#1:1577,3\n*E\n"})
/* loaded from: classes7.dex */
public final class GeoJsonKt {
    public static final void drawArrowPath(@NotNull Geometry geometry, @NotNull Canvas canvas, @Nullable Matrix matrix, @NotNull Paint strokePaint, @NotNull Path renderPath, float f, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(geometry, "<this>");
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(strokePaint, "strokePaint");
        Intrinsics.checkNotNullParameter(renderPath, "renderPath");
        Path loadArrowPath = loadArrowPath(geometry, renderPath, f, z, z2);
        Paint paint = new Paint(strokePaint);
        paint.setPathEffect(null);
        if (matrix != null) {
            loadArrowPath.transform(matrix);
        }
        if (geometry.isFromPencil()) {
            NeoPencilPen.INSTANCE.drawPath(canvas, loadArrowPath, paint);
        } else {
            canvas.drawPath(loadArrowPath, paint);
        }
    }

    public static final boolean isApproximatelyEqual(@Nullable float[] fArr, @Nullable float[] fArr2) {
        if (fArr == null || fArr2 == null) {
            return true;
        }
        if (FloatKt.roundToIntFloat(fArr[0]) == FloatKt.roundToIntFloat(fArr2[0])) {
            if (FloatKt.roundToIntFloat(fArr[1]) == FloatKt.roundToIntFloat(fArr2[1])) {
                return true;
            }
        }
        return false;
    }

    public static final boolean isEquals(@NotNull float[][][] fArr, @NotNull float[][][] lines) {
        Intrinsics.checkNotNullParameter(fArr, "<this>");
        Intrinsics.checkNotNullParameter(lines, "lines");
        if (fArr.length != lines.length) {
            return false;
        }
        int length = fArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = i2 + 1;
            if (!Arrays.equals(lines[i2], fArr[i])) {
                return false;
            }
            i++;
            i2 = i3;
        }
        return true;
    }

    @NotNull
    public static final Path loadArrowPath(@NotNull Geometry geometry, @NotNull Path renderPath, float f, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(geometry, "<this>");
        Intrinsics.checkNotNullParameter(renderPath, "renderPath");
        return PathKt.createLineArrowPath$default(renderPath, z, z2, null, 4, null);
    }

    @NotNull
    public static final float[] toFloatArray(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "<this>");
        return new float[]{touchPoint.getX(), touchPoint.getY()};
    }

    @NotNull
    public static final List<TouchPoint> toTouchPointList(@NotNull float[][] fArr) {
        List list;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(fArr, "<this>");
        list = ArraysKt___ArraysKt.toList(fArr);
        List<float[]> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (float[] fArr2 : list2) {
            arrayList.add(new TouchPoint(fArr2[0], fArr2[1]));
        }
        return arrayList;
    }

    @NotNull
    public static final List<TouchPointPair> toTouchPointPairs(@NotNull float[][][] fArr) {
        List asList;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(fArr, "<this>");
        asList = ArraysKt___ArraysJvmKt.asList(fArr);
        List<float[][]> list = asList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (float[][] fArr2 : list) {
            float[] fArr3 = fArr2[0];
            TouchPoint touchPoint = new TouchPoint(fArr3[0], fArr3[1]);
            float[] fArr4 = fArr2[1];
            arrayList.add(new TouchPointPair(touchPoint, new TouchPoint(fArr4[0], fArr4[1])));
        }
        return arrayList;
    }

    @NotNull
    public static final List<TouchPoint> toTouchPoints(@NotNull float[][][] fArr) {
        List asList;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(fArr, "<this>");
        asList = ArraysKt___ArraysJvmKt.asList(fArr);
        List list = asList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            float[] fArr2 = ((float[][]) it2.next())[0];
            arrayList.add(new TouchPoint(fArr2[0], fArr2[1]));
        }
        return arrayList;
    }

    @NotNull
    public static final float[][] toFloatArray(@NotNull List<TouchPoint> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<TouchPoint> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(toFloatArray((TouchPoint) it2.next()));
        }
        return (float[][]) arrayList.toArray(new float[0]);
    }
}
