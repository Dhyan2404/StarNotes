package com.onyx.android.sdk.genericshape;

import android.graphics.RectF;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0018\u0010\u0010\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0018\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000fH\u0016R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/GeoLinearLayout;", "Lcom/onyx/android/sdk/genericshape/GeoLayoutGroup;", "params", "Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;", GeoConstant.KEY_Geometrys, "", "Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;", "(Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;Ljava/util/List;)V", "startX", "", "startY", "layoutHorizontal", "", "geoLayoutChildParams", "viewport", "Landroid/graphics/RectF;", "layoutVertical", "onLayout", "parent", "Lcom/onyx/android/sdk/genericshape/GeoLayoutParent;", "layoutRect", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGeoLinearLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoLinearLayout.kt\ncom/onyx/android/sdk/genericshape/GeoLinearLayout\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,59:1\n1855#2,2:60\n*S KotlinDebug\n*F\n+ 1 GeoLinearLayout.kt\ncom/onyx/android/sdk/genericshape/GeoLinearLayout\n*L\n23#1:60,2\n*E\n"})
/* loaded from: classes7.dex */
public final class GeoLinearLayout extends GeoLayoutGroup {
    private float startX;
    private float startY;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GeoLinearLayout(@NotNull GeoLayoutGroupParams params, @NotNull List<GeoLayoutChildParams> geometries) {
        super(params, geometries);
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(geometries, "geometries");
    }

    private final void layoutHorizontal(GeoLayoutChildParams geoLayoutChildParams, RectF viewport) {
        Properties properties;
        Properties properties2;
        PageMargins pageMargins = null;
        if (geoLayoutChildParams.getWidthPercent() == 0.0f) {
            GeoLayout geoLayout = geoLayoutChildParams.getGeoLayout();
            if (geoLayout != null && (properties2 = geoLayout.getProperties()) != null) {
                pageMargins = properties2.getPageMargins();
            }
            if (pageMargins == null) {
                return;
            }
            pageMargins.setLayoutRect(RectFKt.copy(viewport));
            return;
        }
        float widthPercent = geoLayoutChildParams.getWidthPercent() * viewport.width();
        GeoLayout geoLayout2 = geoLayoutChildParams.getGeoLayout();
        if (geoLayout2 != null && (properties = geoLayout2.getProperties()) != null) {
            pageMargins = properties.getPageMargins();
        }
        if (pageMargins != null) {
            float f = this.startX;
            pageMargins.setLayoutRect(new RectF(f, viewport.top, f + widthPercent, viewport.bottom));
        }
        this.startX += widthPercent;
    }

    private final void layoutVertical(GeoLayoutChildParams geoLayoutChildParams, RectF viewport) {
        Properties properties;
        Properties properties2;
        PageMargins pageMargins = null;
        if (geoLayoutChildParams.getHeightPercent() == 0.0f) {
            GeoLayout geoLayout = geoLayoutChildParams.getGeoLayout();
            if (geoLayout != null && (properties2 = geoLayout.getProperties()) != null) {
                pageMargins = properties2.getPageMargins();
            }
            if (pageMargins == null) {
                return;
            }
            pageMargins.setLayoutRect(RectFKt.copy(viewport));
            return;
        }
        float heightPercent = geoLayoutChildParams.getHeightPercent() * viewport.height();
        GeoLayout geoLayout2 = geoLayoutChildParams.getGeoLayout();
        if (geoLayout2 != null && (properties = geoLayout2.getProperties()) != null) {
            pageMargins = properties.getPageMargins();
        }
        if (pageMargins != null) {
            float f = viewport.left;
            float f2 = this.startY;
            pageMargins.setLayoutRect(new RectF(f, f2, viewport.right, f2 + heightPercent));
        }
        this.startY += heightPercent;
    }

    @Override // com.onyx.android.sdk.genericshape.GeoLayoutGroup
    public void onLayout(@NotNull GeoLayoutParent parent, @NotNull RectF layoutRect) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(layoutRect, "layoutRect");
        super.onLayout(parent, layoutRect);
        this.startX = layoutRect.left;
        this.startY = layoutRect.top;
        for (GeoLayoutChildParams geoLayoutChildParams : getGeometries()) {
            if (getParams().getOrientation() == GeoLayoutGroupOrientation.VERTICAL) {
                layoutVertical(geoLayoutChildParams, layoutRect);
            } else {
                layoutHorizontal(geoLayoutChildParams, layoutRect);
            }
        }
    }
}
