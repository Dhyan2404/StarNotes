package com.onyx.android.sdk.geometry.extension;

import android.R;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.RegionIterator;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.data.SelectionRegion;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.DimenUtils;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.geometry.data.PathMeasurePointResult;
import com.onyx.android.sdk.geometry.data.SplitResult;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.math3.linear.SymmLQ;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0084\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0004\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a#\u0010\u0000\u001a\u00020\u00012\u0016\u0010\u0002\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0003\"\u0004\u0018\u00010\u0001¢\u0006\u0002\u0010\u0004\u001a*\u0010\u0005\u001a\u00020\u00012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0014\b\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u000b0\n\u001a \u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\b\b\u0002\u0010\u0010\u001a\u00020\r\u001a\n\u0010\u0011\u001a\u00020\u0012*\u00020\u0001\u001a\u0010\u0010\u0011\u001a\u00020\u0012*\b\u0012\u0004\u0012\u00020\b0\u0007\u001a\u001c\u0010\u0013\u001a\u00020\u0001*\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\b\b\u0002\u0010\u0014\u001a\u00020\u0015\u001a\u001a\u0010\u0016\u001a\u00020\u000b*\u00020\u00012\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\b\u001a*\u0010\u0016\u001a\u00020\u000b*\u00020\u00012\u0006\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\r\u001a\u0018\u0010\u0016\u001a\u00020\u000b*\u00020\u00012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u001a\"\u0010\u001b\u001a\u00020\u0001*\u00020\u00012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\b\b\u0002\u0010\u001c\u001a\u00020\u0012\u001a'\u0010\u001d\u001a\u00020\u0001*\u00020\u00012\u0016\u0010\u001e\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u001f0\u0003\"\u0004\u0018\u00010\u001f¢\u0006\u0002\u0010 \u001a\u0012\u0010!\u001a\u00020\u0015*\u00020\u00012\u0006\u0010\"\u001a\u00020\b\u001a<\u0010#\u001a\u00020\u0001*\u00020\u00012\b\b\u0002\u0010$\u001a\u00020\u00152\b\b\u0002\u0010%\u001a\u00020\u00152\b\b\u0002\u0010&\u001a\u00020\r2\b\b\u0002\u0010'\u001a\u00020\u00122\b\b\u0002\u0010(\u001a\u00020\r\u001a2\u0010)\u001a\u00020\u0001*\u00020\u00012\b\b\u0002\u0010$\u001a\u00020\u00152\b\b\u0002\u0010%\u001a\u00020\u00152\b\b\u0002\u0010&\u001a\u00020\r2\b\b\u0002\u0010(\u001a\u00020\r\u001a\u0014\u0010*\u001a\u00020\u0001*\u00020\b2\b\b\u0002\u0010+\u001a\u00020,\u001a$\u0010*\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\b0\u00072\b\b\u0002\u0010+\u001a\u00020,2\b\b\u0002\u0010-\u001a\u00020\u0015\u001a2\u0010.\u001a\u00020\u0001*\u00020\u00012\b\b\u0002\u0010$\u001a\u00020\u00152\b\b\u0002\u0010%\u001a\u00020\u00152\b\b\u0002\u0010&\u001a\u00020\r2\b\b\u0002\u0010(\u001a\u00020\r\u001a(\u0010/\u001a\u00020\u0001*\u00020\u00012\b\b\u0002\u0010$\u001a\u00020\u00152\b\b\u0002\u0010%\u001a\u00020\u00152\b\b\u0002\u0010&\u001a\u00020,\u001a\u001e\u00100\u001a\u000201*\u00020\u00012\b\b\u0002\u00102\u001a\u0002032\b\b\u0002\u00104\u001a\u00020\u0015\u001a\u0018\u00105\u001a\u00020\u000b*\u00020\u00012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u001a\n\u00106\u001a\u00020\u0001*\u00020\u0001\u001a.\u00107\u001a\u00020\u000b*\u00020\u00012\b\b\u0002\u00108\u001a\u00020,2\u0012\u00109\u001a\u000e\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020\u000b0\nH\u0086\bø\u0001\u0000\u001a)\u0010;\u001a\u00020\u000b*\u00020\u00012\u0017\u00109\u001a\u0013\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0002\b=H\u0086\bø\u0001\u0000\u001a\n\u0010>\u001a\u00020\b*\u00020\u0001\u001a\u001e\u0010?\u001a\u00020\u0001*\u00020\u00012\b\b\u0002\u0010(\u001a\u00020,2\b\b\u0002\u0010@\u001a\u00020\u0015\u001a\f\u0010A\u001a\u0004\u0018\u00010\b*\u00020\u0001\u001a\f\u0010B\u001a\u0004\u0018\u00010\b*\u00020\u0001\u001a\u0014\u0010C\u001a\u0004\u0018\u00010\b*\u00020\u00012\u0006\u0010D\u001a\u00020\r\u001a#\u0010E\u001a\u0004\u0018\u00010\r*\u00020\u00012\u0006\u0010\"\u001a\u00020\b2\b\b\u0002\u00108\u001a\u00020\u0012¢\u0006\u0002\u0010F\u001a\u0012\u0010G\u001a\u00020\u0001*\u00020\u00012\u0006\u0010H\u001a\u00020\u0012\u001a\u0010\u0010I\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020J0\u0007\u001a\u0012\u0010K\u001a\u00020\u0015*\u00020\u00012\u0006\u0010L\u001a\u00020\u0001\u001a0\u0010K\u001a\u00020\u0015*\u00020\u00012\u0006\u0010\"\u001a\u00020\b2\b\b\u0002\u0010M\u001a\u00020,2\b\b\u0002\u0010(\u001a\u00020,2\b\b\u0002\u0010@\u001a\u00020\u0015\u001a6\u0010K\u001a\u00020\u0015*\u00020\u00012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\b\b\u0002\u0010M\u001a\u00020,2\b\b\u0002\u0010(\u001a\u00020,2\b\b\u0002\u0010@\u001a\u00020\u0015\u001a\u001e\u0010N\u001a\u00020\u0015*\u00020\u00012\b\b\u0002\u00108\u001a\u00020,2\b\b\u0002\u0010O\u001a\u00020,\u001a&\u0010P\u001a\u00020\u0015*\u00020\u00012\u0006\u0010\"\u001a\u00020\b2\b\b\u0002\u00108\u001a\u00020,2\b\b\u0002\u0010O\u001a\u00020,\u001a\u0018\u0010Q\u001a\u00020\u000b*\u00020\u00012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u001a\"\u0010R\u001a\u00020\u000b*\u00020\u00012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\b\b\u0002\u00108\u001a\u00020\u0012\u001a\u001a\u0010S\u001a\b\u0012\u0004\u0012\u00020\b0\u0007*\u00020\u00012\b\b\u0002\u00108\u001a\u00020,\u001a \u0010T\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0007*\u00020\u00012\b\b\u0002\u00108\u001a\u00020,\u001aN\u0010U\u001a\u00020\u000b*\u00020\u00012\u0006\u0010V\u001a\u00020W2\b\b\u0002\u0010X\u001a\u00020\r2\b\b\u0002\u0010Y\u001a\u00020\u00122\b\b\u0002\u0010Z\u001a\u00020\u00122\b\b\u0002\u0010[\u001a\u00020\b2\b\b\u0002\u0010\\\u001a\u00020\r2\b\b\u0002\u0010]\u001a\u00020\u0012\u001a&\u0010^\u001a\u00020_*\u00020\u00012\u0006\u0010`\u001a\u00020\u00012\b\b\u0002\u0010a\u001a\u00020\r2\b\b\u0002\u0010b\u001a\u00020\u0015\u001a&\u0010c\u001a\u00020_*\u00020\u00012\u0006\u0010d\u001a\u0002012\b\b\u0002\u00108\u001a\u00020\u00122\b\b\u0002\u0010\u001c\u001a\u00020\u0012\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006e"}, m61528d2 = {Keywords.FUNC_CONCAT_STRING, "Landroid/graphics/Path;", "paths", "", "([Landroid/graphics/Path;)Landroid/graphics/Path;", "createPathFrom", PointConstant.POINT_FILE_END, "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "compose", "Lkotlin/Function1;", "", "getQuadToEndPos", "", Keywords.FUNC_CURRENT_STRING, Constants.NEXT, "factor", "area", "", "asPath", "closed", "", "averageQuadTo", "currentX", "currentY", "nextX", "nextY", "clipByPointRegion", "minPathPoint", "concatTransform", "matrixs", "Landroid/graphics/Matrix;", "(Landroid/graphics/Path;[Landroid/graphics/Matrix;)Landroid/graphics/Path;", Keywords.FUNC_CONTAINS_STRING, "point", "createArrowPath", "addStartArrow", "addEndArrow", "arrowSize", "arrowStyle", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "createCloseAndFilledArrowPath", "createHitTestPath", "hotspotRadius", "", "includeFillRegion", "createLineAndStrokedArrowPath", "createLineArrowPath", "createRegion", "Landroid/graphics/Region;", "rectF", "Landroid/graphics/RectF;", "useDefaultRect", "cubicTo", "firstSegment", "forEachPoint", "step", "consumer", "Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;", "forEachRegionRect", "Landroid/graphics/Rect;", "Lkotlin/ExtensionFunctionType;", "getCenterPointByPosition", "getFillStrokePath", "fillPath", "getFirstPoint", "getLastPoint", "getPercentPoint", com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_PERCENT, "getPointPosition", "(Landroid/graphics/Path;Lcom/onyx/android/sdk/base/data/TouchPoint;I)Ljava/lang/Float;", "getSegmentByIndex", FirebaseAnalytics.Param.INDEX, "getUnionRegionPath", "Lcom/onyx/android/sdk/base/data/SelectionRegion;", "hitTestPath", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "hitTestRadius", "isPathClosed", SymmLQ.f108603e, "isPointNear", "lineTo", "realQuadTo", "resample", "resampleMultiSegmentPath", "saveToDebugFile", "file", "", "pathStrokeWidth", "pathStrokeColor", "pathFillColor", "circlePoint", "circleRadius", "circleFillColor", "splitByPath", "Lcom/onyx/android/sdk/geometry/data/SplitResult;", "erasePath", "eraseRadius", "forceClosePath", "splitByRegion", "region", "sdk-geometry_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nPath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Path.kt\ncom/onyx/android/sdk/geometry/extension/PathKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 6 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,698:1\n348#1,29:706\n330#1,4:735\n334#1,7:742\n330#1,4:749\n334#1,7:756\n348#1,29:763\n348#1,29:792\n348#1,29:843\n13309#2,2:699\n13309#2,2:701\n344#3,3:703\n344#3,3:739\n344#3,3:753\n344#3,3:875\n1477#4:821\n1502#4,3:822\n1505#4,3:832\n1549#4:838\n1620#4,3:839\n1747#4,3:872\n1855#4,2:878\n1855#4,2:880\n1855#4,2:882\n372#5,7:825\n125#6:835\n152#6,2:836\n154#6:842\n*S KotlinDebug\n*F\n+ 1 Path.kt\ncom/onyx/android/sdk/geometry/extension/PathKt\n*L\n383#1:706,29\n392#1:735,4\n392#1:742,7\n403#1:749,4\n403#1:756,7\n417#1:763,29\n443#1:792,29\n467#1:843,29\n69#1:699,2\n77#1:701,2\n333#1:703,3\n392#1:739,3\n403#1:753,3\n512#1:875,3\n445#1:821\n445#1:822,3\n445#1:832,3\n446#1:838\n446#1:839,3\n486#1:872,3\n541#1:878,2\n666#1:880,2\n696#1:882,2\n445#1:825,7\n446#1:835\n446#1:836,2\n446#1:842\n*E\n"})
/* loaded from: classes7.dex */
public final class PathKt {
    public static final int area(@NotNull List<TouchPoint> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        return area(createPathFrom$default(list, null, 2, null));
    }

    @NotNull
    public static final Path asPath(@Nullable List<TouchPoint> list, boolean z) {
        Object first;
        Path path = new Path();
        List<TouchPoint> list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return path;
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
        TouchPoint touchPoint = (TouchPoint) first;
        path.moveTo(touchPoint.getX(), touchPoint.getY());
        lineTo(path, list);
        if (z) {
            path.close();
        }
        return path;
    }

    public static /* synthetic */ Path asPath$default(List list, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return asPath(list, z);
    }

    public static final void averageQuadTo(@NotNull Path path, float f, float f2, float f3, float f4) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        path.quadTo(f, f2, getQuadToEndPos$default(f, f3, 0.0f, 4, null), getQuadToEndPos$default(f2, f4, 0.0f, 4, null));
    }

    @NotNull
    public static final Path clipByPointRegion(@NotNull Path path, @NotNull List<TouchPoint> points, int i) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(points, "points");
        SplitResult splitByRegion$default = splitByRegion$default(path, createRegion$default(getFillStrokePath(asPath(points, true), 0, true), null, false, 3, null), 0, i, 2, null);
        Path path2 = new Path();
        Iterator<T> it2 = splitByRegion$default.getRemoveSegmentList().iterator();
        while (it2.hasNext()) {
            path2.addPath(asPath$default((List) it2.next(), false, 1, null));
        }
        return path2;
    }

    public static /* synthetic */ Path clipByPointRegion$default(Path path, List list, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 5;
        }
        return clipByPointRegion(path, list, i);
    }

    @NotNull
    public static final Path concat(@NotNull Path... paths) {
        Intrinsics.checkNotNullParameter(paths, "paths");
        Path path = new Path();
        for (Path path2 : paths) {
            if (path2 == null) {
                path2 = new Path();
            }
            path.addPath(path2);
        }
        return path;
    }

    @NotNull
    public static final Path concatTransform(@NotNull Path path, @NotNull Matrix... matrixs) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(matrixs, "matrixs");
        Path copy = com.onyx.android.sdk.base.extension.PathKt.copy(path);
        for (Matrix matrix : matrixs) {
            copy.transform(MatrixKt.nonNull(matrix));
        }
        return copy;
    }

    public static final boolean contains(@NotNull Path path, @NotNull TouchPoint point) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(point, "point");
        path.close();
        Region region = new Region();
        RectF computeBounds = com.onyx.android.sdk.base.extension.PathKt.computeBounds(path, true);
        Rect rect = new Rect();
        computeBounds.roundOut(rect);
        region.setPath(path, new Region(rect));
        Rect rect2 = new Rect();
        RegionIterator regionIterator = new RegionIterator(region);
        while (regionIterator.next(rect2)) {
            if (RectFKt.copy(rect2).contains((int) point.getX(), (int) point.getY())) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public static final Path createArrowPath(@NotNull Path path, boolean z, boolean z2, float f, int i, float f2) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return i != 1 ? i != 2 ? new Path() : createCloseAndFilledArrowPath(path, z, z2, f, f2) : createLineAndStrokedArrowPath(path, z, z2, f, f2);
    }

    public static /* synthetic */ Path createArrowPath$default(Path path, boolean z, boolean z2, float f, int i, float f2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = false;
        }
        if ((i2 & 2) != 0) {
            z2 = false;
        }
        if ((i2 & 4) != 0) {
            f = DimenUtils.INSTANCE.dp2PxFloat(14.0f);
        }
        if ((i2 & 8) != 0) {
            i = 1;
        }
        if ((i2 & 16) != 0) {
            f2 = 0.0f;
        }
        return createArrowPath(path, z, z2, f, i, f2);
    }

    @NotNull
    public static final Path createCloseAndFilledArrowPath(@NotNull Path path, boolean z, boolean z2, float f, float f2) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        float floatValue = ((Number) MathUtils.INSTANCE.atLeast(Float.valueOf(f), Float.valueOf(2.0f * f2))).floatValue();
        Path path2 = new Path();
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float[] fArr = new float[2];
        float[] fArr2 = new float[2];
        if (z) {
            pathMeasure.getPosTan(0.0f, fArr, fArr2);
            TouchPoint touchPoint = new TouchPoint(fArr[0], fArr[1]);
            float direction = new TouchPointPair(new TouchPoint(0.0f, 0.0f), new TouchPoint(fArr2[0], fArr2[1])).direction();
            float f3 = direction + 1.5707964f;
            GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
            TouchPoint findPointByDistance = geometryUtils.findPointByDistance(touchPoint, Float.valueOf((-f2) * 2), Float.valueOf(direction));
            TouchPoint findPointByDistance2 = geometryUtils.findPointByDistance(touchPoint, Float.valueOf(floatValue / ((float) Math.tan(0.5235988f))), Float.valueOf(direction));
            TouchPoint findPointByDistance3 = geometryUtils.findPointByDistance(findPointByDistance, Float.valueOf(new TouchPointPair(findPointByDistance, findPointByDistance2).length() * 0.75f), Float.valueOf(direction));
            TouchPoint findPointByDistance4 = geometryUtils.findPointByDistance(findPointByDistance2, Float.valueOf(floatValue), Float.valueOf(direction - 1.5707964f));
            TouchPoint findPointByDistance5 = geometryUtils.findPointByDistance(findPointByDistance2, Float.valueOf(floatValue), Float.valueOf(f3));
            path2.moveTo(findPointByDistance.getX(), findPointByDistance.getY());
            path2.lineTo(findPointByDistance4.getX(), findPointByDistance4.getY());
            path2.lineTo(findPointByDistance3.getX(), findPointByDistance3.getY());
            path2.lineTo(findPointByDistance5.getX(), findPointByDistance5.getY());
            path2.close();
        }
        if (z2) {
            pathMeasure.getPosTan(pathMeasure.getLength(), fArr, fArr2);
            TouchPoint touchPoint2 = new TouchPoint(fArr[0], fArr[1]);
            float direction2 = new TouchPointPair(new TouchPoint(0.0f, 0.0f), new TouchPoint(fArr2[0], fArr2[1])).direction();
            float f4 = direction2 - 1.5707964f;
            float f5 = direction2 + 1.5707964f;
            GeometryUtils geometryUtils2 = GeometryUtils.INSTANCE;
            TouchPoint findPointByDistance6 = geometryUtils2.findPointByDistance(touchPoint2, Float.valueOf(2 * f2), Float.valueOf(direction2));
            TouchPoint findPointByDistance7 = geometryUtils2.findPointByDistance(touchPoint2, Float.valueOf((-floatValue) / ((float) Math.tan(0.5235988f))), Float.valueOf(direction2));
            TouchPoint findPointByDistance8 = geometryUtils2.findPointByDistance(findPointByDistance6, Float.valueOf(-(new TouchPointPair(findPointByDistance6, findPointByDistance7).length() * 0.75f)), Float.valueOf(direction2));
            TouchPoint findPointByDistance9 = geometryUtils2.findPointByDistance(findPointByDistance7, Float.valueOf(floatValue), Float.valueOf(f4));
            TouchPoint findPointByDistance10 = geometryUtils2.findPointByDistance(findPointByDistance7, Float.valueOf(floatValue), Float.valueOf(f5));
            path2.moveTo(findPointByDistance6.getX(), findPointByDistance6.getY());
            path2.lineTo(findPointByDistance9.getX(), findPointByDistance9.getY());
            path2.lineTo(findPointByDistance8.getX(), findPointByDistance8.getY());
            path2.lineTo(findPointByDistance10.getX(), findPointByDistance10.getY());
            path2.close();
        }
        return path2;
    }

    public static /* synthetic */ Path createCloseAndFilledArrowPath$default(Path path, boolean z, boolean z2, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        if ((i & 4) != 0) {
            f = DimenUtils.INSTANCE.dp2PxFloat(14.0f);
        }
        if ((i & 8) != 0) {
            f2 = 0.0f;
        }
        return createCloseAndFilledArrowPath(path, z, z2, f, f2);
    }

    @NotNull
    public static final Path createHitTestPath(@NotNull TouchPoint touchPoint, @NotNull Number hotspotRadius) {
        Intrinsics.checkNotNullParameter(touchPoint, "<this>");
        Intrinsics.checkNotNullParameter(hotspotRadius, "hotspotRadius");
        Path path = new Path();
        path.addCircle(touchPoint.getX(), touchPoint.getY(), hotspotRadius.floatValue(), Path.Direction.CW);
        return path;
    }

    public static /* synthetic */ Path createHitTestPath$default(TouchPoint touchPoint, Number number, int i, Object obj) {
        if ((i & 1) != 0) {
            number = Float.valueOf(1.0f);
        }
        return createHitTestPath(touchPoint, number);
    }

    @NotNull
    public static final Path createLineAndStrokedArrowPath(@NotNull Path path, boolean z, boolean z2, float f, float f2) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        float floatValue = ((Number) MathUtils.INSTANCE.atLeast(Float.valueOf(f), Float.valueOf(2.0f * f2))).floatValue();
        Path path2 = new Path();
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float[] fArr = new float[2];
        float[] fArr2 = new float[2];
        if (z) {
            pathMeasure.getPosTan(0.0f, fArr, fArr2);
            TouchPoint touchPoint = new TouchPoint(fArr[0], fArr[1]);
            float direction = new TouchPointPair(new TouchPoint(0.0f, 0.0f), new TouchPoint(fArr2[0], fArr2[1])).direction();
            GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
            TouchPoint findPointByDistance = geometryUtils.findPointByDistance(touchPoint, Float.valueOf(floatValue / ((float) Math.tan(0.5235988f))), Float.valueOf(direction));
            TouchPoint findPointByDistance2 = geometryUtils.findPointByDistance(findPointByDistance, Float.valueOf(floatValue), Float.valueOf(direction - 1.5707964f));
            TouchPoint findPointByDistance3 = geometryUtils.findPointByDistance(findPointByDistance, Float.valueOf(floatValue), Float.valueOf(direction + 1.5707964f));
            path2.moveTo(findPointByDistance2.getX(), findPointByDistance2.getY());
            path2.lineTo(touchPoint.getX(), touchPoint.getY());
            path2.lineTo(findPointByDistance3.getX(), findPointByDistance3.getY());
        }
        if (z2) {
            pathMeasure.getPosTan(pathMeasure.getLength(), fArr, fArr2);
            TouchPoint touchPoint2 = new TouchPoint(fArr[0], fArr[1]);
            float direction2 = new TouchPointPair(new TouchPoint(0.0f, 0.0f), new TouchPoint(fArr2[0], fArr2[1])).direction();
            float f3 = direction2 - 1.5707964f;
            float f4 = direction2 + 1.5707964f;
            GeometryUtils geometryUtils2 = GeometryUtils.INSTANCE;
            TouchPoint findPointByDistance4 = geometryUtils2.findPointByDistance(touchPoint2, Float.valueOf((-floatValue) / ((float) Math.tan(0.5235988f))), Float.valueOf(direction2));
            TouchPoint findPointByDistance5 = geometryUtils2.findPointByDistance(findPointByDistance4, Float.valueOf(floatValue), Float.valueOf(f3));
            TouchPoint findPointByDistance6 = geometryUtils2.findPointByDistance(findPointByDistance4, Float.valueOf(floatValue), Float.valueOf(f4));
            path2.moveTo(findPointByDistance5.getX(), findPointByDistance5.getY());
            path2.lineTo(touchPoint2.getX(), touchPoint2.getY());
            path2.lineTo(findPointByDistance6.getX(), findPointByDistance6.getY());
        }
        return path2;
    }

    public static /* synthetic */ Path createLineAndStrokedArrowPath$default(Path path, boolean z, boolean z2, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        if ((i & 4) != 0) {
            f = DimenUtils.INSTANCE.dp2PxFloat(7.0f);
        }
        if ((i & 8) != 0) {
            f2 = 0.0f;
        }
        return createLineAndStrokedArrowPath(path, z, z2, f, f2);
    }

    @NotNull
    public static final Path createLineArrowPath(@NotNull Path path, boolean z, boolean z2, @NotNull Number arrowSize) {
        float[] fArr;
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(arrowSize, "arrowSize");
        Path path2 = new Path();
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float[] fArr2 = new float[2];
        float[] fArr3 = new float[2];
        if (z) {
            pathMeasure.getPosTan(0.0f, fArr2, fArr3);
            TouchPoint touchPoint = new TouchPoint(fArr2[0], fArr2[1]);
            float direction = new TouchPointPair(new TouchPoint(0.0f, 0.0f), new TouchPoint(fArr3[0], fArr3[1])).direction();
            GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
            double d = 1.0471976f;
            fArr = fArr2;
            TouchPoint findPointByDistance = geometryUtils.findPointByDistance(touchPoint, Float.valueOf(arrowSize.floatValue() * ((float) Math.sin(d))), Float.valueOf(direction));
            TouchPoint findPointByDistance2 = geometryUtils.findPointByDistance(findPointByDistance, Float.valueOf(arrowSize.floatValue() * ((float) Math.cos(d))), Float.valueOf(direction - 1.5707964f));
            TouchPoint findPointByDistance3 = geometryUtils.findPointByDistance(findPointByDistance, Float.valueOf(arrowSize.floatValue() * ((float) Math.cos(d))), Float.valueOf(direction + 1.5707964f));
            path2.moveTo(touchPoint.getX(), touchPoint.getY());
            path2.lineTo(findPointByDistance2.getX(), findPointByDistance2.getY());
            path2.moveTo(touchPoint.getX(), touchPoint.getY());
            path2.lineTo(findPointByDistance3.getX(), findPointByDistance3.getY());
        } else {
            fArr = fArr2;
        }
        if (z2) {
            float[] fArr4 = fArr;
            pathMeasure.getPosTan(pathMeasure.getLength(), fArr4, fArr3);
            TouchPoint touchPoint2 = new TouchPoint(fArr4[0], fArr4[1]);
            float direction2 = new TouchPointPair(new TouchPoint(0.0f, 0.0f), new TouchPoint(fArr3[0], fArr3[1])).direction();
            float f = direction2 - 1.5707964f;
            float f2 = direction2 + 1.5707964f;
            GeometryUtils geometryUtils2 = GeometryUtils.INSTANCE;
            double d2 = 1.0471976f;
            TouchPoint findPointByDistance4 = geometryUtils2.findPointByDistance(touchPoint2, Float.valueOf((-arrowSize.floatValue()) * ((float) Math.sin(d2))), Float.valueOf(direction2));
            TouchPoint findPointByDistance5 = geometryUtils2.findPointByDistance(findPointByDistance4, Float.valueOf(arrowSize.floatValue() * ((float) Math.cos(d2))), Float.valueOf(f));
            TouchPoint findPointByDistance6 = geometryUtils2.findPointByDistance(findPointByDistance4, Float.valueOf(arrowSize.floatValue() * ((float) Math.cos(d2))), Float.valueOf(f2));
            path2.moveTo(touchPoint2.getX(), touchPoint2.getY());
            path2.lineTo(findPointByDistance5.getX(), findPointByDistance5.getY());
            path2.moveTo(touchPoint2.getX(), touchPoint2.getY());
            path2.lineTo(findPointByDistance6.getX(), findPointByDistance6.getY());
        }
        return path2;
    }

    public static /* synthetic */ Path createLineArrowPath$default(Path path, boolean z, boolean z2, Number number, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        if ((i & 4) != 0) {
            number = Float.valueOf(DimenUtils.INSTANCE.dp2PxFloat(14.0f));
        }
        return createLineArrowPath(path, z, z2, number);
    }

    @NotNull
    public static final Path createPathFrom(@NotNull List<TouchPoint> points, @NotNull Function1<? super Path, Unit> compose) {
        Object first;
        Intrinsics.checkNotNullParameter(points, "points");
        Intrinsics.checkNotNullParameter(compose, "compose");
        Path path = new Path();
        if (points.isEmpty()) {
            return path;
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) points);
        TouchPoint touchPoint = (TouchPoint) first;
        path.moveTo(touchPoint.getX(), touchPoint.getY());
        compose.invoke(path);
        return path;
    }

    public static /* synthetic */ Path createPathFrom$default(final List list, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = new Function1<Path, Unit>() { // from class: com.onyx.android.sdk.geometry.extension.PathKt$createPathFrom$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Path path) {
                    invoke2(path);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull Path it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    PathKt.lineTo(it2, list);
                }
            };
        }
        return createPathFrom(list, function1);
    }

    @NotNull
    public static final Region createRegion(@NotNull Path path, @NotNull RectF rectF, boolean z) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        if (rectF.isEmpty()) {
            path.computeBounds(rectF, true);
        }
        Region region = new Region();
        Rect rect = new Rect();
        rectF.roundOut(rect);
        Region region2 = new Region(rect);
        region.setPath(path, region2);
        if (z) {
            region.set(region2);
        } else if (region.isEmpty()) {
            region.set(region2);
        }
        return region;
    }

    public static /* synthetic */ Region createRegion$default(Path path, RectF rectF, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            rectF = new RectF();
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return createRegion(path, rectF, z);
    }

    public static final void cubicTo(@NotNull Path path, @NotNull List<TouchPoint> points) {
        Object orNull;
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(points, "points");
        if (points.size() < 5) {
            return;
        }
        int i = 0;
        int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(0, points.size(), 4);
        if (progressionLastElement < 0) {
            return;
        }
        while (true) {
            int i2 = i + 3;
            if (i2 < points.size()) {
                TouchPoint touchPoint = points.get(i + 1);
                TouchPoint touchPoint2 = points.get(i + 2);
                TouchPoint touchPoint3 = points.get(i2);
                orNull = CollectionsKt___CollectionsKt.getOrNull(points, i + 4);
                TouchPoint touchPoint4 = (TouchPoint) orNull;
                if (touchPoint4 != null) {
                    touchPoint3 = touchPoint4;
                }
                float f = 2;
                path.cubicTo(touchPoint.getX(), touchPoint.getY(), touchPoint2.getX(), touchPoint2.getY(), (touchPoint2.getX() + touchPoint3.getX()) / f, (touchPoint2.getY() + touchPoint3.getY()) / f);
            }
            if (i == progressionLastElement) {
                return;
            } else {
                i += 4;
            }
        }
    }

    @NotNull
    public static final Path firstSegment(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return getSegmentByIndex(path, 0);
    }

    public static final void forEachPoint(@NotNull Path path, @NotNull Number step, @NotNull Function1<? super PathMeasurePointResult, Unit> consumer) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(step, "step");
        Intrinsics.checkNotNullParameter(consumer, "consumer");
        int i = 0;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float f = 0.0f;
        float f2 = 0.0f;
        while (pathMeasure.nextContour()) {
            f2 += pathMeasure.getLength();
        }
        PathMeasure pathMeasure2 = new PathMeasure(path, false);
        float[] fArr = new float[2];
        float[] fArr2 = new float[2];
        int i2 = 0;
        while (true) {
            int length = (int) (pathMeasure2.getLength() + step.floatValue());
            char c = 1;
            int intValue = ((Number) MathUtils.INSTANCE.atLeast(Integer.valueOf(step.intValue()), 1)).intValue();
            if (intValue <= 0) {
                throw new IllegalArgumentException("Step must be positive, was: " + intValue + '.');
            }
            int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(i, length, intValue);
            if (progressionLastElement >= 0) {
                int i3 = i;
                while (true) {
                    float floatValue = ((Number) MathUtils.INSTANCE.atMost(Float.valueOf(i3), Float.valueOf(pathMeasure2.getLength()))).floatValue();
                    f += floatValue;
                    if (pathMeasure2.getPosTan(floatValue, fArr, fArr2)) {
                        PathMeasurePointResult pathMeasurePointResult = new PathMeasurePointResult();
                        pathMeasurePointResult.setPoint(new TouchPoint(fArr[i], fArr[c]));
                        pathMeasurePointResult.setDirection((float) Math.atan2(fArr2[c], fArr2[0]));
                        f = f;
                        pathMeasurePointResult.setCurrentLength(f);
                        pathMeasurePointResult.setTotalLength(f2);
                        pathMeasurePointResult.setSegmentIndex(i2);
                        consumer.invoke(pathMeasurePointResult);
                    }
                    if (i3 == progressionLastElement) {
                        break;
                    }
                    i3 += intValue;
                    i = 0;
                    c = 1;
                }
            }
            i2++;
            if (!pathMeasure2.nextContour()) {
                return;
            } else {
                i = 0;
            }
        }
    }

    public static /* synthetic */ void forEachPoint$default(Path path, Number number, Function1 consumer, int i, Object obj) {
        int i2 = 1;
        Number step = (i & 1) != 0 ? Float.valueOf(DimenUtils.INSTANCE.dp2PxFloat(1.0f)) : number;
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(step, "step");
        Intrinsics.checkNotNullParameter(consumer, "consumer");
        int i3 = 0;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float f = 0.0f;
        float f2 = 0.0f;
        while (pathMeasure.nextContour()) {
            f2 += pathMeasure.getLength();
        }
        PathMeasure pathMeasure2 = new PathMeasure(path, false);
        float[] fArr = new float[2];
        float[] fArr2 = new float[2];
        int i4 = 0;
        while (true) {
            int length = (int) (pathMeasure2.getLength() + step.floatValue());
            int intValue = ((Number) MathUtils.INSTANCE.atLeast(Integer.valueOf(step.intValue()), Integer.valueOf(i2))).intValue();
            if (intValue <= 0) {
                throw new IllegalArgumentException("Step must be positive, was: " + intValue + '.');
            }
            int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(i3, length, intValue);
            if (progressionLastElement >= 0) {
                int i5 = i3;
                while (true) {
                    float floatValue = ((Number) MathUtils.INSTANCE.atMost(Float.valueOf(i5), Float.valueOf(pathMeasure2.getLength()))).floatValue();
                    f += floatValue;
                    if (pathMeasure2.getPosTan(floatValue, fArr, fArr2)) {
                        PathMeasurePointResult pathMeasurePointResult = new PathMeasurePointResult();
                        pathMeasurePointResult.setPoint(new TouchPoint(fArr[i3], fArr[i2]));
                        pathMeasurePointResult.setDirection((float) Math.atan2(fArr2[i2], fArr2[0]));
                        f = f;
                        pathMeasurePointResult.setCurrentLength(f);
                        pathMeasurePointResult.setTotalLength(f2);
                        pathMeasurePointResult.setSegmentIndex(i4);
                        consumer.invoke(pathMeasurePointResult);
                    }
                    if (i5 == progressionLastElement) {
                        break;
                    }
                    i5 += intValue;
                    i2 = 1;
                    i3 = 0;
                }
            }
            i4++;
            if (!pathMeasure2.nextContour()) {
                return;
            }
            i2 = 1;
            i3 = 0;
        }
    }

    public static final void forEachRegionRect(@NotNull Path path, @NotNull Function1<? super Rect, Unit> consumer) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(consumer, "consumer");
        path.close();
        Region region = new Region();
        RectF computeBounds = com.onyx.android.sdk.base.extension.PathKt.computeBounds(path, true);
        Rect rect = new Rect();
        computeBounds.roundOut(rect);
        region.setPath(path, new Region(rect));
        Rect rect2 = new Rect();
        RegionIterator regionIterator = new RegionIterator(region);
        while (regionIterator.next(rect2)) {
            consumer.invoke(RectFKt.copy(rect2));
        }
    }

    @NotNull
    public static final TouchPoint getCenterPointByPosition(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float[] fArr = new float[2];
        return !pathMeasure.getPosTan(pathMeasure.getLength() / ((float) 2), fArr, null) ? TouchPoint.INSTANCE.getEmpty() : new TouchPoint(fArr[0], fArr[1]);
    }

    @NotNull
    public static final Path getFillStrokePath(@NotNull Path path, @NotNull Number strokeWidth, boolean z) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(strokeWidth, "strokeWidth");
        Path path2 = new Path();
        Paint paint = new Paint();
        paint.setStyle(z ? Paint.Style.FILL_AND_STROKE : Paint.Style.STROKE);
        paint.setStrokeWidth(strokeWidth.floatValue());
        paint.getFillPath(path, path2);
        return (path.isEmpty() || !path2.isEmpty()) ? path2 : com.onyx.android.sdk.base.extension.PathKt.copy(path);
    }

    public static /* synthetic */ Path getFillStrokePath$default(Path path, Number number, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            number = Float.valueOf(0.0f);
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return getFillStrokePath(path, number, z);
    }

    @Nullable
    public static final TouchPoint getFirstPoint(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return getPercentPoint(path, 0.0f);
    }

    @Nullable
    public static final TouchPoint getLastPoint(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return getPercentPoint(path, 1.0f);
    }

    @Nullable
    public static final TouchPoint getPercentPoint(@NotNull Path path, float f) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        PathMeasure pathMeasure = new PathMeasure(path, false);
        if (path.isEmpty()) {
            return null;
        }
        if (pathMeasure.getLength() == 0.0f) {
            return null;
        }
        float[] fArr = new float[2];
        pathMeasure.getPosTan(pathMeasure.getLength() * f, fArr, new float[2]);
        return new TouchPoint(fArr[0], fArr[1]);
    }

    @Nullable
    public static final Float getPointPosition(@NotNull Path path, @NotNull TouchPoint point, int i) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(point, "point");
        int i2 = 0;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float f = 0.0f;
        float f2 = 0.0f;
        while (pathMeasure.nextContour()) {
            f2 += pathMeasure.getLength();
        }
        PathMeasure pathMeasure2 = new PathMeasure(path, false);
        float[] fArr = new float[2];
        float[] fArr2 = new float[2];
        int i3 = 0;
        while (true) {
            int length = (int) (pathMeasure2.getLength() + i);
            char c = 1;
            int intValue = ((Number) MathUtils.INSTANCE.atLeast(Integer.valueOf(i), 1)).intValue();
            if (intValue <= 0) {
                throw new IllegalArgumentException("Step must be positive, was: " + intValue + '.');
            }
            int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(i2, length, intValue);
            if (progressionLastElement >= 0) {
                int i4 = i2;
                while (true) {
                    float floatValue = ((Number) MathUtils.INSTANCE.atMost(Float.valueOf(i4), Float.valueOf(pathMeasure2.getLength()))).floatValue();
                    f += floatValue;
                    if (pathMeasure2.getPosTan(floatValue, fArr, fArr2)) {
                        PathMeasurePointResult pathMeasurePointResult = new PathMeasurePointResult();
                        pathMeasurePointResult.setPoint(new TouchPoint(fArr[i2], fArr[c]));
                        pathMeasurePointResult.setDirection((float) Math.atan2(fArr2[c], fArr2[0]));
                        f = f;
                        pathMeasurePointResult.setCurrentLength(f);
                        pathMeasurePointResult.setTotalLength(f2);
                        pathMeasurePointResult.setSegmentIndex(i3);
                        if (point.equalXY(pathMeasurePointResult.getPoint())) {
                            return Float.valueOf(pathMeasurePointResult.getCurrentLength() / pathMeasurePointResult.getTotalLength());
                        }
                    }
                    if (i4 == progressionLastElement) {
                        break;
                    }
                    i4 += intValue;
                    i2 = 0;
                    c = 1;
                }
            }
            i3++;
            if (!pathMeasure2.nextContour()) {
                return null;
            }
            i2 = 0;
        }
    }

    public static /* synthetic */ Float getPointPosition$default(Path path, TouchPoint touchPoint, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 2;
        }
        return getPointPosition(path, touchPoint, i);
    }

    public static final float getQuadToEndPos(float f, float f2, float f3) {
        return f + ((f2 - f) * f3);
    }

    public static /* synthetic */ float getQuadToEndPos$default(float f, float f2, float f3, int i, Object obj) {
        if ((i & 4) != 0) {
            f3 = 0.7f;
        }
        return getQuadToEndPos(f, f2, f3);
    }

    @NotNull
    public static final Path getSegmentByIndex(@NotNull Path path, int i) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Path path2 = new Path();
        PathMeasure pathMeasure = new PathMeasure(path, false);
        int i2 = i - 1;
        for (int i3 = 0; i3 < i2; i3++) {
            if (!pathMeasure.nextContour()) {
                return path2;
            }
        }
        if (pathMeasure.getLength() <= 0.0f) {
            return path2;
        }
        pathMeasure.getSegment(0.0f, pathMeasure.getLength(), path2, true);
        return path2;
    }

    @NotNull
    public static final Path getUnionRegionPath(@NotNull List<SelectionRegion> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Path path = new Path();
        for (SelectionRegion selectionRegion : list) {
            Path path2 = new Path();
            path2.addRect(selectionRegion.getRect(), Path.Direction.CW);
            path.op(concatTransform(path2, selectionRegion.getMatrix()), Path.Op.UNION);
        }
        return getFillStrokePath$default(path, null, true, 1, null);
    }

    public static final boolean hitTestPath(@NotNull Path path, @NotNull Path other) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        return createRegion$default(path, null, false, 3, null).op(createRegion$default(other, null, false, 3, null), Region.Op.INTERSECT);
    }

    public static /* synthetic */ boolean hitTestPath$default(Path path, TouchPoint touchPoint, Number number, Number number2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            number = Float.valueOf(1.0f);
        }
        if ((i & 4) != 0) {
            number2 = Float.valueOf(0.0f);
        }
        if ((i & 8) != 0) {
            z = true;
        }
        return hitTestPath(path, touchPoint, number, number2, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00ac A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[LOOP:0: B:11:0x0063->B:21:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean isPathClosed(@org.jetbrains.annotations.NotNull android.graphics.Path r8, @org.jetbrains.annotations.NotNull java.lang.Number r9, @org.jetbrains.annotations.NotNull java.lang.Number r10) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.lang.String r0 = "step"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.lang.String r0 = "threshold"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            com.onyx.android.sdk.base.data.TouchPoint r0 = getFirstPoint(r8)
            r1 = 0
            if (r0 != 0) goto L17
            return r1
        L17:
            android.graphics.PathMeasure r2 = new android.graphics.PathMeasure
            r2.<init>(r8, r1)
            r8 = 2
            float[] r3 = new float[r8]
            float r4 = r2.getLength()
            float r8 = (float) r8
            float r4 = r4 / r8
            int r8 = (int) r4
            float r4 = r2.getLength()
            float r5 = r9.floatValue()
            float r4 = r4 + r5
            int r4 = (int) r4
            com.onyx.android.sdk.base.utils.MathUtils r5 = com.onyx.android.sdk.base.utils.MathUtils.INSTANCE
            int r9 = r9.intValue()
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)
            r6 = 1
            java.lang.Integer r7 = java.lang.Integer.valueOf(r6)
            java.lang.Comparable r9 = r5.atLeast(r9, r7)
            java.lang.Number r9 = (java.lang.Number) r9
            int r9 = r9.intValue()
            kotlin.ranges.IntProgression r8 = kotlin.ranges.RangesKt.downTo(r4, r8)
            kotlin.ranges.IntProgression r8 = kotlin.ranges.RangesKt.step(r8, r9)
            boolean r9 = r8 instanceof java.util.Collection
            if (r9 == 0) goto L5f
            r9 = r8
            java.util.Collection r9 = (java.util.Collection) r9
            boolean r9 = r9.isEmpty()
            if (r9 == 0) goto L5f
            goto Lad
        L5f:
            java.util.Iterator r8 = r8.iterator()
        L63:
            boolean r9 = r8.hasNext()
            if (r9 == 0) goto Lad
            r9 = r8
            kotlin.collections.IntIterator r9 = (kotlin.collections.IntIterator) r9
            int r9 = r9.nextInt()
            com.onyx.android.sdk.base.utils.MathUtils r4 = com.onyx.android.sdk.base.utils.MathUtils.INSTANCE
            float r9 = (float) r9
            java.lang.Float r9 = java.lang.Float.valueOf(r9)
            float r5 = r2.getLength()
            java.lang.Float r5 = java.lang.Float.valueOf(r5)
            java.lang.Comparable r9 = r4.atMost(r9, r5)
            java.lang.Number r9 = (java.lang.Number) r9
            float r9 = r9.floatValue()
            r4 = 0
            boolean r9 = r2.getPosTan(r9, r3, r4)
            if (r9 != 0) goto L92
        L90:
            r9 = r1
            goto Laa
        L92:
            com.onyx.android.sdk.base.data.TouchPoint r9 = new com.onyx.android.sdk.base.data.TouchPoint
            r4 = r3[r1]
            r5 = r3[r6]
            r9.<init>(r4, r5)
            com.onyx.android.sdk.geometry.utils.GeometryUtils r4 = com.onyx.android.sdk.geometry.utils.GeometryUtils.INSTANCE
            float r9 = r4.distanceTo(r0, r9)
            float r4 = r10.floatValue()
            int r9 = (r9 > r4 ? 1 : (r9 == r4 ? 0 : -1))
            if (r9 >= 0) goto L90
            r9 = r6
        Laa:
            if (r9 == 0) goto L63
            r1 = r6
        Lad:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.geometry.extension.PathKt.isPathClosed(android.graphics.Path, java.lang.Number, java.lang.Number):boolean");
    }

    public static /* synthetic */ boolean isPathClosed$default(Path path, Number number, Number number2, int i, Object obj) {
        if ((i & 1) != 0) {
            number = Float.valueOf(DimenUtils.INSTANCE.dp2PxFloat(2.0f));
        }
        if ((i & 2) != 0) {
            number2 = Float.valueOf(DimenUtils.INSTANCE.dp2PxFloat(5.0f));
        }
        return isPathClosed(path, number, number2);
    }

    public static final boolean isPointNear(@NotNull Path path, @NotNull TouchPoint point, @NotNull Number step, @NotNull Number threshold) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(point, "point");
        Intrinsics.checkNotNullParameter(step, "step");
        Intrinsics.checkNotNullParameter(threshold, "threshold");
        int i = 0;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float f = 0.0f;
        float f2 = 0.0f;
        while (pathMeasure.nextContour()) {
            f2 += pathMeasure.getLength();
        }
        PathMeasure pathMeasure2 = new PathMeasure(path, false);
        float[] fArr = new float[2];
        float[] fArr2 = new float[2];
        int i2 = 0;
        while (true) {
            int length = (int) (pathMeasure2.getLength() + step.floatValue());
            int intValue = ((Number) MathUtils.INSTANCE.atLeast(Integer.valueOf(step.intValue()), 1)).intValue();
            if (intValue <= 0) {
                throw new IllegalArgumentException("Step must be positive, was: " + intValue + '.');
            }
            int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(i, length, intValue);
            if (progressionLastElement >= 0) {
                int i3 = i;
                while (true) {
                    float floatValue = ((Number) MathUtils.INSTANCE.atMost(Float.valueOf(i3), Float.valueOf(pathMeasure2.getLength()))).floatValue();
                    f += floatValue;
                    if (pathMeasure2.getPosTan(floatValue, fArr, fArr2)) {
                        PathMeasurePointResult pathMeasurePointResult = new PathMeasurePointResult();
                        pathMeasurePointResult.setPoint(new TouchPoint(fArr[i], fArr[1]));
                        pathMeasurePointResult.setDirection((float) Math.atan2(fArr2[1], fArr2[0]));
                        pathMeasurePointResult.setCurrentLength(f);
                        pathMeasurePointResult.setTotalLength(f2);
                        pathMeasurePointResult.setSegmentIndex(i2);
                        if (TouchPoint.INSTANCE.distance(pathMeasurePointResult.getPoint(), point) < threshold.floatValue()) {
                            return true;
                        }
                    }
                    if (i3 == progressionLastElement) {
                        break;
                    }
                    i3 += intValue;
                    i = 0;
                }
            }
            i2++;
            if (!pathMeasure2.nextContour()) {
                return false;
            }
            i = 0;
        }
    }

    public static /* synthetic */ boolean isPointNear$default(Path path, TouchPoint touchPoint, Number number, Number number2, int i, Object obj) {
        if ((i & 2) != 0) {
            number = Float.valueOf(DimenUtils.INSTANCE.dp2PxFloat(1.0f));
        }
        if ((i & 4) != 0) {
            number2 = Float.valueOf(DimenUtils.INSTANCE.dp2PxFloat(2.0f));
        }
        return isPointNear(path, touchPoint, number, number2);
    }

    public static final void lineTo(@NotNull Path path, @NotNull List<TouchPoint> points) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(points, "points");
        for (TouchPoint touchPoint : points) {
            path.lineTo(touchPoint.getX(), touchPoint.getY());
        }
    }

    public static final void realQuadTo(@NotNull Path path, @NotNull List<TouchPoint> points, int i) {
        Object orNull;
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(points, "points");
        if (points.isEmpty()) {
            return;
        }
        int size = points.size();
        if (i <= 0) {
            throw new IllegalArgumentException("Step must be positive, was: " + i + '.');
        }
        int i2 = 0;
        int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(0, size, i);
        if (progressionLastElement < 0) {
            return;
        }
        while (true) {
            int i3 = i2 + 2;
            if (i3 >= points.size()) {
                return;
            }
            TouchPoint touchPoint = points.get(i2 + 1);
            TouchPoint touchPoint2 = points.get(i3);
            orNull = CollectionsKt___CollectionsKt.getOrNull(points, i2 + 3);
            TouchPoint touchPoint3 = (TouchPoint) orNull;
            if (touchPoint3 != null) {
                touchPoint2 = touchPoint3;
            }
            float x = touchPoint.getX() + touchPoint2.getX();
            float f = 2;
            path.quadTo(touchPoint.getX(), touchPoint.getY(), x / f, (touchPoint.getY() + touchPoint2.getY()) / f);
            if (i2 == progressionLastElement) {
                return;
            } else {
                i2 += i;
            }
        }
    }

    public static /* synthetic */ void realQuadTo$default(Path path, List list, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 2;
        }
        realQuadTo(path, list, i);
    }

    @NotNull
    public static final List<TouchPoint> resample(@NotNull Path path, @NotNull Number step) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(step, "step");
        ArrayList arrayList = new ArrayList();
        int i = 0;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float f = 0.0f;
        float f2 = 0.0f;
        while (pathMeasure.nextContour()) {
            f2 += pathMeasure.getLength();
        }
        PathMeasure pathMeasure2 = new PathMeasure(path, false);
        float[] fArr = new float[2];
        float[] fArr2 = new float[2];
        int i2 = 0;
        while (true) {
            int length = (int) (pathMeasure2.getLength() + step.floatValue());
            char c = 1;
            int intValue = ((Number) MathUtils.INSTANCE.atLeast(Integer.valueOf(step.intValue()), 1)).intValue();
            if (intValue <= 0) {
                throw new IllegalArgumentException("Step must be positive, was: " + intValue + '.');
            }
            int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(i, length, intValue);
            if (progressionLastElement >= 0) {
                int i3 = i;
                while (true) {
                    float floatValue = ((Number) MathUtils.INSTANCE.atMost(Float.valueOf(i3), Float.valueOf(pathMeasure2.getLength()))).floatValue();
                    f += floatValue;
                    if (pathMeasure2.getPosTan(floatValue, fArr, fArr2)) {
                        PathMeasurePointResult pathMeasurePointResult = new PathMeasurePointResult();
                        pathMeasurePointResult.setPoint(new TouchPoint(fArr[i], fArr[c]));
                        pathMeasurePointResult.setDirection((float) Math.atan2(fArr2[c], fArr2[0]));
                        f = f;
                        pathMeasurePointResult.setCurrentLength(f);
                        pathMeasurePointResult.setTotalLength(f2);
                        pathMeasurePointResult.setSegmentIndex(i2);
                        arrayList.add(pathMeasurePointResult.getPoint());
                    }
                    if (i3 == progressionLastElement) {
                        break;
                    }
                    i3 += intValue;
                    i = 0;
                    c = 1;
                }
            }
            i2++;
            if (!pathMeasure2.nextContour()) {
                return arrayList;
            }
            i = 0;
        }
    }

    public static /* synthetic */ List resample$default(Path path, Number number, int i, Object obj) {
        if ((i & 1) != 0) {
            number = Float.valueOf(DimenUtils.INSTANCE.dp2PxFloat(2.0f));
        }
        return resample(path, number);
    }

    @NotNull
    public static final List<List<TouchPoint>> resampleMultiSegmentPath(@NotNull Path path, @NotNull Number step) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(step, "step");
        ArrayList arrayList = new ArrayList();
        int i = 0;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float f = 0.0f;
        float f2 = 0.0f;
        while (pathMeasure.nextContour()) {
            f2 += pathMeasure.getLength();
        }
        PathMeasure pathMeasure2 = new PathMeasure(path, false);
        float[] fArr = new float[2];
        float[] fArr2 = new float[2];
        int i2 = 0;
        while (true) {
            int length = (int) (pathMeasure2.getLength() + step.floatValue());
            char c = 1;
            int intValue = ((Number) MathUtils.INSTANCE.atLeast(Integer.valueOf(step.intValue()), 1)).intValue();
            if (intValue <= 0) {
                throw new IllegalArgumentException("Step must be positive, was: " + intValue + '.');
            }
            int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(i, length, intValue);
            if (progressionLastElement >= 0) {
                int i3 = i;
                while (true) {
                    float floatValue = ((Number) MathUtils.INSTANCE.atMost(Float.valueOf(i3), Float.valueOf(pathMeasure2.getLength()))).floatValue();
                    f += floatValue;
                    if (pathMeasure2.getPosTan(floatValue, fArr, fArr2)) {
                        PathMeasurePointResult pathMeasurePointResult = new PathMeasurePointResult();
                        pathMeasurePointResult.setPoint(new TouchPoint(fArr[i], fArr[c]));
                        pathMeasurePointResult.setDirection((float) Math.atan2(fArr2[c], fArr2[0]));
                        f = f;
                        pathMeasurePointResult.setCurrentLength(f);
                        pathMeasurePointResult.setTotalLength(f2);
                        pathMeasurePointResult.setSegmentIndex(i2);
                        arrayList.add(pathMeasurePointResult);
                    }
                    if (i3 == progressionLastElement) {
                        break;
                    }
                    i3 += intValue;
                    i = 0;
                    c = 1;
                }
            }
            i2++;
            if (!pathMeasure2.nextContour()) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Object obj : arrayList) {
                    Integer valueOf = Integer.valueOf(((PathMeasurePointResult) obj).getSegmentIndex());
                    Object obj2 = linkedHashMap.get(valueOf);
                    if (obj2 == null) {
                        obj2 = new ArrayList();
                        linkedHashMap.put(valueOf, obj2);
                    }
                    ((List) obj2).add(obj);
                }
                ArrayList arrayList2 = new ArrayList(linkedHashMap.size());
                Iterator it2 = linkedHashMap.entrySet().iterator();
                while (it2.hasNext()) {
                    Iterable iterable = (Iterable) ((Map.Entry) it2.next()).getValue();
                    collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
                    ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
                    Iterator it3 = iterable.iterator();
                    while (it3.hasNext()) {
                        arrayList3.add(((PathMeasurePointResult) it3.next()).getPoint());
                    }
                    arrayList2.add(arrayList3);
                }
                return arrayList2;
            }
            i = 0;
        }
    }

    public static /* synthetic */ List resampleMultiSegmentPath$default(Path path, Number number, int i, Object obj) {
        if ((i & 1) != 0) {
            number = Float.valueOf(DimenUtils.INSTANCE.dp2PxFloat(2.0f));
        }
        return resampleMultiSegmentPath(path, number);
    }

    public static final void saveToDebugFile(@NotNull Path path, @NotNull String file, float f, int i, int i2, @NotNull TouchPoint circlePoint, float f2, int i3) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(circlePoint, "circlePoint");
        RectF computeBounds = com.onyx.android.sdk.base.extension.PathKt.computeBounds(path, true);
        if (computeBounds.isEmpty()) {
            return;
        }
        Bitmap createBitmap = Bitmap.createBitmap(((int) computeBounds.width()) * 2, ((int) computeBounds.height()) * 2, Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawColor(-256);
        Paint paint = new Paint();
        float f3 = 2;
        canvas.translate((-computeBounds.left) + (computeBounds.width() / f3), (-computeBounds.top) + (computeBounds.height() / f3));
        paint.setColor(i);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(f);
        canvas.drawPath(path, paint);
        paint.setColor(i2);
        paint.setStyle(Paint.Style.FILL);
        canvas.drawPath(path, paint);
        paint.setColor(i3);
        paint.setStyle(Paint.Style.FILL);
        canvas.drawCircle(circlePoint.getX(), circlePoint.getY(), f2, paint);
        BitmapKt.save$default(createBitmap, file, 0, 2, null);
    }

    @NotNull
    public static final SplitResult splitByPath(@NotNull Path path, @NotNull Path erasePath, float f, boolean z) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(erasePath, "erasePath");
        return splitByRegion$default(path, createRegion$default(getFillStrokePath(erasePath, Float.valueOf(f), z), null, false, 3, null), 0, 0, 6, null);
    }

    public static /* synthetic */ SplitResult splitByPath$default(Path path, Path path2, float f, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            f = 1.0f;
        }
        if ((i & 4) != 0) {
            z = true;
        }
        return splitByPath(path, path2, f, z);
    }

    @NotNull
    public static final SplitResult splitByRegion(@NotNull Path path, @NotNull Region region, int i, int i2) {
        Object first;
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(region, "region");
        SplitResult splitResult = new SplitResult();
        List<TouchPoint> resample = resample(path, Integer.valueOf(i));
        if (resample.isEmpty()) {
            return splitResult;
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) resample);
        TouchPoint touchPoint = (TouchPoint) first;
        ArrayList arrayList = new ArrayList();
        boolean z = !region.contains((int) touchPoint.getX(), (int) touchPoint.getY());
        for (TouchPoint touchPoint2 : resample) {
            boolean z2 = !region.contains((int) touchPoint2.getX(), (int) touchPoint2.getY());
            if (z2 == z) {
                arrayList.add(touchPoint2);
            } else {
                if (arrayList.size() >= i2) {
                    if (z) {
                        splitResult.addSplitSegment(arrayList);
                    } else {
                        splitResult.addRemoveSegment(arrayList);
                    }
                }
                arrayList = new ArrayList();
                z = z2;
            }
        }
        if (arrayList.size() >= i2) {
            if (z) {
                splitResult.addSplitSegment(arrayList);
            } else {
                splitResult.addRemoveSegment(arrayList);
            }
        }
        return splitResult;
    }

    public static /* synthetic */ SplitResult splitByRegion$default(Path path, Region region, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 2;
        }
        if ((i3 & 4) != 0) {
            i2 = 2;
        }
        return splitByRegion(path, region, i, i2);
    }

    public static final int area(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        path.close();
        Region region = new Region();
        RectF computeBounds = com.onyx.android.sdk.base.extension.PathKt.computeBounds(path, true);
        Rect rect = new Rect();
        computeBounds.roundOut(rect);
        region.setPath(path, new Region(rect));
        Rect rect2 = new Rect();
        RegionIterator regionIterator = new RegionIterator(region);
        int i = 0;
        while (regionIterator.next(rect2)) {
            i += RectKt.area(RectFKt.copy(rect2));
        }
        return i;
    }

    public static /* synthetic */ Path createHitTestPath$default(List list, Number number, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            number = Float.valueOf(1.0f);
        }
        if ((i & 2) != 0) {
            z = true;
        }
        return createHitTestPath(list, number, z);
    }

    public static final void averageQuadTo(@NotNull Path path, @NotNull TouchPoint current, @NotNull TouchPoint next) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(current, "current");
        Intrinsics.checkNotNullParameter(next, "next");
        averageQuadTo(path, current.getX(), current.getY(), next.getX(), next.getY());
    }

    public static final boolean hitTestPath(@NotNull Path path, @NotNull TouchPoint point, @NotNull Number hitTestRadius, @NotNull Number strokeWidth, boolean z) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(point, "point");
        Intrinsics.checkNotNullParameter(hitTestRadius, "hitTestRadius");
        Intrinsics.checkNotNullParameter(strokeWidth, "strokeWidth");
        Path fillStrokePath = getFillStrokePath(path, strokeWidth, z);
        if (createRegion$default(fillStrokePath, null, false, 3, null).contains(R.attr.x, R.attr.y)) {
            return true;
        }
        return hitTestPath(fillStrokePath, createHitTestPath(point, hitTestRadius));
    }

    public static /* synthetic */ boolean hitTestPath$default(Path path, List list, Number number, Number number2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            number = Float.valueOf(1.0f);
        }
        if ((i & 4) != 0) {
            number2 = Float.valueOf(0.0f);
        }
        if ((i & 8) != 0) {
            z = true;
        }
        return hitTestPath(path, (List<TouchPoint>) list, number, number2, z);
    }

    public static final void averageQuadTo(@NotNull Path path, @NotNull List<TouchPoint> points) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(points, "points");
        Iterator<TouchPoint> it2 = points.iterator();
        TouchPoint next = it2.next();
        while (it2.hasNext()) {
            TouchPoint next2 = it2.next();
            averageQuadTo(path, next, next2);
            next = next2;
        }
    }

    @NotNull
    public static final Path createHitTestPath(@NotNull List<TouchPoint> list, @NotNull Number hotspotRadius, boolean z) {
        Object first;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(hotspotRadius, "hotspotRadius");
        if (list.isEmpty()) {
            return new Path();
        }
        if (list.size() == 1) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
            return createHitTestPath((TouchPoint) first, hotspotRadius);
        }
        return getFillStrokePath(createPathFrom$default(list, null, 2, null), hotspotRadius, z);
    }

    public static final boolean hitTestPath(@NotNull Path path, @NotNull List<TouchPoint> points, @NotNull Number hitTestRadius, @NotNull Number strokeWidth, boolean z) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(points, "points");
        Intrinsics.checkNotNullParameter(hitTestRadius, "hitTestRadius");
        Intrinsics.checkNotNullParameter(strokeWidth, "strokeWidth");
        return hitTestPath(getFillStrokePath(path, strokeWidth, z), createHitTestPath$default(points, hitTestRadius, false, 2, null));
    }
}
