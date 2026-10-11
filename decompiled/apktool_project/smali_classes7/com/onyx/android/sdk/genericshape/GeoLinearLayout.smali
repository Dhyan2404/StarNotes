.class public final Lcom/onyx/android/sdk/genericshape/GeoLinearLayout;
.super Lcom/onyx/android/sdk/genericshape/GeoLayoutGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGeoLinearLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoLinearLayout.kt\ncom/onyx/android/sdk/genericshape/GeoLinearLayout\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,59:1\n1855#2,2:60\n*S KotlinDebug\n*F\n+ 1 GeoLinearLayout.kt\ncom/onyx/android/sdk/genericshape/GeoLinearLayout\n*L\n23#1:60,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0018\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0018\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000fH\u0016R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/GeoLinearLayout;",
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutGroup;",
        "params",
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;",
        "geometries",
        "",
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;",
        "(Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;Ljava/util/List;)V",
        "startX",
        "",
        "startY",
        "layoutHorizontal",
        "",
        "geoLayoutChildParams",
        "viewport",
        "Landroid/graphics/RectF;",
        "layoutVertical",
        "onLayout",
        "parent",
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutParent;",
        "layoutRect",
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
        "SMAP\nGeoLinearLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoLinearLayout.kt\ncom/onyx/android/sdk/genericshape/GeoLinearLayout\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,59:1\n1855#2,2:60\n*S KotlinDebug\n*F\n+ 1 GeoLinearLayout.kt\ncom/onyx/android/sdk/genericshape/GeoLinearLayout\n*L\n23#1:60,2\n*E\n"
    }
.end annotation


# instance fields
.field private startX:F

.field private startY:F


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

.method private final layoutHorizontal(Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;Landroid/graphics/RectF;)V
    .locals 5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;->getWidthPercent()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;->getGeoLayout()Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/genericshape/PageMargins;->setLayoutRect(Landroid/graphics/RectF;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;->getWidthPercent()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v0, v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;->getGeoLayout()Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v1

    :cond_4
    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/onyx/android/sdk/genericshape/GeoLinearLayout;->startX:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    add-float v4, v2, v0

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p1, v2, v3, v4, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/genericshape/PageMargins;->setLayoutRect(Landroid/graphics/RectF;)V

    :goto_1
    iget p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLinearLayout;->startX:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLinearLayout;->startX:F

    :goto_2
    return-void
.end method

.method private final layoutVertical(Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;Landroid/graphics/RectF;)V
    .locals 5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;->getHeightPercent()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;->getGeoLayout()Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/genericshape/PageMargins;->setLayoutRect(Landroid/graphics/RectF;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;->getHeightPercent()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v0, v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;->getGeoLayout()Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v1

    :cond_4
    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Landroid/graphics/RectF;

    iget v2, p2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/onyx/android/sdk/genericshape/GeoLinearLayout;->startY:F

    iget p2, p2, Landroid/graphics/RectF;->right:F

    add-float v4, v3, v0

    invoke-direct {p1, v2, v3, p2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/genericshape/PageMargins;->setLayoutRect(Landroid/graphics/RectF;)V

    :goto_1
    iget p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLinearLayout;->startY:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLinearLayout;->startY:F

    :goto_2
    return-void
.end method


# virtual methods
.method public onLayout(Lcom/onyx/android/sdk/genericshape/GeoLayoutParent;Landroid/graphics/RectF;)V
    .locals 3
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

    iget p1, p2, Landroid/graphics/RectF;->left:F

    iput p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLinearLayout;->startX:F

    iget p1, p2, Landroid/graphics/RectF;->top:F

    iput p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLinearLayout;->startY:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutGroup;->getGeometries()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutGroup;->getParams()Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;->getOrientation()Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupOrientation;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupOrientation;->VERTICAL:Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupOrientation;

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/onyx/android/sdk/genericshape/GeoLinearLayout;->layoutVertical(Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/onyx/android/sdk/genericshape/GeoLinearLayout;->layoutHorizontal(Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_1
    return-void
.end method
