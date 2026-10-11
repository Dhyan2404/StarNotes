.class public final Lcom/onyx/android/sdk/universal/editor/extension/ContentSelectionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContentSelection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentSelection.kt\ncom/onyx/android/sdk/universal/editor/extension/ContentSelectionKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,52:1\n1549#2:53\n1620#2,3:54\n*S KotlinDebug\n*F\n+ 1 ContentSelection.kt\ncom/onyx/android/sdk/universal/editor/extension/ContentSelectionKt\n*L\n37#1:53\n37#1:54,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "toSaveTextExcerptArgs",
        "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "boxInfo",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;",
        "sdk-universal_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nContentSelection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentSelection.kt\ncom/onyx/android/sdk/universal/editor/extension/ContentSelectionKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,52:1\n1549#2:53\n1620#2,3:54\n*S KotlinDebug\n*F\n+ 1 ContentSelection.kt\ncom/onyx/android/sdk/universal/editor/extension/ContentSelectionKt\n*L\n37#1:53\n37#1:54,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final toSaveTextExcerptArgs(Lcom/onyx/android/sdk/reader/api/ReaderSelection;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;
    .locals 2
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderSelection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;-><init>()V

    .line 2
    invoke-interface {p0}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->rectangles()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copyRectFList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->setDisplayRectFList(Ljava/util/List;)V

    .line 3
    invoke-interface {p0}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->text()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->replaceLinebreakFromParagraph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->setQuote(Ljava/lang/String;)V

    .line 4
    invoke-interface {p0}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->selectionRange()Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/api/PageRange;->getStartPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->setStartPosition(Ljava/lang/String;)V

    .line 5
    invoke-interface {p0}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->selectionRange()Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/api/PageRange;->getEndPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->setEndPosition(Ljava/lang/String;)V

    .line 6
    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/ReaderWritingModeKt;->toAnnotationWritingMode(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->setWritingMode(Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;)V

    .line 7
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getExcerptShapeAttrOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->forceGet()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->copy()Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->setExcerptAttr(Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;)V

    .line 8
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->setVirtualPageBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-object v0
.end method

.method public static final toSaveTextExcerptArgs(Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;
    .locals 4
    .param p0    # Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->noteRenderMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->getRectFList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 13
    check-cast v3, Landroid/graphics/RectF;

    .line 14
    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    .line 15
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 16
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;-><init>()V

    .line 19
    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->setDisplayRectFList(Ljava/util/List;)V

    .line 20
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->getQuote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->setQuote(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->getStartPosition()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->setStartPosition(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->getEndPosition()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->setEndPosition(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->getWritingMode()Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->setWritingMode(Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;)V

    .line 24
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getExcerptShapeAttrOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->forceGet()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->copy()Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->setExcerptAttr(Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;)V

    .line 25
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->setVirtualPageBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-object v1
.end method
