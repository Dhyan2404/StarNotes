.class public final Lcom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextShapeSegmenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextShapeSegmenter.kt\ncom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,232:1\n1549#2:233\n1620#2,3:234\n1360#2:239\n1446#2,2:240\n1549#2:242\n1620#2,2:243\n1360#2:245\n1446#2,2:246\n1549#2:248\n1620#2,3:249\n1448#2,3:252\n1622#2:255\n1448#2,3:256\n37#3,2:237\n*S KotlinDebug\n*F\n+ 1 TextShapeSegmenter.kt\ncom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter\n*L\n211#1:233\n211#1:234,3\n222#1:239\n222#1:240,2\n223#1:242\n223#1:243,2\n224#1:245\n224#1:246,2\n225#1:248\n225#1:249,3\n224#1:252,3\n223#1:255\n222#1:256,3\n215#1:237,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0005\u00a2\u0006\u0002\u0010\u0002J2\u0010\u0003\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u00060\u0004j\u0002`\u00070\u00042\u0010\u0010\u0008\u001a\u000c\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter;",
        "",
        "()V",
        "segmentLines",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
        "Lcom/onyx/android/sdk/note/common/text/layout/TextShapeSegment;",
        "Lcom/onyx/android/sdk/note/common/text/layout/TextShapeLine;",
        "shapes",
        "Lcom/onyx/android/sdk/note/common/text/layout/TextShapeList;",
        "Companion",
        "sdk-note_overseasRelease"
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
        "SMAP\nTextShapeSegmenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextShapeSegmenter.kt\ncom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,232:1\n1549#2:233\n1620#2,3:234\n1360#2:239\n1446#2,2:240\n1549#2:242\n1620#2,2:243\n1360#2:245\n1446#2,2:246\n1549#2:248\n1620#2,3:249\n1448#2,3:252\n1622#2:255\n1448#2,3:256\n37#3,2:237\n*S KotlinDebug\n*F\n+ 1 TextShapeSegmenter.kt\ncom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter\n*L\n211#1:233\n211#1:234,3\n222#1:239\n222#1:240,2\n223#1:242\n223#1:243,2\n224#1:245\n224#1:246,2\n225#1:248\n225#1:249,3\n224#1:252,3\n223#1:255\n222#1:256,3\n215#1:237,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter;->Companion:Lcom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final segmentLines(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "shapes"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getFontFace()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;->clone(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/neohwr/segmenter/InputTextShape;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixRotateAngel(Landroid/graphics/Matrix;)F

    move-result v2

    neg-float v2, v2

    invoke-direct {v3, v4, v2, v1}, Lcom/onyx/android/sdk/neohwr/segmenter/InputTextShape;-><init>(Landroid/graphics/RectF;FLjava/lang/Object;)V

    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [Lcom/onyx/android/sdk/neohwr/segmenter/InputTextShape;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/onyx/android/sdk/neohwr/segmenter/InputTextShape;

    new-instance p1, Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmentResult;

    invoke-direct {p1}, Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmentResult;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmenter;->INSTANCE:Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmenter;

    invoke-virtual {v1, p0, p1}, Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmenter;->segmentTextShapes([Lcom/onyx/android/sdk/neohwr/segmenter/InputTextShape;Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmentResult;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmentResult;->getBlocks()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/neohwr/segmenter/TextBlock;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neohwr/segmenter/TextBlock;->getLines()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;

    sget-object v4, Lcom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter;->Companion:Lcom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter$Companion;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;->getElements()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/neohwr/segmenter/TextElement;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/neohwr/segmenter/TextElement;->getShapes()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v6, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/android/sdk/neohwr/segmenter/InputShape;

    const-string v9, "null cannot be cast to non-null type com.onyx.android.sdk.neohwr.segmenter.InputTextShape"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lcom/onyx/android/sdk/neohwr/segmenter/InputTextShape;

    invoke-virtual {v8}, Lcom/onyx/android/sdk/neohwr/segmenter/InputTextShape;->getTag()Ljava/lang/Object;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type com.onyx.android.sdk.note.common.shape.object.HWRTextShape"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_3

    :cond_4
    invoke-static {v4, v5}, Lcom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter$Companion;->access$segmentLineCharacters(Lcom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter$Companion;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto/16 :goto_1

    :cond_6
    return-object p1
.end method
