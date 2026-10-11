package com.onyx.android.sdk.genericshape;

import android.graphics.Path;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.genericshape.erase.EraseBean;
import com.onyx.android.sdk.genericshape.erase.SplitShapeResult;
import com.onyx.android.sdk.genericshape.erase.UniversalShapeSplitterKt;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\u000e\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019H\u0016J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0016\u0010\u001f\u001a\u00020 2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019H\u0016R8\u0010\u0003\u001a\u001e\u0012\u0012\u0012\u0010\u0012\b\u0012\u00060\u0005j\u0002`\u00060\u0004j\u0002`\u0007\u0018\u00010\u0004j\u0004\u0018\u0001`\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u000e\u001a\u00020\u000fX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/Polyline;", "Lcom/onyx/android/sdk/genericshape/Geometry;", "()V", "coordinates", "", "", "Lcom/onyx/android/sdk/genericshape/Position;", "Lcom/onyx/android/sdk/genericshape/Line;", "Lcom/onyx/android/sdk/genericshape/Lines;", "getCoordinates", "()[[[F", "setCoordinates", "([[[F)V", "[[[F", "type", "", "getType", "()Ljava/lang/String;", "setType", "(Ljava/lang/String;)V", "isEnableFillColor", "", "loadRenderPath", "Landroid/graphics/Path;", "loadSelectionPoints", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "split", "Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;", "eraseBean", "Lcom/onyx/android/sdk/genericshape/erase/EraseBean;", "updateBySelectionPoints", "", PointConstant.POINT_FILE_END, "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGeoJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/Polyline\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1558:1\n13309#2,2:1559\n37#3,2:1561\n*S KotlinDebug\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/Polyline\n*L\n1160#1:1559,2\n1178#1:1561,2\n*E\n"})
/* loaded from: classes7.dex */
public final class Polyline extends Geometry {

    @Nullable
    private float[][][] coordinates;

    @NotNull
    private String type = "Polyline";

    @Nullable
    public final float[][][] getCoordinates() {
        return this.coordinates;
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry
    @NotNull
    public String getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    public boolean isEnableFillColor() {
        return false;
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public Path loadRenderPath() {
        Path path = new Path();
        float[][][] fArr = this.coordinates;
        if (fArr == null) {
            return path;
        }
        float[] fArr2 = fArr[0][0];
        path.moveTo(fArr2[0], fArr2[1]);
        int length = fArr.length;
        for (int i = 1; i < length; i++) {
            float[] fArr3 = fArr[i][0];
            path.lineTo(fArr3[0], fArr3[1]);
        }
        return path;
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public List<TouchPoint> loadSelectionPoints() {
        ArrayList arrayList = new ArrayList();
        float[][][] fArr = this.coordinates;
        if (fArr == null) {
            return arrayList;
        }
        for (float[][] fArr2 : fArr) {
            float[] fArr3 = fArr2[0];
            arrayList.add(new TouchPoint(fArr3[0], fArr3[1]));
        }
        return arrayList;
    }

    public final void setCoordinates(@Nullable float[][][] fArr) {
        this.coordinates = fArr;
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry
    public void setType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.type = str;
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public SplitShapeResult split(@NotNull EraseBean eraseBean) {
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        return UniversalShapeSplitterKt.splitShape(this, eraseBean);
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    public void updateBySelectionPoints(@NotNull List<TouchPoint> points) {
        Intrinsics.checkNotNullParameter(points, "points");
        ArrayList arrayList = new ArrayList();
        int size = points.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            int i3 = i2 == size ? 0 : i2;
            arrayList.add(new float[][]{new float[]{points.get(i).getX(), points.get(i).getY()}, new float[]{points.get(i3).getX(), points.get(i3).getY()}});
            i = i2;
        }
        this.coordinates = (float[][][]) arrayList.toArray(new float[0][]);
    }
}
