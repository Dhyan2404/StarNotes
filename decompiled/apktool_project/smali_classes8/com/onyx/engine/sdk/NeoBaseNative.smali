.class public interface abstract Lcom/onyx/engine/sdk/NeoBaseNative;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract abortLayout()V
.end method

.method public abstract abortSearch()V
.end method

.method public abstract canGotoPage(Lcom/onyx/engine/sdk/PageInfo;)Z
.end method

.method public abstract close()V
.end method

.method public abstract compatiblePosition(Ljava/util/List;)Ljava/util/List;
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
.end method

.method public abstract createPDFConverter()Lcom/onyx/engine/sdk/NeoPDFConverterNative;
.end method

.method public abstract drawPage(Landroid/graphics/Bitmap;)Z
.end method

.method public abstract drawPage(Lcom/onyx/engine/sdk/PageInfo;Landroid/graphics/Bitmap;)Z
.end method

.method public abstract forkForPagination()Lcom/onyx/engine/sdk/NeoBaseNative;
.end method

.method public abstract fromPositionInt(Ljava/util/List;)Ljava/util/List;
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
.end method

.method public abstract fromUtf8PositionInt(Ljava/util/List;)Ljava/util/List;
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
.end method

.method public generateEpub(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Not implemented"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getBookSize()I
.end method

.method public getCellOfScreenList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/CellOfScreen;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/onyx/engine/sdk/TextRunParameter;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/TextRunParameter;-><init>()V

    invoke-interface {p0, v0}, Lcom/onyx/engine/sdk/NeoBaseNative;->getCellOfScreenList(Lcom/onyx/engine/sdk/TextRunParameter;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCellOfScreenList(Lcom/onyx/engine/sdk/TextRunParameter;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/engine/sdk/TextRunParameter;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/CellOfScreen;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p0, p1}, Lcom/onyx/engine/sdk/NeoBaseNative;->getTextRunList(Lcom/onyx/engine/sdk/TextRunParameter;)Ljava/util/List;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/engine/sdk/TextRun;

    .line 5
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/TextRun;->getCellOfScreenList()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getChapterIdList(I)Lcom/onyx/engine/sdk/DataList$StringList;
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-interface {p0, v0, p1}, Lcom/onyx/engine/sdk/NeoBaseNative;->getChapterIdList(II)Lcom/onyx/engine/sdk/DataList$StringList;

    move-result-object p0

    return-object p0
.end method

.method public abstract getChapterIdList(II)Lcom/onyx/engine/sdk/DataList$StringList;
.end method

.method public getChapterIdList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x64

    invoke-interface {p0, v1, v2}, Lcom/onyx/engine/sdk/NeoBaseNative;->getChapterIdList(II)Lcom/onyx/engine/sdk/DataList$StringList;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/onyx/engine/sdk/DataList;->getList()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/onyx/engine/sdk/Utils;->safelyAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget v4, v1, Lcom/onyx/engine/sdk/DataList;->total:I

    if-ge v3, v4, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/onyx/engine/sdk/DataList;->size()I

    move-result v1

    if-ge v1, v2, :cond_0

    :cond_1
    return-object v0
.end method

.method public getChapterList(I)Lcom/onyx/engine/sdk/Chapter$ChapterList;
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-interface {p0, v0, p1}, Lcom/onyx/engine/sdk/NeoBaseNative;->getChapterList(II)Lcom/onyx/engine/sdk/Chapter$ChapterList;

    move-result-object p0

    return-object p0
.end method

.method public abstract getChapterList(II)Lcom/onyx/engine/sdk/Chapter$ChapterList;
.end method

.method public getChapterList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/Chapter;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x64

    invoke-interface {p0, v1, v2}, Lcom/onyx/engine/sdk/NeoBaseNative;->getChapterList(II)Lcom/onyx/engine/sdk/Chapter$ChapterList;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/onyx/engine/sdk/DataList;->getList()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/onyx/engine/sdk/Utils;->safelyAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget v4, v1, Lcom/onyx/engine/sdk/DataList;->total:I

    if-ge v3, v4, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/onyx/engine/sdk/DataList;->size()I

    move-result v1

    if-ge v1, v2, :cond_0

    :cond_1
    return-object v0
.end method

.method public abstract getCurrentPage()Lcom/onyx/engine/sdk/PageInfo;
.end method

.method public abstract getDirection()Lcom/onyx/engine/sdk/PageProgressionDirection;
.end method

.method public abstract getFontFamilyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/FontSpec;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImagePage(I)Lcom/onyx/engine/sdk/ImageInfo;
.end method

.method public abstract getLayoutTime(Z)J
.end method

.method public abstract getLinkTarget(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/LinkInfo;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract getMetadata()Lcom/onyx/engine/sdk/Metadata;
.end method

.method public abstract getPageImages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/ImageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPageLinks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/LinkInfo;",
            ">;"
        }
    .end annotation
.end method

.method public getScreenData()Lcom/onyx/engine/sdk/ScreenData;
    .locals 1

    .line 1
    new-instance v0, Lcom/onyx/engine/sdk/TextRunParameter;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/TextRunParameter;-><init>()V

    invoke-interface {p0, v0}, Lcom/onyx/engine/sdk/NeoBaseNative;->getScreenData(Lcom/onyx/engine/sdk/TextRunParameter;)Lcom/onyx/engine/sdk/ScreenData;

    move-result-object p0

    return-object p0
.end method

.method public abstract getScreenData(Lcom/onyx/engine/sdk/TextRunParameter;)Lcom/onyx/engine/sdk/ScreenData;
.end method

.method public getSentenceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/Sentence;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/onyx/engine/sdk/SentenceParameter;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/SentenceParameter;-><init>()V

    invoke-interface {p0, v0}, Lcom/onyx/engine/sdk/NeoBaseNative;->getSentenceList(Lcom/onyx/engine/sdk/SentenceParameter;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public abstract getSentenceList(Lcom/onyx/engine/sdk/SentenceParameter;)Ljava/util/List;
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
.end method

.method public abstract getTableOfContent(Lcom/onyx/engine/sdk/TableOfContent$TocParameter;)Lcom/onyx/engine/sdk/TableOfContent$EntryList;
.end method

.method public getTableOfContent()Lcom/onyx/engine/sdk/TableOfContent;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-interface {p0, v0}, Lcom/onyx/engine/sdk/NeoBaseNative;->getTableOfContent(Z)Lcom/onyx/engine/sdk/TableOfContent;

    move-result-object p0

    return-object p0
.end method

.method public getTableOfContent(Z)Lcom/onyx/engine/sdk/TableOfContent;
    .locals 2

    .line 2
    new-instance v0, Lcom/onyx/engine/sdk/TableOfContent;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/TableOfContent;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/onyx/engine/sdk/TableOfContent;->setLoadPosition(Z)Lcom/onyx/engine/sdk/TableOfContent;

    .line 4
    new-instance v1, Lcom/onyx/engine/sdk/TableOfContent$TocParameter;

    invoke-direct {v1}, Lcom/onyx/engine/sdk/TableOfContent$TocParameter;-><init>()V

    .line 5
    iput-boolean p1, v1, Lcom/onyx/engine/sdk/TableOfContent$TocParameter;->loadPosition:Z

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, v1, Lcom/onyx/engine/sdk/TableOfContent$TocParameter;->loadRootTitle:Z

    .line 7
    iput-boolean p1, v1, Lcom/onyx/engine/sdk/TableOfContent$TocParameter;->recursive:Z

    .line 8
    invoke-virtual {v0}, Lcom/onyx/engine/sdk/TableOfContent;->getRoot()Lcom/onyx/engine/sdk/TableOfContentEntry;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Lcom/onyx/engine/sdk/NeoBaseNative;->getTableOfContent(Lcom/onyx/engine/sdk/TableOfContentEntry;Lcom/onyx/engine/sdk/TableOfContent$TocParameter;)Z

    return-object v0
.end method

.method public getTableOfContent(Lcom/onyx/engine/sdk/TableOfContentEntry;Lcom/onyx/engine/sdk/TableOfContent$TocParameter;)Z
    .locals 6

    .line 9
    :goto_0
    invoke-interface {p0, p2}, Lcom/onyx/engine/sdk/NeoBaseNative;->getTableOfContent(Lcom/onyx/engine/sdk/TableOfContent$TocParameter;)Lcom/onyx/engine/sdk/TableOfContent$EntryList;

    move-result-object v0

    .line 10
    iget v1, v0, Lcom/onyx/engine/sdk/DataList;->total:I

    invoke-virtual {p1, v1}, Lcom/onyx/engine/sdk/TableOfContentEntry;->setChildrenSize(I)V

    .line 11
    iget-object v1, v0, Lcom/onyx/engine/sdk/DataList;->list:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/onyx/engine/sdk/TableOfContentEntry;->addAll(Ljava/util/List;)V

    .line 12
    iget-boolean v1, p2, Lcom/onyx/engine/sdk/TableOfContent$TocParameter;->loadRootTitle:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 13
    iget-object v1, v0, Lcom/onyx/engine/sdk/TableOfContent$EntryList;->title:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/onyx/engine/sdk/TableOfContentEntry;->setTitle(Ljava/lang/String;)V

    .line 14
    iput-boolean v2, p2, Lcom/onyx/engine/sdk/TableOfContent$TocParameter;->loadRootTitle:Z

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/TableOfContentEntry;->size()I

    move-result v1

    iget v3, v0, Lcom/onyx/engine/sdk/DataList;->total:I

    if-ge v1, v3, :cond_2

    .line 16
    invoke-virtual {v0}, Lcom/onyx/engine/sdk/DataList;->size()I

    move-result v0

    iget v1, p2, Lcom/onyx/engine/sdk/BatchParameter;->limit:I

    if-ge v0, v1, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/TableOfContentEntry;->size()I

    move-result v0

    iput v0, p2, Lcom/onyx/engine/sdk/BatchParameter;->start:I

    goto :goto_0

    .line 18
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/TableOfContentEntry;->getChildrenSize()I

    move-result v0

    if-gtz v0, :cond_3

    .line 19
    iget-object p0, p2, Lcom/onyx/engine/sdk/TableOfContent$TocParameter;->path:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    return v2

    .line 20
    :cond_3
    iget-boolean v0, p2, Lcom/onyx/engine/sdk/TableOfContent$TocParameter;->recursive:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    return v1

    .line 21
    :cond_4
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/TableOfContentEntry;->getChildren()Ljava/util/List;

    move-result-object p1

    move v0, v2

    .line 22
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 23
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/engine/sdk/TableOfContentEntry;

    .line 24
    invoke-virtual {v3}, Lcom/onyx/engine/sdk/TableOfContentEntry;->getChildrenSize()I

    move-result v4

    if-lez v4, :cond_5

    .line 25
    iput v2, p2, Lcom/onyx/engine/sdk/BatchParameter;->start:I

    .line 26
    iget-object v4, p2, Lcom/onyx/engine/sdk/TableOfContent$TocParameter;->path:Ljava/util/ArrayDeque;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 27
    invoke-interface {p0, v3, p2}, Lcom/onyx/engine/sdk/NeoBaseNative;->getTableOfContent(Lcom/onyx/engine/sdk/TableOfContentEntry;Lcom/onyx/engine/sdk/TableOfContent$TocParameter;)Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 28
    :cond_6
    iget-object p0, p2, Lcom/onyx/engine/sdk/TableOfContent$TocParameter;->path:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    return v1
.end method

.method public abstract getText(II)Ljava/lang/String;
.end method

.method public getTextRunList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/TextRun;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/onyx/engine/sdk/TextRunParameter;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/TextRunParameter;-><init>()V

    invoke-interface {p0, v0}, Lcom/onyx/engine/sdk/NeoBaseNative;->getTextRunList(Lcom/onyx/engine/sdk/TextRunParameter;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public abstract getTextRunList(Lcom/onyx/engine/sdk/TextRunParameter;)Ljava/util/List;
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
.end method

.method public abstract gotoPage(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;
.end method

.method public abstract hasGrayArea(Lcom/onyx/engine/sdk/GrayAreaParameter;)Z
.end method

.method public abstract hasNextPage(Lcom/onyx/engine/sdk/PageInfo;)Z
.end method

.method public abstract isImagePage(I)Z
.end method

.method public abstract nextPage(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;
.end method

.method public abstract open(Lcom/onyx/engine/sdk/OpenOptions;)Lcom/onyx/engine/sdk/BookOpenResult;
.end method

.method public abstract readBitmap(Lcom/onyx/engine/sdk/Resource;)Landroid/graphics/Bitmap;
.end method

.method public abstract readCover()Landroid/graphics/Bitmap;
.end method

.method public abstract recycleChapter(I)V
.end method

.method public abstract recycleChapter(Ljava/lang/String;)V
.end method

.method public abstract search(Lcom/onyx/engine/sdk/SearchOptions;)Ljava/util/List;
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
.end method

.method public abstract setReaderTextStyle(Lcom/onyx/engine/sdk/ReaderTextStyle;)Z
.end method

.method public abstract setupDisplayMetrics(Lcom/onyx/engine/sdk/DisplayMetrics;)Z
.end method
