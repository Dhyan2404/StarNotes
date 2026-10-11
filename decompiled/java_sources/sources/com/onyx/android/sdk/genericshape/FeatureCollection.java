package com.onyx.android.sdk.genericshape;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.onyx.android.sdk.genericshape.erase.EraseBean;
import com.onyx.android.sdk.genericshape.erase.SplitShapeResult;
import com.onyx.android.sdk.genericshape.erase.UniversalShapeSplitterKt;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 D2\u00020\u0001:\u0001DB\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0019H\u0016J\u0010\u0010!\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0019H\u0016J\u0010\u0010\"\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020$H\u0016J\u001a\u0010%\u001a\u00020\u001f2\u0006\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)H\u0016J\u0010\u0010%\u001a\u00020\u001f2\u0006\u0010*\u001a\u00020+H\u0016J\u0010\u0010,\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020.H\u0016J\b\u0010/\u001a\u000200H\u0016J\b\u00101\u001a\u00020.H\u0016J\u0006\u00102\u001a\u00020.J\b\u00103\u001a\u000204H\u0016J\u000e\u00105\u001a\b\u0012\u0004\u0012\u00020706H\u0016J\u0018\u00108\u001a\u00020\u001f2\u0006\u00109\u001a\u00020$2\u0006\u0010:\u001a\u00020$H\u0016J\u000e\u0010;\u001a\u00020\u001f2\u0006\u0010<\u001a\u00020.J\u0010\u0010=\u001a\u00020\u001f2\u0006\u0010\u000f\u001a\u00020\u0019H\u0016J\u0010\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020AH\u0016J\u0016\u0010B\u001a\u00020\u001f2\f\u0010C\u001a\b\u0012\u0004\u0012\u00020706H\u0016R\u0019\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0014R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006E"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/FeatureCollection;", "Lcom/onyx/android/sdk/genericshape/Geometry;", GeoConstant.KEY_Features, "", "Lcom/onyx/android/sdk/genericshape/Feature;", "([Lcom/onyx/android/sdk/genericshape/Feature;)V", "getFeatures", "()[Lcom/onyx/android/sdk/genericshape/Feature;", "[Lcom/onyx/android/sdk/genericshape/Feature;", GeoConstant.KEY_Properties, "Lcom/onyx/android/sdk/genericshape/Properties;", "getProperties", "()Lcom/onyx/android/sdk/genericshape/Properties;", "setProperties", "(Lcom/onyx/android/sdk/genericshape/Properties;)V", "type", "", "getType", "()Ljava/lang/String;", "setType", "(Ljava/lang/String;)V", GeoConstant.KEY_Universal_Shape_Type, "getUniversalShapeType", "setUniversalShapeType", "version", "", "getVersion", "()I", "setVersion", "(I)V", "applyFillColor", "", "color", "applyStrokeColor", "applyStrokeWidth", "width", "", "draw", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Canvas;", "matrix", "Landroid/graphics/Matrix;", "renderContext", "Lcom/onyx/android/sdk/genericshape/GeoRenderContext;", "enableFillColor", "enable", "", "getBoundingRect", "Landroid/graphics/RectF;", "isEnableFillColor", "isFillColorSupported", "loadRenderPath", "Landroid/graphics/Path;", "loadSelectionPoints", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "scaleSelectionPoints", "scaleX", "scaleY", "setFillColorSupported", "supported", "setFromShapeType", "split", "Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;", "eraseBean", "Lcom/onyx/android/sdk/genericshape/erase/EraseBean;", "updateBySelectionPoints", "list", "Companion", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGeoJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/FeatureCollection\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1558:1\n13309#2:1559\n13310#2:1561\n13309#2,2:1562\n13309#2,2:1564\n13309#2,2:1566\n13309#2,2:1568\n13309#2,2:1570\n13309#2,2:1572\n13309#2,2:1574\n13309#2,2:1576\n13309#2,2:1578\n12474#2,2:1580\n13309#2,2:1582\n13309#2,2:1584\n1#3:1560\n*S KotlinDebug\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/FeatureCollection\n*L\n1240#1:1559\n1240#1:1561\n1248#1:1562,2\n1255#1:1564,2\n1265#1:1566,2\n1270#1:1568,2\n1277#1:1570,2\n1283#1:1572,2\n1289#1:1574,2\n1295#1:1576,2\n1301#1:1578,2\n1307#1:1580,2\n1311#1:1582,2\n1321#1:1584,2\n*E\n"})
/* loaded from: classes7.dex */
public final class FeatureCollection extends Geometry {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private final Feature[] features;

    @NotNull
    private Properties properties;

    @NotNull
    private String type;

    @NotNull
    private String universalShapeType;
    private int version;

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\u0003\u001a\u0004\u0018\u00010\u0004*\u00020\u0005¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/FeatureCollection$Companion;", "", "()V", "getFeatureType", "", "Lcom/onyx/android/sdk/genericshape/FeatureCollection;", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nGeoJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/FeatureCollection$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1558:1\n1#2:1559\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:10:0x002b. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0070  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0073  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0075  */
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.String getFeatureType(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.genericshape.FeatureCollection r5) {
            /*
                r4 = this;
                java.lang.String r4 = "<this>"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r4)
                com.onyx.android.sdk.genericshape.Feature[] r4 = r5.getFeatures()
                int r4 = r4.length
                r0 = 0
                r1 = 1
                if (r4 == r1) goto Lf
                return r0
            Lf:
                com.onyx.android.sdk.genericshape.Feature[] r4 = r5.getFeatures()
                java.lang.Object r4 = kotlin.collections.ArraysKt.first(r4)
                com.onyx.android.sdk.genericshape.Feature r4 = (com.onyx.android.sdk.genericshape.Feature) r4
                com.onyx.android.sdk.genericshape.Geometry r5 = r4.getGeometry()
                if (r5 == 0) goto L24
                java.lang.String r2 = r5.getType()
                goto L25
            L24:
                r2 = r0
            L25:
                if (r2 == 0) goto L76
                int r3 = r2.hashCode()
                switch(r3) {
                    case -1065891849: goto L58;
                    case 743420748: goto L41;
                    case 1267133722: goto L38;
                    case 1806700869: goto L2f;
                    default: goto L2e;
                }
            L2e:
                goto L76
            L2f:
                java.lang.String r5 = "LineString"
                boolean r5 = r2.equals(r5)
                if (r5 != 0) goto L61
                goto L76
            L38:
                java.lang.String r4 = "Polygon"
                boolean r4 = r2.equals(r4)
                if (r4 != 0) goto L4a
                goto L76
            L41:
                java.lang.String r4 = "RightTrapezoid"
                boolean r4 = r2.equals(r4)
                if (r4 != 0) goto L4a
                goto L76
            L4a:
                com.onyx.android.sdk.genericshape.Polygon$Companion r4 = com.onyx.android.sdk.genericshape.Polygon.INSTANCE
                java.lang.String r0 = "null cannot be cast to non-null type com.onyx.android.sdk.genericshape.Polygon"
                kotlin.jvm.internal.Intrinsics.checkNotNull(r5, r0)
                com.onyx.android.sdk.genericshape.Polygon r5 = (com.onyx.android.sdk.genericshape.Polygon) r5
                java.lang.String r0 = r4.getFeatureType(r5)
                goto L76
            L58:
                java.lang.String r5 = "MultiPoint"
                boolean r5 = r2.equals(r5)
                if (r5 != 0) goto L61
                goto L76
            L61:
                com.onyx.android.sdk.genericshape.Properties r4 = r4.getProperties()
                java.lang.String r4 = r4.getSubType()
                int r5 = r4.length()
                if (r5 != 0) goto L70
                goto L71
            L70:
                r1 = 0
            L71:
                if (r1 == 0) goto L75
                r0 = r2
                goto L76
            L75:
                r0 = r4
            L76:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.genericshape.FeatureCollection.Companion.getFeatureType(com.onyx.android.sdk.genericshape.FeatureCollection):java.lang.String");
        }

        private Companion() {
        }
    }

    public FeatureCollection(@NotNull Feature[] features) {
        Intrinsics.checkNotNullParameter(features, "features");
        this.features = features;
        this.properties = new Properties();
        this.type = GeoConstant.FeatureCollection;
        this.universalShapeType = "";
        this.version = 1;
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    public void applyFillColor(int color) {
        for (Feature feature : this.features) {
            feature.applyFillColor(color);
        }
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    public void applyStrokeColor(int color) {
        for (Feature feature : this.features) {
            feature.applyStrokeColor(color);
        }
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    public void applyStrokeWidth(float width) {
        for (Feature feature : this.features) {
            feature.applyStrokeWidth(width);
        }
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    public void draw(@NotNull Canvas canvas, @Nullable Matrix matrix) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        for (Feature feature : this.features) {
            feature.draw(canvas, matrix);
        }
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    public void enableFillColor(boolean enable) {
        for (Feature feature : this.features) {
            feature.enableFillColor(enable);
        }
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public RectF getBoundingRect() {
        ArrayList arrayList = new ArrayList();
        for (Feature feature : this.features) {
            arrayList.add(feature.getBoundingRect());
        }
        return RectUtils.INSTANCE.boundingRect(arrayList);
    }

    @NotNull
    public final Feature[] getFeatures() {
        return this.features;
    }

    @NotNull
    public final Properties getProperties() {
        return this.properties;
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry
    @NotNull
    public String getType() {
        return this.type;
    }

    @NotNull
    public final String getUniversalShapeType() {
        return this.universalShapeType;
    }

    public final int getVersion() {
        return this.version;
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    public boolean isEnableFillColor() {
        Feature feature;
        Feature[] featureArr = this.features;
        int length = featureArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                feature = null;
                break;
            }
            feature = featureArr[i];
            if (feature.isEnableFillColor()) {
                break;
            }
            i++;
        }
        return feature != null;
    }

    public final boolean isFillColorSupported() {
        for (Feature feature : this.features) {
            if (feature.isFillColorSupported()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public Path loadRenderPath() {
        Path loadRenderPath;
        Path path = new Path();
        for (Feature feature : this.features) {
            Geometry geometry = feature.getGeometry();
            if (geometry != null && (loadRenderPath = geometry.loadRenderPath()) != null) {
                path.addPath(loadRenderPath);
            }
        }
        return path;
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public List<TouchPoint> loadSelectionPoints() {
        ArrayList arrayList = new ArrayList();
        for (Feature feature : this.features) {
            arrayList.addAll(feature.loadSelectionPoints());
        }
        return arrayList;
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    public void scaleSelectionPoints(float scaleX, float scaleY) {
        for (Feature feature : this.features) {
            feature.scaleSelectionPoints(scaleX, scaleY);
        }
    }

    public final void setFillColorSupported(boolean supported) {
        for (Feature feature : this.features) {
            feature.setFillColorSupported(supported);
        }
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry
    public void setFromShapeType(int type) {
        for (Feature feature : this.features) {
            feature.setFromShapeType(type);
        }
    }

    public final void setProperties(@NotNull Properties properties) {
        Intrinsics.checkNotNullParameter(properties, "<set-?>");
        this.properties = properties;
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry
    public void setType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.type = str;
    }

    public final void setUniversalShapeType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.universalShapeType = str;
    }

    public final void setVersion(int i) {
        this.version = i;
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public SplitShapeResult split(@NotNull EraseBean eraseBean) {
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        return UniversalShapeSplitterKt.splitShape(this, eraseBean);
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    public void updateBySelectionPoints(@NotNull List<TouchPoint> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    public void draw(@NotNull GeoRenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        for (Feature feature : this.features) {
            feature.draw(renderContext);
        }
    }
}
