.class public final Lcom/onyx/android/sdk/genericshape/GeoFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGeoFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoFactory.kt\ncom/onyx/android/sdk/genericshape/GeoFactory\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,109:1\n37#2,2:110\n37#2,2:113\n1#3:112\n*S KotlinDebug\n*F\n+ 1 GeoFactory.kt\ncom/onyx/android/sdk/genericshape/GeoFactory\n*L\n46#1:110,2\n106#1:113,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000f\u001a\u00020\u0005J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\u0005J\u001e\u0010\u0014\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\u000cR:\u0010\u0003\u001a.\u0012\u0004\u0012\u00020\u0005\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u00060\u0004j\u0016\u0012\u0004\u0012\u00020\u0005\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u0006`\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/GeoFactory;",
        "",
        "()V",
        "geoMap",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/reflect/KClass;",
        "Lcom/onyx/android/sdk/genericshape/Geometry;",
        "Lkotlin/collections/HashMap;",
        "parseFeature",
        "Lcom/onyx/android/sdk/genericshape/Feature;",
        "jsonObject",
        "Lcom/alibaba/fastjson2/JSONObject;",
        "parseFeatureCollection",
        "Lcom/onyx/android/sdk/genericshape/FeatureCollection;",
        "json",
        "parseGeoLayout",
        "Lcom/onyx/android/sdk/genericshape/GeoLayout;",
        "parseGeoLayoutMargin",
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;",
        "parseGeometry",
        "geometryType",
        "parseGeometryCollection",
        "Lcom/onyx/android/sdk/genericshape/GeometryCollection;",
        "sdk-genericshape_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGeoFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoFactory.kt\ncom/onyx/android/sdk/genericshape/GeoFactory\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,109:1\n37#2,2:110\n37#2,2:113\n1#3:112\n*S KotlinDebug\n*F\n+ 1 GeoFactory.kt\ncom/onyx/android/sdk/genericshape/GeoFactory\n*L\n46#1:110,2\n106#1:113,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/genericshape/GeoFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static geoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/onyx/android/sdk/genericshape/Geometry;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/genericshape/GeoFactory;

    invoke-direct {v0}, Lcom/onyx/android/sdk/genericshape/GeoFactory;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/genericshape/GeoFactory;->INSTANCE:Lcom/onyx/android/sdk/genericshape/GeoFactory;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/genericshape/GeoFactory;->geoMap:Ljava/util/HashMap;

    const-class v1, Lcom/onyx/android/sdk/genericshape/Point;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, "Point"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onyx/android/sdk/genericshape/GeoFactory;->geoMap:Ljava/util/HashMap;

    const-class v1, Lcom/onyx/android/sdk/genericshape/MultiPoint;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, "MultiPoint"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onyx/android/sdk/genericshape/GeoFactory;->geoMap:Ljava/util/HashMap;

    const-class v1, Lcom/onyx/android/sdk/genericshape/LineString;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, "LineString"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onyx/android/sdk/genericshape/GeoFactory;->geoMap:Ljava/util/HashMap;

    const-class v1, Lcom/onyx/android/sdk/genericshape/MultiLineString;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, "MultiLineString"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onyx/android/sdk/genericshape/GeoFactory;->geoMap:Ljava/util/HashMap;

    const-class v1, Lcom/onyx/android/sdk/genericshape/Polygon;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, "Polygon"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onyx/android/sdk/genericshape/GeoFactory;->geoMap:Ljava/util/HashMap;

    const-class v1, Lcom/onyx/android/sdk/genericshape/Polyline;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, "Polyline"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onyx/android/sdk/genericshape/GeoFactory;->geoMap:Ljava/util/HashMap;

    const-class v1, Lcom/onyx/android/sdk/genericshape/MultiPolygon;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, "MultiPolygon"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onyx/android/sdk/genericshape/GeoFactory;->geoMap:Ljava/util/HashMap;

    const-class v1, Lcom/onyx/android/sdk/genericshape/Parallelogram;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, "Parallelogram"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onyx/android/sdk/genericshape/GeoFactory;->geoMap:Ljava/util/HashMap;

    const-class v1, Lcom/onyx/android/sdk/genericshape/Rhombus;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, "Rhombus"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onyx/android/sdk/genericshape/GeoFactory;->geoMap:Ljava/util/HashMap;

    const-class v1, Lcom/onyx/android/sdk/genericshape/Trapezoid;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, "Trapezoid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onyx/android/sdk/genericshape/GeoFactory;->geoMap:Ljava/util/HashMap;

    const-class v1, Lcom/onyx/android/sdk/genericshape/IsoscelesTrapezoid;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, "IsoscelesTrapezoid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onyx/android/sdk/genericshape/GeoFactory;->geoMap:Ljava/util/HashMap;

    const-class v1, Lcom/onyx/android/sdk/genericshape/RightTrapezoid;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, "RightTrapezoid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onyx/android/sdk/genericshape/GeoFactory;->geoMap:Ljava/util/HashMap;

    const-class v1, Lcom/onyx/android/sdk/genericshape/Star;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, "Star"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onyx/android/sdk/genericshape/GeoFactory;->geoMap:Ljava/util/HashMap;

    const-class v1, Lcom/onyx/android/sdk/genericshape/DirectionLine;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, "DirectionLine"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onyx/android/sdk/genericshape/GeoFactory;->geoMap:Ljava/util/HashMap;

    const-class v1, Lcom/onyx/android/sdk/genericshape/BidirectionalLine;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, "BidirectionalLine"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic parseGeometry$default(Lcom/onyx/android/sdk/genericshape/GeoFactory;Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/genericshape/Geometry;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/genericshape/GeoFactory;->parseGeometry(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/Geometry;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final parseFeature(Lcom/alibaba/fastjson2/JSONObject;)Lcom/onyx/android/sdk/genericshape/Feature;
    .locals 12
    .param p1    # Lcom/alibaba/fastjson2/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "geometry"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/onyx/android/sdk/genericshape/GeoFactory;->parseGeometry$default(Lcom/onyx/android/sdk/genericshape/GeoFactory;Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/genericshape/Geometry;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-string v1, "properties"

    const-class v2, Lcom/onyx/android/sdk/genericshape/Properties;

    invoke-virtual {p1, v1, v2, v0}, Lcom/alibaba/fastjson2/JSONObject;->getObject(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/genericshape/Properties;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/Properties;->getSubType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/genericshape/Feature;

    invoke-direct {v2}, Lcom/onyx/android/sdk/genericshape/Feature;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, ""

    const-string v5, "null cannot be cast to non-null type com.onyx.android.sdk.genericshape.MultiPoint"

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "Circle"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v2, Lcom/onyx/android/sdk/genericshape/Circle;

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/genericshape/MultiPoint;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/genericshape/Circle;-><init>(Lcom/onyx/android/sdk/genericshape/MultiPoint;)V

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "Bracket"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance v2, Lcom/onyx/android/sdk/genericshape/Bracket;

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/genericshape/MultiPoint;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/genericshape/Bracket;-><init>(Lcom/onyx/android/sdk/genericshape/MultiPoint;)V

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "CurvyArrow"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    new-instance v2, Lcom/onyx/android/sdk/genericshape/CurvyArrow;

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/genericshape/MultiPoint;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/genericshape/CurvyArrow;-><init>(Lcom/onyx/android/sdk/genericshape/MultiPoint;)V

    goto/16 :goto_0

    :sswitch_3
    const-string v3, "WaveLine"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    new-instance v2, Lcom/onyx/android/sdk/genericshape/WaveLine;

    const-string v1, "null cannot be cast to non-null type com.onyx.android.sdk.genericshape.LineString"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/genericshape/LineString;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/genericshape/WaveLine;-><init>(Lcom/onyx/android/sdk/genericshape/LineString;)V

    goto/16 :goto_0

    :sswitch_4
    const-string v3, "Curve"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    new-instance v2, Lcom/onyx/android/sdk/genericshape/Curve;

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, p0

    check-cast v7, Lcom/onyx/android/sdk/genericshape/MultiPoint;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/onyx/android/sdk/genericshape/Curve;-><init>(Lcom/onyx/android/sdk/genericshape/MultiPoint;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :sswitch_5
    const-string v3, "Oval"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_5
    new-instance v2, Lcom/onyx/android/sdk/genericshape/Oval;

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/genericshape/MultiPoint;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/genericshape/Oval;-><init>(Lcom/onyx/android/sdk/genericshape/MultiPoint;)V

    goto/16 :goto_0

    :sswitch_6
    const-string v3, "Arc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    new-instance v2, Lcom/onyx/android/sdk/genericshape/Arc;

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/genericshape/MultiPoint;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/genericshape/Arc;-><init>(Lcom/onyx/android/sdk/genericshape/MultiPoint;)V

    goto :goto_0

    :sswitch_7
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/genericshape/Feature;->setGeometry(Lcom/onyx/android/sdk/genericshape/Geometry;)V

    goto :goto_0

    :sswitch_8
    const-string v3, "Surface"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    new-instance v2, Lcom/onyx/android/sdk/genericshape/SurfaceFeature;

    const-string v1, "null cannot be cast to non-null type com.onyx.android.sdk.genericshape.FeatureCollection"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/genericshape/SurfaceFeature;-><init>(Lcom/onyx/android/sdk/genericshape/FeatureCollection;)V

    goto :goto_0

    :sswitch_9
    const-string v3, "BidirectionalCurvyArrow"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    new-instance v2, Lcom/onyx/android/sdk/genericshape/BidirectionalCurvyArrow;

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/genericshape/MultiPoint;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/genericshape/BidirectionalCurvyArrow;-><init>(Lcom/onyx/android/sdk/genericshape/MultiPoint;)V

    goto :goto_0

    :sswitch_a
    const-string v3, "Rectangle"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    new-instance v2, Lcom/onyx/android/sdk/genericshape/Rectangle;

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/genericshape/MultiPoint;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/genericshape/Rectangle;-><init>(Lcom/onyx/android/sdk/genericshape/MultiPoint;)V

    goto :goto_0

    :sswitch_b
    const-string p0, "Layout"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    new-instance v2, Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-direct {v2}, Lcom/onyx/android/sdk/genericshape/GeoLayout;-><init>()V

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/genericshape/Feature;->setProperties(Lcom/onyx/android/sdk/genericshape/Properties;)V

    const-string p0, "id"

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/genericshape/Feature;->setId(Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-string v0, "universalShapeType"

    invoke-virtual {p0, p1, v0, v4}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->getString(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/genericshape/Feature;->setUniversalShapeType(Ljava/lang/String;)V

    const-string v0, "version"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->getInteger(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/genericshape/Feature;->setVersion(I)V

    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x78c018b6 -> :sswitch_b
        -0x45b832b1 -> :sswitch_a
        -0xf9b95b7 -> :sswitch_9
        -0xb3d7b73 -> :sswitch_8
        0x0 -> :sswitch_7
        0x10232 -> :sswitch_6
        0x25b072 -> :sswitch_5
        0x3e710cf -> :sswitch_4
        0x27d1f6ad -> :sswitch_3
        0x292888e6 -> :sswitch_2
        0x6b694488 -> :sswitch_1
        0x7851a8f0 -> :sswitch_0
    .end sparse-switch
.end method

.method public final parseFeatureCollection(Lcom/alibaba/fastjson2/JSONObject;)Lcom/onyx/android/sdk/genericshape/FeatureCollection;
    .locals 7
    .param p1    # Lcom/alibaba/fastjson2/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "features"

    .line 3
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    .line 6
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v5

    const-string v6, "getJSONObject(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/genericshape/GeoFactory;->parseFeature(Lcom/alibaba/fastjson2/JSONObject;)Lcom/onyx/android/sdk/genericshape/Feature;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_0
    const-class p0, Lcom/onyx/android/sdk/genericshape/Properties;

    new-array v0, v3, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-string v1, "properties"

    invoke-virtual {p1, v1, p0, v0}, Lcom/alibaba/fastjson2/JSONObject;->getObject(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/genericshape/Properties;

    .line 8
    new-instance v0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;

    new-array v1, v3, [Lcom/onyx/android/sdk/genericshape/Feature;

    .line 9
    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/onyx/android/sdk/genericshape/Feature;

    .line 10
    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/genericshape/FeatureCollection;-><init>([Lcom/onyx/android/sdk/genericshape/Feature;)V

    .line 11
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->setProperties(Lcom/onyx/android/sdk/genericshape/Properties;)V

    .line 12
    sget-object p0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-string v1, "universalShapeType"

    const-string v2, ""

    invoke-virtual {p0, p1, v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->getString(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->setUniversalShapeType(Ljava/lang/String;)V

    const-string v1, "version"

    const/4 v2, 0x1

    .line 13
    invoke-virtual {p0, p1, v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->getInteger(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->setVersion(I)V

    return-object v0
.end method

.method public final parseFeatureCollection(Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/FeatureCollection;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/genericshape/GeoFactory;->parseFeatureCollection(Lcom/alibaba/fastjson2/JSONObject;)Lcom/onyx/android/sdk/genericshape/FeatureCollection;

    move-result-object p0

    return-object p0
.end method

.method public final parseGeoLayout(Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/GeoLayout;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "json"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-static {p1, p0}, Lcom/alibaba/fastjson2/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;

    return-object p0
.end method

.method public final parseGeoLayoutMargin(Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "json"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;

    invoke-static {p1, p0}, Lcom/alibaba/fastjson2/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "parseObject(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;

    return-object p0
.end method

.method public final parseGeometry(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/Geometry;
    .locals 2
    .param p1    # Lcom/alibaba/fastjson2/JSONObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/genericshape/GeoFactory$parseGeometry$type$1;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/genericshape/GeoFactory$parseGeometry$type$1;-><init>(Lcom/alibaba/fastjson2/JSONObject;)V

    invoke-static {p2, v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v1, "type"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GeometryCollection"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/genericshape/GeoFactory;->parseGeometryCollection(Lcom/alibaba/fastjson2/JSONObject;)Lcom/onyx/android/sdk/genericshape/GeometryCollection;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v1, "FeatureCollection"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/genericshape/GeoFactory;->parseFeatureCollection(Lcom/alibaba/fastjson2/JSONObject;)Lcom/onyx/android/sdk/genericshape/FeatureCollection;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    new-array p0, p0, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONObject;->toJSONString([Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/genericshape/GeoFactory;->geoMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/KClass;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v0

    :cond_3
    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/genericshape/Geometry;

    return-object p0
.end method

.method public final parseGeometryCollection(Lcom/alibaba/fastjson2/JSONObject;)Lcom/onyx/android/sdk/genericshape/GeometryCollection;
    .locals 7
    .param p1    # Lcom/alibaba/fastjson2/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "geometries"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {p0, v4, v6, v5, v6}, Lcom/onyx/android/sdk/genericshape/GeoFactory;->parseGeometry$default(Lcom/onyx/android/sdk/genericshape/GeoFactory;Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/genericshape/Geometry;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/onyx/android/sdk/genericshape/GeometryCollection;

    new-array p1, v2, [Lcom/onyx/android/sdk/genericshape/Geometry;

    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/onyx/android/sdk/genericshape/Geometry;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/genericshape/GeometryCollection;-><init>([Lcom/onyx/android/sdk/genericshape/Geometry;)V

    return-object p0
.end method
