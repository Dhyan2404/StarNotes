.class public final Lcom/onyx/android/sdk/genericshape/GeoFrameLayout;
.super Lcom/onyx/android/sdk/genericshape/GeoLayoutGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGeoFrameLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoFrameLayout.kt\ncom/onyx/android/sdk/genericshape/GeoFrameLayout\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,22:1\n1855#2,2:23\n*S KotlinDebug\n*F\n+ 1 GeoFrameLayout.kt\ncom/onyx/android/sdk/genericshape/GeoFrameLayout\n*L\n18#1:23,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/GeoFrameLayout;",
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutGroup;",
        "params",
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;",
        "geometries",
        "",
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;",
        "(Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;Ljava/util/List;)V",
        "onLayout",
        "",
        "parent",
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutParent;",
        "layoutRect",
        "Landroid/graphics/RectF;",
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
        "SMAP\nGeoFrameLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoFrameLayout.kt\ncom/onyx/android/sdk/genericshape/GeoFrameLayout\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,22:1\n1855#2,2:23\n*S KotlinDebug\n*F\n+ 1 GeoFrameLayout.kt\ncom/onyx/android/sdk/genericshape/GeoFrameLayout\n*L\n18#1:23,2\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;",
            ">;)V"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "geometries"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/genericshape/GeoLayoutGroup;-><init>(Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onLayout(Lcom/onyx/android/sdk/genericshape/GeoLayoutParent;Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/genericshape/GeoLayoutParent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/onyx/android/sdk/genericshape/GeoLayoutGroup;->onLayout(Lcom/onyx/android/sdk/genericshape/GeoLayoutParent;Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutGroup;->getGeometries()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;->getGeoLayout()Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/genericshape/PageMargins;->setLayoutRect(Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_2
    return-void
.end method
