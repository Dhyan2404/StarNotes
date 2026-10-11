package com.onyx.android.sdk.genericshape;

import android.graphics.RectF;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.Serializable;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006J\u0015\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0003J\u001f\u0010\n\u001a\u00020\u00002\u0014\b\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0004HÖ\u0001R\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/GeoLayoutParent;", "Ljava/io/Serializable;", "layoutMap", "", "", "Landroid/graphics/RectF;", "(Ljava/util/Map;)V", "getLayoutMap", "()Ljava/util/Map;", "component1", "copy", "equals", "", Constants.ATTRVAL_OTHER, "", "hashCode", "", "toString", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class GeoLayoutParent implements Serializable {

    @NotNull
    private final Map<String, RectF> layoutMap;

    /* JADX WARN: Multi-variable type inference failed */
    public GeoLayoutParent(@NotNull Map<String, ? extends RectF> layoutMap) {
        Intrinsics.checkNotNullParameter(layoutMap, "layoutMap");
        this.layoutMap = layoutMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GeoLayoutParent copy$default(GeoLayoutParent geoLayoutParent, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            map = geoLayoutParent.layoutMap;
        }
        return geoLayoutParent.copy(map);
    }

    @NotNull
    public final Map<String, RectF> component1() {
        return this.layoutMap;
    }

    @NotNull
    public final GeoLayoutParent copy(@NotNull Map<String, ? extends RectF> layoutMap) {
        Intrinsics.checkNotNullParameter(layoutMap, "layoutMap");
        return new GeoLayoutParent(layoutMap);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof GeoLayoutParent) && Intrinsics.areEqual(this.layoutMap, ((GeoLayoutParent) other).layoutMap);
    }

    @NotNull
    public final Map<String, RectF> getLayoutMap() {
        return this.layoutMap;
    }

    public int hashCode() {
        return this.layoutMap.hashCode();
    }

    @NotNull
    public String toString() {
        return "GeoLayoutParent(layoutMap=" + this.layoutMap + ')';
    }
}
