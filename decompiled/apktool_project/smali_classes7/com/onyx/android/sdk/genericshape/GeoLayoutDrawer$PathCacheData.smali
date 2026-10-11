.class public final Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PathCacheData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017J\u001c\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00172\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u001aR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;",
        "",
        "()V",
        "cachePath",
        "Landroid/graphics/Path;",
        "getCachePath",
        "()Landroid/graphics/Path;",
        "lineSpace",
        "",
        "matrix",
        "Landroid/graphics/Matrix;",
        "getMatrix",
        "()Landroid/graphics/Matrix;",
        "setMatrix",
        "(Landroid/graphics/Matrix;)V",
        "originRect",
        "Landroid/graphics/RectF;",
        "hasData",
        "",
        "reset",
        "",
        "shouldUpdate",
        "properties",
        "Lcom/onyx/android/sdk/genericshape/Properties;",
        "updatePathDataIf",
        "generatePathBlock",
        "Lkotlin/Function0;",
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


# instance fields
.field private final cachePath:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lineSpace:F

.field private matrix:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private originRect:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;->cachePath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;->matrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;->originRect:Landroid/graphics/RectF;

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;->lineSpace:F

    return-void
.end method


# virtual methods
.method public final getCachePath()Landroid/graphics/Path;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;->cachePath:Landroid/graphics/Path;

    return-object p0
.end method

.method public final getMatrix()Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final hasData()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;->cachePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final reset()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;->originRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;->cachePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/graphics/Matrix;->reset()V

    return-void
.end method

.method public final setMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;->matrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public final shouldUpdate(Lcom/onyx/android/sdk/genericshape/Properties;)Z
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/genericshape/Properties;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "properties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;->hasData()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getSpacing()F

    move-result v2

    iget v3, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;->lineSpace:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    if-nez v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getLayoutRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;->originRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_1

    :cond_4
    move v2, v0

    :goto_1
    if-eqz v2, :cond_9

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getLayoutRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;->originRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_2

    :cond_5
    move v2, v0

    :goto_2
    if-eqz v2, :cond_9

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getLayoutRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;->originRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_3

    :cond_6
    move v2, v0

    :goto_3
    if-eqz v2, :cond_9

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getLayoutRect()Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;->originRect:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float p0, p1, p0

    if-nez p0, :cond_7

    move p0, v1

    goto :goto_4

    :cond_7
    move p0, v0

    :goto_4
    if-nez p0, :cond_8

    goto :goto_5

    :cond_8
    move v1, v0

    :cond_9
    :goto_5
    return v1
.end method

.method public final updatePathDataIf(Lcom/onyx/android/sdk/genericshape/Properties;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/genericshape/Properties;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/genericshape/Properties;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroid/graphics/Path;",
            ">;)V"
        }
    .end annotation

    const-string v0, "properties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generatePathBlock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;->shouldUpdate(Lcom/onyx/android/sdk/genericshape/Properties;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;->cachePath:Landroid/graphics/Path;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Path;

    invoke-virtual {v0, p2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getLayoutRect()Landroid/graphics/RectF;

    move-result-object p2

    iget-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;->originRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getSpacing()F

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;->lineSpace:F

    :cond_1
    return-void
.end method
