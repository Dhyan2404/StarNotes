.class public Lcom/onyx/engine/sdk/NeoHtmlNative;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/engine/sdk/NeoBaseNative;


# instance fields
.field private bookSize:I

.field private handle:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeAbortLayout(J)V
.end method

.method private native nativeAbortSearch(J)V
.end method

.method private native nativeCanGotoPage(JLjava/lang/String;)Z
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeCompatiblePosition(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeDrawPage(JLjava/lang/String;Landroid/graphics/Bitmap;)Z
.end method

.method private native nativeForkForPagination(J)J
.end method

.method private native nativeFromPositionInt(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeFromUtf8PositionInt(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetChapterIdList(JII)Ljava/lang/String;
.end method

.method private native nativeGetChapterList(JII)Ljava/lang/String;
.end method

.method private native nativeGetCurrentPage(J)Ljava/lang/String;
.end method

.method private native nativeGetDirection(J)I
.end method

.method private native nativeGetFontFamilyList(J)Ljava/lang/String;
.end method

.method private native nativeGetImagePage(JI)Ljava/lang/String;
.end method

.method private native nativeGetLayoutTime(JZ)J
.end method

.method private native nativeGetLinkTarget(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetMetadata(J)Ljava/lang/String;
.end method

.method private native nativeGetPageImages(J)Ljava/lang/String;
.end method

.method private native nativeGetPageLinks(J)Ljava/lang/String;
.end method

.method private native nativeGetScreenData(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetSentenceList(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetTableOfContent(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetText(JII)Ljava/lang/String;
.end method

.method private native nativeGetTextRunList(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGotoPage(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeHasGrayArea(JLjava/lang/String;)Z
.end method

.method private native nativeHasNextPage(JLjava/lang/String;)Z
.end method

.method private native nativeHasPrevPage(JLjava/lang/String;)Z
.end method

.method private native nativeIsImagePage(JI)Z
.end method

.method private native nativeNextPage(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeOpen(Ljava/lang/String;Lcom/onyx/engine/sdk/DrmSDK;)Ljava/lang/String;
.end method

.method private native nativePrevPage(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeReadBitmap(JLjava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method private native nativeReadCover(J)Landroid/graphics/Bitmap;
.end method

.method private native nativeRecycleChapter(JLjava/lang/String;)V
.end method

.method private native nativeRecycleChapterByIndex(JI)V
.end method

.method private native nativeSearch(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeSetReaderTextStyle(JLjava/lang/String;)Z
.end method

.method private native nativeSetupDisplayMetrics(JLjava/lang/String;)Z
.end method


# virtual methods
.method public abortLayout()V
    .locals 2

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-direct {p0, v0, v1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeAbortLayout(J)V

    return-void
.end method

.method public abortSearch()V
    .locals 2

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-direct {p0, v0, v1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeAbortSearch(J)V

    return-void
.end method

.method public canGotoPage(Lcom/onyx/engine/sdk/PageInfo;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getStartPositionInt()I

    move-result v0

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->bookSize:I

    if-ge v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeCanGotoPage(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public close()V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->bookSize:I

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeClose(J)V

    iput-wide v2, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    :cond_0
    return-void
.end method

.method public compatiblePosition(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/CompatiblePosition;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/CompatiblePosition;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-static {p1}, Lcom/onyx/engine/sdk/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeCompatiblePosition(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/engine/sdk/CompatiblePosition;->parseList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public createPDFConverter()Lcom/onyx/engine/sdk/NeoPDFConverterNative;
    .locals 3

    new-instance v0, Lcom/onyx/engine/sdk/NeoPDFConverterNative;

    iget-wide v1, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    iget p0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->bookSize:I

    invoke-direct {v0, v1, v2, p0}, Lcom/onyx/engine/sdk/NeoPDFConverterNative;-><init>(JI)V

    return-object v0
.end method

.method public drawPage(Landroid/graphics/Bitmap;)Z
    .locals 3

    .line 2
    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeDrawPage(JLjava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method public drawPage(Lcom/onyx/engine/sdk/PageInfo;Landroid/graphics/Bitmap;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeDrawPage(JLjava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic forkForPagination()Lcom/onyx/engine/sdk/NeoBaseNative;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/engine/sdk/NeoHtmlNative;->forkForPagination()Lcom/onyx/engine/sdk/NeoHtmlNative;

    move-result-object p0

    return-object p0
.end method

.method public forkForPagination()Lcom/onyx/engine/sdk/NeoHtmlNative;
    .locals 3

    .line 2
    new-instance v0, Lcom/onyx/engine/sdk/NeoHtmlNative;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/NeoHtmlNative;-><init>()V

    .line 3
    iget-wide v1, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-direct {p0, v1, v2}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeForkForPagination(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    .line 4
    iget p0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->bookSize:I

    iput p0, v0, Lcom/onyx/engine/sdk/NeoHtmlNative;->bookSize:I

    return-object v0
.end method

.method public fromPositionInt(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/PinPosition;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-static {p1}, Lcom/onyx/engine/sdk/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeFromPositionInt(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/engine/sdk/PinPosition;->parseList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public fromUtf8PositionInt(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/PinPosition;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-static {p1}, Lcom/onyx/engine/sdk/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeFromUtf8PositionInt(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/engine/sdk/PinPosition;->parseList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBookSize()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->bookSize:I

    return p0
.end method

.method public getChapterIdList(II)Lcom/onyx/engine/sdk/DataList$StringList;
    .locals 2

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeGetChapterIdList(JII)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/engine/sdk/DataList$StringList;->fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/DataList$StringList;

    move-result-object p0

    return-object p0
.end method

.method public getChapterList(II)Lcom/onyx/engine/sdk/Chapter$ChapterList;
    .locals 2

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeGetChapterList(JII)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/engine/sdk/Chapter$ChapterList;->fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/Chapter$ChapterList;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentPage()Lcom/onyx/engine/sdk/PageInfo;
    .locals 2

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-direct {p0, v0, v1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeGetCurrentPage(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/engine/sdk/PageInfo;->fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDirection()Lcom/onyx/engine/sdk/PageProgressionDirection;
    .locals 2

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-direct {p0, v0, v1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeGetDirection(J)I

    move-result p0

    invoke-static {p0}, Lcom/onyx/engine/sdk/PageProgressionDirection;->valueOf(I)Lcom/onyx/engine/sdk/PageProgressionDirection;

    move-result-object p0

    return-object p0
.end method

.method public getFontFamilyList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/FontSpec;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-direct {p0, v0, v1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeGetFontFamilyList(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/engine/sdk/FontSpec;->parseList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getImagePage(I)Lcom/onyx/engine/sdk/ImageInfo;
    .locals 2

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeGetImagePage(JI)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/engine/sdk/ImageInfo;->fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/ImageInfo;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutTime(Z)J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeGetLayoutTime(JZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getLinkTarget(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/LinkInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v1, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-static {p1}, Lcom/onyx/engine/sdk/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeGetLinkTarget(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/engine/sdk/LinkTarget;->parseList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/engine/sdk/LinkInfo;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/engine/sdk/LinkTarget;

    invoke-virtual {v1, v2}, Lcom/onyx/engine/sdk/LinkInfo;->setTarget(Lcom/onyx/engine/sdk/LinkTarget;)Lcom/onyx/engine/sdk/LinkInfo;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public getMetadata()Lcom/onyx/engine/sdk/Metadata;
    .locals 2

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-direct {p0, v0, v1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeGetMetadata(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/engine/sdk/Metadata;->fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/Metadata;

    move-result-object p0

    return-object p0
.end method

.method public getPageImages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/ImageInfo;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-direct {p0, v0, v1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeGetPageImages(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/engine/sdk/ScreenData;->fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/ScreenData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/ScreenData;->getImageList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPageLinks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/LinkInfo;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-direct {p0, v0, v1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeGetPageLinks(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/engine/sdk/ScreenData;->fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/ScreenData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/ScreenData;->getLinkList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getScreenData(Lcom/onyx/engine/sdk/TextRunParameter;)Lcom/onyx/engine/sdk/ScreenData;
    .locals 2

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/TextRunParameter;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeGetScreenData(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/engine/sdk/ScreenData;->fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/ScreenData;

    move-result-object p0

    return-object p0
.end method

.method public getSentenceList(Lcom/onyx/engine/sdk/SentenceParameter;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/engine/sdk/SentenceParameter;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/Sentence;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/SentenceParameter;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeGetSentenceList(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/engine/sdk/Sentence;->parseList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTableOfContent(Lcom/onyx/engine/sdk/TableOfContent$TocParameter;)Lcom/onyx/engine/sdk/TableOfContent$EntryList;
    .locals 2

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/BatchParameter;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeGetTableOfContent(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/engine/sdk/TableOfContent$EntryList;->fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/TableOfContent$EntryList;

    move-result-object p0

    return-object p0
.end method

.method public getText(II)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeGetText(JII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextRunList(Lcom/onyx/engine/sdk/TextRunParameter;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/engine/sdk/TextRunParameter;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/TextRun;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/TextRunParameter;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeGetTextRunList(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/engine/sdk/ScreenData;->fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/ScreenData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/ScreenData;->getTextRunList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public gotoPage(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;
    .locals 2

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeGotoPage(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/engine/sdk/PageInfo;->fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p0

    return-object p0
.end method

.method public hasGrayArea(Lcom/onyx/engine/sdk/GrayAreaParameter;)Z
    .locals 2

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/GrayAreaParameter;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeHasGrayArea(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hasNextPage(Lcom/onyx/engine/sdk/PageInfo;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getStartPositionInt()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getEndPositionInt()I

    move-result v0

    iget v1, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->bookSize:I

    if-ge v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeHasNextPage(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hasPrevPage(Lcom/onyx/engine/sdk/PageInfo;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getStartPositionInt()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->bookSize:I

    if-ge v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeHasPrevPage(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isImagePage(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeIsImagePage(JI)Z

    move-result p0

    return p0
.end method

.method public nextPage(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;
    .locals 2

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeNextPage(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/engine/sdk/PageInfo;->fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p0

    return-object p0
.end method

.method public open(Lcom/onyx/engine/sdk/OpenOptions;)Lcom/onyx/engine/sdk/BookOpenResult;
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/OpenOptions;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/OpenOptions;->getDrmCallback()Lcom/onyx/engine/sdk/DrmSDK;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeOpen(Ljava/lang/String;Lcom/onyx/engine/sdk/DrmSDK;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/engine/sdk/BookOpenResult;->fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/BookOpenResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/BookOpenResult;->getErr()Lcom/onyx/engine/sdk/HandleErrorCode;

    move-result-object v0

    sget-object v1, Lcom/onyx/engine/sdk/HandleErrorCode;->OK:Lcom/onyx/engine/sdk/HandleErrorCode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/BookOpenResult;->getHandle()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/BookOpenResult;->getBookSize()I

    move-result v0

    iput v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->bookSize:I

    :cond_0
    return-object p1
.end method

.method public prevPage(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;
    .locals 2

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativePrevPage(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/engine/sdk/PageInfo;->fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p0

    return-object p0
.end method

.method public readBitmap(Lcom/onyx/engine/sdk/Resource;)Landroid/graphics/Bitmap;
    .locals 2

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/Resource;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeReadBitmap(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public readCover()Landroid/graphics/Bitmap;
    .locals 2

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-direct {p0, v0, v1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeReadCover(J)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public recycleChapter(I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeRecycleChapterByIndex(JI)V

    return-void
.end method

.method public recycleChapter(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeRecycleChapter(JLjava/lang/String;)V

    return-void
.end method

.method public search(Lcom/onyx/engine/sdk/SearchOptions;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/engine/sdk/SearchOptions;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/SearchResult;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/SearchOptions;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeSearch(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/engine/sdk/ChapterSearchResult;->parseList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public setReaderTextStyle(Lcom/onyx/engine/sdk/ReaderTextStyle;)Z
    .locals 2

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/ReaderTextStyle;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeSetReaderTextStyle(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setupDisplayMetrics(Lcom/onyx/engine/sdk/DisplayMetrics;)Z
    .locals 2

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoHtmlNative;->handle:J

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/DisplayMetrics;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/NeoHtmlNative;->nativeSetupDisplayMetrics(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method
