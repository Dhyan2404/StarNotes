package com.onyx.android.sdk.genericshape.erase;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.genericshape.Arc;
import com.onyx.android.sdk.genericshape.GeoConstant;
import com.onyx.android.sdk.genericshape.GeoFactory;
import com.onyx.android.sdk.genericshape.Geometry;
import com.onyx.android.sdk.genericshape.IGeometry;
import com.onyx.android.sdk.genericshape.MultiPoint;
import com.onyx.android.sdk.geometry.data.SplitResult;
import com.onyx.android.sdk.geometry.extension.PathKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J2\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u000bJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0014J$\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016J&\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u000f\u001a\u00020\u00102\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\u00172\u0006\u0010\u0018\u001a\u00020\u0019J\u0016\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\bJH\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u000e2(\b\u0002\u0010#\u001a\"\u0012\u0004\u0012\u00020\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u0017\u0012\u0004\u0012\u00020\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u00120$J,\u0010%\u001a\u00020&2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020!2\u0014\b\u0002\u0010'\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u000e0(¨\u0006)"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;", "", "()V", "createArc", "Lcom/onyx/android/sdk/genericshape/Arc;", "rectF", "Landroid/graphics/RectF;", "startPoint", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "endPoint", "reverse", "", "positiveSweepAngle", "loadRenderPath", "Landroid/graphics/Path;", GeoConstant.KEY_Geometry, "Lcom/onyx/android/sdk/genericshape/IGeometry;", "parseSegmentGeometry", "Lcom/onyx/android/sdk/genericshape/Geometry;", "splitSegmentPointList", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "geometryType", "", "", FirebaseAnalytics.Param.INDEX, "", "pointToAngle", "", "rect", "point", "split", "Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;", "eraseBean", "Lcom/onyx/android/sdk/genericshape/erase/EraseBean;", "path", "parseFunc", "Lkotlin/Function3;", "splitPath", "Lcom/onyx/android/sdk/genericshape/erase/SplitPathResult;", "pathFunc", "Lkotlin/Function1;", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class UniversalShapeSplitter {

    @NotNull
    public static final UniversalShapeSplitter INSTANCE = new UniversalShapeSplitter();

    private UniversalShapeSplitter() {
    }

    public static /* synthetic */ Arc createArc$default(UniversalShapeSplitter universalShapeSplitter, RectF rectF, TouchPoint touchPoint, TouchPoint touchPoint2, boolean z, boolean z2, int i, Object obj) {
        return universalShapeSplitter.createArc(rectF, touchPoint, touchPoint2, (i & 8) != 0 ? false : z, (i & 16) != 0 ? false : z2);
    }

    public static /* synthetic */ Geometry parseSegmentGeometry$default(UniversalShapeSplitter universalShapeSplitter, IGeometry iGeometry, TouchPointList touchPointList, String str, int i, Object obj) {
        if ((i & 4) != 0) {
            str = null;
        }
        return universalShapeSplitter.parseSegmentGeometry(iGeometry, touchPointList, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SplitShapeResult split$default(UniversalShapeSplitter universalShapeSplitter, IGeometry iGeometry, EraseBean eraseBean, Path path, Function3 function3, int i, Object obj) {
        if ((i & 8) != 0) {
            function3 = new UniversalShapeSplitter$split$1(universalShapeSplitter);
        }
        return universalShapeSplitter.split(iGeometry, eraseBean, path, function3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SplitPathResult splitPath$default(UniversalShapeSplitter universalShapeSplitter, IGeometry iGeometry, EraseBean eraseBean, Function1 function1, int i, Object obj) {
        if ((i & 4) != 0) {
            function1 = new UniversalShapeSplitter$splitPath$1(universalShapeSplitter);
        }
        return universalShapeSplitter.splitPath(iGeometry, eraseBean, function1);
    }

    @NotNull
    public final Arc createArc(@NotNull RectF rectF, @NotNull TouchPoint startPoint, @NotNull TouchPoint endPoint, boolean reverse, boolean positiveSweepAngle) {
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        Intrinsics.checkNotNullParameter(startPoint, "startPoint");
        Intrinsics.checkNotNullParameter(endPoint, "endPoint");
        double pointToAngle = pointToAngle(rectF, startPoint);
        double pointToAngle2 = pointToAngle(rectF, endPoint) - pointToAngle;
        if (pointToAngle2 < 0.0d && positiveSweepAngle) {
            pointToAngle2 += 360;
        }
        if (reverse) {
            pointToAngle2 += 360;
        }
        MultiPoint multiPoint = new MultiPoint();
        multiPoint.setCoordinates(new float[][]{new float[]{rectF.left, rectF.top}, new float[]{rectF.right, rectF.bottom}, new float[]{(float) pointToAngle, (float) pointToAngle2}});
        return new Arc(multiPoint);
    }

    @NotNull
    public final Path loadRenderPath(@NotNull IGeometry r1) {
        Intrinsics.checkNotNullParameter(r1, "geometry");
        return r1.loadRenderPath();
    }

    @Nullable
    public final Geometry parseSegmentGeometry(@NotNull IGeometry r2, @NotNull TouchPointList splitSegmentPointList) {
        Intrinsics.checkNotNullParameter(r2, "geometry");
        Intrinsics.checkNotNullParameter(splitSegmentPointList, "splitSegmentPointList");
        return parseSegmentGeometry(r2, splitSegmentPointList, (String) null);
    }

    public final double pointToAngle(@NotNull RectF rect, @NotNull TouchPoint point) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        Intrinsics.checkNotNullParameter(point, "point");
        float f = 2;
        double degrees = Math.toDegrees((float) Math.atan2(((point.getY() - rect.centerY()) / rect.height()) / f, ((point.getX() - rect.centerX()) / rect.width()) / f));
        return degrees < 0.0d ? degrees + 360 : degrees;
    }

    @NotNull
    public final SplitShapeResult split(@NotNull IGeometry r5, @NotNull EraseBean eraseBean, @NotNull final Path path, @NotNull Function3<? super IGeometry, ? super List<TouchPointList>, ? super Integer, ? extends Geometry> parseFunc) {
        Intrinsics.checkNotNullParameter(r5, "geometry");
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(parseFunc, "parseFunc");
        SplitShapeResult splitShapeResult = new SplitShapeResult();
        SplitPathResult splitPath = splitPath(r5, eraseBean, new Function1<IGeometry, Path>() { // from class: com.onyx.android.sdk.genericshape.erase.UniversalShapeSplitter$split$splitPathResult$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Path invoke(@NotNull IGeometry it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return path;
            }
        });
        ArrayList arrayList = new ArrayList();
        List<TouchPointList> splitSegmentList = splitPath.getSplitSegmentList();
        Iterator<TouchPointList> it2 = splitSegmentList.iterator();
        int i = 0;
        while (it2.hasNext()) {
            it2.next();
            CollectionKt.safeAdd(arrayList, parseFunc.invoke(r5, splitSegmentList, Integer.valueOf(i)));
            i++;
        }
        splitShapeResult.setSplitShapes(arrayList);
        splitShapeResult.setShapeErased(splitPath.getIsPathErased());
        return splitShapeResult;
    }

    @NotNull
    public final SplitPathResult splitPath(@NotNull IGeometry r7, @NotNull EraseBean eraseBean, @NotNull Function1<? super IGeometry, ? extends Path> pathFunc) {
        Intrinsics.checkNotNullParameter(r7, "geometry");
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        Intrinsics.checkNotNullParameter(pathFunc, "pathFunc");
        Path invoke = pathFunc.invoke(r7);
        Matrix copy = MatrixKt.copy(eraseBean.getTargetShapeMatrix());
        SplitResult transform = PathKt.splitByPath$default(PathKt.concatTransform(invoke, copy), eraseBean.getErasePath(), 0.0f, false, 6, null).transform(MatrixKt.invertMatrix(copy));
        SplitPathResult splitPathResult = new SplitPathResult();
        List<TouchPointList> splitTouchPointLists = transform.getSplitTouchPointLists();
        List<TouchPointList> removeTouchPointLists = transform.getRemoveTouchPointLists();
        boolean isEmpty = transform.getSplitSegmentList().isEmpty();
        splitPathResult.setSplitSegmentList(splitTouchPointLists);
        splitPathResult.setRemoveSegmentList(removeTouchPointLists);
        splitPathResult.setPathErased(isEmpty);
        return splitPathResult;
    }

    @Nullable
    public final Geometry parseSegmentGeometry(@NotNull IGeometry r2, @NotNull List<TouchPointList> splitSegmentPointList, int r4) {
        Intrinsics.checkNotNullParameter(r2, "geometry");
        Intrinsics.checkNotNullParameter(splitSegmentPointList, "splitSegmentPointList");
        return parseSegmentGeometry(r2, splitSegmentPointList.get(r4));
    }

    @Nullable
    public final Geometry parseSegmentGeometry(@NotNull IGeometry r1, @NotNull TouchPointList splitSegmentPointList, @Nullable String geometryType) {
        Intrinsics.checkNotNullParameter(r1, "geometry");
        Intrinsics.checkNotNullParameter(splitSegmentPointList, "splitSegmentPointList");
        try {
            JSONUtils jSONUtils = JSONUtils.INSTANCE;
            Geometry parseGeometry = GeoFactory.INSTANCE.parseGeometry(jSONUtils.parseObject(jSONUtils.toJson(r1)), geometryType);
            if (parseGeometry == null) {
                return parseGeometry;
            }
            parseGeometry.updateBySelectionPoints(splitSegmentPointList.getPoints());
            return parseGeometry;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
