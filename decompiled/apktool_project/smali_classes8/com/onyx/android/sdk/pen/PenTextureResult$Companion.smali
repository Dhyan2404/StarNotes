.class public final Lcom/onyx/android/sdk/pen/PenTextureResult$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/pen/PenTextureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pen/PenTextureResult$Companion;",
        "",
        "()V",
        "buildFromInkArray",
        "Lcom/onyx/android/sdk/pen/PenTextureResult;",
        "ink",
        "Lcom/onyx/android/sdk/pennative/PenInk;",
        "sdk-pen_release"
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

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/pen/PenTextureResult$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildFromInkArray(Lcom/onyx/android/sdk/pennative/PenInk;)Lcom/onyx/android/sdk/pen/PenTextureResult;
    .locals 10
    .param p1    # Lcom/onyx/android/sdk/pennative/PenInk;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pennative/PenInk;->getPoints()[F

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v2

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v3

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v1

    if-lez v1, :cond_1

    if-le v2, v3, :cond_2

    :cond_1
    if-gez v1, :cond_5

    if-gt v3, v2, :cond_5

    :cond_2
    move-object v4, p0

    :goto_0
    div-int/lit8 v5, v2, 0x2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pennative/PenInk;->getBitmaps()[Landroid/graphics/Bitmap;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pennative/PenInk;->getBitmaps()[Landroid/graphics/Bitmap;

    move-result-object v6

    aget-object v5, v6, v5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pennative/PenInk;->getPoints()[F

    move-result-object v6

    aget v6, v6, v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pennative/PenInk;->getPoints()[F

    move-result-object v7

    add-int/lit8 v8, v2, 0x1

    aget v7, v7, v8

    new-instance v8, Lcom/onyx/android/sdk/pen/PenTextureInk;

    invoke-direct {v8, v6, v7, v5}, Lcom/onyx/android/sdk/pen/PenTextureInk;-><init>(FFLandroid/graphics/Bitmap;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v4, :cond_3

    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v7

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    :cond_3
    invoke-virtual {v4, v6, v7}, Landroid/graphics/RectF;->union(FF)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v6, v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v7, v5

    invoke-virtual {v4, v6, v7}, Landroid/graphics/RectF;->union(FF)V

    :cond_4
    if-eq v2, v3, :cond_6

    add-int/2addr v2, v1

    goto :goto_0

    :cond_5
    move-object v4, p0

    :cond_6
    if-nez v4, :cond_7

    return-object p0

    :cond_7
    new-instance p0, Lcom/onyx/android/sdk/pen/PenTextureResult;

    invoke-direct {p0, v0, v4}, Lcom/onyx/android/sdk/pen/PenTextureResult;-><init>(Ljava/util/List;Landroid/graphics/RectF;)V

    return-object p0
.end method
