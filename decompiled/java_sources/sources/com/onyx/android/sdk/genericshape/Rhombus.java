package com.onyx.android.sdk.genericshape;

import com.onyx.android.sdk.base.data.TouchPoint;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/Rhombus;", "Lcom/onyx/android/sdk/genericshape/Parallelogram;", "()V", "type", "", "getType", "()Ljava/lang/String;", "setType", "(Ljava/lang/String;)V", "loadSelectionPoints", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGeoJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/Rhombus\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1558:1\n13309#2,2:1559\n*S KotlinDebug\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/Rhombus\n*L\n1385#1:1559,2\n*E\n"})
/* loaded from: classes7.dex */
public final class Rhombus extends Parallelogram {

    @NotNull
    private String type = "Rhombus";

    @Override // com.onyx.android.sdk.genericshape.Parallelogram, com.onyx.android.sdk.genericshape.Polygon, com.onyx.android.sdk.genericshape.Geometry
    @NotNull
    public String getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.genericshape.Parallelogram, com.onyx.android.sdk.genericshape.Polygon, com.onyx.android.sdk.genericshape.IGeometry
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
        return arrayList;
    }

    @Override // com.onyx.android.sdk.genericshape.Parallelogram, com.onyx.android.sdk.genericshape.Polygon, com.onyx.android.sdk.genericshape.Geometry
    public void setType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.type = str;
    }
}
