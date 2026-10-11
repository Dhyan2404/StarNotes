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

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000b\u001a\u00020\fH\u0016J\u000e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0016J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0016\u0010\u0014\u001a\u00020\u00152\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/Oval;", "Lcom/onyx/android/sdk/genericshape/Feature;", "multiPoint", "Lcom/onyx/android/sdk/genericshape/MultiPoint;", "(Lcom/onyx/android/sdk/genericshape/MultiPoint;)V", GeoConstant.KEY_Geometry, "Lcom/onyx/android/sdk/genericshape/Geometry;", "getGeometry", "()Lcom/onyx/android/sdk/genericshape/Geometry;", "setGeometry", "(Lcom/onyx/android/sdk/genericshape/Geometry;)V", "loadRenderPath", "Landroid/graphics/Path;", "loadSelectionPoints", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "split", "Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;", "eraseBean", "Lcom/onyx/android/sdk/genericshape/erase/EraseBean;", "updateBySelectionPoints", "", "list", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public class Oval extends Feature {

    @Nullable
    private Geometry geometry;

    @NotNull
    private final MultiPoint multiPoint;

    public Oval(@NotNull MultiPoint multiPoint) {
        Intrinsics.checkNotNullParameter(multiPoint, "multiPoint");
        this.multiPoint = multiPoint;
        this.geometry = multiPoint;
        getProperties().setSubType(GeoConstant.Oval);
    }

    @Override // com.onyx.android.sdk.genericshape.Feature
    @Nullable
    public Geometry getGeometry() {
        return this.geometry;
    }

    @Override // com.onyx.android.sdk.genericshape.Feature, com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public Path loadRenderPath() {
        Path path = new Path();
        float[][] coordinates = this.multiPoint.getCoordinates();
        if (coordinates == null || coordinates.length < 2) {
            return path;
        }
        List<TouchPoint> touchPointList = GeoJsonKt.toTouchPointList(coordinates);
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        TouchPoint leftTop = geometryUtils.leftTop(touchPointList);
        TouchPoint rightBottom = geometryUtils.rightBottom(touchPointList);
        path.addOval(leftTop.getX(), leftTop.getY(), rightBottom.getX(), rightBottom.getY(), Path.Direction.CW);
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
        TouchPoint gravityCenter = GeometryUtils.INSTANCE.gravityCenter(touchPointList);
        arrayList.add(new TouchPoint(gravityCenter.getX(), touchPoint.getY()));
        arrayList.add(new TouchPoint(touchPoint2.getX(), gravityCenter.getY()));
        arrayList.add(new TouchPoint(gravityCenter.getX(), touchPoint2.getY()));
        arrayList.add(new TouchPoint(touchPoint.getX(), gravityCenter.getY()));
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
        Intrinsics.checkNotNullParameter(list, "list");
        this.multiPoint.setCoordinates(new float[][]{new float[]{list.get(3).getX(), list.get(0).getY()}, new float[]{list.get(1).getX(), list.get(2).getY()}});
    }
}
