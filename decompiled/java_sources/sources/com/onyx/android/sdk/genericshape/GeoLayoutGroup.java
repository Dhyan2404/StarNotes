package com.onyx.android.sdk.genericshape;

import android.graphics.RectF;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u000fH\u0016J\u0010\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u001bH\u0002R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/GeoLayoutGroup;", "", "params", "Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;", GeoConstant.KEY_Geometrys, "", "Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;", "(Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;Ljava/util/List;)V", "getGeometries", "()Ljava/util/List;", "getParams", "()Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;", "parent", "Lcom/onyx/android/sdk/genericshape/GeoLayoutParent;", "onDraw", "", "drawContext", "Lcom/onyx/android/sdk/genericshape/DrawContext;", "onLayout", "layoutRect", "Landroid/graphics/RectF;", "prepareLayout", "setSpace", "space", "", "updateLayoutOriginAlignment", "geoLayout", "Lcom/onyx/android/sdk/genericshape/GeoLayout;", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGeoLayoutGroup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoLayoutGroup.kt\ncom/onyx/android/sdk/genericshape/GeoLayoutGroup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,97:1\n1855#2,2:98\n*S KotlinDebug\n*F\n+ 1 GeoLayoutGroup.kt\ncom/onyx/android/sdk/genericshape/GeoLayoutGroup\n*L\n31#1:98,2\n*E\n"})
/* loaded from: classes7.dex */
public abstract class GeoLayoutGroup {

    @NotNull
    private final List<GeoLayoutChildParams> geometries;

    @NotNull
    private final GeoLayoutGroupParams params;

    @Nullable
    private GeoLayoutParent parent;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DrawOrigin.values().length];
            try {
                iArr[DrawOrigin.LEFT_TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DrawOrigin.RIGHT_TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DrawOrigin.RIGHT_BOTTOM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DrawOrigin.LEFT_BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public GeoLayoutGroup(@NotNull GeoLayoutGroupParams params, @NotNull List<GeoLayoutChildParams> geometries) {
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(geometries, "geometries");
        this.params = params;
        this.geometries = geometries;
    }

    private final void updateLayoutOriginAlignment(GeoLayout geoLayout) {
        Map<String, RectF> layoutMap;
        RectF rectF;
        GeoLayoutParent geoLayoutParent = this.parent;
        if (geoLayoutParent == null || (layoutMap = geoLayoutParent.getLayoutMap()) == null || (rectF = layoutMap.get(this.params.getAlignLocation())) == null) {
            return;
        }
        Properties properties = geoLayout.getProperties();
        AlignmentAttr alignmentAttr = new AlignmentAttr();
        int i = WhenMappings.$EnumSwitchMapping$0[this.params.getAlignLocationOrigin().ordinal()];
        if (i == 1) {
            alignmentAttr.setAlignOriginX(rectF.left);
            alignmentAttr.setAlignOriginY(rectF.top);
        } else if (i == 2) {
            alignmentAttr.setAlignOriginX(rectF.right);
            alignmentAttr.setAlignOriginY(rectF.top);
        } else if (i == 3) {
            alignmentAttr.setAlignOriginX(rectF.right);
            alignmentAttr.setAlignOriginY(rectF.bottom);
        } else if (i == 4) {
            alignmentAttr.setAlignOriginX(rectF.left);
            alignmentAttr.setAlignOriginY(rectF.bottom);
        }
        properties.setAlignmentAttr(alignmentAttr);
    }

    @NotNull
    public final List<GeoLayoutChildParams> getGeometries() {
        return this.geometries;
    }

    @NotNull
    public final GeoLayoutGroupParams getParams() {
        return this.params;
    }

    public void onDraw(@NotNull DrawContext drawContext) {
        Intrinsics.checkNotNullParameter(drawContext, "drawContext");
        Iterator<GeoLayoutChildParams> it2 = this.geometries.iterator();
        while (it2.hasNext()) {
            GeoLayout geoLayout = it2.next().getGeoLayout();
            if (geoLayout != null) {
                updateLayoutOriginAlignment(geoLayout);
                geoLayout.draw(drawContext);
            }
        }
    }

    public void onLayout(@NotNull GeoLayoutParent parent, @NotNull RectF layoutRect) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(layoutRect, "layoutRect");
        this.parent = parent;
    }

    public void prepareLayout() {
    }

    public void setSpace(float space) {
        Properties properties;
        Iterator<T> it2 = this.geometries.iterator();
        while (it2.hasNext()) {
            GeoLayout geoLayout = ((GeoLayoutChildParams) it2.next()).getGeoLayout();
            PageMargins pageMargins = (geoLayout == null || (properties = geoLayout.getProperties()) == null) ? null : properties.getPageMargins();
            if (pageMargins != null) {
                pageMargins.setSpacing(space);
            }
        }
    }
}
