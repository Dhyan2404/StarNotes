.class public final Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;
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
.implements Lcom/onyx/android/sdk/reader/api/ReaderDocumentExporter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPPTReaderPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PPTReaderPlugin.kt\ncom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,387:1\n1549#2:388\n1620#2,3:389\n*S KotlinDebug\n*F\n+ 1 PPTReaderPlugin.kt\ncom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin\n*L\n308#1:388\n308#1:389,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u008d\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\u00082\u00020\t2\u00020\n2\u00020\u000b2\u00020\u000c2\u00020\r2\u00020\u000e:\u0002\u008d\u0001B\t\u00a2\u0006\u0006\u0008\u008b\u0001\u0010\u008c\u0001J\u001e\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u001e\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0010\u001a\u00020\u000f2\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013H\u0002J\u0016\u0010\u0019\u001a\u00020\u00172\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013H\u0002J\u0010\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\u0018\u0010\"\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020 H\u0002J\u0008\u0010$\u001a\u00020#H\u0016J \u0010*\u001a\u00020\u00022\u0006\u0010%\u001a\u00020#2\u0006\u0010\'\u001a\u00020&2\u0006\u0010)\u001a\u00020(H\u0016J\u0008\u0010+\u001a\u00020\u0000H\u0016J\u0010\u0010.\u001a\u00020\u001c2\u0006\u0010-\u001a\u00020,H\u0016J\u0008\u0010/\u001a\u00020\u0000H\u0016J\u0008\u00100\u001a\u00020\u0000H\u0016J\n\u00102\u001a\u0004\u0018\u000101H\u0016J\u0008\u00103\u001a\u00020\u0000H\u0016J\u0008\u00104\u001a\u00020\u0000H\u0016J\u0008\u00105\u001a\u00020\u0000H\u0016J\u0008\u00107\u001a\u000206H\u0016J\u0008\u00108\u001a\u00020\u0000H\u0016J\u0010\u0010;\u001a\u0002062\u0006\u0010:\u001a\u000209H\u0016J\u0010\u0010>\u001a\u0002062\u0006\u0010=\u001a\u00020<H\u0016J\u0008\u0010?\u001a\u000206H\u0016J\u0010\u0010A\u001a\u00020@2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0010\u0010B\u001a\u00020#2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0016\u0010D\u001a\u0008\u0012\u0004\u0012\u00020#0C2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u001c\u0010G\u001a\u0004\u0018\u00010F2\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010E\u001a\u0004\u0018\u00010\u000fH\u0016J\u000e\u0010A\u001a\u00020@2\u0006\u0010H\u001a\u00020 J\u0008\u0010I\u001a\u00020\u001cH\u0016J\u0008\u0010J\u001a\u00020\u001cH\u0016J\u0010\u0010M\u001a\u0002062\u0006\u0010L\u001a\u00020KH\u0016J\u0008\u0010N\u001a\u00020 H\u0016J\u0010\u0010O\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0010\u0010P\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0010\u0010Q\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0010\u0010R\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0008\u0010S\u001a\u00020\u0000H\u0016J\u0008\u0010T\u001a\u00020\u0000H\u0016J\u0008\u0010U\u001a\u00020\u0000H\u0016J\u0008\u0010V\u001a\u000206H\u0016J\u0010\u0010W\u001a\u0002062\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0008\u0010X\u001a\u00020\u0000H\u0016J\u0010\u0010[\u001a\u0002062\u0006\u0010Z\u001a\u00020YH\u0016J\u0008\u0010\\\u001a\u00020\u000fH\u0016J\u0010\u0010]\u001a\u00020\u000f2\u0006\u0010!\u001a\u00020 H\u0016J\u0018\u0010`\u001a\u00020\u000f2\u0006\u0010^\u001a\u00020#2\u0006\u0010_\u001a\u000206H\u0016J\u000e\u0010a\u001a\u00020 2\u0006\u0010\u0010\u001a\u00020\u000fJ\u0010\u0010d\u001a\u0002062\u0006\u0010c\u001a\u00020bH\u0016J\u0010\u0010e\u001a\u0002062\u0006\u0010c\u001a\u00020bH\u0016J \u0010h\u001a\u0002062\u0006\u0010f\u001a\u00020 2\u0006\u0010c\u001a\u00020b2\u0006\u0010g\u001a\u000206H\u0016J\u000e\u0010j\u001a\u0008\u0012\u0004\u0012\u00020i0\u0013H\u0016J\"\u0010n\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010k\u001a\u00020\u00112\u0006\u0010m\u001a\u00020lH\u0016J\u0016\u0010p\u001a\u0008\u0012\u0004\u0012\u00020\u001a0C2\u0006\u0010o\u001a\u00020\u000fH\u0016J\u0008\u0010q\u001a\u000206H\u0016J\u0010\u0010r\u001a\u00020\u001c2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001aJ\u0016\u0010t\u001a\u00020\u001c2\u000e\u0010s\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010CJ\u0010\u0010v\u001a\u00020\u001c2\u0008\u0010u\u001a\u0004\u0018\u00010FJ\u0008\u0010w\u001a\u00020\u000eH\u0016R\u0014\u0010z\u001a\u00020x8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010yR\u0016\u0010|\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010{R\u001c\u0010j\u001a\u0008\u0012\u0004\u0012\u00020i0\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010}R)\u0010\u0080\u0001\u001a\u0014\u0012\u0004\u0012\u00020#\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u00130~8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u007fR#\u0010\u0081\u0001\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00170~8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010\u007fR\u0019\u0010\u0084\u0001\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0082\u0001\u0010\u0083\u0001R\u0018\u0010q\u001a\u0002068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0085\u0001\u0010\u0086\u0001R\u0018\u0010\u008a\u0001\u001a\u00030\u0087\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0088\u0001\u0010\u0089\u0001\u00a8\u0006\u008e\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;",
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
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentExporter;",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "position",
        "Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;",
        "start",
        "",
        "Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;",
        "b",
        "charInfoList",
        "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;",
        "c",
        "a",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "selection",
        "",
        "d",
        "Lcom/onyx/android/sdk/reader/api/PageRange;",
        "pageRange",
        "",
        "pageIndex",
        "e",
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
        "updateViewSize",
        "getRenderer",
        "getNavigator",
        "Lcom/onyx/android/sdk/reader/api/ReaderPagination;",
        "getPagination",
        "getTextStyleManager",
        "getReaderHitTestManager",
        "getSearchManager",
        "",
        "supportDrm",
        "createDrmManager",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentMetadata;",
        "metadata",
        "readMetadata",
        "Lcom/onyx/android/sdk/reader/api/ReaderImage;",
        "readImage",
        "readCover",
        "isBlankContent",
        "Landroid/graphics/RectF;",
        "getPageOriginSize",
        "getPageText",
        "",
        "getPageParagraphList",
        "sentenceStartPosition",
        "Lcom/onyx/android/sdk/reader/api/ReaderSentence;",
        "getSentence",
        "page",
        "abortCurrentJob",
        "clearAbortFlag",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;",
        "toc",
        "readTableOfContent",
        "getTotalPage",
        "nextScreen",
        "prevScreen",
        "nextPage",
        "prevPage",
        "getView",
        "getPageDataProvider",
        "getDocumentFeatures",
        "close",
        "isValidPosition",
        "getRendererFeatures",
        "Lcom/onyx/android/sdk/reader/api/DrawArgs;",
        "args",
        "draw",
        "getInitPosition",
        "positionByPageIndex",
        "positionString",
        "useJsonPageIndexIfValid",
        "positionByPositionString",
        "pageIndexByPosition",
        "Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;",
        "options",
        "searchPrevious",
        "searchNext",
        "currentPage",
        "clear",
        "searchInPage",
        "Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;",
        "searchResults",
        "end",
        "Lcom/onyx/android/sdk/reader/api/ReaderHitTestOptions;",
        "hitTestOptions",
        "selectOnScreen",
        "pagePosition",
        "allText",
        "supportScale",
        "updateSelectionPageRange",
        "selectionList",
        "updateSelectionsPageRange",
        "sentence",
        "updateSentencePageRange",
        "createDocumentExporter",
        "Lcom/onyx/android/sdk/base/utils/Benchmark;",
        "Lcom/onyx/android/sdk/base/utils/Benchmark;",
        "benchmark",
        "Ljava/lang/String;",
        "documentPath",
        "Ljava/util/List;",
        "",
        "Ljava/util/Map;",
        "pageCharInfoListMap",
        "pageWritingModeMap",
        "f",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "viewSize",
        "g",
        "Z",
        "Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;",
        "h",
        "Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;",
        "pluginImpl",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPPTReaderPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PPTReaderPlugin.kt\ncom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,387:1\n1549#2:388\n1620#2,3:389\n*S KotlinDebug\n*F\n+ 1 PPTReaderPlugin.kt\ncom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin\n*L\n308#1:388\n308#1:389,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:Lkotlin/Lazy;
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
.field public final a:Lcom/onyx/android/sdk/base/utils/Benchmark;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lcom/onyx/android/sdk/base/data/Size;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Z

.field public final h:Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin$Companion;

    const-class v0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;

    sput-object v0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->i:Ljava/lang/Class;

    sget-object v0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin$Companion$extensionFilters$2;->INSTANCE:Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin$Companion$extensionFilters$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->j:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->a:Lcom/onyx/android/sdk/base/utils/Benchmark;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->c:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->e:Ljava/util/Map;

    new-instance v0, Lcom/onyx/android/sdk/base/data/Size;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/onyx/android/sdk/base/data/Size;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->f:Lcom/onyx/android/sdk/base/data/Size;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->g:Z

    new-instance v0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->h:Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;

    return-void
.end method

.method public static final synthetic access$getExtensionFilters$delegate$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->j:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;",
            ">;)",
            "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode$Companion;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode$Companion;->analysePageWritingModeByCharRect(Ljava/util/List;)Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    move-result-object p0

    return-object p0
.end method

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
            "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pagePosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->pageIndexByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->h:Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->allText(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
            "Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hit cache, key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->d:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->h:Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->getPageIndex()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->getPageTextCharInfoList(I)Ljava/util/List;

    move-result-object p2

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->d:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public beginLookupPageData()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider$DefaultImpls;->beginLookupPageData(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;)V

    return-void
.end method

.method public final c(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/util/List;)Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;",
            ">;)",
            "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->e:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    if-nez p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;->UNKNOWN:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->a(Ljava/util/List;)Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    move-result-object p2

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->e:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public clearAbortFlag()V
    .locals 0

    return-void
.end method

.method public close()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->h:Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->closeDocument()Z

    move-result p0

    return p0
.end method

.method public createDocumentConverter()Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderDocument$DefaultImpls;->createDocumentConverter(Lcom/onyx/android/sdk/reader/api/ReaderDocument;)Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter;

    move-result-object p0

    return-object p0
.end method

.method public createDocumentExporter()Lcom/onyx/android/sdk/reader/api/ReaderDocumentExporter;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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

.method public bridge synthetic createDrmManager()Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->createDrmManager()Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public createDrmManager()Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public final d(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V
    .locals 1

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->writingMode()Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;->VERTICAL_RL:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/reader/extension/CharRectList;->INSTANCE:Lcom/onyx/android/sdk/reader/extension/CharRectList;

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->rectangles()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/extension/CharRectList;->mergeBlockRectanglesByVerticalWord(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/reader/extension/CharRectList;->INSTANCE:Lcom/onyx/android/sdk/reader/extension/CharRectList;

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->rectangles()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/extension/CharRectList;->mergeBlockRectanglesByWord(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->rectangles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->rectangles()Ljava/util/List;

    move-result-object p1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public destroy()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderPlugin$DefaultImpls;->destroy(Lcom/onyx/android/sdk/reader/api/ReaderPlugin;)V

    return-void
.end method

.method public displayName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "PPTReaderPlugin"

    return-object p0
.end method

.method public draw(Lcom/onyx/android/sdk/reader/api/DrawArgs;)Z
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/reader/api/DrawArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->a:Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->restart()V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->h:Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->draw(Lcom/onyx/android/sdk/reader/api/DrawArgs;)Z

    move-result p1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object v1, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->i:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rendering takes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->a:Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->duration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public final e(Lcom/onyx/android/sdk/reader/api/PageRange;I)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/reader/api/PageRange;->setStartPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/reader/api/PageRange;->setEndPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V

    return-void
.end method

.method public endLookupPageData()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider$DefaultImpls;->endLookupPageData(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;)V

    return-void
.end method

.method public exportPages(Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentExporter$DefaultImpls;->exportPages(Lcom/onyx/android/sdk/reader/api/ReaderDocumentExporter;Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;)Z

    move-result p0

    return p0
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
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getChapterId(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->getDocumentFeatures()Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getDocumentFeatures()Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;
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

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager$DefaultImpls;->getFontFamilyList(Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;)Ljava/util/List;

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
            "Lcom/onyx/android/sdk/reader/api/ReaderImage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getImages(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getInitPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->firstPage()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

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
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->getNavigator()Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getNavigator()Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;
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
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->getPageDataProvider()Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getPageDataProvider()Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;
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
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getPageNumberByPosition(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p0

    return p0
.end method

.method public final getPageOriginSize(I)Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->h:Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->getPageSize()Ljava/awt/Dimension;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/plugins/ppt/DimensionKt;->toRectF(Ljava/awt/Dimension;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
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

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->pageIndexByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->getPageOriginSize(I)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getPageParagraphList(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/util/List;
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->h:Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->getPageIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->getPageParagraphList(I)Ljava/util/List;

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
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->h:Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->pageIndexByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->getPageText(I)Ljava/lang/String;

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

.method public getPagination()Lcom/onyx/android/sdk/reader/api/ReaderPagination;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getPluginFeatures()Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->getPluginFeatures()Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getPluginFeatures()Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public bridge synthetic getReaderHitTestManager()Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->getReaderHitTestManager()Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getReaderHitTestManager()Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public bridge synthetic getRenderer()Lcom/onyx/android/sdk/reader/api/ReaderRenderer;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->getRenderer()Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getRenderer()Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public bridge synthetic getRendererFeatures()Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->getRendererFeatures()Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getRendererFeatures()Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;
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

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getScreenEndPosition(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public getScreenStartPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getScreenStartPosition(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSearchManager()Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->getSearchManager()Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getSearchManager()Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public getSentence(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSentence;
    .locals 1
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

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->pageIndexByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->h:Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->getSentence(II)Lcom/onyx/android/sdk/reader/api/ReaderSentence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->updateSentencePageRange(Lcom/onyx/android/sdk/reader/api/ReaderSentence;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSentence;->getReaderSelection()Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->d(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V

    :cond_1
    return-object p1
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
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->getTextStyleManager()Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getTextStyleManager()Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public getTotalPage()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->h:Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->pageCount()I

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
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->getView()Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getView()Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;
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
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/api/ReaderException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->gotoPosition(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z

    move-result p0

    return p0
.end method

.method public hasAnnotationData(I)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider$DefaultImpls;->hasAnnotationData(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;I)Z

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

.method public isBlankContent()Z
    .locals 0

    const/4 p0, 0x0

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

.method public isValidPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->pageIndexByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->getTotalPage()I

    move-result p0

    if-ge p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
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

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->pageIndexByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->getTotalPage()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;->getDummy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    :goto_0
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

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->nextPage(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public open(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;)Lcom/onyx/android/sdk/reader/api/ReaderDocument;
    .locals 4
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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "documentOptions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pluginOptions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->b:Ljava/lang/String;

    iget-object p3, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->h:Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;

    invoke-virtual {p3, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->openDocument(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;)J

    move-result-wide p1

    sget-object p3, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->Companion:Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper$Companion;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper$Companion;->getNO_ERROR()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const-wide/16 v0, 0xb

    cmp-long p0, p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    :goto_0
    move p0, v1

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0xc

    cmp-long p0, p1, v2

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move p0, v0

    :goto_1
    if-eqz p0, :cond_3

    :goto_2
    move p0, v1

    goto :goto_3

    :cond_3
    const-wide/16 v2, 0xd

    cmp-long p0, p1, v2

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    move p0, v0

    :goto_3
    if-eqz p0, :cond_5

    :goto_4
    move v0, v1

    goto :goto_5

    :cond_5
    const-wide/16 v2, 0xe

    cmp-long p0, p1, v2

    if-nez p0, :cond_6

    goto :goto_4

    :cond_6
    :goto_5
    if-nez v0, :cond_9

    const-wide/16 v0, 0xf

    cmp-long p0, p1, v0

    if-eqz p0, :cond_8

    invoke-virtual {p3}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper$Companion;->getERROR_PASSWORD_INVALID()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-nez p0, :cond_7

    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderException;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderException$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderException$Companion;->passwordRequired()Lcom/onyx/android/sdk/reader/api/ReaderException;

    move-result-object p0

    throw p0

    :cond_7
    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderException;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderException$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderException$Companion;->cannotOpen()Lcom/onyx/android/sdk/reader/api/ReaderException;

    move-result-object p0

    throw p0

    :cond_8
    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderException;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderException$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderException$Companion;->emptyDocument()Lcom/onyx/android/sdk/reader/api/ReaderException;

    move-result-object p0

    throw p0

    :cond_9
    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderException;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderException$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderException$Companion;->extensionNotMatched()Lcom/onyx/android/sdk/reader/api/ReaderException;

    move-result-object p0

    throw p0
.end method

.method public final pageIndexByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "position"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->getPageIndex()I

    move-result p0

    return p0
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

.method public positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->h:Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public positionByPositionInt(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->positionByPositionInt(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

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

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->h:Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->positionByPositionString(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

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

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->pageIndexByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p1

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;->getDummy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    :goto_0
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

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->prevPage(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public readCover(Lcom/onyx/android/sdk/reader/api/ReaderImage;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderImage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "readImage"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public readMetadata(Lcom/onyx/android/sdk/reader/api/ReaderDocumentMetadata;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentMetadata;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->h:Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->metadata()Lorg/apache/poi/sl/MetaData;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/sl/MetaData;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getTitle(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentMetadata;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/sl/MetaData;->getAuthor()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getAuthor(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentMetadata;->addValidAuthor(Ljava/lang/String;)V

    const/4 p0, 0x1

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

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->h:Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->readTableOfContent(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)Z

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
    .locals 1
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->c:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    :cond_0
    iget-object p3, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->h:Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->c:Ljava/util/List;

    invoke-virtual {p3, p1, p2, v0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->search(ILcom/onyx/android/sdk/reader/api/ReaderSearchOptions;Ljava/util/List;)Z

    move-result p1

    iget-object p2, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->d(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V

    goto :goto_0

    :cond_1
    return p1
.end method

.method public searchNext(Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;->fromPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->getTotalPage()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0, p1, v2}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->searchInPage(ILcom/onyx/android/sdk/reader/api/ReaderSearchOptions;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public searchPrevious(Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;->fromPage()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v0, p1, v1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->searchInPage(ILcom/onyx/android/sdk/reader/api/ReaderSearchOptions;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public searchResults()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->c:Ljava/util/List;

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
    .locals 4
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

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "end"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hitTestOptions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->getPageIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->b(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->c(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/util/List;)Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;

    invoke-direct {v3, v0, v1, v2}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/util/List;Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;)V

    .line 6
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->getPageIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->getPageOriginSize(I)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v3, p0, p1, p2, p3}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->selectOnScreen(Landroid/graphics/RectF;Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderHitTestOptions;)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

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

    .line 1
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
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager$DefaultImpls;->setStyle(Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;)V

    return-void
.end method

.method public setTextGamma(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager$DefaultImpls;->setTextGamma(Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;F)V

    return-void
.end method

.method public setupDisplayMetrics(Lcom/onyx/engine/sdk/DisplayMetrics;)V
    .locals 0
    .param p1    # Lcom/onyx/engine/sdk/DisplayMetrics;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderView$DefaultImpls;->setupDisplayMetrics(Lcom/onyx/android/sdk/reader/api/ReaderView;Lcom/onyx/engine/sdk/DisplayMetrics;)V

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

    const/4 p0, 0x0

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

    iget-boolean p0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->g:Z

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

.method public final updateSelectionPageRange(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSelection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->pageRange()Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->pageRange()Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v0

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->pageIndex()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->e(Lcom/onyx/android/sdk/reader/api/PageRange;I)V

    return-void
.end method

.method public final updateSelectionsPageRange(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
            ">;)V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->updateSelectionPageRange(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final updateSentencePageRange(Lcom/onyx/android/sdk/reader/api/ReaderSentence;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSentence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSentence;->getReaderSelection()Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->updateSelectionPageRange(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V

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

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->f:Lcom/onyx/android/sdk/base/data/Size;

    return-void
.end method
