.class public final Lcom/onyx/android/sdk/hwr/service/convert/MLResultConvertProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/hwr/service/convert/HWRResultConvertProvider;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMLResultConvertProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MLResultConvertProvider.kt\ncom/onyx/android/sdk/hwr/service/convert/MLResultConvertProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,51:1\n1855#2:52\n1855#2,2:53\n1856#2:55\n1549#2:56\n1620#2,3:57\n1549#2:60\n1620#2,3:61\n*S KotlinDebug\n*F\n+ 1 MLResultConvertProvider.kt\ncom/onyx/android/sdk/hwr/service/convert/MLResultConvertProvider\n*L\n23#1:52\n24#1:53,2\n23#1:55\n38#1:56\n38#1:57,3\n47#1:60\n47#1:61,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rJ*\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00022\u0012\u0010\u0004\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00022\u0006\u0010\t\u001a\u00020\u0003H\u0002\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/service/convert/MLResultConvertProvider;",
        "Lcom/onyx/android/sdk/hwr/service/convert/HWRResultConvertProvider;",
        "",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
        "rawResult",
        "",
        "segmentationLevel",
        "Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;",
        "convert",
        "output",
        "Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;",
        "a",
        "<init>",
        "()V",
        "sdk-hwr_release"
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
        "SMAP\nMLResultConvertProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MLResultConvertProvider.kt\ncom/onyx/android/sdk/hwr/service/convert/MLResultConvertProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,51:1\n1855#2:52\n1855#2,2:53\n1856#2:55\n1549#2:56\n1620#2,3:57\n1549#2:60\n1620#2,3:61\n*S KotlinDebug\n*F\n+ 1 MLResultConvertProvider.kt\ncom/onyx/android/sdk/hwr/service/convert/MLResultConvertProvider\n*L\n23#1:52\n24#1:53,2\n23#1:55\n38#1:56\n38#1:57,3\n47#1:60\n47#1:61,3\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;->getResult()Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->getChars()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v9, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;-><init>(Ljava/util/List;Ljava/lang/String;Landroid/graphics/RectF;Ljava/lang/String;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Ljava/lang/Iterable;

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

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;

    new-instance v4, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3f

    const/16 v18, 0x0

    move-object v10, v4

    invoke-direct/range {v10 .. v18}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;-><init>(Ljava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;Landroid/graphics/Matrix;ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->setText(Ljava/lang/String;)V

    sget-object v5, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;->getSourcePointGroup()Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;->getPoints()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->boundRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->setRegion(Landroid/graphics/RectF;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;->getSourcePointGroup()Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;->copy()Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->setSourcePointGroup(Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;->getSourcePointGroup()Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;->getStrokeColor()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->setTextColor(I)V

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v9, v1}, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;->setChars(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/onyx/android/sdk/base/extension/StringKt;->join$default(Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;->setText(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;->getRegion()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;->setRegion(Landroid/graphics/RectF;)V

    invoke-static {v9}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public convert(Ljava/util/List;I)Ljava/util/List;
    .locals 6
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

    const-string p2, "rawResult"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;->getResult()Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->getCandidates()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->getText()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;->getPointMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixRotateAngel(Landroid/graphics/Matrix;)F

    move-result v3

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/hwr/service/convert/MLResultConvertProvider;->a(Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;->getRegion()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v5, v4, v3, v1, v2}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;-><init>(Ljava/util/List;FLandroid/graphics/RectF;Ljava/lang/String;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/onyx/android/sdk/neohwr/layout/TextLayout;->INSTANCE:Lcom/onyx/android/sdk/neohwr/layout/TextLayout;

    sget-object p1, Lcom/onyx/android/sdk/hwr/service/convert/MLResultConvertProvider$convert$2;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/convert/MLResultConvertProvider$convert$2;

    invoke-virtual {p0, p2, p1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayout;->groupBlockLines(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
