.class public final Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u0016\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase$Companion;",
        "",
        "()V",
        "calculateContentRect",
        "Landroid/graphics/RectF;",
        "viewport",
        "marginPercent",
        "Lcom/onyx/android/sdk/geometry/data/MarginPercent;",
        "calculateViewport",
        "contentRect",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final calculateContentRect(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/MarginPercent;)Landroid/graphics/RectF;
    .locals 4
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/MarginPercent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "viewport"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "marginPercent"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->hasMargin()Z

    move-result p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->getLeft()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->getRight()F

    move-result v2

    add-float/2addr v0, v2

    div-float/2addr p0, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->getTop()F

    move-result v2

    add-float/2addr v2, v1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->getBottom()F

    move-result v1

    add-float/2addr v2, v1

    div-float/2addr v0, v2

    invoke-virtual {p2, p0, v0}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->toMarginPixel(FF)Lcom/onyx/android/sdk/geometry/data/MarginPixel;

    move-result-object p0

    new-instance p2, Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p0

    invoke-direct {p2, v0, v1, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p2
.end method

.method public final calculateViewport(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/MarginPercent;)Landroid/graphics/RectF;
    .locals 0
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/MarginPercent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "contentRect"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "marginPercent"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->hasMargin()Z

    move-result p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->toRectFWithMargin(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method
