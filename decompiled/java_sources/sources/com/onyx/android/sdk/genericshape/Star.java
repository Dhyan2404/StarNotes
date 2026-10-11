package com.onyx.android.sdk.genericshape;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.GeometryConfigurations;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0002J\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\u000fH\u0016J\u0016\u0010\u0010\u001a\u00020\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\n0\u000fH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/Star;", "Lcom/onyx/android/sdk/genericshape/Polygon;", "()V", "type", "", "getType", "()Ljava/lang/String;", "setType", "(Ljava/lang/String;)V", "getInnerPoint", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "circleCenter", "previous", Constants.NEXT, "loadSelectionPoints", "", "updateBySelectionPoints", "", "selectionPoints", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGeoJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/Star\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1558:1\n37#2,2:1559\n*S KotlinDebug\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/Star\n*L\n1465#1:1559,2\n*E\n"})
/* loaded from: classes7.dex */
public class Star extends Polygon {

    @NotNull
    private String type = GeoConstant.Star;

    private final TouchPoint getInnerPoint(TouchPoint circleCenter, TouchPoint previous, TouchPoint next) {
        TouchPoint center = new TouchPointPair(previous, next).center();
        return new TouchPointPair(circleCenter, center).findPointOnVector(new TouchPointPair(circleCenter, center).length() * GeometryConfigurations.INSTANCE.getPentagramInnerPointDistancePercent(), circleCenter);
    }

    @Override // com.onyx.android.sdk.genericshape.Polygon, com.onyx.android.sdk.genericshape.Geometry
    @NotNull
    public String getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.genericshape.Polygon, com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public List<TouchPoint> loadSelectionPoints() {
        List<TouchPoint> emptyList;
        List<TouchPoint> emptyList2;
        float[][][] coordinates = getCoordinates();
        if (coordinates == null) {
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            return emptyList2;
        }
        if (coordinates.length < 10) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        List<TouchPoint> touchPoints = GeoJsonKt.toTouchPoints(coordinates);
        ArrayList arrayList = new ArrayList();
        arrayList.add(touchPoints.get(0));
        arrayList.add(touchPoints.get(2));
        arrayList.add(touchPoints.get(4));
        arrayList.add(touchPoints.get(6));
        arrayList.add(touchPoints.get(8));
        return arrayList;
    }

    @Override // com.onyx.android.sdk.genericshape.Polygon, com.onyx.android.sdk.genericshape.Geometry
    public void setType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.type = str;
    }

    @Override // com.onyx.android.sdk.genericshape.Polygon, com.onyx.android.sdk.genericshape.IGeometry
    public void updateBySelectionPoints(@NotNull List<TouchPoint> selectionPoints) {
        List<TouchPoint> take;
        Intrinsics.checkNotNullParameter(selectionPoints, "selectionPoints");
        take = CollectionsKt___CollectionsKt.take(selectionPoints, 5);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int size = take.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            int i3 = i2 >= take.size() ? 0 : i2;
            TouchPoint touchPoint = take.get(i);
            TouchPoint touchPoint2 = take.get(i3);
            TouchPoint innerPoint = getInnerPoint(GeometryUtils.INSTANCE.gravityCenter(take), touchPoint, touchPoint2);
            arrayList.add(touchPoint);
            arrayList.add(innerPoint);
            arrayList2.add(new float[][]{GeoJsonKt.toFloatArray(touchPoint), GeoJsonKt.toFloatArray(innerPoint)});
            arrayList2.add(new float[][]{GeoJsonKt.toFloatArray(innerPoint), GeoJsonKt.toFloatArray(touchPoint2)});
            i = i2;
        }
        setCoordinates((float[][][]) arrayList2.toArray(new float[0][]));
    }
}
