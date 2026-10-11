.class public final Lcom/onyx/android/sdk/geometry/data/MarginPixel;
.super Landroid/graphics/RectF;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0001J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/data/MarginPixel;",
        "Landroid/graphics/RectF;",
        "()V",
        "hasMargin",
        "",
        "scale",
        "",
        "",
        "toMarginPercent",
        "Lcom/onyx/android/sdk/geometry/data/MarginPercent;",
        "rectF",
        "width",
        "height",
        "sdk-geometry_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasMargin()Z
    .locals 4

    iget v0, p0, Landroid/graphics/RectF;->left:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_5

    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v0, :cond_5

    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    if-eqz v0, :cond_5

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float p0, p0, v1

    if-nez p0, :cond_3

    move p0, v2

    goto :goto_3

    :cond_3
    move p0, v3

    :goto_3
    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    move v2, v3

    :cond_5
    :goto_4
    return v2
.end method

.method public final scale(F)V
    .locals 1

    iget v0, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    iget v0, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iget v0, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public final toMarginPercent(FF)Lcom/onyx/android/sdk/geometry/data/MarginPercent;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;-><init>()V

    .line 2
    iget v1, p0, Landroid/graphics/RectF;->left:F

    div-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->setLeft(F)V

    .line 3
    iget v1, p0, Landroid/graphics/RectF;->top:F

    div-float/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->setTop(F)V

    .line 4
    iget v1, p0, Landroid/graphics/RectF;->right:F

    div-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->setRight(F)V

    .line 5
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    div-float/2addr p0, p2

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->setBottom(F)V

    return-object v0
.end method

.method public final toMarginPercent(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/geometry/data/MarginPercent;
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "rectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/geometry/data/MarginPixel;->toMarginPercent(FF)Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    move-result-object p0

    return-object p0
.end method
