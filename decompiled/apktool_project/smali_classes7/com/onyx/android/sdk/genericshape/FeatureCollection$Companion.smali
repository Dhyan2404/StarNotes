.class public final Lcom/onyx/android/sdk/genericshape/FeatureCollection$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/genericshape/FeatureCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGeoJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/FeatureCollection$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1558:1\n1#2:1559\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000c\u0010\u0003\u001a\u0004\u0018\u00010\u0004*\u00020\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/FeatureCollection$Companion;",
        "",
        "()V",
        "getFeatureType",
        "",
        "Lcom/onyx/android/sdk/genericshape/FeatureCollection;",
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
        "SMAP\nGeoJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/FeatureCollection$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1558:1\n1#2:1559\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/FeatureCollection$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFeatureType(Lcom/onyx/android/sdk/genericshape/FeatureCollection;)Ljava/lang/String;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/genericshape/FeatureCollection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->getFeatures()[Lcom/onyx/android/sdk/genericshape/Feature;

    move-result-object p0

    array-length p0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->getFeatures()[Lcom/onyx/android/sdk/genericshape/Feature;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/genericshape/Feature;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getGeometry()Lcom/onyx/android/sdk/genericshape/Geometry;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/Geometry;->getType()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string p1, "LineString"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :sswitch_1
    const-string p0, "Polygon"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_2

    :sswitch_2
    const-string p0, "RightTrapezoid"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/genericshape/Polygon;->Companion:Lcom/onyx/android/sdk/genericshape/Polygon$Companion;

    const-string v0, "null cannot be cast to non-null type com.onyx.android.sdk.genericshape.Polygon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/onyx/android/sdk/genericshape/Polygon;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/genericshape/Polygon$Companion;->getFeatureType(Lcom/onyx/android/sdk/genericshape/Polygon;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :sswitch_3
    const-string p1, "MultiPoint"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Properties;->getSubType()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    move-object v0, v2

    goto :goto_2

    :cond_5
    move-object v0, p0

    :cond_6
    :goto_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3f883809 -> :sswitch_3
        0x2c4fb34c -> :sswitch_2
        0x4b86ed1a -> :sswitch_1
        0x6bb01145 -> :sswitch_0
    .end sparse-switch
.end method
