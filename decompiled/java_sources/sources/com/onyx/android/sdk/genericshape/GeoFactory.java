package com.onyx.android.sdk.genericshape;

import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONObject;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.JSONWriter;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.data.utils.JSONUtils;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000f\u001a\u00020\u0005J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\u0005J\u001e\u0010\u0014\u001a\u0004\u0018\u00010\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\fR:\u0010\u0003\u001a.\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u00060\u0004j\u0016\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006`\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/GeoFactory;", "", "()V", "geoMap", "Ljava/util/HashMap;", "", "Lkotlin/reflect/KClass;", "Lcom/onyx/android/sdk/genericshape/Geometry;", "Lkotlin/collections/HashMap;", "parseFeature", "Lcom/onyx/android/sdk/genericshape/Feature;", "jsonObject", "Lcom/alibaba/fastjson2/JSONObject;", "parseFeatureCollection", "Lcom/onyx/android/sdk/genericshape/FeatureCollection;", "json", "parseGeoLayout", "Lcom/onyx/android/sdk/genericshape/GeoLayout;", "parseGeoLayoutMargin", "Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;", "parseGeometry", "geometryType", "parseGeometryCollection", "Lcom/onyx/android/sdk/genericshape/GeometryCollection;", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGeoFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoFactory.kt\ncom/onyx/android/sdk/genericshape/GeoFactory\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,109:1\n37#2,2:110\n37#2,2:113\n1#3:112\n*S KotlinDebug\n*F\n+ 1 GeoFactory.kt\ncom/onyx/android/sdk/genericshape/GeoFactory\n*L\n46#1:110,2\n106#1:113,2\n*E\n"})
/* loaded from: classes7.dex */
public final class GeoFactory {

    @NotNull
    public static final GeoFactory INSTANCE = new GeoFactory();

    @NotNull
    private static HashMap<String, KClass<? extends Geometry>> geoMap;

    static {
        HashMap<String, KClass<? extends Geometry>> hashMap = new HashMap<>();
        geoMap = hashMap;
        hashMap.put("Point", Reflection.getOrCreateKotlinClass(Point.class));
        geoMap.put(GeoConstant.MultiPoint, Reflection.getOrCreateKotlinClass(MultiPoint.class));
        geoMap.put(GeoConstant.LineString, Reflection.getOrCreateKotlinClass(LineString.class));
        geoMap.put(GeoConstant.MultiLineString, Reflection.getOrCreateKotlinClass(MultiLineString.class));
        geoMap.put("Polygon", Reflection.getOrCreateKotlinClass(Polygon.class));
        geoMap.put("Polyline", Reflection.getOrCreateKotlinClass(Polyline.class));
        geoMap.put(GeoConstant.MultiPolygon, Reflection.getOrCreateKotlinClass(MultiPolygon.class));
        geoMap.put("Parallelogram", Reflection.getOrCreateKotlinClass(Parallelogram.class));
        geoMap.put("Rhombus", Reflection.getOrCreateKotlinClass(Rhombus.class));
        geoMap.put("Trapezoid", Reflection.getOrCreateKotlinClass(Trapezoid.class));
        geoMap.put(GeoConstant.IsoscelesTrapezoid, Reflection.getOrCreateKotlinClass(IsoscelesTrapezoid.class));
        geoMap.put(GeoConstant.RightTrapezoid, Reflection.getOrCreateKotlinClass(RightTrapezoid.class));
        geoMap.put(GeoConstant.Star, Reflection.getOrCreateKotlinClass(Star.class));
        geoMap.put(GeoConstant.DirectionLine, Reflection.getOrCreateKotlinClass(DirectionLine.class));
        geoMap.put(GeoConstant.BidirectionalLine, Reflection.getOrCreateKotlinClass(BidirectionalLine.class));
    }

    private GeoFactory() {
    }

    public static /* synthetic */ Geometry parseGeometry$default(GeoFactory geoFactory, JSONObject jSONObject, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        return geoFactory.parseGeometry(jSONObject, str);
    }

    @NotNull
    public final Feature parseFeature(@NotNull JSONObject jsonObject) {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        Geometry parseGeometry$default = parseGeometry$default(this, jsonObject.getJSONObject(GeoConstant.KEY_Geometry), null, 2, null);
        Properties properties = (Properties) jsonObject.getObject(GeoConstant.KEY_Properties, Properties.class, new JSONReader.Feature[0]);
        String subType = properties.getSubType();
        Feature feature = new Feature();
        switch (subType.hashCode()) {
            case -2025855158:
                if (subType.equals(GeoConstant.Layout)) {
                    feature = new GeoLayout();
                    break;
                }
                break;
            case -1169699505:
                if (subType.equals("Rectangle")) {
                    Intrinsics.checkNotNull(parseGeometry$default, "null cannot be cast to non-null type com.onyx.android.sdk.genericshape.MultiPoint");
                    feature = new Rectangle((MultiPoint) parseGeometry$default);
                    break;
                }
                break;
            case -261854647:
                if (subType.equals(GeoConstant.BidirectionalCurvyArrow)) {
                    Intrinsics.checkNotNull(parseGeometry$default, "null cannot be cast to non-null type com.onyx.android.sdk.genericshape.MultiPoint");
                    feature = new BidirectionalCurvyArrow((MultiPoint) parseGeometry$default);
                    break;
                }
                break;
            case -188578675:
                if (subType.equals(GeoConstant.Surface)) {
                    Intrinsics.checkNotNull(parseGeometry$default, "null cannot be cast to non-null type com.onyx.android.sdk.genericshape.FeatureCollection");
                    feature = new SurfaceFeature((FeatureCollection) parseGeometry$default);
                    break;
                }
                break;
            case 0:
                if (subType.equals("")) {
                    feature.setGeometry(parseGeometry$default);
                    break;
                }
                break;
            case 66098:
                if (subType.equals("Arc")) {
                    Intrinsics.checkNotNull(parseGeometry$default, "null cannot be cast to non-null type com.onyx.android.sdk.genericshape.MultiPoint");
                    feature = new Arc((MultiPoint) parseGeometry$default);
                    break;
                }
                break;
            case 2470002:
                if (subType.equals(GeoConstant.Oval)) {
                    Intrinsics.checkNotNull(parseGeometry$default, "null cannot be cast to non-null type com.onyx.android.sdk.genericshape.MultiPoint");
                    feature = new Oval((MultiPoint) parseGeometry$default);
                    break;
                }
                break;
            case 65474767:
                if (subType.equals("Curve")) {
                    Intrinsics.checkNotNull(parseGeometry$default, "null cannot be cast to non-null type com.onyx.android.sdk.genericshape.MultiPoint");
                    feature = new Curve((MultiPoint) parseGeometry$default, false, false, 6, null);
                    break;
                }
                break;
            case 668071597:
                if (subType.equals(GeoConstant.WaveLine)) {
                    Intrinsics.checkNotNull(parseGeometry$default, "null cannot be cast to non-null type com.onyx.android.sdk.genericshape.LineString");
                    feature = new WaveLine((LineString) parseGeometry$default);
                    break;
                }
                break;
            case 690522342:
                if (subType.equals(GeoConstant.CurvyArrow)) {
                    Intrinsics.checkNotNull(parseGeometry$default, "null cannot be cast to non-null type com.onyx.android.sdk.genericshape.MultiPoint");
                    feature = new CurvyArrow((MultiPoint) parseGeometry$default);
                    break;
                }
                break;
            case 1802060936:
                if (subType.equals(GeoConstant.Bracket)) {
                    Intrinsics.checkNotNull(parseGeometry$default, "null cannot be cast to non-null type com.onyx.android.sdk.genericshape.MultiPoint");
                    feature = new Bracket((MultiPoint) parseGeometry$default);
                    break;
                }
                break;
            case 2018617584:
                if (subType.equals("Circle")) {
                    Intrinsics.checkNotNull(parseGeometry$default, "null cannot be cast to non-null type com.onyx.android.sdk.genericshape.MultiPoint");
                    feature = new Circle((MultiPoint) parseGeometry$default);
                    break;
                }
                break;
        }
        Intrinsics.checkNotNull(properties);
        feature.setProperties(properties);
        feature.setId(jsonObject.getString("id"));
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        feature.setUniversalShapeType(jSONUtils.getString(jsonObject, GeoConstant.KEY_Universal_Shape_Type, ""));
        feature.setVersion(jSONUtils.getInteger(jsonObject, "version", 1));
        return feature;
    }

    @NotNull
    public final FeatureCollection parseFeatureCollection(@NotNull String json) {
        Intrinsics.checkNotNullParameter(json, "json");
        JSONObject parseObject = JSON.parseObject(json);
        Intrinsics.checkNotNull(parseObject);
        return parseFeatureCollection(parseObject);
    }

    @Nullable
    public final GeoLayout parseGeoLayout(@NotNull String json) {
        Intrinsics.checkNotNullParameter(json, "json");
        return (GeoLayout) JSONObject.parseObject(json, GeoLayout.class);
    }

    @NotNull
    public final GeoLayoutMargin parseGeoLayoutMargin(@NotNull String json) {
        Intrinsics.checkNotNullParameter(json, "json");
        Object parseObject = JSONObject.parseObject(json, GeoLayoutMargin.class);
        Intrinsics.checkNotNullExpressionValue(parseObject, "parseObject(...)");
        return (GeoLayoutMargin) parseObject;
    }

    @Nullable
    public final Geometry parseGeometry(@Nullable final JSONObject jsonObject, @Nullable String geometryType) {
        if (jsonObject == null) {
            return null;
        }
        String str = (String) AnyKt.getOrElse(geometryType, new Function0<String>() { // from class: com.onyx.android.sdk.genericshape.GeoFactory$parseGeometry$type$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return JSONObject.this.getString("type");
            }
        });
        jsonObject.put("type", str);
        if (str.equals(GeoConstant.GeometryCollection)) {
            return parseGeometryCollection(jsonObject);
        }
        if (str.equals(GeoConstant.FeatureCollection)) {
            return parseFeatureCollection(jsonObject);
        }
        String jSONString = jsonObject.toJSONString(new JSONWriter.Feature[0]);
        KClass<? extends Geometry> kClass = geoMap.get(str);
        return (Geometry) JSON.parseObject(jSONString, kClass != null ? JvmClassMappingKt.getJavaClass((KClass) kClass) : null);
    }

    @NotNull
    public final GeometryCollection parseGeometryCollection(@NotNull JSONObject jsonObject) {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        JSONArray jSONArray = jsonObject.getJSONArray(GeoConstant.KEY_Geometrys);
        int size = jSONArray.size();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < size; i++) {
            Geometry parseGeometry$default = parseGeometry$default(this, jSONArray.getJSONObject(i), null, 2, null);
            if (parseGeometry$default != null) {
                arrayList.add(parseGeometry$default);
            }
        }
        return new GeometryCollection((Geometry[]) arrayList.toArray(new Geometry[0]));
    }

    @NotNull
    public final FeatureCollection parseFeatureCollection(@NotNull JSONObject jsonObject) {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        JSONArray jSONArray = jsonObject.getJSONArray(GeoConstant.KEY_Features);
        int size = jSONArray.size();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < size; i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            Intrinsics.checkNotNullExpressionValue(jSONObject, "getJSONObject(...)");
            arrayList.add(parseFeature(jSONObject));
        }
        Properties properties = (Properties) jsonObject.getObject(GeoConstant.KEY_Properties, Properties.class, new JSONReader.Feature[0]);
        FeatureCollection featureCollection = new FeatureCollection((Feature[]) arrayList.toArray(new Feature[0]));
        Intrinsics.checkNotNull(properties);
        featureCollection.setProperties(properties);
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        featureCollection.setUniversalShapeType(jSONUtils.getString(jsonObject, GeoConstant.KEY_Universal_Shape_Type, ""));
        featureCollection.setVersion(jSONUtils.getInteger(jsonObject, "version", 1));
        return featureCollection;
    }
}
