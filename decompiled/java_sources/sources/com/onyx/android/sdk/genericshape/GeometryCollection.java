package com.onyx.android.sdk.genericshape;

import android.graphics.Path;
import com.onyx.android.sdk.base.data.TouchPoint;
import java.util.List;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0016J\u0016\u0010\u0013\u001a\u00020\u00142\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0016R\u0019\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\b\u001a\u00020\tX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/GeometryCollection;", "Lcom/onyx/android/sdk/genericshape/Geometry;", GeoConstant.KEY_Geometrys, "", "([Lcom/onyx/android/sdk/genericshape/Geometry;)V", "getGeometries", "()[Lcom/onyx/android/sdk/genericshape/Geometry;", "[Lcom/onyx/android/sdk/genericshape/Geometry;", "type", "", "getType", "()Ljava/lang/String;", "setType", "(Ljava/lang/String;)V", "loadRenderPath", "Landroid/graphics/Path;", "loadSelectionPoints", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "updateBySelectionPoints", "", "list", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGeoJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/GeometryCollection\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1558:1\n13309#2,2:1559\n*S KotlinDebug\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/GeometryCollection\n*L\n1216#1:1559,2\n*E\n"})
/* loaded from: classes7.dex */
public final class GeometryCollection extends Geometry {

    @NotNull
    private final Geometry[] geometries;

    @NotNull
    private String type;

    public GeometryCollection(@NotNull Geometry[] geometries) {
        Intrinsics.checkNotNullParameter(geometries, "geometries");
        this.geometries = geometries;
        this.type = GeoConstant.GeometryCollection;
    }

    @NotNull
    public final Geometry[] getGeometries() {
        return this.geometries;
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
        for (Geometry geometry : this.geometries) {
            path.addPath(geometry.loadRenderPath());
        }
        path.close();
        return path;
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public List<TouchPoint> loadSelectionPoints() {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
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
