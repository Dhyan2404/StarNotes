.class public final Lcom/onyx/android/sdk/reader/extension/ReaderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u0012\u0010\u0003\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u0012\u0010\u0003\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0004\u001a\u0012\u0010\u0008\u001a\u00020\t*\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b\u001a\u001a\u0010\u0008\u001a\u00020\t*\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\t\u001a\u0012\u0010\r\u001a\u00020\t*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0006\u001a\n\u0010\u000f\u001a\u00020\u0010*\u00020\u0002\u001a\u0012\u0010\u0011\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0013\u001a\n\u0010\u0014\u001a\u00020\u0001*\u00020\u0002\u001a\u0012\u0010\u0015\u001a\u00020\u0016*\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b\u001a\u0012\u0010\u0017\u001a\u00020\u0016*\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b\u001a\u0012\u0010\u0018\u001a\u00020\u0019*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u001b\u001a\u0014\u0010\u001c\u001a\u00020\u0001*\u00020\u00022\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u001a\n\u0010\u001f\u001a\u00020\u0016*\u00020\u0002\u00a8\u0006 "
    }
    d2 = {
        "close",
        "",
        "Lcom/onyx/android/sdk/reader/Reader;",
        "getPageText",
        "",
        "pageIndex",
        "",
        "pageId",
        "getReaderPageInfo",
        "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
        "position",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "readerPageInfo",
        "getReaderPageInfoAndText",
        "index",
        "loadToc",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;",
        "open",
        "openDocumentArgs",
        "Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;",
        "reopen",
        "safeGetPageOriginSize",
        "Landroid/graphics/RectF;",
        "safeGetPageSizeWithDpi",
        "safeRender",
        "",
        "args",
        "Lcom/onyx/android/sdk/reader/api/DrawArgs;",
        "updateEntryToc",
        "entry",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;",
        "viewportRect",
        "sdk-reader_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final close(Lcom/onyx/android/sdk/reader/Reader;)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/reader/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->isDocumentOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->getDocument()Lcom/onyx/android/sdk/reader/api/ReaderDocument;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/reader/api/ReaderDocument;->close()Z

    :cond_0
    return-void
.end method

.method public static final getPageText(Lcom/onyx/android/sdk/reader/Reader;I)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/reader/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator;->positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->getPageDataProvider()Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;->getPageText(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static final getPageText(Lcom/onyx/android/sdk/reader/Reader;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0    # Lcom/onyx/android/sdk/reader/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->positionByPositionString$default(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Ljava/lang/String;ZILjava/lang/Object;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->getPageDataProvider()Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;->getPageText(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static final getReaderPageInfo(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/reader/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;-><init>()V

    .line 2
    invoke-static {p0, p1, v0}, Lcom/onyx/android/sdk/reader/extension/ReaderKt;->getReaderPageInfo(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final getReaderPageInfo(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/reader/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerPageInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->getDocumentPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;->setPath(Ljava/lang/String;)V

    .line 4
    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;->setPageId(Ljava/lang/String;)V

    .line 5
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/extension/ReaderKt;->safeGetPageOriginSize(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;->setPageOriginSize(Landroid/graphics/RectF;)V

    .line 6
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/extension/ReaderKt;->safeGetPageSizeWithDpi(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;->setPageSizeWithDpi(Landroid/graphics/RectF;)V

    return-object p2
.end method

.method public static final getReaderPageInfoAndText(Lcom/onyx/android/sdk/reader/Reader;I)Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/reader/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator;->positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/extension/ReaderKt;->getReaderPageInfo(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->getPageDataProvider()Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;->getPageText(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;->setPageText(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final loadToc(Lcom/onyx/android/sdk/reader/Reader;)Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
    .locals 3
    .param p0    # Lcom/onyx/android/sdk/reader/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->getDocument()Lcom/onyx/android/sdk/reader/api/ReaderDocument;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/onyx/android/sdk/reader/api/ReaderDocument;->readTableOfContent(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;->getRootEntry()Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/reader/extension/ReaderKt;->updateEntryToc(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V

    return-object v0
.end method

.method public static final open(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;)V
    .locals 23
    .param p0    # Lcom/onyx/android/sdk/reader/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v7, p0

    const-string v0, "<this>"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "openDocumentArgs"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;->getSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v8

    invoke-virtual {v7, v2}, Lcom/onyx/android/sdk/reader/Reader;->selectPlugin(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderPlugin;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x7ff

    const/16 v22, 0x0

    move-object v9, v4

    invoke-direct/range {v9 .. v22}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;ZZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;->getExtraOptions()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;->setExtraOptions(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;->setDocumentPassword(Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions$Companion;

    sget-object v5, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions$Companion;->create(Landroid/content/Context;)Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;

    move-result-object v5

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/TemplatePaths;

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->templatePathDirList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;->setResDirs(Ljava/util/List;)V

    invoke-interface {v3, v2, v4, v5}, Lcom/onyx/android/sdk/reader/api/ReaderPlugin;->open(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;)Lcom/onyx/android/sdk/reader/api/ReaderDocument;

    move-result-object v6

    invoke-interface {v3}, Lcom/onyx/android/sdk/reader/api/ReaderPlugin;->createDrmManager()Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;

    move-result-object v9

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/onyx/android/sdk/reader/Reader;->onDocumentOpen(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderPlugin;Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;Lcom/onyx/android/sdk/reader/api/ReaderDocument;Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;)V

    invoke-virtual {v7, v8}, Lcom/onyx/android/sdk/reader/Reader;->initViewSize(Lcom/onyx/android/sdk/base/data/Size;)V

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderException;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderException$Companion;

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/reader/api/ReaderException$Companion;->illegalFormat(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderException;

    move-result-object v0

    throw v0
.end method

.method public static final reopen(Lcom/onyx/android/sdk/reader/Reader;)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/reader/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->isDocumentOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->getPlugin()Lcom/onyx/android/sdk/reader/api/ReaderPlugin;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/reader/api/ReaderPlugin;->reopen()Z

    :cond_0
    return-void
.end method

.method public static final safeGetPageOriginSize(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Landroid/graphics/RectF;
    .locals 3
    .param p0    # Lcom/onyx/android/sdk/reader/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->getPageDataProvider()Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;->getPageOriginSize(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", pageOriginSize empty, return default value"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/onyx/android/sdk/reader/config/ReaderConfig;->INSTANCE:Lcom/onyx/android/sdk/reader/config/ReaderConfig;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/config/ReaderConfig;->getDEFAULT_SIZE()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Size;->toRectF()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static final safeGetPageSizeWithDpi(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Landroid/graphics/RectF;
    .locals 3
    .param p0    # Lcom/onyx/android/sdk/reader/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->getPageDataProvider()Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;

    move-result-object v0

    const v1, 0x437db0a4    # 253.69f

    invoke-interface {v0, p1, v1}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;->getPageSizeWithDpi(Lcom/onyx/android/sdk/reader/api/ReaderPosition;F)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", pageSizeWithDpi empty, return default value"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/onyx/android/sdk/reader/config/ReaderConfig;->INSTANCE:Lcom/onyx/android/sdk/reader/config/ReaderConfig;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/config/ReaderConfig;->getDEFAULT_SIZE()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Size;->toRectF()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static final safeRender(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/reader/api/DrawArgs;)Z
    .locals 2
    .param p0    # Lcom/onyx/android/sdk/reader/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/DrawArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->getRenderer()Lcom/onyx/android/sdk/reader/api/ReaderRenderer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderRenderer;->draw(Lcom/onyx/android/sdk/reader/api/DrawArgs;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "render fail, args = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getPagePosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->wTag(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final updateEntryToc(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/reader/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator;->updateTocPageIndex(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getChildren()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/reader/extension/ReaderKt;->updateEntryToc(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static final viewportRect(Lcom/onyx/android/sdk/reader/Reader;)Landroid/graphics/RectF;
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/reader/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->getViewSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Size;->toRectF()Landroid/graphics/RectF;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method
