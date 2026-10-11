.class public final Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/reader/api/ReaderPlugin;
.implements Lcom/onyx/android/sdk/reader/api/ReaderDocument;
.implements Lcom/onyx/android/sdk/reader/api/ReaderView;
.implements Lcom/onyx/android/sdk/reader/api/ReaderRenderer;
.implements Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
.implements Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;
.implements Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;
.implements Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;
.implements Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;
.implements Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;
.implements Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures;
.implements Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;
.implements Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;
.implements Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter;
.implements Lcom/onyx/android/sdk/reader/api/ReaderPagination;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 \u0085\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\u00082\u00020\t2\u00020\n2\u00020\u000b2\u00020\u000c2\u00020\r2\u00020\u000e2\u00020\u000f:\u0002\u0085\u0001B\t\u00a2\u0006\u0006\u0008\u0083\u0001\u0010\u0084\u0001J\u0008\u0010\u0011\u001a\u00020\u0010H\u0016J \u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\u0008\u0010\u0018\u001a\u00020\u0000H\u0016J\u0010\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016J\u0010\u0010\u001f\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016J\u0008\u0010 \u001a\u00020\u0000H\u0016J\u0008\u0010!\u001a\u00020\u0000H\u0016J\u0008\u0010\"\u001a\u00020\u0000H\u0016J\u0008\u0010#\u001a\u00020\u0000H\u0016J\u0008\u0010$\u001a\u00020\u0000H\u0016J\u0010\u0010(\u001a\u00020\'2\u0006\u0010&\u001a\u00020%H\u0016J\u0008\u0010)\u001a\u00020\u001bH\u0016J\u0008\u0010*\u001a\u00020\u001bH\u0016J\u0010\u0010.\u001a\u00020-2\u0006\u0010,\u001a\u00020+H\u0016J\u0008\u00100\u001a\u00020/H\u0016J\u0010\u00101\u001a\u00020%2\u0006\u0010&\u001a\u00020%H\u0016J\u0010\u00102\u001a\u00020%2\u0006\u0010&\u001a\u00020%H\u0016J\u0010\u00103\u001a\u00020%2\u0006\u0010&\u001a\u00020%H\u0016J\u0010\u00104\u001a\u00020%2\u0006\u0010&\u001a\u00020%H\u0016J\u0008\u00105\u001a\u00020%H\u0016J\u0008\u00106\u001a\u00020%H\u0016J\u0010\u00107\u001a\u00020/2\u0006\u0010&\u001a\u00020%H\u0016J\u0010\u00108\u001a\u00020-2\u0006\u0010&\u001a\u00020%H\u0016J\u0008\u00109\u001a\u00020\u0000H\u0016J\u0008\u0010:\u001a\u00020\u0000H\u0016J\u0008\u0010;\u001a\u00020\u0000H\u0016J\u0008\u0010<\u001a\u00020-H\u0016J\u0016\u0010?\u001a\u0008\u0012\u0004\u0012\u00020>0=2\u0006\u0010&\u001a\u00020%H\u0016J\u0010\u0010@\u001a\u00020-2\u0006\u0010&\u001a\u00020%H\u0016J\u0008\u0010A\u001a\u00020\u0000H\u0016J\u0010\u0010D\u001a\u00020-2\u0006\u0010C\u001a\u00020BH\u0016J\u0008\u0010E\u001a\u00020%H\u0016J\u0010\u0010G\u001a\u00020%2\u0006\u0010F\u001a\u00020/H\u0016J\u0010\u0010I\u001a\u00020%2\u0006\u0010H\u001a\u00020/H\u0016J\u0018\u0010L\u001a\u00020%2\u0006\u0010J\u001a\u00020\u00102\u0006\u0010K\u001a\u00020-H\u0016J\u0008\u0010M\u001a\u00020-H\u0016J\u0008\u0010N\u001a\u00020\u0000H\u0016J\u0010\u0010Q\u001a\u00020\u001b2\u0006\u0010P\u001a\u00020OH\u0016J\u0010\u0010T\u001a\n\u0012\u0004\u0012\u00020S\u0018\u00010RH\u0016J\n\u0010U\u001a\u0004\u0018\u00010\u000eH\u0016J\u001a\u0010Y\u001a\u00020/2\u0006\u0010C\u001a\u00020V2\u0008\u0010X\u001a\u0004\u0018\u00010WH\u0016J\u000e\u0010Z\u001a\u0008\u0012\u0004\u0012\u00020\u00100=H\u0016J\u0010\u0010\\\u001a\u00020%2\u0006\u0010[\u001a\u00020\u0010H\u0016J\u0012\u0010_\u001a\u00020-2\u0008\u0010^\u001a\u0004\u0018\u00010]H\u0016J\u0012\u0010`\u001a\u0004\u0018\u00010]2\u0006\u0010^\u001a\u00020]H\u0016J\u0008\u0010a\u001a\u00020-H\u0016J\u0008\u0010b\u001a\u00020-H\u0016J\u0008\u0010d\u001a\u00020cH\u0016J\u0008\u0010e\u001a\u00020-H\u0016J\u0008\u0010f\u001a\u00020\u001bH\u0016J\u0010\u0010h\u001a\u00020\u001b2\u0006\u0010g\u001a\u00020-H\u0016J\u0008\u0010i\u001a\u00020-H\u0016J\u0008\u0010j\u001a\u00020-H\u0016J\u0008\u0010k\u001a\u00020\u001bH\u0016J\u0008\u0010l\u001a\u00020\u001bH\u0016J\u0010\u0010n\u001a\u00020\u001b2\u0006\u0010m\u001a\u00020\u0010H\u0016J \u0010s\u001a\u00020-2\u0006\u0010o\u001a\u00020/2\u0006\u0010q\u001a\u00020p2\u0006\u0010r\u001a\u00020-H\u0016J\u000e\u0010u\u001a\u0008\u0012\u0004\u0012\u00020t0=H\u0016J\u0012\u0010v\u001a\u0004\u0018\u00010\u00102\u0006\u0010&\u001a\u00020%H\u0016R\u0016\u0010y\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008w\u0010xR\u0016\u0010|\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008z\u0010{R\u0015\u0010\u0080\u0001\u001a\u00020}8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008~\u0010\u007fR\u001c\u0010u\u001a\u0008\u0012\u0004\u0012\u00020t0R8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0081\u0001\u0010\u0082\u0001\u00a8\u0006\u0086\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;",
        "Lcom/onyx/android/sdk/reader/api/ReaderPlugin;",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocument;",
        "Lcom/onyx/android/sdk/reader/api/ReaderView;",
        "Lcom/onyx/android/sdk/reader/api/ReaderRenderer;",
        "Lcom/onyx/android/sdk/reader/api/ReaderNavigator;",
        "Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;",
        "Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;",
        "Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;",
        "Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;",
        "Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures;",
        "Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter;",
        "Lcom/onyx/android/sdk/reader/api/ReaderPagination;",
        "",
        "displayName",
        "path",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;",
        "documentOptions",
        "Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;",
        "pluginOptions",
        "open",
        "getPluginFeatures",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "size",
        "",
        "updateViewSize",
        "Lcom/onyx/engine/sdk/DisplayMetrics;",
        "displayMetrics",
        "setupDisplayMetrics",
        "getRenderer",
        "getNavigator",
        "getTextStyleManager",
        "getReaderHitTestManager",
        "getSearchManager",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "position",
        "Landroid/graphics/RectF;",
        "getPageOriginSize",
        "abortCurrentJob",
        "clearAbortFlag",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;",
        "toc",
        "",
        "readTableOfContent",
        "",
        "getTotalPage",
        "nextScreen",
        "prevScreen",
        "nextPage",
        "prevPage",
        "getScreenStartPosition",
        "getScreenEndPosition",
        "getPageNumberByPosition",
        "gotoPosition",
        "getView",
        "getPageDataProvider",
        "getDocumentFeatures",
        "close",
        "",
        "Lcom/onyx/android/sdk/reader/api/ReaderImage;",
        "getImages",
        "isValidPosition",
        "getRendererFeatures",
        "Lcom/onyx/android/sdk/reader/api/DrawArgs;",
        "args",
        "draw",
        "getInitPosition",
        "pageIndex",
        "positionByPageIndex",
        "positionInt",
        "positionByPositionInt",
        "positionString",
        "useJsonPageIndexIfValid",
        "positionByPositionString",
        "supportScale",
        "getPagination",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;",
        "style",
        "setStyle",
        "",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;",
        "getFontFamilyList",
        "createDocumentConverter",
        "Lcom/onyx/android/sdk/reader/api/ConvertArgs;",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;",
        "callback",
        "convertToPDF",
        "chapterList",
        "chapterID",
        "getInitPaginationPosition",
        "Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;",
        "info",
        "hasPaginationNext",
        "paginationNext",
        "isAllPaginationComplete",
        "isCurrentChapterPaginationComplete",
        "",
        "getPaginationProgress",
        "onPaginationStart",
        "onPaginationFinally",
        "abort",
        "setAbortPagination",
        "isAbortPagination",
        "isNeedClearPaginationCache",
        "clearPaginationCache",
        "closePagination",
        "chapterId",
        "updateReaderPageInfo",
        "currentPage",
        "Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;",
        "options",
        "clear",
        "searchInPage",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "searchResults",
        "getChapterId",
        "a",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "viewSize",
        "b",
        "Ljava/lang/String;",
        "documentPath",
        "Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;",
        "c",
        "Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;",
        "pluginImpl",
        "d",
        "Ljava/util/List;",
        "<init>",
        "()V",
        "Companion",
        "sdk-readercore_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Lcom/onyx/android/sdk/base/data/Size;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin$Companion;

    sget-object v0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin$Companion$extensionFilters$2;->INSTANCE:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin$Companion$extensionFilters$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->e:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/base/data/Size;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/onyx/android/sdk/base/data/Size;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->a:Lcom/onyx/android/sdk/base/data/Size;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->b:Ljava/lang/String;

    new-instance v0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, v3, v1, v3}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;-><init>(Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->d:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getExtensionFilters$delegate$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->e:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public abortCurrentJob()V
    .locals 0

    return-void
.end method

.method public activateDeviceDRM(Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderDrmManager$DefaultImpls;->activateDeviceDRM(Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;)Z

    move-result p0

    return p0
.end method

.method public allText(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/util/List;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->allText(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public beginLookupPageData()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider$DefaultImpls;->beginLookupPageData(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;)V

    return-void
.end method

.method public chapterList()Ljava/util/List;
    .locals 0
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

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->chapterList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public clearAbortFlag()V
    .locals 0

    return-void
.end method

.method public clearPaginationCache()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->clearPaginationCache()V

    return-void
.end method

.method public close()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->closeDocument()V

    const/4 p0, 0x1

    return p0
.end method

.method public closePagination()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->closePagination()V

    return-void
.end method

.method public convertToPDF(Lcom/onyx/android/sdk/reader/api/ConvertArgs;Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;)I
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ConvertArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->convertToPDF(Lcom/onyx/android/sdk/reader/api/ConvertArgs;Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;)I

    move-result p0

    return p0
.end method

.method public createDocumentConverter()Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    return-object p0
.end method

.method public createDocumentExporter()Lcom/onyx/android/sdk/reader/api/ReaderDocumentExporter;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderDocument$DefaultImpls;->createDocumentExporter(Lcom/onyx/android/sdk/reader/api/ReaderDocument;)Lcom/onyx/android/sdk/reader/api/ReaderDocumentExporter;

    move-result-object p0

    return-object p0
.end method

.method public createDocumentWriter()Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderDocument$DefaultImpls;->createDocumentWriter(Lcom/onyx/android/sdk/reader/api/ReaderDocument;)Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter;

    move-result-object p0

    return-object p0
.end method

.method public createDrmManager()Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderPlugin$DefaultImpls;->createDrmManager(Lcom/onyx/android/sdk/reader/api/ReaderPlugin;)Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;

    move-result-object p0

    return-object p0
.end method

.method public destroy()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderPlugin$DefaultImpls;->destroy(Lcom/onyx/android/sdk/reader/api/ReaderPlugin;)V

    return-void
.end method

.method public displayName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getSimpleName(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public draw(Lcom/onyx/android/sdk/reader/api/DrawArgs;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/DrawArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->draw(Landroid/graphics/Bitmap;)V

    const/4 p0, 0x1

    return p0
.end method

.method public endLookupPageData()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider$DefaultImpls;->endLookupPageData(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;)V

    return-void
.end method

.method public firstPage()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->firstPage(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public firstText(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->firstText(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public getAllCharRectList(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->getAllCharRectList(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getChapterId(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->getChapterId(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getChapterName(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getChapterName(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getChapterStartPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getChapterStartPosition(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDocumentFeatures()Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->getDocumentFeatures()Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getDocumentFeatures()Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public getFontFamilyList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->getFontFamilyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getImagePage(Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Lcom/onyx/android/sdk/reader/api/ReaderImage;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getImagePage(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Lcom/onyx/android/sdk/reader/api/ReaderImage;

    move-result-object p0

    return-object p0
.end method

.method public getImages(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/util/List;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderImage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->getPageImages()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getInitPaginationPosition(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "chapterID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->getInitPaginationPosition(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public getInitPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->firstPage()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public getLastSentence(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSentence;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider$DefaultImpls;->getLastSentence(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSentence;

    move-result-object p0

    return-object p0
.end method

.method public getLinkTarget(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSelection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getLinkTarget(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderSelection;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLinkTargetSelection(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSelection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getLinkTargetSelection(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderSelection;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public getLinks(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/util/List;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getLinks(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->getNavigator()Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getNavigator()Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public getOriginCssStyle()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager$DefaultImpls;->getOriginCssStyle(Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;

    move-result-object p0

    return-object p0
.end method

.method public getPageContentMatrix(I)Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider$DefaultImpls;->getPageContentMatrix(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;I)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPageDataProvider()Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->getPageDataProvider()Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getPageDataProvider()Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public getPageIndexInCurrentChapter()I
    .locals 0
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getPageIndexInCurrentChapter(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)I

    move-result p0

    return p0
.end method

.method public getPageLabel(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getPageLabel(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPageLabelList()Ljava/util/List;
    .locals 0
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

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getPageLabelList(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPageNumberByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->getPageNumberOfPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p0

    return p0
.end method

.method public getPageOriginSize(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Landroid/graphics/RectF;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->a:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Size;->toRectF()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getPageParagraphList(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/util/List;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider$DefaultImpls;->getPageParagraphList(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPageSizeWithDpi(Lcom/onyx/android/sdk/reader/api/ReaderPosition;F)Landroid/graphics/RectF;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider$DefaultImpls;->getPageSizeWithDpi(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;Lcom/onyx/android/sdk/reader/api/ReaderPosition;F)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getPageText(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider$DefaultImpls;->getPageText(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPageTextInfoState(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/PageTextInfoState;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->getPageTextInfoState(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/PageTextInfoState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPagination()Lcom/onyx/android/sdk/reader/api/ReaderPagination;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->getPagination()Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getPagination()Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public getPaginationProgress()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->getPaginationProgress()F

    move-result p0

    return p0
.end method

.method public bridge synthetic getPluginFeatures()Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->getPluginFeatures()Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getPluginFeatures()Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public bridge synthetic getReaderHitTestManager()Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->getReaderHitTestManager()Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getReaderHitTestManager()Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public bridge synthetic getRenderer()Lcom/onyx/android/sdk/reader/api/ReaderRenderer;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->getRenderer()Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getRenderer()Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public bridge synthetic getRendererFeatures()Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->getRendererFeatures()Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getRendererFeatures()Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public getRichMedias(Lcom/onyx/android/sdk/reader/api/ReaderPosition;[Ljava/lang/String;)Ljava/util/List;
    .locals 0
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

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getRichMedias(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getScreenEndPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->getScreenEndPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public getScreenStartPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->getScreenStartPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSearchManager()Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->getSearchManager()Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getSearchManager()Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public getSentence(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSentence;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider$DefaultImpls;->getSentence(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSentence;

    move-result-object p0

    return-object p0
.end method

.method public getStyle()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager$DefaultImpls;->getStyle(Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;

    move-result-object p0

    return-object p0
.end method

.method public getText(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider$DefaultImpls;->getText(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTextStyleManager()Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->getTextStyleManager()Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getTextStyleManager()Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public getTotalPage()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->getTotalPage()I

    move-result p0

    return p0
.end method

.method public getTotalPageCountInCurrentChapter()I
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getTotalPageCountInCurrentChapter(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)I

    move-result p0

    return p0
.end method

.method public getTotalReadingProgress()F
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getTotalReadingProgress(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic getView()Lcom/onyx/android/sdk/reader/api/ReaderView;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->getView()Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getView()Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public getXPathByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getXPathByPosition(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public gotoPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/api/ReaderException;
        }
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->gotoPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z

    move-result p0

    return p0
.end method

.method public hasAnnotationData(I)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider$DefaultImpls;->hasAnnotationData(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;I)Z

    move-result p0

    return p0
.end method

.method public hasPaginationNext(Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->hasPaginationNext(Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;)Z

    move-result p0

    return p0
.end method

.method public hasText(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->hasText(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z

    move-result p0

    return p0
.end method

.method public hitPageCache(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->hitPageCache(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z

    move-result p0

    return p0
.end method

.method public isAbortPagination()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->isAbortPagination()Z

    move-result p0

    return p0
.end method

.method public isAllPaginationComplete()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->isAllPaginationComplete()Z

    move-result p0

    return p0
.end method

.method public isBlankContent()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures$DefaultImpls;->isBlankContent(Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;)Z

    move-result p0

    return p0
.end method

.method public isCurrentChapterPaginationComplete()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->isCurrentChapterPaginationComplete()Z

    move-result p0

    return p0
.end method

.method public isDamagedFile()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures$DefaultImpls;->isDamagedFile(Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;)Z

    move-result p0

    return p0
.end method

.method public isFirstPage()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->isFirstPage(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)Z

    move-result p0

    return p0
.end method

.method public isImagePage(Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->isImagePage(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Z

    move-result p0

    return p0
.end method

.method public isLastPage()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->isLastPage(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)Z

    move-result p0

    return p0
.end method

.method public isNeedClearPaginationCache()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->isNeedClearPaginationCache()Z

    move-result p0

    return p0
.end method

.method public isValidPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/reader/extension/ReaderPositionImplKt;->isDummy(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->getSize()I

    move-result p0

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result p1

    if-ltz p1, :cond_1

    if-ge p1, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isWholeBook()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderDrmManager$DefaultImpls;->isWholeBook(Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;)Z

    move-result p0

    return p0
.end method

.method public lastPage()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->lastPage(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public lastSelectionEndOfLine(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->lastSelectionEndOfLine(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public lastText(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->lastText(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public lastTextEndOfLine(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->lastTextEndOfLine(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public layoutPageForSimpleDocument()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderPagination$DefaultImpls;->layoutPageForSimpleDocument(Lcom/onyx/android/sdk/reader/api/ReaderPagination;)V

    return-void
.end method

.method public nextPage(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->nextScreen(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public nextScreen(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->nextScreen()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->getScreenStartPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;->getDummy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public onPaginationFinally()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->onPaginationFinally()V

    return-void
.end method

.method public onPaginationStart()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->onPaginationStart()Z

    move-result p0

    return p0
.end method

.method public open(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;)Lcom/onyx/android/sdk/reader/api/ReaderDocument;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;
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

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "documentOptions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pluginOptions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->b:Ljava/lang/String;

    iget-object p3, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p3, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->openDocument(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;)J

    move-result-wide p1

    sget-object p3, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->Companion:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$Companion;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$Companion;->getNO_ERROR()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderException;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderException$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderException$Companion;->cannotOpen()Lcom/onyx/android/sdk/reader/api/ReaderException;

    move-result-object p0

    throw p0
.end method

.method public pageType(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPageType;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider$DefaultImpls;->pageType(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPageType;

    move-result-object p0

    return-object p0
.end method

.method public paginationNext(Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;)Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->paginationNext(Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;)Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;

    move-result-object p0

    return-object p0
.end method

.method public positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->getPositionOfPageNumber(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public positionByPositionInt(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->fromInteger(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->fromString(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public positionByPositionString(Ljava/lang/String;Z)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "positionString"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->positionByPositionString(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public prevPage(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->prevScreen(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public prevScreen(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->preScreen()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->getScreenStartPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;->getDummy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public readCover(Lcom/onyx/android/sdk/reader/api/ReaderImage;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderImage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocument$DefaultImpls;->readCover(Lcom/onyx/android/sdk/reader/api/ReaderDocument;Lcom/onyx/android/sdk/reader/api/ReaderImage;)Z

    move-result p0

    return p0
.end method

.method public readMetadata(Lcom/onyx/android/sdk/reader/api/ReaderDocumentMetadata;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentMetadata;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocument$DefaultImpls;->readMetadata(Lcom/onyx/android/sdk/reader/api/ReaderDocument;Lcom/onyx/android/sdk/reader/api/ReaderDocumentMetadata;)Z

    move-result p0

    return p0
.end method

.method public readTableOfContent(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "toc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->readTableOfContent(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)Z

    move-result p0

    return p0
.end method

.method public reopen()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderPlugin$DefaultImpls;->reopen(Lcom/onyx/android/sdk/reader/api/ReaderPlugin;)Z

    move-result p0

    return p0
.end method

.method public searchInPage(ILcom/onyx/android/sdk/reader/api/ReaderSearchOptions;Z)Z
    .locals 0
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p1, "options"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    iget-object p1, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->d:Ljava/util/List;

    invoke-virtual {p1, p2, p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->search(Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public searchNext(Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderSearchManager$DefaultImpls;->searchNext(Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;)Z

    move-result p0

    return p0
.end method

.method public searchPrevious(Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderSearchManager$DefaultImpls;->searchPrevious(Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;)Z

    move-result p0

    return p0
.end method

.method public searchResults()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->d:Ljava/util/List;

    return-object p0
.end method

.method public selectOnDocument(Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->selectOnDocument(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public selectOnScreen(Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderHitTestOptions;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/reader/api/ReaderHitTestOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->selectOnScreen(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderHitTestOptions;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public selectOnScreen(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->selectOnScreen(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public selectSelection(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->selectSelection(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public setAbortPagination(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->setAbortPagination(Z)V

    return-void
.end method

.method public setFontEnhancement(I[I)V
    .locals 0
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager$DefaultImpls;->setFontEnhancement(Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;I[I)V

    return-void
.end method

.method public setStyle(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "style"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->setStyle(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;)V

    return-void
.end method

.method public setTextGamma(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager$DefaultImpls;->setTextGamma(Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;F)V

    return-void
.end method

.method public setupDisplayMetrics(Lcom/onyx/engine/sdk/DisplayMetrics;)V
    .locals 1
    .param p1    # Lcom/onyx/engine/sdk/DisplayMetrics;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "displayMetrics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->setupDisplayMetrics(Lcom/onyx/engine/sdk/DisplayMetrics;)V

    return-void
.end method

.method public supportChangeWritingMode()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures$DefaultImpls;->supportChangeWritingMode(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportCssOriginStyle()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures$DefaultImpls;->supportCssOriginStyle(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportDrm()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures$DefaultImpls;->supportDrm(Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportFontEmboldenAdjustment()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures$DefaultImpls;->supportFontEmboldenAdjustment(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportFontEnhancementAdjustment()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures$DefaultImpls;->supportFontEnhancementAdjustment(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportFontGammaAdjustment()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures$DefaultImpls;->supportFontGammaAdjustment(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportFontSizeAdjustment()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures$DefaultImpls;->supportFontSizeAdjustment(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportLetterSpacingAdjustment()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures$DefaultImpls;->supportLetterSpacingAdjustment(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportNoteEmbeded()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures$DefaultImpls;->supportNoteEmbeded(Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportPageId()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->supportPageId(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)Z

    move-result p0

    return p0
.end method

.method public supportRenderPageLink()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures$DefaultImpls;->supportRenderPageLink(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportSaveOptions()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures$DefaultImpls;->supportSaveOptions(Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportScale()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportTypefaceAdjustment()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures$DefaultImpls;->supportTypefaceAdjustment(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)Z

    move-result p0

    return p0
.end method

.method public updateDocumentOptions(Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/reader/api/ReaderDocument$DefaultImpls;->updateDocumentOptions(Lcom/onyx/android/sdk/reader/api/ReaderDocument;Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;)V

    return-void
.end method

.method public updateReaderPageInfo(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "chapterId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->updateReaderPageInfo(Ljava/lang/String;)V

    return-void
.end method

.method public updateTocPageIndex(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->updateTocPageIndex(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)V

    return-void
.end method

.method public updateTocPageIndex(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->updateTocPageIndex(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V

    return-void
.end method

.method public updateViewSize(Lcom/onyx/android/sdk/base/data/Size;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v2, v0, v1}, Lcom/onyx/android/sdk/base/data/Size;->copy$default(Lcom/onyx/android/sdk/base/data/Size;IIILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->a:Lcom/onyx/android/sdk/base/data/Size;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderWrapper;->setViewSize(Lcom/onyx/android/sdk/base/data/Size;)V

    return-void
.end method
