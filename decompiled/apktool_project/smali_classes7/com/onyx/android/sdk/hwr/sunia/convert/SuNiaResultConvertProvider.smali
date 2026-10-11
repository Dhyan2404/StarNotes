.class public final Lcom/onyx/android/sdk/hwr/sunia/convert/SuNiaResultConvertProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/hwr/service/convert/HWRResultConvertProvider;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuNiaResultConvertProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuNiaResultConvertProvider.kt\ncom/onyx/android/sdk/hwr/sunia/convert/SuNiaResultConvertProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,40:1\n1549#2:41\n1620#2,2:42\n1549#2:44\n1620#2,3:45\n1622#2:48\n*S KotlinDebug\n*F\n+ 1 SuNiaResultConvertProvider.kt\ncom/onyx/android/sdk/hwr/sunia/convert/SuNiaResultConvertProvider\n*L\n25#1:41\n25#1:42,2\n26#1:44\n26#1:45,3\n25#1:48\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00040\u00042\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/sunia/convert/SuNiaResultConvertProvider;",
        "Lcom/onyx/android/sdk/hwr/service/convert/HWRResultConvertProvider;",
        "()V",
        "convert",
        "",
        "Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;",
        "rawResult",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
        "segmentationLevel",
        "",
        "sdk-sunia_overseasRelease"
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
        "SMAP\nSuNiaResultConvertProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuNiaResultConvertProvider.kt\ncom/onyx/android/sdk/hwr/sunia/convert/SuNiaResultConvertProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,40:1\n1549#2:41\n1620#2,2:42\n1549#2:44\n1620#2,3:45\n1622#2:48\n*S KotlinDebug\n*F\n+ 1 SuNiaResultConvertProvider.kt\ncom/onyx/android/sdk/hwr/sunia/convert/SuNiaResultConvertProvider\n*L\n25#1:41\n25#1:42,2\n26#1:44\n26#1:45,3\n25#1:48\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/util/List;I)Ljava/util/List;
    .locals 17
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
            ">;>;I)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "rawResult"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaOutputUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaOutputUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaOutputUtils;->extractTextLines(Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/hwr/data/bean/HWRTextLine;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/hwr/data/bean/HWRTextLine;->getChars()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;->getBoundBox()Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;->toRectF()Landroid/graphics/RectF;

    move-result-object v7

    if-nez v7, :cond_2

    :cond_1
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    :cond_2
    move-object v10, v7

    new-instance v7, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;->getLabel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;->getSourcePointGroup()Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x38

    const/16 v16, 0x0

    move-object v8, v7

    invoke-direct/range {v8 .. v16}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;-><init>(Ljava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;Landroid/graphics/Matrix;ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;

    invoke-direct {v4}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;-><init>()V

    sget-object v5, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->INSTANCE:Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->ensureDefaultFontPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->createLineBox(Ljava/lang/String;Ljava/util/List;)Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;

    move-result-object v4

    if-nez v4, :cond_4

    new-instance v4, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    move-object v7, v4

    invoke-direct/range {v7 .. v13}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;-><init>(Ljava/util/List;FLandroid/graphics/RectF;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_4
    new-instance v13, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/hwr/data/bean/HWRTextLine;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x18

    const/4 v12, 0x0

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;-><init>(Ljava/util/List;Ljava/lang/String;Landroid/graphics/RectF;Ljava/lang/String;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;

    invoke-static {v13}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getLineDegrees()F

    move-result v6

    invoke-virtual {v4}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v13}, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v5, v6, v4, v7}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;-><init>(Ljava/util/List;FLandroid/graphics/RectF;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/onyx/android/sdk/neohwr/layout/TextLayout;->INSTANCE:Lcom/onyx/android/sdk/neohwr/layout/TextLayout;

    sget-object v2, Lcom/onyx/android/sdk/hwr/sunia/convert/SuNiaResultConvertProvider$convert$1;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/convert/SuNiaResultConvertProvider$convert$1;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/neohwr/layout/TextLayout;->groupBlockLines(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
