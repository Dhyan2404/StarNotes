package com.onyx.android.sdk.genericshape;

import android.graphics.Path;
import com.onyx.android.sdk.base.data.TouchPoint;
import java.util.List;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\u000e\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018H\u0016J\u0016\u0010\u001a\u001a\u00020\u001b2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018H\u0016RB\u0010\u0003\u001a(\u0012\u001c\u0012\u001a\u0012\u0012\u0012\u0010\u0012\b\u0012\u00060\u0005j\u0002`\u00060\u0004j\u0002`\u00070\u0004j\u0002`\b\u0018\u00010\u0004j\u0004\u0018\u0001`\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000e\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u000f\u001a\u00020\u0010X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/MultiPolygon;", "Lcom/onyx/android/sdk/genericshape/Geometry;", "()V", "coordinates", "", "", "Lcom/onyx/android/sdk/genericshape/Position;", "Lcom/onyx/android/sdk/genericshape/Line;", "Lcom/onyx/android/sdk/genericshape/Lines;", "Lcom/onyx/android/sdk/genericshape/Surface;", "getCoordinates", "()[[[[F", "setCoordinates", "([[[[F)V", "[[[[F", "type", "", "getType", "()Ljava/lang/String;", "setType", "(Ljava/lang/String;)V", "loadRenderPath", "Landroid/graphics/Path;", "loadSelectionPoints", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "updateBySelectionPoints", "", "list", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGeoJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/MultiPolygon\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1558:1\n13309#2,2:1559\n*S KotlinDebug\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/MultiPolygon\n*L\n1194#1:1559,2\n*E\n"})
/* loaded from: classes7.dex */
public final class MultiPolygon extends Geometry {

    @Nullable
    private float[][][][] coordinates;

    @NotNull
    private String type = GeoConstant.MultiPolygon;

    @Nullable
    public final float[][][][] getCoordinates() {
        return this.coordinates;
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry
    @NotNull
    public String getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public Path loadRenderPath() {
        Path path = new Path();
        float[][][][] fArr = this.coordinates;
        if (fArr != null) {
            for (float[][][] fArr2 : fArr) {
                Polygon polygon = new Polygon();
                polygon.setCoordinates(fArr2);
                path.addPath(polygon.loadRenderPath());
            }
        }
        return path;
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public List<TouchPoint> loadSelectionPoints() {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    public final void setCoordinates(@Nullable float[][][][] fArr) {
        this.coordinates = fArr;
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry
    public void setType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.type = str;
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    public void updateBySelectionPoints(@NotNull List<TouchPoint> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }
}
