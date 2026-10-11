.class public final Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNeoEpubReaderWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NeoEpubReaderWrapper.kt\ncom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,476:1\n731#2,9:477\n1549#2:488\n1620#2,3:489\n37#3,2:486\n*S KotlinDebug\n*F\n+ 1 NeoEpubReaderWrapper.kt\ncom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper\n*L\n116#1:477,9\n186#1:488\n186#1:489,3\n116#1:486,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0015\u0012\n\u0008\u0002\u0010\u00a6\u0001\u001a\u00030\u00a4\u0001\u00a2\u0006\u0006\u0008\u00ac\u0001\u0010\u00ad\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\t\u001a\u00020\u0008H\u0002J\u0008\u0010\n\u001a\u00020\u0002H\u0002J\u0014\u0010\u000e\u001a\u00020\u00082\n\u0010\r\u001a\u00060\u000bj\u0002`\u000cH\u0002J\u0016\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fJ\u000e\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u0012J\u000e\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u0015J\u000e\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u001bJ\u0016\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u001f2\u0006\u0010\u001e\u001a\u00020\u0002J\u0008\u0010\"\u001a\u0004\u0018\u00010!J\u0016\u0010%\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020#J\u0010\u0010\'\u001a\u0004\u0018\u00010\u00022\u0006\u0010&\u001a\u00020\u0002J\u0008\u0010(\u001a\u0004\u0018\u00010\u0002J\u0006\u0010*\u001a\u00020)J\u0006\u0010+\u001a\u00020)J\u000e\u0010-\u001a\u00020\u00082\u0006\u0010,\u001a\u00020)J\u000e\u00100\u001a\u00020\u00082\u0006\u0010/\u001a\u00020.J\u000e\u00103\u001a\u00020\u00082\u0006\u00102\u001a\u000201J\u0018\u00108\u001a\u00020\u00082\u0006\u00105\u001a\u0002042\u0008\u00107\u001a\u0004\u0018\u000106J\u000e\u0010:\u001a\u00020\u00082\u0006\u00109\u001a\u00020!J\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020<0;J\u0008\u0010>\u001a\u0004\u0018\u00010\u0002J\u0018\u0010B\u001a\u0004\u0018\u00010\u00022\u0006\u0010@\u001a\u00020?2\u0006\u0010A\u001a\u00020?J\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u001fJ\u0010\u0010E\u001a\u0004\u0018\u00010D2\u0006\u0010@\u001a\u00020?J\u0008\u0010F\u001a\u0004\u0018\u00010DJ\u000c\u0010H\u001a\u0008\u0012\u0004\u0012\u00020G0\u001fJ\u0010\u0010J\u001a\u0004\u0018\u00010G2\u0006\u0010I\u001a\u00020GJ\u000c\u0010L\u001a\u0008\u0012\u0004\u0012\u00020K0\u001fJ\u0016\u0010O\u001a\u00020\u001b2\u0006\u0010M\u001a\u00020?2\u0006\u0010N\u001a\u000204J\u0018\u0010P\u001a\u0004\u0018\u00010K2\u0006\u0010M\u001a\u00020?2\u0006\u0010N\u001a\u000204J\u0010\u0010R\u001a\u0004\u0018\u00010!2\u0006\u0010Q\u001a\u00020KJ\u0006\u0010S\u001a\u000204J\u0006\u0010T\u001a\u000204J\u0006\u0010U\u001a\u000204J\u0006\u0010V\u001a\u00020?J\u0006\u0010W\u001a\u00020?J\u0006\u0010X\u001a\u000204J\u0006\u0010Y\u001a\u00020\u001bJ\u0006\u0010Z\u001a\u00020\u001bJ\u0006\u0010[\u001a\u00020\u001bJ\u0006\u0010\\\u001a\u00020\u001bJ\u000e\u0010]\u001a\u00020\u001b2\u0006\u0010M\u001a\u00020?J\u000e\u0010^\u001a\u00020\u001b2\u0006\u0010M\u001a\u00020?J\u000e\u0010`\u001a\u00020\u001b2\u0006\u0010_\u001a\u000204J\u000e\u0010a\u001a\u00020?2\u0006\u0010_\u001a\u000204J\u000e\u0010b\u001a\u0002042\u0006\u0010M\u001a\u00020?J\u000e\u0010c\u001a\u00020?2\u0006\u0010M\u001a\u00020\u0002J\u0010\u0010f\u001a\u00020\u00082\u0008\u0010e\u001a\u0004\u0018\u00010dJ\u0010\u0010g\u001a\u00020\u001b2\u0008\u0010e\u001a\u0004\u0018\u00010dJ\u001c\u0010j\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020h2\u000c\u0010i\u001a\u0008\u0012\u0004\u0012\u00020G0;J\u001c\u0010n\u001a\u0004\u0018\u00010G2\u0008\u0010l\u001a\u0004\u0018\u00010k2\u0008\u0010m\u001a\u0004\u0018\u00010kJ\u001c\u0010r\u001a\u0004\u0018\u00010G2\u0008\u0010o\u001a\u0004\u0018\u00010k2\u0008\u0010q\u001a\u0004\u0018\u00010pJ\u0018\u0010n\u001a\u0004\u0018\u00010G2\u0006\u0010s\u001a\u00020?2\u0006\u0010t\u001a\u00020?J\u0012\u0010n\u001a\u0004\u0018\u00010G2\u0008\u0010v\u001a\u0004\u0018\u00010uJ\u0018\u0010x\u001a\u0004\u0018\u00010G2\u0006\u0010s\u001a\u00020?2\u0006\u0010w\u001a\u000204J\u0008\u0010y\u001a\u0004\u0018\u00010GJ\u0008\u0010z\u001a\u0004\u0018\u00010GJ\u0010\u0010{\u001a\u0004\u0018\u00010G2\u0006\u0010@\u001a\u00020?J\u0010\u0010|\u001a\u0004\u0018\u00010G2\u0006\u0010@\u001a\u00020?J\u0006\u0010}\u001a\u00020\u001bJ\u0010\u0010~\u001a\u0004\u0018\u00010\u00022\u0006\u0010M\u001a\u00020?J\u000c\u0010\u007f\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u001fJ\u0011\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u00022\u0006\u0010M\u001a\u00020?J\u0011\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u00022\u0006\u0010M\u001a\u00020?J\u000f\u0010\u0082\u0001\u001a\u00020?2\u0006\u0010M\u001a\u00020?J\u0010\u0010\u0084\u0001\u001a\u00020?2\u0007\u0010\u0083\u0001\u001a\u00020\u0002J\u0013\u0010\u0087\u0001\u001a\u00020\u001b2\n\u0010\u0086\u0001\u001a\u0005\u0018\u00010\u0085\u0001J\u0014\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0085\u00012\u0008\u0010\u0086\u0001\u001a\u00030\u0085\u0001J\u0007\u0010\u0089\u0001\u001a\u00020\u001bJ\u0007\u0010\u008a\u0001\u001a\u00020\u001bJ\u0007\u0010\u008b\u0001\u001a\u000201J\u0007\u0010\u008c\u0001\u001a\u00020\u001bJ\u0007\u0010\u008d\u0001\u001a\u00020\u0008J\u000f\u0010\u008e\u0001\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u001bJ\u0007\u0010\u008f\u0001\u001a\u00020\u001bJ\u0007\u0010\u0090\u0001\u001a\u00020\u001bJ\u0007\u0010\u0091\u0001\u001a\u00020\u0008J\u0010\u0010\u0093\u0001\u001a\u00020\u00082\u0007\u0010\u0092\u0001\u001a\u00020\u0002J\u0008\u0010\u0095\u0001\u001a\u00030\u0094\u0001J\u0007\u0010\u0096\u0001\u001a\u00020\u001bJ\u0007\u0010\u0097\u0001\u001a\u000201J\u0007\u0010\u0098\u0001\u001a\u000204J\u0007\u0010\u0099\u0001\u001a\u000204J\u0011\u0010\u009a\u0001\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010G\u0018\u00010\u001fJ\u0014\u0010\u009c\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u009b\u00010\u001f0\u001fJ\u001c\u0010\u00a0\u0001\u001a\u0002042\u0007\u0010v\u001a\u00030\u009d\u00012\n\u0010\u009f\u0001\u001a\u0005\u0018\u00010\u009e\u0001J\u0007\u0010\u00a1\u0001\u001a\u00020\u0008J\u0007\u0010\u00a2\u0001\u001a\u00020\u0008J\u0007\u0010\u00a3\u0001\u001a\u00020\u0008R\u0017\u0010\u00a6\u0001\u001a\u00030\u00a4\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u000e\u0010\u00a5\u0001R\u0016\u0010\u00a8\u0001\u001a\u0002048\u0002X\u0082D\u00a2\u0006\u0007\n\u0005\u0008\u0007\u0010\u00a7\u0001R\u001a\u0010\u00aa\u0001\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\n\u0010\u00a9\u0001R\u001a\u0010\u00ab\u0001\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\t\u0010\u00a9\u0001\u00a8\u0006\u00ae\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;",
        "",
        "",
        "path",
        "Lcom/onyx/engine/sdk/OpenOptions;",
        "options",
        "",
        "b",
        "",
        "d",
        "c",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "sb",
        "a",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;",
        "documentOptions",
        "openDocument",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "size",
        "setViewSize",
        "Lcom/onyx/engine/sdk/DisplayMetrics;",
        "displayMetrics",
        "setupDisplayMetrics",
        "Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;",
        "factory",
        "activateDeviceDRM",
        "",
        "abort",
        "setAborted",
        "dirPath",
        "",
        "saveLogFiles",
        "Landroid/graphics/Bitmap;",
        "readCover",
        "Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;",
        "pluginOptions",
        "updateDocumentOptions",
        "tag",
        "metadataString",
        "readDocumentLanguage",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;",
        "getStyle",
        "getOriginCssStyle",
        "style",
        "setStyle",
        "Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;",
        "convertType",
        "setChineseConvertType",
        "",
        "gamma",
        "setTextGamma",
        "",
        "threshold",
        "",
        "colorTable",
        "setFontEnhancement",
        "bitmap",
        "draw",
        "",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;",
        "getFontFamilyList",
        "getScreenText",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "startPosition",
        "endPosition",
        "getText",
        "getPageParagraphList",
        "Lcom/onyx/android/sdk/reader/api/ReaderSentence;",
        "getSentence",
        "getLastSentence",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "getPageLinks",
        "link",
        "getLinkTargetSelection",
        "Lcom/onyx/android/sdk/reader/api/ReaderImage;",
        "getPageImages",
        "position",
        "column",
        "isImagePage",
        "getImagePage",
        "readerImage",
        "getBitmap",
        "getTotalPage",
        "getScreenStartPage",
        "getScreenEndPage",
        "getScreenStartPosition",
        "getScreenEndPosition",
        "getSize",
        "isFirstPage",
        "isLastPage",
        "nextScreen",
        "preScreen",
        "gotoPosition",
        "hitPageCache",
        "page",
        "gotoPage",
        "getPositionOfPageNumber",
        "getPageNumberOfPosition",
        "positionByPositionString",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;",
        "toc",
        "updateTocPageNumber",
        "readTableOfContent",
        "Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;",
        "list",
        "search",
        "Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;",
        "startArgs",
        "endArgs",
        "selectTextOnScreen",
        "start",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextSplitter;",
        "splitter",
        "selectWordOnScreen",
        "startPos",
        "endPos",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;",
        "args",
        "textNum",
        "selectSelection",
        "firstText",
        "lastText",
        "lastSelectionEndOfLine",
        "lastTextEndOfLine",
        "hasText",
        "getXPathByPosition",
        "chapterList",
        "getChapterId",
        "getChapterName",
        "getChapterStartPosition",
        "chapterID",
        "getInitPaginationPosition",
        "Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;",
        "info",
        "hasPaginationNext",
        "paginationNext",
        "isAllPaginationComplete",
        "isCurrentChapterPaginationComplete",
        "getPaginationProgress",
        "onPaginationStart",
        "onPaginationFinally",
        "setAbortPagination",
        "isAbortPagination",
        "isNeedClearPaginationCache",
        "clearPaginationCache",
        "chapterId",
        "updateReaderPageInfo",
        "Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;",
        "getReaderPageProgressDirection",
        "supportCssOriginStyle",
        "getTotalReadingProgress",
        "getPageNumberInCurrentChapter",
        "getTotalPageCountInCurrentChapter",
        "allText",
        "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;",
        "getAllPieceOfText",
        "Lcom/onyx/android/sdk/reader/api/ConvertArgs;",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;",
        "callback",
        "convertToPDF",
        "closeDocument",
        "closePagination",
        "destroy",
        "Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;",
        "Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;",
        "cboxDocument",
        "I",
        "EPUB_SAVE_PDF_PAGE_COUNT",
        "Ljava/lang/String;",
        "drmDeviceId",
        "drmCertificate",
        "<init>",
        "(Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;)V",
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
        "SMAP\nNeoEpubReaderWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NeoEpubReaderWrapper.kt\ncom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,476:1\n731#2,9:477\n1549#2:488\n1620#2,3:489\n37#3,2:486\n*S KotlinDebug\n*F\n+ 1 NeoEpubReaderWrapper.kt\ncom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper\n*L\n116#1:477,9\n186#1:488\n186#1:489,3\n116#1:486,2\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:I

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;-><init>(Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cboxDocument"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    const/16 p1, 0x32

    .line 3
    iput p1, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 4
    new-instance p1, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    new-instance p2, Lcom/onyx/engine/sdk/NeoEpubNative;

    invoke-direct {p2}, Lcom/onyx/engine/sdk/NeoEpubNative;-><init>()V

    invoke-direct {p1, p2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;-><init>(Lcom/onyx/engine/sdk/NeoBaseNative;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;-><init>(Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;)V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "--- start drm info ---"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "deviceUUID: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "decrypt: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->d:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "--- end drm info ---"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final activateDeviceDRM(Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->c:Ljava/lang/String;

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;->getDrmCertificate()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->d:Ljava/lang/String;

    return-void
.end method

.method public final allText()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->allText()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;Lcom/onyx/engine/sdk/OpenOptions;)J
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/reader/plugins/epub/EpubDRMDetector;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/plugins/epub/EpubDRMDetector;-><init>()V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/plugins/epub/EpubDRMDetector;->detect(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/onyx/android/sdk/reader/plugins/epub/EpubDRMDetector;->Companion:Lcom/onyx/android/sdk/reader/plugins/epub/EpubDRMDetector$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/plugins/epub/EpubDRMDetector$Companion;->getENCRYPT_TYPE_NONE()I

    move-result v2

    if-ne v0, v2, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->Companion:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$Companion;->getNO_ERROR()J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/plugins/epub/EpubDRMDetector$Companion;->getENCRYPT_TYPE_ABODE()I

    move-result v2

    if-ne v0, v2, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->Companion:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$Companion;->getERROR_ADOBE_DRM_INVALID()J

    move-result-wide p0

    return-wide p0

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/plugins/epub/EpubDRMDetector$Companion;->getENCRYPT_TYPE_ONYX()I

    move-result v2

    if-ne v0, v2, :cond_3

    new-instance v0, Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->d:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt;->setup(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p2, v0}, Lcom/onyx/engine/sdk/OpenOptions;->setDrmCallback(Lcom/onyx/engine/sdk/DrmSDK;)Lcom/onyx/engine/sdk/OpenOptions;

    sget-object p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->Companion:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$Companion;->getNO_ERROR()J

    move-result-wide p0

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->Companion:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$Companion;->getERROR_DRM_INVALID()J

    move-result-wide p0

    :goto_0
    return-wide p0

    :cond_3
    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/plugins/epub/EpubDRMDetector$Companion;->getENCRYPT_TYPE_OTHER()I

    move-result p0

    if-ne v0, p0, :cond_4

    sget-object p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->Companion:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$Companion;->getERROR_DRM_INVALID()J

    move-result-wide p0

    return-wide p0

    :cond_4
    sget-object p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->Companion:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$Companion;->getNO_ERROR()J

    move-result-wide p0

    return-wide p0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final chapterList()Ljava/util/List;
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

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->chapterList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final clearPaginationCache()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->clearPaginationCache()V

    return-void
.end method

.method public final closeDocument()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->c:Ljava/lang/String;

    return-void
.end method

.method public final closePagination()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->setAbortPagination(Z)V

    return-void
.end method

.method public final convertToPDF(Lcom/onyx/android/sdk/reader/api/ConvertArgs;Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;)I
    .locals 2
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

    iget v0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->b:I

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ConvertArgs;->getSavePDFPageCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/reader/api/ConvertArgs;->setSavePDFPageCount(I)V

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getNeoBaseNative()Lcom/onyx/engine/sdk/NeoBaseNative;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Companion;->convertToPDF(Lcom/onyx/engine/sdk/NeoBaseNative;Lcom/onyx/android/sdk/reader/api/ConvertArgs;Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;)I

    move-result p0

    return p0
.end method

.method public final d()V
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->c()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_1
    check-cast p0, Ljava/util/Collection;

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v3, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final destroy()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->destroy()V

    return-void
.end method

.method public final draw(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->draw(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->d()V

    return-void
.end method

.method public final firstText()Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->firstText()Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public final getAllPieceOfText()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getAllPieceOfText()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getBitmap(Lcom/onyx/android/sdk/reader/api/ReaderImage;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderImage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "readerImage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getBitmap(Lcom/onyx/android/sdk/reader/api/ReaderImage;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final getChapterId(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getChapterId(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getChapterName(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getChapterName(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getChapterStartPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getChapterStartPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public final getFontFamilyList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getFontFamilyList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/engine/sdk/FontSpec;

    sget-object v3, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->convert(Lcom/onyx/engine/sdk/FontSpec;)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getImagePage(Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Lcom/onyx/android/sdk/reader/api/ReaderImage;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getImagePage(Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Lcom/onyx/android/sdk/reader/api/ReaderImage;

    move-result-object p0

    return-object p0
.end method

.method public final getInitPaginationPosition(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "chapterID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getInitPaginationPosition(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public final getLastSentence()Lcom/onyx/android/sdk/reader/api/ReaderSentence;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getLastSentence()Lcom/onyx/android/sdk/reader/api/ReaderSentence;

    move-result-object p0

    return-object p0
.end method

.method public final getLinkTargetSelection(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSelection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "link"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getLinkTargetSelection(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public final getOriginCssStyle()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getOriginCssStyle()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;

    move-result-object p0

    return-object p0
.end method

.method public final getPageImages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderImage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getPageImages()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getPageLinks()Ljava/util/List;
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

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getPageLinks()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getPageNumberInCurrentChapter()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getPageNumberInCurrentChapter()I

    move-result p0

    return p0
.end method

.method public final getPageNumberOfPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getPageNumberOfPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p0

    return p0
.end method

.method public final getPageParagraphList()Ljava/util/List;
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

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getPageParagraphList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getPaginationProgress()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getPaginationProgress()F

    move-result p0

    return p0
.end method

.method public final getPositionOfPageNumber(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getPositionByPageNumber(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public final getReaderPageProgressDirection()Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getReaderPageProgressDirection()Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;

    move-result-object p0

    return-object p0
.end method

.method public final getScreenEndPage()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getScreenEndPage()I

    move-result p0

    return p0
.end method

.method public final getScreenEndPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getScreenEndPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public final getScreenStartPage()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getScreenStartPage()I

    move-result p0

    return p0
.end method

.method public final getScreenStartPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getScreenStartPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public final getScreenText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getScreenText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSentence(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSentence;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "startPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getSentence(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSentence;

    move-result-object p0

    return-object p0
.end method

.method public final getSize()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getBookSize()I

    move-result p0

    return p0
.end method

.method public final getStyle()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getReaderTextStyle()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;

    move-result-object p0

    return-object p0
.end method

.method public final getText(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .locals 1
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

    const-string v0, "startPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endPosition"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getText(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTotalPage()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getTotalPage()I

    move-result p0

    return p0
.end method

.method public final getTotalPageCountInCurrentChapter()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getTotalPageCountInCurrentChapter()I

    move-result p0

    return p0
.end method

.method public final getTotalReadingProgress()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getTotalReadingProgress()F

    move-result p0

    return p0
.end method

.method public final getXPathByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getXPathByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final gotoPage(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/api/ReaderException;
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->gotoPage(I)Z

    move-result p0

    return p0
.end method

.method public final gotoPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z
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

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->gotoPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z

    move-result p0

    return p0
.end method

.method public final hasPaginationNext(Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->hasPaginationNext(Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;)Z

    move-result p0

    return p0
.end method

.method public final hasText()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->hasText()Z

    move-result p0

    return p0
.end method

.method public final hitPageCache(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->hitPageCache(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z

    move-result p0

    return p0
.end method

.method public final isAbortPagination()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->isAbortPagination()Z

    move-result p0

    return p0
.end method

.method public final isAllPaginationComplete()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->isAllPaginationComplete()Z

    move-result p0

    return p0
.end method

.method public final isCurrentChapterPaginationComplete()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->isCurrentChapterPaginationComplete()Z

    move-result p0

    return p0
.end method

.method public final isFirstPage()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->isFirstPage()Z

    move-result p0

    return p0
.end method

.method public final isImagePage(Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->isImagePage(Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Z

    move-result p0

    return p0
.end method

.method public final isLastPage()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->isLastPage()Z

    move-result p0

    return p0
.end method

.method public final isNeedClearPaginationCache()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->isNeedClearPaginationCache()Z

    move-result p0

    return p0
.end method

.method public final lastSelectionEndOfLine(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "startPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->lastSelectionEndOfLine(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public final lastText()Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->lastText()Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public final lastTextEndOfLine(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "startPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->lastTextEndOfLine(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public final metadataString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->metadataString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final nextScreen()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/api/ReaderException;
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->nextScreen()Z

    move-result p0

    return p0
.end method

.method public final onPaginationFinally()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->onPaginationFinally()V

    return-void
.end method

.method public final onPaginationStart()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->onPaginationStart()Z

    move-result p0

    return p0
.end method

.method public final openDocument(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;)J
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "documentOptions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/engine/sdk/OpenOptions;

    invoke-direct {v0, p1}, Lcom/onyx/engine/sdk/OpenOptions;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->b(Ljava/lang/String;Lcom/onyx/engine/sdk/OpenOptions;)J

    move-result-wide v1

    sget-object p1, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->Companion:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$Companion;->getNO_ERROR()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    return-wide v1

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/engine/sdk/OpenOptions;->setDeviceId(Ljava/lang/String;)Lcom/onyx/engine/sdk/OpenOptions;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/engine/sdk/OpenOptions;->setCertificate(Ljava/lang/String;)Lcom/onyx/engine/sdk/OpenOptions;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;->getDocumentPassword()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/onyx/engine/sdk/OpenOptions;->setPassword(Ljava/lang/String;)Lcom/onyx/engine/sdk/OpenOptions;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->open(Lcom/onyx/engine/sdk/OpenOptions;)Lcom/onyx/engine/sdk/BookOpenResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/BookOpenResult;->getErr()Lcom/onyx/engine/sdk/HandleErrorCode;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p2, p0

    :goto_0
    const/4 p2, 0x1

    if-eq p0, p2, :cond_3

    const/4 p2, 0x2

    if-eq p0, p2, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$Companion;->getERROR_UNKNOWN()J

    move-result-wide p0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$Companion;->getERROR_FILE_INVALID()J

    move-result-wide p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$Companion;->getNO_ERROR()J

    move-result-wide p0

    :goto_1
    return-wide p0
.end method

.method public final paginationNext(Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;)Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->paginationNext(Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;)Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;

    move-result-object p0

    return-object p0
.end method

.method public final positionByPositionString(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getPositionFromString(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public final preScreen()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/api/ReaderException;
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->preScreen()Z

    move-result p0

    return p0
.end method

.method public final readCover()Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->readCover()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final readDocumentLanguage()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->readLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final readTableOfContent(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->readTableOfContent(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)Z

    move-result p0

    return p0
.end method

.method public final saveLogFiles(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "dirPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->saveLogFiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->c()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getCurrentTime24Format()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".txt"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1, p0, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getAbsolutePath(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final search(Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;Ljava/util/List;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->search(Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public final selectSelection(Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "startPos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->selectSelection(Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public final selectTextOnScreen(Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->selectTextOnScreen(Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public final selectTextOnScreen(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 1
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

    const-string v0, "startPos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endPos"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->selectTextOnScreen(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public final selectTextOnScreen(Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 3
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->selectTextOnScreen(Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public final selectWordOnScreen(Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderTextSplitter;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderTextSplitter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->selectWordOnScreen(Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderTextSplitter;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public final setAbortPagination(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->setAbortPagination(Z)V

    return-void
.end method

.method public final setAborted(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->setAborted(Z)V

    return-void
.end method

.method public final setChineseConvertType(Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "convertType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->setChineseConvertType(Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;)V

    return-void
.end method

.method public final setFontEnhancement(I[I)V
    .locals 0
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->setFontEnhancement(I[I)V

    return-void
.end method

.method public final setStyle(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "style"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->setStyle(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;)V

    return-void
.end method

.method public final setTextGamma(F)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->setTextGamma(F)V

    return-void
.end method

.method public final setViewSize(Lcom/onyx/android/sdk/base/data/Size;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->setViewSize(II)V

    return-void
.end method

.method public final setupDisplayMetrics(Lcom/onyx/engine/sdk/DisplayMetrics;)V
    .locals 1
    .param p1    # Lcom/onyx/engine/sdk/DisplayMetrics;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "displayMetrics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->setupDisplayMetrics(Lcom/onyx/engine/sdk/DisplayMetrics;)V

    return-void
.end method

.method public final supportCssOriginStyle()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->supportCssOriginStyle()Z

    move-result p0

    return p0
.end method

.method public final updateDocumentOptions(Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "documentOptions"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pluginOptions"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->updateReaderPageInfo(Ljava/lang/String;)V

    return-void
.end method

.method public final updateTocPageNumber(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;->a:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->updateTocPageNumber(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)V

    return-void
.end method
