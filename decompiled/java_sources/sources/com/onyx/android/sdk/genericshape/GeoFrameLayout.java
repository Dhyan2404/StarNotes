package com.onyx.android.sdk.genericshape;

import android.graphics.RectF;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/GeoFrameLayout;", "Lcom/onyx/android/sdk/genericshape/GeoLayoutGroup;", "params", "Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;", GeoConstant.KEY_Geometrys, "", "Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;", "(Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;Ljava/util/List;)V", "onLayout", "", "parent", "Lcom/onyx/android/sdk/genericshape/GeoLayoutParent;", "layoutRect", "Landroid/graphics/RectF;", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGeoFrameLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoFrameLayout.kt\ncom/onyx/android/sdk/genericshape/GeoFrameLayout\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,22:1\n1855#2,2:23\n*S KotlinDebug\n*F\n+ 1 GeoFrameLayout.kt\ncom/onyx/android/sdk/genericshape/GeoFrameLayout\n*L\n18#1:23,2\n*E\n"})
/* loaded from: classes7.dex */
public final class GeoFrameLayout extends GeoLayoutGroup {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GeoFrameLayout(@NotNull GeoLayoutGroupParams params, @NotNull List<GeoLayoutChildParams> geometries) {
        super(params, geometries);
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(geometries, "geometries");
    }

    @Override // com.onyx.android.sdk.genericshape.GeoLayoutGroup
    public void onLayout(@NotNull GeoLayoutParent parent, @NotNull RectF layoutRect) {
        Properties properties;
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(layoutRect, "layoutRect");
        super.onLayout(parent, layoutRect);
        Iterator<T> it2 = getGeometries().iterator();
        while (it2.hasNext()) {
            GeoLayout geoLayout = ((GeoLayoutChildParams) it2.next()).getGeoLayout();
            PageMargins pageMargins = (geoLayout == null || (properties = geoLayout.getProperties()) == null) ? null : properties.getPageMargins();
            if (pageMargins != null) {
                pageMargins.setLayoutRect(RectFKt.copy(layoutRect));
            }
        }
    }
}
