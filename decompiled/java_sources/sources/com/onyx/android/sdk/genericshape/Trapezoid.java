package com.onyx.android.sdk.genericshape;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0016J\u0016\u0010\f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/Trapezoid;", "Lcom/onyx/android/sdk/genericshape/Polygon;", "()V", "type", "", "getType", "()Ljava/lang/String;", "setType", "(Ljava/lang/String;)V", "loadSelectionPoints", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "updateBySelectionPoints", "", "selectionPoints", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGeoJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/Trapezoid\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1558:1\n13309#2,2:1559\n1855#3,2:1561\n37#4,2:1563\n*S KotlinDebug\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/Trapezoid\n*L\n1399#1:1559,2\n1402#1:1561,2\n1417#1:1563,2\n*E\n"})
/* loaded from: classes7.dex */
public class Trapezoid extends Polygon {

    @NotNull
    private String type = "Trapezoid";

    @Override // com.onyx.android.sdk.genericshape.Polygon, com.onyx.android.sdk.genericshape.Geometry
    @NotNull
    public String getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.genericshape.Polygon, com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public List<TouchPoint> loadSelectionPoints() {
        List<TouchPoint> emptyList;
        float[][][] coordinates = getCoordinates();
        if (coordinates == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        ArrayList arrayList = new ArrayList();
        for (float[][] fArr : coordinates) {
            float[] fArr2 = fArr[0];
            arrayList.add(new TouchPoint(fArr2[0], fArr2[1]));
        }
        Iterator it2 = GeometryUtils.findAllSides$default(GeometryUtils.INSTANCE, arrayList, false, 1, null).iterator();
        while (it2.hasNext()) {
            arrayList.add(((TouchPointPair) it2.next()).center());
        }
        return arrayList;
    }

    @Override // com.onyx.android.sdk.genericshape.Polygon, com.onyx.android.sdk.genericshape.Geometry
    public void setType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.type = str;
    }

    @Override // com.onyx.android.sdk.genericshape.Polygon, com.onyx.android.sdk.genericshape.IGeometry
    public void updateBySelectionPoints(@NotNull List<TouchPoint> selectionPoints) {
        List take;
        Intrinsics.checkNotNullParameter(selectionPoints, "selectionPoints");
        take = CollectionsKt___CollectionsKt.take(selectionPoints, 4);
        ArrayList arrayList = new ArrayList();
        int size = take.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            int i3 = i2 >= size ? 0 : i2;
            arrayList.add(new float[][]{new float[]{((TouchPoint) take.get(i)).getX(), ((TouchPoint) take.get(i)).getY()}, new float[]{((TouchPoint) take.get(i3)).getX(), ((TouchPoint) take.get(i3)).getY()}});
            i = i2;
        }
        setCoordinates((float[][][]) arrayList.toArray(new float[0][]));
    }
}
