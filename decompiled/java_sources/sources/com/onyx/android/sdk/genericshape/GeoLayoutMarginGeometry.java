package com.onyx.android.sdk.genericshape;

import android.graphics.RectF;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.RectUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001e\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)J\b\u0010*\u001a\u00020\u0011H\u0002J\u0016\u0010+\u001a\u00020)2\u0006\u0010,\u001a\u00020)2\u0006\u0010-\u001a\u00020)J\b\u0010.\u001a\u00020\u0011H\u0002J\u000e\u0010/\u001a\u00020#2\u0006\u00100\u001a\u000201R \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR \u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0007\"\u0004\b\u001e\u0010\tR\u001a\u0010\u001f\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\r\"\u0004\b!\u0010\u000f¨\u00062"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginGeometry;", "Ljava/io/Serializable;", "()V", GeoConstant.KEY_Geometrys, "", "Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;", "getGeometries", "()Ljava/util/List;", "setGeometries", "(Ljava/util/List;)V", "id", "", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "layoutGroup", "Lcom/onyx/android/sdk/genericshape/GeoLayoutGroup;", "getLayoutGroup", "()Lcom/onyx/android/sdk/genericshape/GeoLayoutGroup;", "setLayoutGroup", "(Lcom/onyx/android/sdk/genericshape/GeoLayoutGroup;)V", "layoutParams", "Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;", "getLayoutParams", "()Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;", "setLayoutParams", "(Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;)V", "locations", "getLocations", "setLocations", "type", "getType", "setType", "draw", "", "drawContext", "Lcom/onyx/android/sdk/genericshape/DrawContext;", "parent", "Lcom/onyx/android/sdk/genericshape/GeoLayoutParent;", "layoutRect", "Landroid/graphics/RectF;", "ensureLayoutGroup", "getLocationRect", "contentRect", "viewport", "initLayoutGroup", "setSpace", "space", "", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGeoLayoutMargin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoLayoutMargin.kt\ncom/onyx/android/sdk/genericshape/GeoLayoutMarginGeometry\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,366:1\n1855#2,2:367\n*S KotlinDebug\n*F\n+ 1 GeoLayoutMargin.kt\ncom/onyx/android/sdk/genericshape/GeoLayoutMarginGeometry\n*L\n290#1:367,2\n*E\n"})
/* loaded from: classes7.dex */
public final class GeoLayoutMarginGeometry implements Serializable {

    @NotNull
    private List<GeoLayoutChildParams> geometries;

    @Nullable
    private transient GeoLayoutGroup layoutGroup;

    @NotNull
    private GeoLayoutGroupParams layoutParams;

    @NotNull
    private List<String> locations;

    @NotNull
    private String id = "";

    @NotNull
    private String type = GeoConstant.LayoutFrame;

    public GeoLayoutMarginGeometry() {
        List<String> emptyList;
        List<GeoLayoutChildParams> emptyList2;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.locations = emptyList;
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        this.geometries = emptyList2;
        this.layoutParams = new GeoLayoutGroupParams();
    }

    private final GeoLayoutGroup ensureLayoutGroup() {
        GeoLayoutGroup geoLayoutGroup = this.layoutGroup;
        return geoLayoutGroup == null ? initLayoutGroup() : geoLayoutGroup;
    }

    private final GeoLayoutGroup initLayoutGroup() {
        String str = this.type;
        GeoLayoutGroup geoLinearLayout = Intrinsics.areEqual(str, GeoConstant.LayoutLinear) ? new GeoLinearLayout(this.layoutParams, this.geometries) : Intrinsics.areEqual(str, GeoConstant.LayoutFrame) ? new GeoFrameLayout(this.layoutParams, this.geometries) : new GeoFrameLayout(this.layoutParams, this.geometries);
        geoLinearLayout.prepareLayout();
        this.layoutGroup = geoLinearLayout;
        return geoLinearLayout;
    }

    public final void draw(@NotNull DrawContext drawContext, @NotNull GeoLayoutParent parent, @NotNull RectF layoutRect) {
        Intrinsics.checkNotNullParameter(drawContext, "drawContext");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(layoutRect, "layoutRect");
        GeoLayoutGroup ensureLayoutGroup = ensureLayoutGroup();
        ensureLayoutGroup.onLayout(parent, layoutRect);
        ensureLayoutGroup.onDraw(drawContext);
    }

    @NotNull
    public final List<GeoLayoutChildParams> getGeometries() {
        return this.geometries;
    }

    @NotNull
    public final String getId() {
        return this.id;
    }

    @Nullable
    public final GeoLayoutGroup getLayoutGroup() {
        return this.layoutGroup;
    }

    @NotNull
    public final GeoLayoutGroupParams getLayoutParams() {
        return this.layoutParams;
    }

    @NotNull
    public final RectF getLocationRect(@NotNull RectF contentRect, @NotNull RectF viewport) {
        Intrinsics.checkNotNullParameter(contentRect, "contentRect");
        Intrinsics.checkNotNullParameter(viewport, "viewport");
        if (this.locations.isEmpty()) {
            return new RectF();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = this.locations.iterator();
        while (it2.hasNext()) {
            RectF buildRectForLocation = GeoLayoutMarginLocation.INSTANCE.buildRectForLocation((String) it2.next(), viewport, contentRect);
            if (!buildRectForLocation.isEmpty() && !RectKt.isNaN(buildRectForLocation)) {
                arrayList.add(buildRectForLocation);
            }
        }
        return RectUtils.INSTANCE.union(arrayList);
    }

    @NotNull
    public final List<String> getLocations() {
        return this.locations;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }

    public final void setGeometries(@NotNull List<GeoLayoutChildParams> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.geometries = list;
    }

    public final void setId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.id = str;
    }

    public final void setLayoutGroup(@Nullable GeoLayoutGroup geoLayoutGroup) {
        this.layoutGroup = geoLayoutGroup;
    }

    public final void setLayoutParams(@NotNull GeoLayoutGroupParams geoLayoutGroupParams) {
        Intrinsics.checkNotNullParameter(geoLayoutGroupParams, "<set-?>");
        this.layoutParams = geoLayoutGroupParams;
    }

    public final void setLocations(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.locations = list;
    }

    public final void setSpace(float space) {
        ensureLayoutGroup().setSpace(space);
    }

    public final void setType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.type = str;
    }
}
