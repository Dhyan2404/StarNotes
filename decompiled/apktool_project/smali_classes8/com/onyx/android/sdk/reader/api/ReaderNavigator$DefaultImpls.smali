.class public final Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static firstPage(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator;->positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public static getChapterId(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "position"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getChapterName(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "position"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public static getChapterStartPosition(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "position"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static getImagePage(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Lcom/onyx/android/sdk/reader/api/ReaderImage;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "position"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getImages(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/util/List;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderNavigator;",
            "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderImage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "position"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getLinkTarget(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderSelection;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSelection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "link"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public static getLinkTargetSelection(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderSelection;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSelection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "link"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLinks(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/util/List;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderNavigator;",
            "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "position"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getPageIndexInCurrentChapter(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)I
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public static getPageLabel(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "position"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public static getPageLabelList(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)Ljava/util/List;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderNavigator;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getPageNumberByPosition(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "position"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static getRichMedias(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;[Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderNavigator;",
            "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderRichMedia;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "position"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ignoreObjIdList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getScreenEndPosition(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;->getDummy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public static getScreenStartPosition(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;->getDummy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public static getTotalPage(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)I
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public static getTotalPageCountInCurrentChapter(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)I
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public static getTotalReadingProgress(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)F
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public static getXPathByPosition(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "position"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public static gotoPosition(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/api/ReaderException;
        }
    .end annotation

    const-string p0, "position"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static hitPageCache(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "position"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static isFirstPage(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public static isImagePage(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "position"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static isLastPage(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public static isValidPosition(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "position"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static lastPage(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-interface {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator;->getTotalPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator;->positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public static nextPage(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/api/ReaderException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "position"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;->getDummy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public static nextScreen(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/api/ReaderException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "position"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;->getDummy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public static positionByPageIndex(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;->getDummy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public static positionByPositionInt(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;->getDummy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public static positionByPositionString(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Ljava/lang/String;Z)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "positionString"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;->getDummy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic positionByPositionString$default(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Ljava/lang/String;ZILjava/lang/Object;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator;->positionByPositionString(Ljava/lang/String;Z)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: positionByPositionString"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static prevPage(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/api/ReaderException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "position"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;->getDummy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public static prevScreen(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/api/ReaderException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "position"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;->getDummy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public static supportPageId(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public static updateTocPageIndex(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p0, "toc"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static updateTocPageIndex(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    const-string p0, "entry"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
