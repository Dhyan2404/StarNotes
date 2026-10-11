package com.onyx.android.sdk.genericshape;

import android.graphics.Path;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.genericshape.erase.EraseBean;
import com.onyx.android.sdk.genericshape.erase.SplitShapeResult;
import com.onyx.android.sdk.genericshape.erase.UniversalShapeSplitterKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000b\u001a\u00020\fH\u0016J\u000e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0016J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0016\u0010\u0014\u001a\u00020\u00152\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/Arc;", "Lcom/onyx/android/sdk/genericshape/Feature;", "multiPoint", "Lcom/onyx/android/sdk/genericshape/MultiPoint;", "(Lcom/onyx/android/sdk/genericshape/MultiPoint;)V", GeoConstant.KEY_Geometry, "Lcom/onyx/android/sdk/genericshape/Geometry;", "getGeometry", "()Lcom/onyx/android/sdk/genericshape/Geometry;", "setGeometry", "(Lcom/onyx/android/sdk/genericshape/Geometry;)V", "loadRenderPath", "Landroid/graphics/Path;", "loadSelectionPoints", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "split", "Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;", "eraseBean", "Lcom/onyx/android/sdk/genericshape/erase/EraseBean;", "updateBySelectionPoints", "", "list", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class Arc extends Feature {

    @Nullable
    private Geometry geometry;

    @NotNull
    private final MultiPoint multiPoint;

    public Arc(@NotNull MultiPoint multiPoint) {
        Intrinsics.checkNotNullParameter(multiPoint, "multiPoint");
        this.multiPoint = multiPoint;
        this.geometry = multiPoint;
        getProperties().setSubType("Arc");
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
        if (coordinates == null || coordinates.length < 3) {
            return path;
        }
        float[] fArr = coordinates[0];
        float f = fArr[0];
        float f2 = fArr[1];
        float[] fArr2 = coordinates[1];
        float f3 = fArr2[0];
        float f4 = fArr2[1];
        float[] fArr3 = coordinates[2];
        path.addArc(f, f2, f3, f4, fArr3[0], fArr3[1]);
        return path;
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
        float[] fArr2 = coordinates[1];
        arrayList.add(new TouchPoint(fArr[0], fArr[1]));
        arrayList.add(new TouchPoint(fArr2[0], fArr[1]));
        arrayList.add(new TouchPoint(fArr2[0], fArr2[1]));
        arrayList.add(new TouchPoint(fArr[0], fArr2[1]));
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
        this.multiPoint.setCoordinates(new float[][]{new float[]{list.get(0).getX(), list.get(1).getY()}, new float[]{list.get(2).getX(), list.get(2).getY()}});
    }
}
