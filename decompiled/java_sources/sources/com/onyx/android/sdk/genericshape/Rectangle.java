package com.onyx.android.sdk.genericshape;

import android.graphics.Path;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.genericshape.erase.EraseBean;
import com.onyx.android.sdk.genericshape.erase.SplitShapeResult;
import com.onyx.android.sdk.genericshape.erase.UniversalShapeSplitterKt;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\r\u001a\u00020\u000eH\u0016J\u000e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0016\u0010\u0016\u001a\u00020\u00172\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/Rectangle;", "Lcom/onyx/android/sdk/genericshape/Feature;", "multiPoint", "Lcom/onyx/android/sdk/genericshape/MultiPoint;", "(Lcom/onyx/android/sdk/genericshape/MultiPoint;)V", GeoConstant.KEY_Geometry, "Lcom/onyx/android/sdk/genericshape/Geometry;", "getGeometry", "()Lcom/onyx/android/sdk/genericshape/Geometry;", "setGeometry", "(Lcom/onyx/android/sdk/genericshape/Geometry;)V", "getMultiPoint$sdk_genericshape_overseasRelease", "()Lcom/onyx/android/sdk/genericshape/MultiPoint;", "loadRenderPath", "Landroid/graphics/Path;", "loadSelectionPoints", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "split", "Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;", "eraseBean", "Lcom/onyx/android/sdk/genericshape/erase/EraseBean;", "updateBySelectionPoints", "", "list", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class Rectangle extends Feature {

    @Nullable
    private Geometry geometry;

    @NotNull
    private final MultiPoint multiPoint;

    public Rectangle(@NotNull MultiPoint multiPoint) {
        Intrinsics.checkNotNullParameter(multiPoint, "multiPoint");
        this.multiPoint = multiPoint;
        this.geometry = multiPoint;
        getProperties().setSubType("Rectangle");
    }

    @Override // com.onyx.android.sdk.genericshape.Feature
    @Nullable
    public Geometry getGeometry() {
        return this.geometry;
    }

    @NotNull
    /* renamed from: getMultiPoint$sdk_genericshape_overseasRelease, reason: from getter */
    public final MultiPoint getMultiPoint() {
        return this.multiPoint;
    }

    @Override // com.onyx.android.sdk.genericshape.Feature, com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public Path loadRenderPath() {
        Path path = new Path();
        float[][] coordinates = this.multiPoint.getCoordinates();
        if (coordinates == null) {
            return path;
        }
        List<TouchPoint> touchPointList = GeoJsonKt.toTouchPointList(coordinates);
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        TouchPoint leftTop = geometryUtils.leftTop(touchPointList);
        TouchPoint rightBottom = geometryUtils.rightBottom(touchPointList);
        path.addRect(leftTop.getX(), leftTop.getY(), rightBottom.getX(), rightBottom.getY(), Path.Direction.CW);
        return path;
    }

    @Override // com.onyx.android.sdk.genericshape.Feature, com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public List<TouchPoint> loadSelectionPoints() {
        Object first;
        Object last;
        ArrayList arrayList = new ArrayList();
        float[][] coordinates = this.multiPoint.getCoordinates();
        if (coordinates == null) {
            return arrayList;
        }
        List<TouchPoint> touchPointList = GeoJsonKt.toTouchPointList(coordinates);
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) touchPointList);
        TouchPoint touchPoint = (TouchPoint) first;
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) touchPointList);
        TouchPoint touchPoint2 = (TouchPoint) last;
        arrayList.add(new TouchPoint(touchPoint.getX(), touchPoint.getY()));
        arrayList.add(new TouchPoint(touchPoint2.getX(), touchPoint.getY()));
        arrayList.add(new TouchPoint(touchPoint2.getX(), touchPoint2.getY()));
        arrayList.add(new TouchPoint(touchPoint.getX(), touchPoint2.getY()));
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
        return this.multiPoint.getCoordinates() == null ? super.split(eraseBean) : UniversalShapeSplitterKt.splitShape(this, eraseBean);
    }

    @Override // com.onyx.android.sdk.genericshape.Feature, com.onyx.android.sdk.genericshape.IGeometry
    public void updateBySelectionPoints(@NotNull List<TouchPoint> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.multiPoint.setCoordinates(new float[][]{new float[]{list.get(0).getX(), list.get(0).getY()}, new float[]{list.get(2).getX(), list.get(2).getY()}});
    }
}
