.class public final Lcom/onyx/android/sdk/reader/cbox/page/BookManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d8\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010f\u001a\u00020d\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u00a2\u0006\u0006\u0008\u0092\u0001\u0010\u0093\u0001J\u0016\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J \u0010\u000c\u001a\u00020\u000b2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00022\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0002J\u0016\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fJ\u000e\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0013J\u0016\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0007J\u000e\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u0019J\u000e\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001cJ\u000e\u0010!\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u001fJ\u0018\u0010#\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tJ\u0006\u0010$\u001a\u00020\u0013J\u0006\u0010&\u001a\u00020%J\u0006\u0010(\u001a\u00020\'J\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u000f0)J\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020,0+J\u0006\u0010/\u001a\u00020.J\u0006\u00100\u001a\u00020.J\u0006\u00101\u001a\u00020,J\u0006\u00102\u001a\u00020\u0005J\u0006\u00103\u001a\u00020\u0005J\u0006\u00104\u001a\u00020\u0005J\u0010\u00106\u001a\u0004\u0018\u00010.2\u0006\u00105\u001a\u00020.J\u0008\u00107\u001a\u0004\u0018\u00010.J\u0008\u00108\u001a\u0004\u0018\u00010.J\u000e\u0010;\u001a\u00020.2\u0006\u0010:\u001a\u000209J\u000e\u0010=\u001a\u00020\u00032\u0006\u0010<\u001a\u00020\u0007J\u000e\u0010=\u001a\u00020\u00032\u0006\u0010>\u001a\u00020\u000fJ\u000e\u0010?\u001a\u00020\u000b2\u0006\u0010<\u001a\u00020\'J\u0006\u0010@\u001a\u00020\u0007J\u000e\u0010B\u001a\u00020\'2\u0006\u0010A\u001a\u00020\u0007J\u000e\u0010C\u001a\u00020\u00072\u0006\u0010<\u001a\u00020\'J\u000e\u0010F\u001a\u00020\u00052\u0006\u0010E\u001a\u00020DJ\u000e\u0010(\u001a\u00020\'2\u0006\u0010G\u001a\u00020\u000fJ\u0006\u0010H\u001a\u00020\u0007J\u000e\u0010I\u001a\u00020\u000f2\u0006\u0010<\u001a\u00020\u0007J\u0010\u0010J\u001a\u0004\u0018\u00010\u000f2\u0006\u0010<\u001a\u00020\u0007J\u0006\u0010K\u001a\u00020\u0003J\u0006\u0010L\u001a\u00020\u0003J\u000e\u0010O\u001a\u00020\u000b2\u0006\u0010N\u001a\u00020MJ\u0010\u0010Q\u001a\u0004\u0018\u00010P2\u0006\u0010N\u001a\u00020MJ\u000e\u0010R\u001a\u00020\u000b2\u0006\u0010G\u001a\u00020\u000fJ\u0006\u0010S\u001a\u00020\u000bJ\u0006\u0010T\u001a\u00020\u000bJ\u0006\u0010U\u001a\u00020\u001fJ\u0006\u0010V\u001a\u00020\u000fJ\u0006\u0010W\u001a\u00020\u000fJ\u0006\u0010X\u001a\u00020\u000bJ\u0006\u0010Y\u001a\u00020\u0005J\u000e\u0010[\u001a\u00020\u00052\u0006\u0010Z\u001a\u00020\u000bJ\u0006\u0010\\\u001a\u00020\u000bJ\u0006\u0010]\u001a\u00020\u000bJ\u0006\u0010^\u001a\u00020\u0005J\u000e\u0010_\u001a\u00020\u00052\u0006\u0010>\u001a\u00020\u000fJ\u0018\u0010a\u001a\u0014\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030)0`J\u0006\u0010b\u001a\u00020\u0005J\u0006\u0010c\u001a\u00020\u0005R\u0014\u0010f\u001a\u00020d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010eR\u0014\u0010\u001a\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010gR \u0010k\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020,0h8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008i\u0010jR\u0014\u0010n\u001a\u00020%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008l\u0010mR\u0016\u0010q\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008o\u0010pR\u0014\u0010u\u001a\u00020r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008s\u0010tR\u0014\u0010y\u001a\u00020v8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008w\u0010xR\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008z\u0010{R&\u0010\u0083\u0001\u001a\u00020|8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0004\u0008}\u0010~\u001a\u0005\u0008\u007f\u0010\u0080\u0001\"\u0006\u0008\u0081\u0001\u0010\u0082\u0001R*\u0010\u0085\u0001\u001a\u00030\u0084\u00018\u0006@\u0006X\u0086.\u00a2\u0006\u0018\n\u0006\u0008\u0085\u0001\u0010\u0086\u0001\u001a\u0006\u0008\u0087\u0001\u0010\u0088\u0001\"\u0006\u0008\u0089\u0001\u0010\u008a\u0001R)\u0010\u0091\u0001\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u008b\u0001\u0010\u008c\u0001\u001a\u0006\u0008\u008d\u0001\u0010\u008e\u0001\"\u0006\u0008\u008f\u0001\u0010\u0090\u0001\u00a8\u0006\u0094\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/cbox/page/BookManager;",
        "",
        "",
        "Lcom/onyx/engine/sdk/Chapter;",
        "chapters",
        "",
        "b",
        "",
        "list",
        "",
        "colorTable",
        "",
        "a",
        "Lcom/onyx/engine/sdk/OpenOptions;",
        "options",
        "",
        "bookKeyCode",
        "Lcom/onyx/engine/sdk/BookOpenResult;",
        "open",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;",
        "style",
        "setStyle",
        "width",
        "height",
        "setViewSize",
        "Lcom/onyx/engine/sdk/DisplayMetrics;",
        "displayMetrics",
        "setupDisplayMetrics",
        "Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;",
        "convertType",
        "setChineseConvertType",
        "",
        "gamma",
        "setTextGamma",
        "threshold",
        "setFontEnhancement",
        "getStyle",
        "Lcom/onyx/engine/sdk/ReaderTextStyle;",
        "getEngineStyle",
        "Lcom/onyx/engine/sdk/PinPosition;",
        "getInitPosition",
        "",
        "getChapterIdList",
        "",
        "Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;",
        "getChapterList",
        "Lcom/onyx/engine/sdk/PageInfo;",
        "getCurrentPage",
        "layoutCurrentPage",
        "getCurrentChapter",
        "updateReadTextStyle",
        "updateDisplayMetrics",
        "updateStyle",
        "page",
        "gotoPage",
        "prevPage",
        "nextPage",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "drawPage",
        "position",
        "getChapter",
        "chapterId",
        "hitPageCache",
        "getTotalPage",
        "pageNumber",
        "getPositionOfPageNumber",
        "getPageNumberOfPosition",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;",
        "toc",
        "updateTocPageNumber",
        "chapterID",
        "getBookPositionInt",
        "getChapterID",
        "getChapterName",
        "getNextScreenChapter",
        "getPrevScreenChapter",
        "Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;",
        "info",
        "hasPaginationNext",
        "Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;",
        "paginationNext",
        "isPaginationComplete",
        "isAllPaginationComplete",
        "isCurrentChapterPaginationComplete",
        "getPaginationProgress",
        "getStyleHashKey",
        "getScreenDataHashKey",
        "onPaginationStart",
        "onPaginationFinally",
        "abort",
        "setAbortPagination",
        "isAbortPagination",
        "isNeedClearPaginationCache",
        "clearPaginationCache",
        "updateReaderPageInfo",
        "",
        "getChaptersGroupByPath",
        "close",
        "destroy",
        "Lcom/onyx/engine/sdk/NeoBaseNative;",
        "Lcom/onyx/engine/sdk/NeoBaseNative;",
        "neoNative",
        "Lcom/onyx/engine/sdk/DisplayMetrics;",
        "Ljava/util/LinkedHashMap;",
        "c",
        "Ljava/util/LinkedHashMap;",
        "chapterMap",
        "d",
        "Lcom/onyx/engine/sdk/ReaderTextStyle;",
        "engineTextStyle",
        "e",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;",
        "readerTextStyle",
        "Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;",
        "f",
        "Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;",
        "layoutManager",
        "Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;",
        "g",
        "Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;",
        "paginateManager",
        "h",
        "Ljava/lang/String;",
        "Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;",
        "i",
        "Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;",
        "getDirection",
        "()Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;",
        "setDirection",
        "(Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;)V",
        "direction",
        "Lcom/onyx/engine/sdk/Metadata;",
        "metadata",
        "Lcom/onyx/engine/sdk/Metadata;",
        "getMetadata",
        "()Lcom/onyx/engine/sdk/Metadata;",
        "setMetadata",
        "(Lcom/onyx/engine/sdk/Metadata;)V",
        "j",
        "Z",
        "getCanBuy",
        "()Z",
        "setCanBuy",
        "(Z)V",
        "canBuy",
        "<init>",
        "(Lcom/onyx/engine/sdk/NeoBaseNative;Lcom/onyx/engine/sdk/DisplayMetrics;)V",
        "sdk-readercore_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/engine/sdk/NeoBaseNative;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/engine/sdk/DisplayMetrics;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/onyx/engine/sdk/ReaderTextStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Ljava/lang/String;

.field public i:Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Z

.field public metadata:Lcom/onyx/engine/sdk/Metadata;


# direct methods
.method public constructor <init>(Lcom/onyx/engine/sdk/NeoBaseNative;Lcom/onyx/engine/sdk/DisplayMetrics;)V
    .locals 2
    .param p1    # Lcom/onyx/engine/sdk/NeoBaseNative;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/engine/sdk/DisplayMetrics;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "neoNative"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayMetrics"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    iput-object p2, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->b:Lcom/onyx/engine/sdk/DisplayMetrics;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->c:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/onyx/engine/sdk/ReaderTextStyle;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/ReaderTextStyle;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->d:Lcom/onyx/engine/sdk/ReaderTextStyle;

    sget-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Companion;->defaultStyle()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->e:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;

    new-instance v1, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;-><init>(Lcom/onyx/engine/sdk/NeoBaseNative;)V

    iput-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->f:Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;

    new-instance v1, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;

    invoke-direct {v1, p1, p2, v0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;-><init>(Lcom/onyx/engine/sdk/NeoBaseNative;Lcom/onyx/engine/sdk/DisplayMetrics;Lcom/onyx/engine/sdk/ReaderTextStyle;)V

    iput-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;

    sget-object p1, Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;->LTR:Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->i:Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;[I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;[I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0

    :cond_0
    array-length p0, p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object p0

    invoke-static {p0, p2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0
.end method

.method public final b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/engine/sdk/Chapter;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/engine/sdk/Chapter;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/Chapter;->getChapterId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getChapterId(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    invoke-direct {v3, v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;-><init>(Lcom/onyx/engine/sdk/Chapter;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/Chapter;->isBuy()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->j:Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final clearPaginationCache()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->clearPaginationCache()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->updateStyle()V

    return-void
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->f:Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->close()V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->close()V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-interface {v0}, Lcom/onyx/engine/sdk/NeoBaseNative;->abortSearch()V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-interface {v0}, Lcom/onyx/engine/sdk/NeoBaseNative;->close()V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public final destroy()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-interface {p0}, Lcom/onyx/engine/sdk/NeoBaseNative;->abortSearch()V

    return-void
.end method

.method public final drawPage(Landroid/graphics/Bitmap;)Lcom/onyx/engine/sdk/PageInfo;
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->f:Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->drawPage(Landroid/graphics/Bitmap;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getBookPositionInt()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->f:Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->getBookPositionInt()I

    move-result p0

    return p0
.end method

.method public final getCanBuy()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->j:Z

    return p0
.end method

.method public final getChapter(I)Lcom/onyx/engine/sdk/Chapter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/cbox/exception/PageException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    .line 2
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/onyx/engine/sdk/Chapter;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    new-instance p0, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not found chapter by position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getChapter(Ljava/lang/String;)Lcom/onyx/engine/sdk/Chapter;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/cbox/exception/PageException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "chapterId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->f:Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->getChapter(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object p0

    return-object p0
.end method

.method public final getChapterID(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/cbox/exception/PageException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/onyx/engine/sdk/Chapter;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/Chapter;->getChapterId()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getChapterId(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not found chapter id by position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getChapterIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    const-string v0, "<get-keys>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getChapterList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "<get-values>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getChapterName(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/cbox/exception/PageException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/onyx/engine/sdk/Chapter;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/Chapter;->getChapterName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not found chapter name by position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getChaptersGroupByPath()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/Chapter;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/engine/sdk/Chapter;->getBasePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/engine/sdk/Chapter;->getBasePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getBasePath(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getCurrentChapter()Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->f:Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->getCurrentChapter()Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrentPage()Lcom/onyx/engine/sdk/PageInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->f:Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->getCurrentPage()Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getDirection()Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->i:Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;

    return-object p0
.end method

.method public final getEngineStyle()Lcom/onyx/engine/sdk/ReaderTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->d:Lcom/onyx/engine/sdk/ReaderTextStyle;

    return-object p0
.end method

.method public final getInitPosition()Lcom/onyx/engine/sdk/PinPosition;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/onyx/engine/sdk/PinPosition;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const-string v1, "<get-values>(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/engine/sdk/PinPosition;-><init>(Lcom/onyx/engine/sdk/Chapter;)V

    return-object v0
.end method

.method public final getInitPosition(Ljava/lang/String;)Lcom/onyx/engine/sdk/PinPosition;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "chapterID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->getChapter(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    move-result-object p0

    .line 3
    new-instance p1, Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/onyx/engine/sdk/PinPosition;-><init>(Lcom/onyx/engine/sdk/Chapter;)V

    return-object p1
.end method

.method public final getMetadata()Lcom/onyx/engine/sdk/Metadata;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->metadata:Lcom/onyx/engine/sdk/Metadata;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "metadata"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getNextScreenChapter()Lcom/onyx/engine/sdk/Chapter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/api/ReaderException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->f:Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->getNextScreenChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object p0

    return-object p0
.end method

.method public final getPageNumberOfPosition(Lcom/onyx/engine/sdk/PinPosition;)I
    .locals 1
    .param p1    # Lcom/onyx/engine/sdk/PinPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->f:Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->getPageNumberOfPosition(Lcom/onyx/engine/sdk/PinPosition;)I

    move-result p0

    return p0
.end method

.method public final getPaginationProgress()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->getPaginationProgress()F

    move-result p0

    return p0
.end method

.method public final getPositionOfPageNumber(I)Lcom/onyx/engine/sdk/PinPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->f:Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->getPositionOfPageNumber(I)Lcom/onyx/engine/sdk/PinPosition;

    move-result-object p0

    return-object p0
.end method

.method public final getPrevScreenChapter()Lcom/onyx/engine/sdk/Chapter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/api/ReaderException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->f:Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->getPrevScreenChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object p0

    return-object p0
.end method

.method public final getScreenDataHashKey()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->d:Lcom/onyx/engine/sdk/ReaderTextStyle;

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/ReaderTextStyle;->getLayoutStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->b:Lcom/onyx/engine/sdk/DisplayMetrics;

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/DisplayMetrics;->getLayoutStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->d:Lcom/onyx/engine/sdk/ReaderTextStyle;

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/ReaderTextStyle;->getAlignment()Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->i:Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getStyle()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->e:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;

    return-object p0
.end method

.method public final getStyleHashKey()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->getStyleHashKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTotalPage()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->f:Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->getTotalPage()I

    move-result p0

    return p0
.end method

.method public final gotoPage(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;
    .locals 1
    .param p1    # Lcom/onyx/engine/sdk/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->f:Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->gotoPage(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final hasPaginationNext(Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->hasPaginationNext(Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;)Z

    move-result p0

    return p0
.end method

.method public final hitPageCache(Lcom/onyx/engine/sdk/PinPosition;)Z
    .locals 1
    .param p1    # Lcom/onyx/engine/sdk/PinPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->f:Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->hitPageCache(Lcom/onyx/engine/sdk/PinPosition;)Z

    move-result p0

    return p0
.end method

.method public final isAbortPagination()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->isAbortPagination()Z

    move-result p0

    return p0
.end method

.method public final isAllPaginationComplete()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->isAllPaginationComplete()Z

    move-result p0

    return p0
.end method

.method public final isCurrentChapterPaginationComplete()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->f:Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->getCurrentChapter()Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->isPaginationComplete()Z

    move-result p0

    return p0
.end method

.method public final isNeedClearPaginationCache()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->isNeedClearPaginationCache()Z

    move-result p0

    return p0
.end method

.method public final isPaginationComplete(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "chapterID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->isPaginationComplete(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final layoutCurrentPage()Lcom/onyx/engine/sdk/PageInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->f:Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->layoutCurrentPage()Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final nextPage()Lcom/onyx/engine/sdk/PageInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->f:Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->nextPage()Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final onPaginationFinally()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->onPaginationFinally()V

    return-void
.end method

.method public final onPaginationStart()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->onPaginationStart()Z

    move-result p0

    return p0
.end method

.method public final open(Lcom/onyx/engine/sdk/OpenOptions;Ljava/lang/String;)Lcom/onyx/engine/sdk/BookOpenResult;
    .locals 2
    .param p1    # Lcom/onyx/engine/sdk/OpenOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bookKeyCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-interface {v0, p1}, Lcom/onyx/engine/sdk/NeoBaseNative;->open(Lcom/onyx/engine/sdk/OpenOptions;)Lcom/onyx/engine/sdk/BookOpenResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/BookOpenResult;->getErr()Lcom/onyx/engine/sdk/HandleErrorCode;

    move-result-object v0

    sget-object v1, Lcom/onyx/engine/sdk/HandleErrorCode;->OK:Lcom/onyx/engine/sdk/HandleErrorCode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->d:Lcom/onyx/engine/sdk/ReaderTextStyle;

    invoke-interface {v0, v1}, Lcom/onyx/engine/sdk/NeoBaseNative;->setReaderTextStyle(Lcom/onyx/engine/sdk/ReaderTextStyle;)Z

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->b:Lcom/onyx/engine/sdk/DisplayMetrics;

    invoke-interface {v0, v1}, Lcom/onyx/engine/sdk/NeoBaseNative;->setupDisplayMetrics(Lcom/onyx/engine/sdk/DisplayMetrics;)Z

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->setBookKeyCode(Ljava/lang/String;)V

    sget-object p2, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-interface {v0}, Lcom/onyx/engine/sdk/NeoBaseNative;->getDirection()Lcom/onyx/engine/sdk/PageProgressionDirection;

    move-result-object v0

    const-string v1, "getDirection(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->convert(Lcom/onyx/engine/sdk/PageProgressionDirection;)Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;

    move-result-object p2

    iput-object p2, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->i:Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;

    iget-object p2, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-interface {p2}, Lcom/onyx/engine/sdk/NeoBaseNative;->getMetadata()Lcom/onyx/engine/sdk/Metadata;

    move-result-object p2

    const-string v0, "getMetadata(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->setMetadata(Lcom/onyx/engine/sdk/Metadata;)V

    iget-object p2, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-interface {p2}, Lcom/onyx/engine/sdk/NeoBaseNative;->getChapterList()Ljava/util/List;

    move-result-object p2

    const-string v0, "getChapterList(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->b(Ljava/util/List;)V

    iget-object p2, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->f:Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->setChapter(Ljava/util/LinkedHashMap;)V

    iget-object p2, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->setChapter(Ljava/util/LinkedHashMap;)V

    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final paginationNext(Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;)Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->paginationNext(Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;)Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;->getUpdateReaderPageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->f:Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->getCurrentChapter()Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->copy()Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->setPaginationChapter(Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;)V

    :cond_0
    return-object p1
.end method

.method public final prevPage()Lcom/onyx/engine/sdk/PageInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->f:Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->prevPage()Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final setAbortPagination(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->setAbortPagination(Z)V

    return-void
.end method

.method public final setCanBuy(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->j:Z

    return-void
.end method

.method public final setChineseConvertType(Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;)Z
    .locals 1
    .param p1    # Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "convertType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->d:Lcom/onyx/engine/sdk/ReaderTextStyle;

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->getChineseConvertType()Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->d:Lcom/onyx/engine/sdk/ReaderTextStyle;

    invoke-virtual {v0, p1}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setChineseConvertType(Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->updateReadTextStyle()V

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final setDirection(Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->i:Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;

    return-void
.end method

.method public final setFontEnhancement(I[I)Z
    .locals 2
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->d:Lcom/onyx/engine/sdk/ReaderTextStyle;

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->getThreshold()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->d:Lcom/onyx/engine/sdk/ReaderTextStyle;

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->getColorTable()Ljava/util/List;

    move-result-object v0

    const-string v1, "getColorTable(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->a(Ljava/util/List;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->d:Lcom/onyx/engine/sdk/ReaderTextStyle;

    invoke-virtual {v0, p1}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setThreshold(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->d:Lcom/onyx/engine/sdk/ReaderTextStyle;

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/ReaderTextStyle;->getColorTable()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->d:Lcom/onyx/engine/sdk/ReaderTextStyle;

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/ReaderTextStyle;->getColorTable()Ljava/util/List;

    move-result-object p1

    invoke-static {p2}, Lkotlin/collections/ArraysKt;->toList([I)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->updateReadTextStyle()V

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final setMetadata(Lcom/onyx/engine/sdk/Metadata;)V
    .locals 1
    .param p1    # Lcom/onyx/engine/sdk/Metadata;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->metadata:Lcom/onyx/engine/sdk/Metadata;

    return-void
.end method

.method public final setStyle(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;)Z
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "style"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->e:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;

    iget-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->d:Lcom/onyx/engine/sdk/ReaderTextStyle;

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/ReaderTextStyle;->hashCode()I

    move-result p1

    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->b:Lcom/onyx/engine/sdk/DisplayMetrics;

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/DisplayMetrics;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->b:Lcom/onyx/engine/sdk/DisplayMetrics;

    invoke-virtual {v2}, Lcom/onyx/engine/sdk/DisplayMetrics;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->e:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;

    iget-object v4, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->d:Lcom/onyx/engine/sdk/ReaderTextStyle;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->updateReaderTextStyle(IILcom/onyx/android/sdk/reader/api/ReaderTextStyle;Lcom/onyx/engine/sdk/ReaderTextStyle;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->d:Lcom/onyx/engine/sdk/ReaderTextStyle;

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->hashCode()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->updateReadTextStyle()V

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final setTextGamma(F)Z
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->d:Lcom/onyx/engine/sdk/ReaderTextStyle;

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->getTextGamma()F

    move-result v0

    cmpg-float v0, v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->d:Lcom/onyx/engine/sdk/ReaderTextStyle;

    invoke-virtual {v0, p1}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setTextGamma(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->updateReadTextStyle()V

    :goto_1
    return v1
.end method

.method public final setViewSize(II)Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->b:Lcom/onyx/engine/sdk/DisplayMetrics;

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/DisplayMetrics;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->b:Lcom/onyx/engine/sdk/DisplayMetrics;

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/DisplayMetrics;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->b:Lcom/onyx/engine/sdk/DisplayMetrics;

    invoke-virtual {v0, p1}, Lcom/onyx/engine/sdk/DisplayMetrics;->setWidth(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->b:Lcom/onyx/engine/sdk/DisplayMetrics;

    invoke-virtual {p1, p2}, Lcom/onyx/engine/sdk/DisplayMetrics;->setHeight(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->updateDisplayMetrics()V

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final setupDisplayMetrics(Lcom/onyx/engine/sdk/DisplayMetrics;)Z
    .locals 1
    .param p1    # Lcom/onyx/engine/sdk/DisplayMetrics;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "displayMetrics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->b:Lcom/onyx/engine/sdk/DisplayMetrics;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->b:Lcom/onyx/engine/sdk/DisplayMetrics;

    invoke-virtual {v0, p1}, Lcom/onyx/engine/sdk/DisplayMetrics;->copy(Lcom/onyx/engine/sdk/DisplayMetrics;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->updateDisplayMetrics()V

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final updateDisplayMetrics()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->b:Lcom/onyx/engine/sdk/DisplayMetrics;

    invoke-interface {v0, v1}, Lcom/onyx/engine/sdk/NeoBaseNative;->setupDisplayMetrics(Lcom/onyx/engine/sdk/DisplayMetrics;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->updateStyle()V

    return-void
.end method

.method public final updateReadTextStyle()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->d:Lcom/onyx/engine/sdk/ReaderTextStyle;

    invoke-interface {v0, v1}, Lcom/onyx/engine/sdk/NeoBaseNative;->setReaderTextStyle(Lcom/onyx/engine/sdk/ReaderTextStyle;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->updateStyle()V

    return-void
.end method

.method public final updateReaderPageInfo(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "chapterId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->f:Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->updateReaderPageInfo(Ljava/lang/String;)V

    return-void
.end method

.method public final updateStyle()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->setAbortPagination(Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->updateStyle()V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->f:Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->getChapterMap()Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->updateStyle(Ljava/util/LinkedHashMap;)V

    return-void
.end method

.method public final updateTocPageNumber(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "toc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->f:Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->updateTocPageNumber(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)V

    return-void
.end method
