.class public final Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextDistanceSegmenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegmenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextDistanceSegmenter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextLayoutEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextDistanceSegmenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,766:1\n1855#2:767\n1855#2,2:768\n1856#2:770\n1855#2:771\n1864#2,3:772\n1856#2:775\n*S KotlinDebug\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextDistanceSegmenter\n*L\n328#1:767\n329#1:768,2\n328#1:770\n348#1:771\n349#1:772,3\n348#1:775\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u001c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextDistanceSegmenter;",
        "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegmenter;",
        "()V",
        "computeAverageCharSize",
        "Landroid/util/SizeF;",
        "segments",
        "",
        "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;",
        "segment",
        "sdk-neohwr_release"
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
        "SMAP\nTextLayoutEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextDistanceSegmenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,766:1\n1855#2:767\n1855#2,2:768\n1856#2:770\n1855#2:771\n1864#2,3:772\n1856#2:775\n*S KotlinDebug\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextDistanceSegmenter\n*L\n328#1:767\n329#1:768,2\n328#1:770\n348#1:771\n349#1:772,3\n348#1:775\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final computeAverageCharSize(Ljava/util/List;)Landroid/util/SizeF;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;",
            ">;)",
            "Landroid/util/SizeF;"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x0

    move v1, p1

    move v2, v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->getChars()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    add-float/2addr p1, v5

    invoke-virtual {v4}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    add-float/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/util/SizeF;

    int-to-float v0, v2

    div-float/2addr p1, v0

    div-float/2addr v1, v0

    invoke-direct {p0, p1, v1}, Landroid/util/SizeF;-><init>(FF)V

    return-object p0
.end method


# virtual methods
.method public segment(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "segments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextDistanceSegmenter;->computeAverageCharSize(Ljava/util/List;)Landroid/util/SizeF;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->getChars()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v5, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    invoke-virtual {v8}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_2

    invoke-virtual {p0}, Landroid/util/SizeF;->getHeight()F

    move-result v8

    mul-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_2

    sget-object v7, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->Companion:Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment$Companion;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->getLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment$Companion;->create(Ljava/util/List;Ljava/util/Locale;)Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->getChars()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    if-ne v4, v5, :cond_3

    sget-object v4, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->Companion:Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment$Companion;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment$Companion;->create(Ljava/util/List;Ljava/util/Locale;)Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    move v4, v6

    goto :goto_0

    :cond_4
    return-object v0
.end method
