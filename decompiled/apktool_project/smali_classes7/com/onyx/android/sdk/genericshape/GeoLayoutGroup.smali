.class public abstract Lcom/onyx/android/sdk/genericshape/GeoLayoutGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/genericshape/GeoLayoutGroup$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGeoLayoutGroup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoLayoutGroup.kt\ncom/onyx/android/sdk/genericshape/GeoLayoutGroup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,97:1\n1855#2,2:98\n*S KotlinDebug\n*F\n+ 1 GeoLayoutGroup.kt\ncom/onyx/android/sdk/genericshape/GeoLayoutGroup\n*L\n31#1:98,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u000fH\u0016J\u0010\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u001bH\u0002R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutGroup;",
        "",
        "params",
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;",
        "geometries",
        "",
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;",
        "(Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;Ljava/util/List;)V",
        "getGeometries",
        "()Ljava/util/List;",
        "getParams",
        "()Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;",
        "parent",
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutParent;",
        "onDraw",
        "",
        "drawContext",
        "Lcom/onyx/android/sdk/genericshape/DrawContext;",
        "onLayout",
        "layoutRect",
        "Landroid/graphics/RectF;",
        "prepareLayout",
        "setSpace",
        "space",
        "",
        "updateLayoutOriginAlignment",
        "geoLayout",
        "Lcom/onyx/android/sdk/genericshape/GeoLayout;",
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
        "SMAP\nGeoLayoutGroup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoLayoutGroup.kt\ncom/onyx/android/sdk/genericshape/GeoLayoutGroup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,97:1\n1855#2,2:98\n*S KotlinDebug\n*F\n+ 1 GeoLayoutGroup.kt\ncom/onyx/android/sdk/genericshape/GeoLayoutGroup\n*L\n31#1:98,2\n*E\n"
    }
.end annotation


# instance fields
.field private final geometries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final params:Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private parent:Lcom/onyx/android/sdk/genericshape/GeoLayoutParent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutGroup;->params:Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;

    iput-object p2, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutGroup;->geometries:Ljava/util/List;

    return-void
.end method

.method private final updateLayoutOriginAlignment(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutGroup;->parent:Lcom/onyx/android/sdk/genericshape/GeoLayoutParent;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutParent;->getLayoutMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutGroup;->params:Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;->getAlignLocation()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/genericshape/AlignmentAttr;

    invoke-direct {v1}, Lcom/onyx/android/sdk/genericshape/AlignmentAttr;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutGroup;->params:Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;->getAlignLocationOrigin()Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    move-result-object p0

    sget-object v2, Lcom/onyx/android/sdk/genericshape/GeoLayoutGroup$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v2, p0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    const/4 v2, 0x4

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget p0, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/genericshape/AlignmentAttr;->setAlignOriginX(F)V

    iget p0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/genericshape/AlignmentAttr;->setAlignOriginY(F)V

    goto :goto_0

    :cond_1
    iget p0, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/genericshape/AlignmentAttr;->setAlignOriginX(F)V

    iget p0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/genericshape/AlignmentAttr;->setAlignOriginY(F)V

    goto :goto_0

    :cond_2
    iget p0, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/genericshape/AlignmentAttr;->setAlignOriginX(F)V

    iget p0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/genericshape/AlignmentAttr;->setAlignOriginY(F)V

    goto :goto_0

    :cond_3
    iget p0, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/genericshape/AlignmentAttr;->setAlignOriginX(F)V

    iget p0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/genericshape/AlignmentAttr;->setAlignOriginY(F)V

    :goto_0
    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/genericshape/Properties;->setAlignmentAttr(Lcom/onyx/android/sdk/genericshape/AlignmentAttr;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final getGeometries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutGroup;->geometries:Ljava/util/List;

    return-object p0
.end method

.method public final getParams()Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutGroup;->params:Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;

    return-object p0
.end method

.method public onDraw(Lcom/onyx/android/sdk/genericshape/DrawContext;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/genericshape/DrawContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "drawContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutGroup;->geometries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;->getGeoLayout()Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutGroup;->updateLayoutOriginAlignment(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->draw(Lcom/onyx/android/sdk/genericshape/DrawContext;)V

    goto :goto_0

    :cond_1
    return-void
.end method

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

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutGroup;->parent:Lcom/onyx/android/sdk/genericshape/GeoLayoutParent;

    return-void
.end method

.method public prepareLayout()V
    .locals 0

    return-void
.end method

.method public setSpace(F)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutGroup;->geometries:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;->getGeoLayout()Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/genericshape/PageMargins;->setSpacing(F)V

    goto :goto_0

    :cond_2
    return-void
.end method
