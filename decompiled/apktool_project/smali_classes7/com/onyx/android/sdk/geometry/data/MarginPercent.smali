.class public final Lcom/onyx/android/sdk/geometry/data/MarginPercent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMargin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Margin.kt\ncom/onyx/android/sdk/geometry/data/MarginPercent\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,131:1\n1#2:132\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0012\u001a\u00020\u0000J\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJ\u0016\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0004J\u000e\u0010 \u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\u001dR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/data/MarginPercent;",
        "",
        "()V",
        "bottom",
        "",
        "getBottom",
        "()F",
        "setBottom",
        "(F)V",
        "left",
        "getLeft",
        "setLeft",
        "right",
        "getRight",
        "setRight",
        "top",
        "getTop",
        "setTop",
        "copy",
        "hasMargin",
        "",
        "rotate",
        "",
        "degrees",
        "",
        "rotated",
        "toMarginPixel",
        "Lcom/onyx/android/sdk/geometry/data/MarginPixel;",
        "rectF",
        "Landroid/graphics/RectF;",
        "width",
        "height",
        "toRectFWithMargin",
        "originRectF",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMargin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Margin.kt\ncom/onyx/android/sdk/geometry/data/MarginPercent\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,131:1\n1#2:132\n*E\n"
    }
.end annotation


# instance fields
.field private bottom:F

.field private left:F

.field private right:F

.field private top:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final copy()Lcom/onyx/android/sdk/geometry/data/MarginPercent;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;-><init>()V

    iget v1, p0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->left:F

    iput v1, v0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->left:F

    iget v1, p0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->top:F

    iput v1, v0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->top:F

    iget v1, p0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->right:F

    iput v1, v0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->right:F

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->bottom:F

    iput p0, v0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->bottom:F

    return-object v0
.end method

.method public final getBottom()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->bottom:F

    return p0
.end method

.method public final getLeft()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->left:F

    return p0
.end method

.method public final getRight()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->right:F

    return p0
.end method

.method public final getTop()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->top:F

    return p0
.end method

.method public final hasMargin()Z
    .locals 4

    iget v0, p0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->left:F

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

    iget v0, p0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->top:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v0, :cond_5

    iget v0, p0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->right:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    if-eqz v0, :cond_5

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->bottom:F

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

.method public final rotate(I)V
    .locals 3

    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    div-int/lit8 p1, p1, 0x5a

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget v1, p0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->left:F

    iget v2, p0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->bottom:F

    iput v2, p0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->left:F

    iget v2, p0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->right:F

    iput v2, p0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->bottom:F

    iget v2, p0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->top:F

    iput v2, p0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->right:F

    iput v1, p0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->top:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final rotated(I)Lcom/onyx/android/sdk/geometry/data/MarginPercent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->copy()Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->rotate(I)V

    return-object p0
.end method

.method public final setBottom(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->bottom:F

    return-void
.end method

.method public final setLeft(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->left:F

    return-void
.end method

.method public final setRight(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->right:F

    return-void
.end method

.method public final setTop(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->top:F

    return-void
.end method

.method public final toMarginPixel(FF)Lcom/onyx/android/sdk/geometry/data/MarginPixel;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/onyx/android/sdk/geometry/data/MarginPixel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/data/MarginPixel;-><init>()V

    .line 2
    iget v1, p0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->left:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 3
    iget v1, p0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->top:F

    mul-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 4
    iget v1, p0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->right:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 5
    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->bottom:F

    mul-float/2addr p0, p2

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method

.method public final toMarginPixel(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/geometry/data/MarginPixel;
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

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->toMarginPixel(FF)Lcom/onyx/android/sdk/geometry/data/MarginPixel;

    move-result-object p0

    return-object p0
.end method

.method public final toRectFWithMargin(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "originRectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->toMarginPixel(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/geometry/data/MarginPixel;

    move-result-object p0

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p0

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    const/4 p0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v1}, Lcom/onyx/android/sdk/base/extension/RectKt;->isEmptyInDocument$default(Landroid/graphics/RectF;FILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string p1, "toRectFWithMargin expected not empty, reset"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
