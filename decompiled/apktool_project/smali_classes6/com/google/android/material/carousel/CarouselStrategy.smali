.class public abstract Lcom/google/android/material/carousel/CarouselStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([I)[I
    .locals 4

    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    mul-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static b(FFF)F
    .locals 0
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    sub-float/2addr p0, p2

    sub-float/2addr p1, p2

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    return p1
.end method


# virtual methods
.method public c(Landroid/content/Context;)V
    .locals 3

    iget v0, p0, Lcom/google/android/material/carousel/CarouselStrategy;->a:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/android/material/carousel/a;->h(Landroid/content/Context;)F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/google/android/material/carousel/CarouselStrategy;->a:F

    iget v0, p0, Lcom/google/android/material/carousel/CarouselStrategy;->b:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/google/android/material/carousel/a;->g(Landroid/content/Context;)F

    move-result v0

    :goto_1
    iput v0, p0, Lcom/google/android/material/carousel/CarouselStrategy;->b:F

    return-void
.end method

.method public d()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract e(Lcom/sunia/HTREnginev2/tnd;Landroid/view/View;)Lcom/google/android/material/carousel/b;
    .param p1    # Lcom/sunia/HTREnginev2/tnd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public f(Lcom/sunia/HTREnginev2/tnd;I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSmallItemSizeMax()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/carousel/CarouselStrategy;->b:F

    return p0
.end method

.method public getSmallItemSizeMin()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/carousel/CarouselStrategy;->a:F

    return p0
.end method

.method public setSmallItemSizeMax(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/carousel/CarouselStrategy;->b:F

    return-void
.end method

.method public setSmallItemSizeMin(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/carousel/CarouselStrategy;->a:F

    return-void
.end method
