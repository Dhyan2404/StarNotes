.class public final Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGoogleOcrUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleOcrUtils.kt\ncom/onyx/android/sdk/ocr/utils/GoogleOcrUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 4 Point.kt\nandroidx/core/graphics/PointKt\n+ 5 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,84:1\n1549#2:85\n1620#2,3:86\n1549#2:89\n1620#2,3:90\n1549#2:93\n1620#2,3:94\n1549#2:97\n1620#2,3:98\n1549#2:102\n1620#2,2:103\n1622#2:106\n26#3:101\n159#4:105\n337#5:107\n*S KotlinDebug\n*F\n+ 1 GoogleOcrUtils.kt\ncom/onyx/android/sdk/ocr/utils/GoogleOcrUtils\n*L\n26#1:85\n26#1:86,3\n36#1:89\n36#1:90,3\n48#1:93\n48#1:94,3\n60#1:97\n60#1:98,3\n77#1:102\n77#1:103,2\n77#1:106\n76#1:101\n77#1:105\n82#1:107\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\n\u0010\u0004\u001a\u00020\u0003*\u00020\u0002J\u000c\u0010\u0007\u001a\u00020\u0006*\u00020\u0005H\u0002J\u000c\u0010\n\u001a\u00020\t*\u00020\u0008H\u0002J\u000c\u0010\r\u001a\u00020\u000c*\u00020\u000bH\u0002J\u000c\u0010\u0010\u001a\u00020\u000f*\u00020\u000eH\u0002J!\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013*\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000e\u0010\u0019\u001a\u00020\u0018*\u0004\u0018\u00010\u0017H\u0002\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;",
        "",
        "Lcom/google/mlkit/vision/text/Text;",
        "Lcom/onyx/android/sdk/ocr/data/model/OcrText;",
        "convert",
        "Lcom/google/mlkit/vision/text/Text$TextBlock;",
        "Lcom/onyx/android/sdk/ocr/data/model/OcrTextBlock;",
        "b",
        "Lcom/google/mlkit/vision/text/Text$Line;",
        "Lcom/onyx/android/sdk/ocr/data/model/OcrTextLine;",
        "d",
        "Lcom/google/mlkit/vision/text/Text$Element;",
        "Lcom/onyx/android/sdk/ocr/data/model/OcrTextElement;",
        "c",
        "Lcom/google/mlkit/vision/text/Text$Symbol;",
        "Lcom/onyx/android/sdk/ocr/data/model/OcrTextSymbol;",
        "e",
        "",
        "Landroid/graphics/Point;",
        "",
        "Landroid/graphics/PointF;",
        "f",
        "([Landroid/graphics/Point;)Ljava/util/List;",
        "Landroid/graphics/Rect;",
        "Landroid/graphics/RectF;",
        "a",
        "<init>",
        "()V",
        "sdk-ocr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGoogleOcrUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleOcrUtils.kt\ncom/onyx/android/sdk/ocr/utils/GoogleOcrUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 4 Point.kt\nandroidx/core/graphics/PointKt\n+ 5 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,84:1\n1549#2:85\n1620#2,3:86\n1549#2:89\n1620#2,3:90\n1549#2:93\n1620#2,3:94\n1549#2:97\n1620#2,3:98\n1549#2:102\n1620#2,2:103\n1622#2:106\n26#3:101\n159#4:105\n337#5:107\n*S KotlinDebug\n*F\n+ 1 GoogleOcrUtils.kt\ncom/onyx/android/sdk/ocr/utils/GoogleOcrUtils\n*L\n26#1:85\n26#1:86,3\n36#1:89\n36#1:90,3\n48#1:93\n48#1:94,3\n60#1:97\n60#1:98,3\n77#1:102\n77#1:103,2\n77#1:106\n76#1:101\n77#1:105\n82#1:107\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;->INSTANCE:Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public final b(Lcom/google/mlkit/vision/text/Text$TextBlock;)Lcom/onyx/android/sdk/ocr/data/model/OcrTextBlock;
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/ocr/data/model/OcrTextBlock;

    invoke-direct {v0}, Lcom/onyx/android/sdk/ocr/data/model/OcrTextBlock;-><init>()V

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text$TextBlock;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getText(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ocr/data/model/OcrTextBase;->setText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text$a;->getCornerPoints()[Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;->f([Landroid/graphics/Point;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ocr/data/model/OcrTextBase;->setCornerPoints(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text$a;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;->a(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/ocr/data/model/OcrTextBase;->setBoundingBox(Landroid/graphics/RectF;)V

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text$TextBlock;->getLines()Ljava/util/List;

    move-result-object p0

    const-string p1, "getLines(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/vision/text/Text$Line;

    sget-object v2, Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;->INSTANCE:Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;->d(Lcom/google/mlkit/vision/text/Text$Line;)Lcom/onyx/android/sdk/ocr/data/model/OcrTextLine;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/ocr/data/model/OcrTextBlock;->setLines(Ljava/util/List;)V

    return-object v0
.end method

.method public final c(Lcom/google/mlkit/vision/text/Text$Element;)Lcom/onyx/android/sdk/ocr/data/model/OcrTextElement;
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/ocr/data/model/OcrTextElement;

    invoke-direct {v0}, Lcom/onyx/android/sdk/ocr/data/model/OcrTextElement;-><init>()V

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text$Element;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getText(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ocr/data/model/OcrTextBase;->setText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text$Element;->getAngle()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ocr/data/model/OcrTextBase;->setAngle(F)V

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text$Element;->getConfidence()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ocr/data/model/OcrTextBase;->setConfidence(F)V

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text$a;->getCornerPoints()[Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;->f([Landroid/graphics/Point;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ocr/data/model/OcrTextBase;->setCornerPoints(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text$a;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;->a(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/ocr/data/model/OcrTextBase;->setBoundingBox(Landroid/graphics/RectF;)V

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text$Element;->getSymbols()Ljava/util/List;

    move-result-object p0

    const-string p1, "getSymbols(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/vision/text/Text$Symbol;

    sget-object v2, Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;->INSTANCE:Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;->e(Lcom/google/mlkit/vision/text/Text$Symbol;)Lcom/onyx/android/sdk/ocr/data/model/OcrTextSymbol;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/ocr/data/model/OcrTextElement;->setSymbols(Ljava/util/List;)V

    return-object v0
.end method

.method public final convert(Lcom/google/mlkit/vision/text/Text;)Lcom/onyx/android/sdk/ocr/data/model/OcrText;
    .locals 3
    .param p1    # Lcom/google/mlkit/vision/text/Text;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/ocr/data/model/OcrText;

    invoke-direct {p0}, Lcom/onyx/android/sdk/ocr/data/model/OcrText;-><init>()V

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getText(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ocr/data/model/OcrTextBase;->setText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text;->getTextBlocks()Ljava/util/List;

    move-result-object p1

    const-string v0, "getTextBlocks(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/vision/text/Text$TextBlock;

    sget-object v2, Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;->INSTANCE:Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;->b(Lcom/google/mlkit/vision/text/Text$TextBlock;)Lcom/onyx/android/sdk/ocr/data/model/OcrTextBlock;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ocr/data/model/OcrText;->setBlocks(Ljava/util/List;)V

    return-object p0
.end method

.method public final d(Lcom/google/mlkit/vision/text/Text$Line;)Lcom/onyx/android/sdk/ocr/data/model/OcrTextLine;
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/ocr/data/model/OcrTextLine;

    invoke-direct {v0}, Lcom/onyx/android/sdk/ocr/data/model/OcrTextLine;-><init>()V

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text$Line;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getText(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ocr/data/model/OcrTextBase;->setText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text$Line;->getAngle()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ocr/data/model/OcrTextBase;->setAngle(F)V

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text$Line;->getConfidence()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ocr/data/model/OcrTextBase;->setConfidence(F)V

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text$a;->getCornerPoints()[Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;->f([Landroid/graphics/Point;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ocr/data/model/OcrTextBase;->setCornerPoints(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text$a;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;->a(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/ocr/data/model/OcrTextBase;->setBoundingBox(Landroid/graphics/RectF;)V

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text$Line;->getElements()Ljava/util/List;

    move-result-object p0

    const-string p1, "getElements(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/vision/text/Text$Element;

    sget-object v2, Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;->INSTANCE:Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;->c(Lcom/google/mlkit/vision/text/Text$Element;)Lcom/onyx/android/sdk/ocr/data/model/OcrTextElement;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/ocr/data/model/OcrTextLine;->setElements(Ljava/util/List;)V

    return-object v0
.end method

.method public final e(Lcom/google/mlkit/vision/text/Text$Symbol;)Lcom/onyx/android/sdk/ocr/data/model/OcrTextSymbol;
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/ocr/data/model/OcrTextSymbol;

    invoke-direct {v0}, Lcom/onyx/android/sdk/ocr/data/model/OcrTextSymbol;-><init>()V

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text$Symbol;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getText(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ocr/data/model/OcrTextBase;->setText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text$Symbol;->getAngle()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ocr/data/model/OcrTextBase;->setAngle(F)V

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text$Symbol;->getConfidence()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ocr/data/model/OcrTextBase;->setConfidence(F)V

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text$a;->getCornerPoints()[Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;->f([Landroid/graphics/Point;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ocr/data/model/OcrTextBase;->setCornerPoints(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text$a;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;->a(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/ocr/data/model/OcrTextBase;->setBoundingBox(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public final f([Landroid/graphics/Point;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/graphics/Point;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    new-array p1, p0, [Landroid/graphics/Point;

    :cond_0
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v0}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
