package com.onyx.android.sdk.genericshape;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.PathKt;
import com.onyx.android.sdk.genericshape.erase.EraseBean;
import com.onyx.android.sdk.genericshape.erase.SplitShapeResult;
import com.onyx.android.sdk.genericshape.erase.UniversalShapeSplitterKt;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BezierUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J,\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0014J\u0010\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u0005H\u0016J\b\u0010\u001e\u001a\u00020\u001fH\u0016J\b\u0010 \u001a\u00020\u0005H\u0016J\b\u0010!\u001a\u00020\"H\u0002J\b\u0010#\u001a\u00020\"H\u0016J\u000e\u0010$\u001a\b\u0012\u0004\u0012\u00020&0%H\u0016J\u0010\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*H\u0016J\u0016\u0010+\u001a\u00020\u00142\f\u0010,\u001a\b\u0012\u0004\u0012\u00020&0%H\u0016R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006-"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/Curve;", "Lcom/onyx/android/sdk/genericshape/Feature;", "multiPoint", "Lcom/onyx/android/sdk/genericshape/MultiPoint;", "drawStartArrow", "", "drawEndArrow", "(Lcom/onyx/android/sdk/genericshape/MultiPoint;ZZ)V", "getDrawEndArrow", Constants.BOOLEAN_VALUE_SIG, "getDrawStartArrow", GeoConstant.KEY_Geometry, "Lcom/onyx/android/sdk/genericshape/Geometry;", "getGeometry", "()Lcom/onyx/android/sdk/genericshape/Geometry;", "setGeometry", "(Lcom/onyx/android/sdk/genericshape/Geometry;)V", "getMultiPoint", "()Lcom/onyx/android/sdk/genericshape/MultiPoint;", "drawInternal", "", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Canvas;", "matrix", "Landroid/graphics/Matrix;", "strokePaint", "Landroid/graphics/Paint;", "fillPaint", "enableFillColor", "enable", "getBoundingRect", "Landroid/graphics/RectF;", "isEnableFillColor", "loadBasicPath", "Landroid/graphics/Path;", "loadRenderPath", "loadSelectionPoints", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "split", "Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;", "eraseBean", "Lcom/onyx/android/sdk/genericshape/erase/EraseBean;", "updateBySelectionPoints", "list", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGeoJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/Curve\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1558:1\n1855#2,2:1559\n37#3,2:1561\n*S KotlinDebug\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/Curve\n*L\n533#1:1559,2\n536#1:1561,2\n*E\n"})
/* loaded from: classes7.dex */
public class Curve extends Feature {
    private final boolean drawEndArrow;
    private final boolean drawStartArrow;

    @Nullable
    private Geometry geometry;

    @NotNull
    private final MultiPoint multiPoint;

    public /* synthetic */ Curve(MultiPoint multiPoint, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(multiPoint, (i & 2) != 0 ? false : z, (i & 4) != 0 ? false : z2);
    }

    private final Path loadBasicPath() {
        Path path = new Path();
        float[][] coordinates = this.multiPoint.getCoordinates();
        if (coordinates == null) {
            return path;
        }
        float[] fArr = coordinates[0];
        float[] fArr2 = coordinates[1];
        float[] fArr3 = coordinates[2];
        path.moveTo(fArr[0], fArr[1]);
        path.quadTo(fArr2[0], fArr2[1], fArr3[0], fArr3[1]);
        return path;
    }

    @Override // com.onyx.android.sdk.genericshape.Feature
    public void drawInternal(@NotNull Canvas canvas, @Nullable Matrix matrix, @NotNull Paint strokePaint, @Nullable Paint fillPaint) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(strokePaint, "strokePaint");
        super.drawInternal(canvas, matrix, strokePaint, fillPaint);
        StrokeAttr strokeAttr = getProperties().getStrokeAttr();
        GeoJsonKt.drawArrowPath(this, canvas, matrix, loadStrokePaint(matrix), loadRenderPath(), strokeAttr != null ? strokeAttr.getWidth() : 2.0f, this.drawStartArrow, this.drawEndArrow);
    }

    @Override // com.onyx.android.sdk.genericshape.Feature, com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    public void enableFillColor(boolean enable) {
    }

    @Override // com.onyx.android.sdk.genericshape.Feature, com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public RectF getBoundingRect() {
        List listOf;
        RectF boundingRect = super.getBoundingRect();
        Path loadRenderPath = loadRenderPath();
        RectF boundingRect2 = TouchPointList.INSTANCE.getBoundingRect(TouchPoint.Companion.parseTouchPointsFromPath$default(TouchPoint.INSTANCE, loadRenderPath, 0, 2, null));
        StrokeAttr strokeAttr = getProperties().getStrokeAttr();
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new RectF[]{boundingRect, boundingRect2, PathKt.computeBounds$default(GeoJsonKt.loadArrowPath(this, loadRenderPath, strokeAttr != null ? strokeAttr.getWidth() : 2.0f, this.drawStartArrow, this.drawEndArrow), false, 1, null)});
        return RectFKt.boundingRectF(listOf);
    }

    public final boolean getDrawEndArrow() {
        return this.drawEndArrow;
    }

    public final boolean getDrawStartArrow() {
        return this.drawStartArrow;
    }

    @Override // com.onyx.android.sdk.genericshape.Feature
    @Nullable
    public Geometry getGeometry() {
        return this.geometry;
    }

    @NotNull
    public final MultiPoint getMultiPoint() {
        return this.multiPoint;
    }

    @Override // com.onyx.android.sdk.genericshape.Feature, com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    public boolean isEnableFillColor() {
        return false;
    }

    @Override // com.onyx.android.sdk.genericshape.Feature, com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public Path loadRenderPath() {
        return loadBasicPath();
    }

    @Override // com.onyx.android.sdk.genericshape.Feature, com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public List<TouchPoint> loadSelectionPoints() {
        ArrayList arrayList = new ArrayList();
        float[][] coordinates = this.multiPoint.getCoordinates();
        if (coordinates == null) {
            return arrayList;
        }
        float[] fArr = coordinates[0];
        TouchPoint touchPoint = new TouchPoint(fArr[0], fArr[1]);
        float[] fArr2 = coordinates[1];
        TouchPoint touchPoint2 = new TouchPoint(fArr2[0], fArr2[1]);
        float[] fArr3 = coordinates[2];
        TouchPoint touchPoint3 = new TouchPoint(fArr3[0], fArr3[1]);
        arrayList.add(touchPoint);
        arrayList.add(BezierUtils.INSTANCE.getHalfPoint(touchPoint, touchPoint2, touchPoint3));
        arrayList.add(touchPoint3);
        return arrayList;
    }

    @Override // com.onyx.android.sdk.genericshape.Feature
    public void setGeometry(@Nullable Geometry geometry) {
        this.geometry = geometry;
    }

    @Override // com.onyx.android.sdk.genericshape.Feature, com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public SplitShapeResult split(@NotNull EraseBean eraseBean) {
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        return UniversalShapeSplitterKt.splitShape(this, eraseBean);
    }

    @Override // com.onyx.android.sdk.genericshape.Feature, com.onyx.android.sdk.genericshape.IGeometry
    public void updateBySelectionPoints(@NotNull List<TouchPoint> list) {
        List<TouchPoint> mutableList;
        Intrinsics.checkNotNullParameter(list, "list");
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list);
        mutableList.set(1, BezierUtils.INSTANCE.getControlPoint(new TouchPoint((TouchPoint) mutableList.get(0)), new TouchPoint((TouchPoint) mutableList.get(1)), new TouchPoint((TouchPoint) mutableList.get(2))));
        ArrayList arrayList = new ArrayList();
        for (TouchPoint touchPoint : mutableList) {
            arrayList.add(new float[]{touchPoint.getX(), touchPoint.getY()});
        }
        this.multiPoint.setCoordinates((float[][]) arrayList.toArray(new float[0]));
    }

    public Curve(@NotNull MultiPoint multiPoint, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(multiPoint, "multiPoint");
        this.multiPoint = multiPoint;
        this.drawStartArrow = z;
        this.drawEndArrow = z2;
        this.geometry = multiPoint;
        getProperties().setSubType("Curve");
    }
}
