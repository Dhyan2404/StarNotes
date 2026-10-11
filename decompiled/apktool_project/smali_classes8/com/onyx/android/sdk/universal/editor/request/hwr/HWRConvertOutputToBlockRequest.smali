.class public final Lcom/onyx/android/sdk/universal/editor/request/hwr/HWRConvertOutputToBlockRequest;
.super Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHWRConvertOutputToBlockRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRConvertOutputToBlockRequest.kt\ncom/onyx/android/sdk/universal/editor/request/hwr/HWRConvertOutputToBlockRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,56:1\n1360#2:57\n1446#2,2:58\n1360#2:60\n1446#2,5:61\n1549#2:66\n1620#2,2:67\n1549#2:69\n1620#2,3:70\n1622#2:78\n1448#2,3:79\n1549#2:82\n1620#2,2:83\n1549#2:85\n1620#2,3:86\n1622#2:89\n32#3,5:73\n*S KotlinDebug\n*F\n+ 1 HWRConvertOutputToBlockRequest.kt\ncom/onyx/android/sdk/universal/editor/request/hwr/HWRConvertOutputToBlockRequest\n*L\n27#1:57\n27#1:58,2\n28#1:60\n28#1:61,5\n31#1:66\n31#1:67,2\n34#1:69\n34#1:70,3\n31#1:78\n27#1:79,3\n49#1:82\n49#1:83,2\n50#1:85\n50#1:86,3\n49#1:89\n42#1:73,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B+\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0012\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00020\u0002\u0012\u0006\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016R \u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u000c\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/request/hwr/HWRConvertOutputToBlockRequest;",
        "Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;",
        "",
        "Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;",
        "execute",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
        "b",
        "Ljava/util/List;",
        "outputBlocks",
        "",
        "c",
        "F",
        "minFontSize",
        "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
        "hwrBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Ljava/util/List;F)V",
        "sdk-universal_overseasRelease"
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
        "SMAP\nHWRConvertOutputToBlockRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRConvertOutputToBlockRequest.kt\ncom/onyx/android/sdk/universal/editor/request/hwr/HWRConvertOutputToBlockRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,56:1\n1360#2:57\n1446#2,2:58\n1360#2:60\n1446#2,5:61\n1549#2:66\n1620#2,2:67\n1549#2:69\n1620#2,3:70\n1622#2:78\n1448#2,3:79\n1549#2:82\n1620#2,2:83\n1549#2:85\n1620#2,3:86\n1622#2:89\n32#3,5:73\n*S KotlinDebug\n*F\n+ 1 HWRConvertOutputToBlockRequest.kt\ncom/onyx/android/sdk/universal/editor/request/hwr/HWRConvertOutputToBlockRequest\n*L\n27#1:57\n27#1:58,2\n28#1:60\n28#1:61,5\n31#1:66\n31#1:67,2\n34#1:69\n34#1:70,3\n31#1:78\n27#1:79,3\n49#1:82\n49#1:83,2\n50#1:85\n50#1:86,3\n49#1:89\n42#1:73,5\n*E\n"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:F


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Ljava/util/List;F)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
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
            "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
            ">;>;F)V"
        }
    .end annotation

    const-string v0, "hwrBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputBlocks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;-><init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/request/hwr/HWRConvertOutputToBlockRequest;->b:Ljava/util/List;

    iput p3, p0, Lcom/onyx/android/sdk/universal/editor/request/hwr/HWRConvertOutputToBlockRequest;->c:F

    return-void
.end method


# virtual methods
.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/hwr/HWRConvertOutputToBlockRequest;->execute()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public execute()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    .line 2
    new-instance v1, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;

    invoke-direct {v1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;-><init>()V

    .line 3
    iget v2, v0, Lcom/onyx/android/sdk/universal/editor/request/hwr/HWRConvertOutputToBlockRequest;->c:F

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->setMinFontSize(F)V

    .line 4
    iget-object v0, v0, Lcom/onyx/android/sdk/universal/editor/request/hwr/HWRConvertOutputToBlockRequest;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0xa

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Ljava/util/List;

    .line 8
    check-cast v3, Ljava/lang/Iterable;

    .line 9
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 11
    check-cast v6, Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;

    .line 12
    sget-object v7, Lcom/onyx/android/sdk/hwr/utils/HWROutputUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWROutputUtils;

    invoke-virtual {v7, v6}, Lcom/onyx/android/sdk/hwr/utils/HWROutputUtils;->extractTextLines(Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;)Ljava/util/ArrayList;

    move-result-object v6

    .line 13
    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 14
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 16
    check-cast v6, Lcom/onyx/android/sdk/hwr/data/bean/HWRTextLine;

    .line 17
    sget-object v7, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->INSTANCE:Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->getFontPath()Ljava/lang/String;

    move-result-object v7

    .line 18
    invoke-virtual {v6}, Lcom/onyx/android/sdk/hwr/data/bean/HWRTextLine;->getChars()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 19
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 21
    check-cast v9, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;

    .line 22
    new-instance v15, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    .line 23
    invoke-virtual {v9}, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;->getLabel()Ljava/lang/String;

    move-result-object v11

    .line 24
    invoke-virtual {v9}, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;->getBoundBox()Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;->toRectF()Landroid/graphics/RectF;

    move-result-object v10

    if-nez v10, :cond_2

    :cond_1
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    :cond_2
    move-object v12, v10

    .line 25
    invoke-virtual {v9}, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;->getSourcePointGroup()Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x38

    const/16 v18, 0x0

    move-object v10, v15

    move-object v4, v15

    move v15, v9

    .line 26
    invoke-direct/range {v10 .. v18}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;-><init>(Ljava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;Landroid/graphics/Matrix;ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 27
    invoke-interface {v8, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xa

    goto :goto_3

    .line 28
    :cond_3
    invoke-virtual {v1, v7, v8}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->createLineBox(Ljava/lang/String;Ljava/util/List;)Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;

    move-result-object v4

    if-nez v4, :cond_4

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    if-nez v6, :cond_5

    .line 29
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xa

    goto :goto_2

    .line 30
    :cond_5
    sget-object v0, Lcom/onyx/android/sdk/base/common/error/OnyxException;->Companion:Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;

    const-string v1, "Font Format Error"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object v0

    throw v0

    .line 31
    :cond_6
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto/16 :goto_0

    .line 32
    :cond_7
    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->createSingleLineBlocks(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Iterable;

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 36
    check-cast v3, Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;

    .line 37
    invoke-virtual {v3}, Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;->getLines()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 38
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 40
    check-cast v6, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;

    .line 41
    new-instance v7, Lcom/onyx/android/sdk/note/common/data/shape/HWRTextLineBean;

    new-instance v15, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    const-string v9, ""

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xc

    const/4 v14, 0x0

    move-object v8, v15

    invoke-direct/range {v8 .. v14}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;-><init>(Ljava/lang/String;Ljava/util/List;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v7, v6, v15}, Lcom/onyx/android/sdk/note/common/data/shape/HWRTextLineBean;-><init>(Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;)V

    .line 42
    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 43
    :cond_8
    new-instance v4, Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;

    invoke-direct {v4, v5, v3}, Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;-><init>(Ljava/util/List;Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;)V

    .line 44
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    return-object v1
.end method
