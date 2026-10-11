.class public final Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPPTReaderWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PPTReaderWrapper.kt\ncom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,595:1\n1549#2:596\n1620#2,3:597\n1360#2:600\n1446#2,2:601\n1360#2:603\n1446#2,2:604\n1549#2:606\n1620#2,3:607\n1448#2,3:610\n1448#2,3:613\n1360#2:616\n1446#2,2:617\n1360#2:619\n1446#2,2:620\n1549#2:622\n1620#2,3:623\n1448#2,3:626\n1448#2,3:629\n1855#2,2:632\n1549#2:634\n1620#2,3:635\n*S KotlinDebug\n*F\n+ 1 PPTReaderWrapper.kt\ncom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper\n*L\n156#1:596\n156#1:597,3\n245#1:600\n245#1:601,2\n246#1:603\n246#1:604,2\n247#1:606\n247#1:607,3\n246#1:610,3\n245#1:613,3\n258#1:616\n258#1:617,2\n259#1:619\n259#1:620,2\n260#1:622\n260#1:623,3\n259#1:626,3\n258#1:629,3\n274#1:632,2\n549#1:634\n549#1:635,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u0000 \u0086\u00012\u00020\u0001:\u0002\u0086\u0001B\t\u00a2\u0006\u0006\u0008\u0084\u0001\u0010\u0085\u0001J\u0014\u0010\u0006\u001a\u00020\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0002J\u0014\u0010\u0008\u001a\u00020\u00072\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0002J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\tH\u0002J8\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\tH\u0002JJ\u0010!\u001a\u00020\u00052\n\u0010\u001b\u001a\u00060\u0019j\u0002`\u001a2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\t2\u0006\u0010 \u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\tH\u0002J8\u0010&\u001a\u00020\u00172\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\t2\u0006\u0010#\u001a\u00020\t2\u0006\u0010$\u001a\u00020\t2\u0006\u0010%\u001a\u00020\tH\u0002JJ\u0010\u0004\u001a\u00020\u00052\n\u0010\u001b\u001a\u00060\u0019j\u0002`\u001a2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\t2\u0006\u0010#\u001a\u00020\t2\u0006\u0010$\u001a\u00020\t2\u0006\u0010%\u001a\u00020\tH\u0002J(\u0010)\u001a\u00020(2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\t2\u0006\u0010#\u001a\u00020\t2\u0006\u0010\'\u001a\u00020\tH\u0002J(\u0010*\u001a\u00020(2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\t2\u0006\u0010#\u001a\u00020\t2\u0006\u0010\'\u001a\u00020\tH\u0002J\u001a\u0010-\u001a\u0004\u0018\u00010\u00112\u0006\u0010,\u001a\u00020+2\u0006\u0010\u0010\u001a\u00020\tH\u0002J,\u00103\u001a\u00020\u00052\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020/0.2\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u0002010\u001c2\u0006\u0010\u0010\u001a\u00020\tH\u0002J\u0018\u00105\u001a\u0002042\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010,\u001a\u00020+H\u0002J\u000c\u00107\u001a\u000206*\u00020\u001dH\u0002J\u0018\u00108\u001a\u0008\u0012\u0004\u0012\u0002060.*\u0008\u0012\u0004\u0012\u00020\u001d0\u001cH\u0002J\u0008\u0010:\u001a\u000209H\u0002J\u0008\u0010;\u001a\u000209H\u0002J\u0010\u0010=\u001a\u0002092\u0006\u0010<\u001a\u000206H\u0002J\u0010\u0010>\u001a\u0002092\u0006\u0010<\u001a\u000206H\u0002J\u0010\u0010A\u001a\u00020@2\u0006\u0010?\u001a\u00020+H\u0002J\u0016\u0010E\u001a\u00020\u00072\u0006\u0010B\u001a\u00020(2\u0006\u0010D\u001a\u00020CJ\u0008\u0010G\u001a\u0004\u0018\u00010FJ\u0008\u0010I\u001a\u0004\u0018\u00010HJ\u0006\u0010J\u001a\u000204J\u0006\u0010K\u001a\u00020\u0005J\u000e\u0010L\u001a\u00020(2\u0006\u0010\u0010\u001a\u00020\tJ\u0014\u0010M\u001a\u0008\u0012\u0004\u0012\u00020(0\u001c2\u0006\u0010\u0010\u001a\u00020\tJ\u000e\u0010P\u001a\u0002042\u0006\u0010O\u001a\u00020NJ\u000e\u0010R\u001a\u00020Q2\u0006\u0010\r\u001a\u00020\tJ\u000e\u0010T\u001a\u00020Q2\u0006\u0010S\u001a\u00020(J\u000e\u0010U\u001a\u0002042\u0006\u0010\u0010\u001a\u00020\tJ\u000e\u0010X\u001a\u0002042\u0006\u0010W\u001a\u00020VJ\u0006\u0010Y\u001a\u00020\tJ\u0014\u0010Z\u001a\u0008\u0012\u0004\u0012\u0002060\u001c2\u0006\u0010\n\u001a\u00020\tJ\u0014\u0010\\\u001a\u0008\u0012\u0004\u0012\u00020[0.2\u0006\u0010\n\u001a\u00020\tJ\u0014\u0010]\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u001c2\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010^\u001a\u00020/2\u0006\u0010\r\u001a\u00020\tJ \u0010a\u001a\u0004\u0018\u00010\u00172\u0006\u0010\n\u001a\u00020\t2\u0006\u0010_\u001a\u00020\t2\u0006\u0010`\u001a\u00020\tJ\u0018\u0010d\u001a\u0004\u0018\u00010c2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010b\u001a\u00020\tJ(\u0010g\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010,\u001a\u00020+2\u0006\u0010<\u001a\u0002062\u0006\u0010f\u001a\u00020eJ(\u0010a\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010_\u001a\u00020+2\u0006\u0010`\u001a\u00020+2\u0006\u0010<\u001a\u000206J\u0016\u0010j\u001a\u00020\u00172\u0006\u0010\n\u001a\u00020\t2\u0006\u0010i\u001a\u00020hJ$\u0010m\u001a\u0002042\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010l\u001a\u00020k2\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020/0.J\u000e\u0010o\u001a\u00020\t2\u0006\u0010n\u001a\u00020(J\u000e\u0010q\u001a\u00020(2\u0006\u0010p\u001a\u00020\tR\u0018\u0010u\u001a\u0004\u0018\u00010r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008s\u0010tR\u0018\u0010x\u001a\u0004\u0018\u00010v8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010wR\u0017\u0010}\u001a\u00020y8\u0006\u00a2\u0006\u000c\n\u0004\u0008!\u0010z\u001a\u0004\u0008{\u0010|R\u0019\u0010\u0081\u0001\u001a\u0002068\u0006\u00a2\u0006\r\n\u0004\u0008&\u0010~\u001a\u0005\u0008\u007f\u0010\u0080\u0001R\u0018\u0010\u0083\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0004\u0010\u0082\u0001\u00a8\u0006\u0087\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;",
        "",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "e",
        "",
        "r",
        "",
        "i",
        "",
        "page",
        "Lorg/apache/poi/text/TextSheet;",
        "n",
        "pageIndex",
        "Lcom/onyx/android/sdk/reader/api/PageRange;",
        "g",
        "pageNum",
        "Lorg/apache/poi/text/Piece;",
        "piece",
        "startLineIndex",
        "endLineIndex",
        "startWordIndex",
        "endWordIndex",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "b",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "builder",
        "",
        "Ljava/awt/geom/Rectangle2D;",
        "rectangles",
        "startPieceIndex",
        "endPieceIndex",
        "c",
        "lineIndex",
        "wordIndex",
        "leftOffset",
        "rightOffset",
        "d",
        "length",
        "",
        "k",
        "l",
        "Landroid/graphics/PointF;",
        "point",
        "h",
        "",
        "Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;",
        "list",
        "Lorg/apache/poi/text/Selection;",
        "selections",
        "f",
        "",
        "p",
        "Landroid/graphics/RectF;",
        "t",
        "u",
        "",
        "s",
        "q",
        "displayRect",
        "m",
        "j",
        "pointF",
        "Ljava/awt/geom/Point2D;",
        "v",
        "path",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;",
        "documentOptions",
        "openDocument",
        "Lorg/apache/poi/sl/MetaData;",
        "metadata",
        "Ljava/io/InputStream;",
        "thumbnail",
        "closeDocument",
        "destroy",
        "getPageText",
        "getPageParagraphList",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;",
        "toc",
        "readTableOfContent",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "positionByPageIndex",
        "positionString",
        "positionByPositionString",
        "hasText",
        "Lcom/onyx/android/sdk/reader/api/DrawArgs;",
        "drawArgs",
        "draw",
        "pageCount",
        "getAllCharRectList",
        "Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;",
        "getPageTextCharInfoList",
        "allText",
        "createReaderSelectionImpl",
        "start",
        "end",
        "selectTextOnScreen",
        "startPos",
        "Lcom/onyx/android/sdk/reader/api/ReaderSentence;",
        "getSentence",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextSplitter;",
        "splitter",
        "selectWordOnScreen",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;",
        "args",
        "selectOnDocument",
        "Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;",
        "options",
        "search",
        "position",
        "getPositionInt",
        "positionInt",
        "getPosition",
        "Lorg/apache/poi/sl/PPTFactory;",
        "a",
        "Lorg/apache/poi/sl/PPTFactory;",
        "pptFactory",
        "Lcom/trans/android/font/FontProvider;",
        "Lcom/trans/android/font/FontProvider;",
        "fontProvider",
        "Ljava/awt/Dimension;",
        "Ljava/awt/Dimension;",
        "getPageSize",
        "()Ljava/awt/Dimension;",
        "pageSize",
        "Landroid/graphics/RectF;",
        "getViewport",
        "()Landroid/graphics/RectF;",
        "viewport",
        "Ljava/lang/String;",
        "bookName",
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
        "SMAP\nPPTReaderWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PPTReaderWrapper.kt\ncom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,595:1\n1549#2:596\n1620#2,3:597\n1360#2:600\n1446#2,2:601\n1360#2:603\n1446#2,2:604\n1549#2:606\n1620#2,3:607\n1448#2,3:610\n1448#2,3:613\n1360#2:616\n1446#2,2:617\n1360#2:619\n1446#2,2:620\n1549#2:622\n1620#2,3:623\n1448#2,3:626\n1448#2,3:629\n1855#2,2:632\n1549#2:634\n1620#2,3:635\n*S KotlinDebug\n*F\n+ 1 PPTReaderWrapper.kt\ncom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper\n*L\n156#1:596\n156#1:597,3\n245#1:600\n245#1:601,2\n246#1:603\n246#1:604,2\n247#1:606\n247#1:607,3\n246#1:610,3\n245#1:613,3\n258#1:616\n258#1:617,2\n259#1:619\n259#1:620,2\n260#1:622\n260#1:623,3\n259#1:626,3\n258#1:629,3\n274#1:632,2\n549#1:634\n549#1:635,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ERROR_EMPTY_FILE:J = 0xfL

.field public static final ERROR_NOT_OFFICE_XML_FILE:J = 0xeL

.field public static final ERROR_NOT_OLE2_FILE:J = 0xdL

.field public static final ERROR_OFFICE_XML_FILE:J = 0xcL

.field public static final ERROR_OLE2_FILE:J = 0xbL

.field public static final PADDING_SPACE:I = 0xa

.field public static final f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:I = 0x32

.field public static final h:I = 0xc8

.field public static i:J

.field public static j:J

.field public static k:J

.field public static l:J

.field public static m:J

.field public static n:J


# instance fields
.field public a:Lorg/apache/poi/sl/PPTFactory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Lcom/trans/android/font/FontProvider;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Ljava/awt/Dimension;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->Companion:Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper$Companion;

    const-class v0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;

    sput-object v0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->f:Ljava/lang/Class;

    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->j:J

    const-wide/16 v0, 0x2

    sput-wide v0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->k:J

    const-wide/16 v0, 0x3

    sput-wide v0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->l:J

    const-wide/16 v0, 0x4

    sput-wide v0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->m:J

    const-wide/16 v0, 0x5

    sput-wide v0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->n:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/Dimension;

    invoke-direct {v0}, Ljava/awt/Dimension;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->c:Ljava/awt/Dimension;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->d:Landroid/graphics/RectF;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->e:Ljava/lang/String;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/common/util/ContextUtils;->initContext(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/onyx/poi/POIFactory;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/trans/android/font/DefaultFontProvider;

    invoke-direct {v0}, Lcom/trans/android/font/DefaultFontProvider;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->b:Lcom/trans/android/font/FontProvider;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;)Ljava/awt/Graphics2D;
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->o(Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;)Ljava/awt/Graphics2D;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getERROR_CONFIG_NOT_EXIST$cp()J
    .locals 2

    sget-wide v0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->l:J

    return-wide v0
.end method

.method public static final synthetic access$getERROR_CONTENT_NOT_EXIST$cp()J
    .locals 2

    sget-wide v0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->m:J

    return-wide v0
.end method

.method public static final synthetic access$getERROR_FILE_INVALID$cp()J
    .locals 2

    sget-wide v0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->j:J

    return-wide v0
.end method

.method public static final synthetic access$getERROR_PASSWORD_INVALID$cp()J
    .locals 2

    sget-wide v0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->k:J

    return-wide v0
.end method

.method public static final synthetic access$getERROR_UNKNOWN$cp()J
    .locals 2

    sget-wide v0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->n:J

    return-wide v0
.end method

.method public static final synthetic access$getNO_ERROR$cp()J
    .locals 2

    sget-wide v0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->i:J

    return-wide v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->f:Ljava/lang/Class;

    return-object v0
.end method

.method public static final synthetic access$setERROR_CONFIG_NOT_EXIST$cp(J)V
    .locals 0

    sput-wide p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->l:J

    return-void
.end method

.method public static final synthetic access$setERROR_CONTENT_NOT_EXIST$cp(J)V
    .locals 0

    sput-wide p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->m:J

    return-void
.end method

.method public static final synthetic access$setERROR_FILE_INVALID$cp(J)V
    .locals 0

    sput-wide p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->j:J

    return-void
.end method

.method public static final synthetic access$setERROR_PASSWORD_INVALID$cp(J)V
    .locals 0

    sput-wide p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->k:J

    return-void
.end method

.method public static final synthetic access$setERROR_UNKNOWN$cp(J)V
    .locals 0

    sput-wide p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->n:J

    return-void
.end method

.method public static final synthetic access$setNO_ERROR$cp(J)V
    .locals 0

    sput-wide p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->i:J

    return-void
.end method

.method public static final o(Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;)Ljava/awt/Graphics2D;
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v2, "createBitmap(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/trans/android/AndroidGraphics2D;

    invoke-direct {v2, v0}, Lcom/trans/android/AndroidGraphics2D;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->IMAGE_RENDERER:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    new-instance v3, Lorg/apache/poi/sl/draw/AndroidImageRenderer;

    invoke-direct {v3}, Lorg/apache/poi/sl/draw/AndroidImageRenderer;-><init>()V

    invoke-virtual {v2, v0, v3}, Lcom/trans/android/AndroidGraphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->DISABLE_DRAW:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v3}, Lcom/trans/android/AndroidGraphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->b:Lcom/trans/android/font/FontProvider;

    invoke-virtual {v2, p0}, Lcom/trans/android/AndroidGraphics2D;->setFontProvider(Lcom/trans/android/font/FontProvider;)V

    invoke-virtual {v2, v1}, Lcom/trans/android/AndroidGraphics2D;->setRecycleBitmap(Z)V

    return-object v2
.end method


# virtual methods
.method public final allText(I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->n(I)Lorg/apache/poi/text/TextSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/text/TextSheet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lorg/apache/poi/text/TextSheet;->getPieces()Ljava/util/Collection;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/text/Piece;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->createReaderSelectionImpl(I)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/poi/text/Piece;->getLines()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/text/Line;

    invoke-virtual {v7}, Lorg/apache/poi/text/Line;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object v7

    const-string v8, "getRectangle(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lorg/apache/poi/text/Piece;->getText()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v6, ""

    :cond_2
    invoke-virtual {v5, v6}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setText(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->getRectList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v6, Lcom/onyx/android/sdk/reader/api/PageRange;->Companion:Lcom/onyx/android/sdk/reader/api/PageRange$Companion;

    invoke-virtual {v4}, Lorg/apache/poi/text/Piece;->getStartPos()I

    move-result v7

    invoke-virtual {v4}, Lorg/apache/poi/text/Piece;->getEndPos()I

    move-result v4

    invoke-virtual {v6, v7, v4}, Lcom/onyx/android/sdk/reader/api/PageRange$Companion;->createSelectionRange(II)Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setSelectionRange(Lcom/onyx/android/sdk/reader/api/PageRange;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final b(ILorg/apache/poi/text/Piece;IIII)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 13

    move-object v8, p2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->createReaderSelectionImpl(I)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, v10

    move-object v2, v11

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->c(Ljava/lang/StringBuilder;Ljava/util/List;Lorg/apache/poi/text/Piece;IIII)V

    move/from16 v0, p3

    move/from16 v1, p5

    invoke-virtual {p2, v0, v1}, Lorg/apache/poi/text/Piece;->getPosition(II)I

    move-result v0

    move/from16 v1, p4

    move/from16 v2, p6

    invoke-virtual {p2, v1, v2}, Lorg/apache/poi/text/Piece;->getPosition(II)I

    move-result v1

    if-le v0, v1, :cond_0

    move v12, v1

    move v1, v0

    move v0, v12

    :cond_0
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setText(Ljava/lang/String;)V

    move-object v2, p0

    invoke-virtual {p0, v11}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setRectList(Ljava/util/List;)V

    sget-object v2, Lcom/onyx/android/sdk/reader/api/PageRange;->Companion:Lcom/onyx/android/sdk/reader/api/PageRange$Companion;

    invoke-virtual {v2, v0, v1}, Lcom/onyx/android/sdk/reader/api/PageRange$Companion;->createSelectionRange(II)Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setSelectionRange(Lcom/onyx/android/sdk/reader/api/PageRange;)V

    return-object v9
.end method

.method public final c(Ljava/lang/StringBuilder;Ljava/util/List;Lorg/apache/poi/text/Piece;IIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "+",
            "Ljava/awt/geom/Rectangle2D;",
            ">;",
            "Lorg/apache/poi/text/Piece;",
            "IIII)V"
        }
    .end annotation

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/text/Piece;->combineSelectText(Ljava/lang/StringBuilder;Ljava/util/List;IIII)V

    return-void
.end method

.method public final closeDocument()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->a:Lorg/apache/poi/sl/PPTFactory;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/sl/PPTFactory;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->a:Lorg/apache/poi/sl/PPTFactory;

    const/4 p0, 0x1

    return p0
.end method

.method public final createReaderSelectionImpl(I)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;-><init>()V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setPageIndex(I)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->g(I)Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setPageRange(Lcom/onyx/android/sdk/reader/api/PageRange;)V

    return-object v0
.end method

.method public final d(ILorg/apache/poi/text/Piece;IIII)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 11

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->createReaderSelectionImpl(I)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p0

    move-object v2, v9

    move-object v3, v10

    move-object v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->e(Ljava/lang/StringBuilder;Ljava/util/List;Lorg/apache/poi/text/Piece;IIII)V

    invoke-virtual {p2, p3, p4}, Lorg/apache/poi/text/Piece;->getPosition(II)I

    move-result v1

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setText(Ljava/lang/String;)V

    move-object v2, p0

    invoke-virtual {p0, v10}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setRectList(Ljava/util/List;)V

    sget-object v2, Lcom/onyx/android/sdk/reader/api/PageRange;->Companion:Lcom/onyx/android/sdk/reader/api/PageRange$Companion;

    sub-int v3, v1, p5

    add-int v1, v1, p6

    invoke-virtual {v2, v3, v1}, Lcom/onyx/android/sdk/reader/api/PageRange$Companion;->createSelectionRange(II)Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setSelectionRange(Lcom/onyx/android/sdk/reader/api/PageRange;)V

    return-object v0
.end method

.method public final destroy()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->b:Lcom/trans/android/font/FontProvider;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/trans/android/font/FontProvider;->release()V

    :cond_0
    return-void
.end method

.method public final draw(Lcom/onyx/android/sdk/reader/api/DrawArgs;)Z
    .locals 14
    .param p1    # Lcom/onyx/android/sdk/reader/api/DrawArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "drawArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->a:Lorg/apache/poi/sl/PPTFactory;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getScale()F

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v3

    new-instance v4, Lcom/trans/android/AndroidGraphics2D;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/trans/android/AndroidGraphics2D;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getRotation()I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Lorg/apache/poi/sl/draw/Drawable;->IMAGE_RENDERER:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    new-instance v7, Lorg/apache/poi/sl/draw/AndroidImageRenderer;

    invoke-direct {v7}, Lorg/apache/poi/sl/draw/AndroidImageRenderer;-><init>()V

    invoke-virtual {v4, v6, v7}, Lcom/trans/android/AndroidGraphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getAntialias()Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/trans/android/AndroidGraphics2D;->setAntiAlias(Z)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->b:Lcom/trans/android/font/FontProvider;

    invoke-virtual {v4, p0}, Lcom/trans/android/AndroidGraphics2D;->setFontProvider(Lcom/trans/android/font/FontProvider;)V

    const/4 p0, 0x0

    cmpg-float p0, v5, p0

    const/4 v6, 0x1

    if-nez p0, :cond_1

    move p0, v6

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    if-nez p0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getPageRect()Landroid/graphics/RectF;

    move-result-object v7

    neg-float v8, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/onyx/android/sdk/base/lite/extension/RectFKt;->rotatedSize$default(Landroid/graphics/RectF;FFFILjava/lang/Object;)Landroid/graphics/RectF;

    move-result-object p0

    sget-object v2, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RectKt;->toSizeF(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/base/data/SizeF;

    move-result-object p0

    invoke-virtual {v2, p0, v3, v5}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->calculateRotationMatrix(Lcom/onyx/android/sdk/base/data/SizeF;Landroid/graphics/RectF;F)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixValue(Landroid/graphics/Matrix;)[F

    move-result-object p0

    new-instance v2, Ljava/awt/geom/AffineTransform;

    aget v8, p0, v1

    const/4 v1, 0x3

    aget v9, p0, v1

    aget v10, p0, v6

    const/4 v1, 0x4

    aget v11, p0, v1

    const/4 v1, 0x2

    aget v12, p0, v1

    const/4 v1, 0x5

    aget v13, p0, v1

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Ljava/awt/geom/AffineTransform;-><init>(FFFFFF)V

    invoke-virtual {v4, v2}, Lcom/trans/android/AndroidGraphics2D;->transform(Ljava/awt/geom/AffineTransform;)V

    goto :goto_1

    :cond_2
    float-to-double v7, v2

    invoke-virtual {v4, v7, v8, v7, v8}, Lcom/trans/android/AndroidGraphics2D;->scale(DD)V

    iget p0, v3, Landroid/graphics/RectF;->left:F

    div-float/2addr p0, v2

    float-to-double v7, p0

    iget p0, v3, Landroid/graphics/RectF;->top:F

    div-float/2addr p0, v2

    float-to-double v1, p0

    invoke-virtual {v4, v7, v8, v1, v2}, Lcom/trans/android/AndroidGraphics2D;->translate(DD)V

    :goto_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getPagePosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->getPageIndex()I

    move-result p0

    invoke-virtual {v0, v4, p0}, Lorg/apache/poi/sl/PPTFactory;->drawSlide(Ljava/awt/Graphics2D;I)V

    return v6
.end method

.method public final e(Ljava/lang/StringBuilder;Ljava/util/List;Lorg/apache/poi/text/Piece;IIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "+",
            "Ljava/awt/geom/Rectangle2D;",
            ">;",
            "Lorg/apache/poi/text/Piece;",
            "IIII)V"
        }
    .end annotation

    if-lez p6, :cond_0

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/text/Piece;->combineLeftText(Ljava/lang/StringBuilder;Ljava/util/List;III)V

    :cond_0
    add-int/lit8 v6, p7, 0x1

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/text/Piece;->combineRightText(Ljava/lang/StringBuilder;Ljava/util/List;III)V

    return-void
.end method

.method public final f(Ljava/util/List;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/text/Selection;",
            ">;I)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/text/Selection;

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->createReaderSelectionImpl(I)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/text/Selection;->getDisplayRectangle()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setRectList(Ljava/util/List;)V

    invoke-virtual {v0}, Lorg/apache/poi/text/Selection;->getLeftText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getLeftText(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setLeftText(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/text/Selection;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getText(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setText(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/text/Selection;->getRightText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getRightText(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setRightText(Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/reader/api/PageRange;->Companion:Lcom/onyx/android/sdk/reader/api/PageRange$Companion;

    invoke-virtual {v0}, Lorg/apache/poi/text/Selection;->getStartPosition()I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/poi/text/Selection;->getEndPosition()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/onyx/android/sdk/reader/api/PageRange$Companion;->createSelectionRange(II)Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setSelectionRange(Lcom/onyx/android/sdk/reader/api/PageRange;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(I)Lcom/onyx/android/sdk/reader/api/PageRange;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/reader/api/PageRange;

    invoke-direct {p1, p0, p0}, Lcom/onyx/android/sdk/reader/api/PageRange;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V

    return-object p1
.end method

.method public final getAllCharRectList(I)Ljava/util/List;
    .locals 6
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

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->n(I)Lorg/apache/poi/text/TextSheet;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/text/TextSheet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/text/TextSheet;->getPieces()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "getPieces(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/text/Piece;

    invoke-virtual {v1}, Lorg/apache/poi/text/Piece;->getLines()Ljava/util/List;

    move-result-object v1

    const-string v2, "getLines(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/text/Line;

    invoke-virtual {v3}, Lorg/apache/poi/text/Line;->getWords()Ljava/util/List;

    move-result-object v3

    const-string v4, "getWords(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/text/OneWord;

    invoke-virtual {v5}, Lorg/apache/poi/text/OneWord;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    :cond_2
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getPageParagraphList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->n(I)Lorg/apache/poi/text/TextSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/text/TextSheet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/text/TextSheet;->getPieces()Ljava/util/Collection;

    move-result-object p0

    const-string p1, "getPieces(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/text/Piece;

    invoke-virtual {v0}, Lorg/apache/poi/text/Piece;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getPageSize()Ljava/awt/Dimension;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->c:Ljava/awt/Dimension;

    return-object p0
.end method

.method public final getPageText(I)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->n(I)Lorg/apache/poi/text/TextSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/text/TextSheet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/text/TextSheet;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public final getPageTextCharInfoList(I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->n(I)Lorg/apache/poi/text/TextSheet;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/text/TextSheet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/text/TextSheet;->getPieces()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "getPieces(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/text/Piece;

    invoke-virtual {v1}, Lorg/apache/poi/text/Piece;->getLines()Ljava/util/List;

    move-result-object v1

    const-string v2, "getLines(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/text/Line;

    invoke-virtual {v3}, Lorg/apache/poi/text/Line;->getWords()Ljava/util/List;

    move-result-object v3

    const-string v4, "getWords(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/text/OneWord;

    new-instance v6, Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;

    invoke-virtual {v5}, Lorg/apache/poi/text/OneWord;->getText()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getText(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/apache/poi/text/OneWord;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object v5

    const-string v8, "getRectangle(...)"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->t(Ljava/awt/geom/Rectangle2D;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;-><init>(Ljava/lang/String;Landroid/graphics/RectF;)V

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    :cond_2
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getPosition(I)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;->getDefaultPosition(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPositionInt(Ljava/lang/String;)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "position"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;->getDefaultPositionInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getSentence(II)Lcom/onyx/android/sdk/reader/api/ReaderSentence;
    .locals 18
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual/range {p0 .. p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->n(I)Lorg/apache/poi/text/TextSheet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/text/TextSheet;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {v2, v1}, Lorg/apache/poi/text/TextSheet;->getPieceByPos(I)Lorg/apache/poi/text/Piece;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v4

    :cond_1
    invoke-virtual {v3, v1}, Lorg/apache/poi/text/Piece;->getLineByPos(I)Lorg/apache/poi/text/Line;

    move-result-object v5

    if-nez v5, :cond_2

    return-object v4

    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lorg/apache/poi/text/Piece;->getLines()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5}, Lorg/apache/poi/text/Line;->getIndex()I

    move-result v5

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    move-object v12, v4

    move v11, v10

    move v13, v11

    :goto_0
    if-ge v5, v9, :cond_8

    if-eqz v11, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    const-string v4, "get(...)"

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Lorg/apache/poi/text/Line;

    invoke-virtual {v15}, Lorg/apache/poi/text/Line;->getWords()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/poi/text/OneWord;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/poi/text/OneWord;->getPos()I

    move-result v14

    if-ge v14, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual/range {v16 .. v16}, Lorg/apache/poi/text/OneWord;->toCharArray()[C

    move-result-object v12

    aget-char v14, v12, v10

    array-length v14, v12

    const/16 v17, 0x1

    add-int/lit8 v14, v14, -0x1

    aget-char v12, v12, v14

    invoke-virtual/range {v16 .. v16}, Lorg/apache/poi/text/OneWord;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/poi/text/OneWord;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object v12

    const-string v14, "getRectangle(...)"

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    const/16 v12, 0xc8

    if-lt v13, v12, :cond_5

    move-object/from16 v12, v16

    const/4 v11, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v12, v16

    goto :goto_1

    :cond_6
    :goto_2
    invoke-virtual {v15}, Lorg/apache/poi/text/Line;->isParagraphEnd()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto :goto_0

    :cond_8
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    if-nez v12, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->createReaderSelectionImpl(I)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "toString(...)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setText(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setRectList(Ljava/util/List;)V

    sget-object v5, Lcom/onyx/android/sdk/reader/api/PageRange;->Companion:Lcom/onyx/android/sdk/reader/api/PageRange$Companion;

    invoke-virtual {v12}, Lorg/apache/poi/text/OneWord;->getPos()I

    move-result v6

    const/16 v17, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v1, v6}, Lcom/onyx/android/sdk/reader/api/PageRange$Companion;->createSelectionRange(II)Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setSelectionRange(Lcom/onyx/android/sdk/reader/api/PageRange;)V

    invoke-virtual {v3}, Lorg/apache/poi/text/Piece;->getIndex()I

    move-result v1

    invoke-virtual {v2}, Lorg/apache/poi/text/TextSheet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_a

    invoke-virtual {v12}, Lorg/apache/poi/text/OneWord;->getPos()I

    move-result v1

    invoke-virtual {v3}, Lorg/apache/poi/text/Piece;->getEndPos()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_a

    move/from16 v1, v17

    goto :goto_4

    :cond_a
    move v1, v10

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->pageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v3, p1

    if-lt v3, v2, :cond_b

    move/from16 v10, v17

    :cond_b
    new-instance v2, Lcom/onyx/android/sdk/reader/api/ReaderSentence;

    invoke-virtual {v12}, Lorg/apache/poi/text/OneWord;->getPos()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v0

    invoke-direct {v2, v4, v0, v1, v10}, Lcom/onyx/android/sdk/reader/api/ReaderSentence;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderSelection;Lcom/onyx/android/sdk/reader/api/ReaderPosition;ZZ)V

    return-object v2

    :cond_c
    :goto_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getViewport()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->d:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final h(Landroid/graphics/PointF;I)Lorg/apache/poi/text/Piece;
    .locals 2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->n(I)Lorg/apache/poi/text/TextSheet;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/text/TextSheet;->getPieces()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/text/Piece;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->p(Lorg/apache/poi/text/Piece;Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final hasText(I)Z
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->pageCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/onyx/android/sdk/base/utils/MathUtils;->withinRange(III)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->a:Lorg/apache/poi/sl/PPTFactory;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/PPTFactory;->hasText(I)Z

    move-result v2

    :cond_1
    :goto_0
    return v2
.end method

.method public final i(Ljava/lang/Exception;)J
    .locals 0

    instance-of p0, p1, Lorg/apache/poi/openxml4j/exceptions/OLE2NotOfficeXmlFileException;

    if-eqz p0, :cond_0

    const-wide/16 p0, 0xb

    return-wide p0

    :cond_0
    instance-of p0, p1, Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException;

    if-eqz p0, :cond_1

    const-wide/16 p0, 0xc

    return-wide p0

    :cond_1
    instance-of p0, p1, Lorg/apache/poi/poifs/filesystem/NotOLE2FileException;

    if-eqz p0, :cond_2

    const-wide/16 p0, 0xd

    return-wide p0

    :cond_2
    instance-of p0, p1, Lorg/apache/poi/openxml4j/exceptions/NotOfficeXmlFileException;

    if-eqz p0, :cond_3

    const-wide/16 p0, 0xe

    return-wide p0

    :cond_3
    sget-wide p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->n:J

    return-wide p0
.end method

.method public final j(Landroid/graphics/RectF;)F
    .locals 1

    const/4 v0, 0x1

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->m(Landroid/graphics/RectF;)F

    move-result p0

    div-float/2addr v0, p0

    return v0
.end method

.method public final k(Lorg/apache/poi/text/Piece;III)Ljava/lang/String;
    .locals 6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/text/Piece;->combineLeftText(Ljava/lang/StringBuilder;Ljava/util/List;III)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Lorg/apache/poi/text/Piece;III)Ljava/lang/String;
    .locals 6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/text/Piece;->combineRightText(Ljava/lang/StringBuilder;Ljava/util/List;III)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m(Landroid/graphics/RectF;)F
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->c:Ljava/awt/Dimension;

    iget v1, v1, Ljava/awt/Dimension;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->c:Ljava/awt/Dimension;

    iget p0, p0, Ljava/awt/Dimension;->height:I

    int-to-float p0, p0

    div-float/2addr p1, p0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public final metadata()Lorg/apache/poi/sl/MetaData;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->a:Lorg/apache/poi/sl/PPTFactory;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/sl/PPTFactory;->getMetaData()Lorg/apache/poi/sl/MetaData;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final n(I)Lorg/apache/poi/text/TextSheet;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->a:Lorg/apache/poi/sl/PPTFactory;

    if-nez v0, :cond_0

    new-instance p0, Lorg/apache/poi/text/TextSheet;

    invoke-direct {p0}, Lorg/apache/poi/text/TextSheet;-><init>()V

    return-object p0

    :cond_0
    new-instance v1, Lcom/sunia/HTREnginev2/dlk;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/dlk;-><init>(Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;)V

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/sl/PPTFactory;->handleText(Lorg/apache/poi/sl/PPTFactory$Creator;I)V

    invoke-virtual {v0}, Lorg/apache/poi/sl/PPTFactory;->getTextHandler()Lorg/apache/poi/text/TextHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/text/TextHandler;->getTextSheet(I)Lorg/apache/poi/text/TextSheet;

    move-result-object p0

    const-string p1, "getTextSheet(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final openDocument(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;)J
    .locals 1
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

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->e:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;->getDocumentPassword()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/onyx/poi/POIFactory;->openPPT(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/sl/PPTFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->a:Lorg/apache/poi/sl/PPTFactory;

    invoke-virtual {p1}, Lorg/apache/poi/sl/PPTFactory;->getPageSize()Ljava/awt/Dimension;

    move-result-object p1

    iget-object p2, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->c:Ljava/awt/Dimension;

    iget v0, p1, Ljava/awt/Dimension;->width:I

    iget p1, p1, Ljava/awt/Dimension;->height:I

    invoke-virtual {p2, v0, p1}, Ljava/awt/Dimension;->setSize(II)V
    :try_end_0
    .catch Lorg/apache/poi/EncryptedDocumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->pageCount()I

    move-result p0

    if-gtz p0, :cond_0

    const-wide/16 p0, 0xf

    goto :goto_0

    :cond_0
    sget-wide p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->i:J

    :goto_0
    return-wide p0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->r(Ljava/lang/Exception;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->i(Ljava/lang/Exception;)J

    move-result-wide p0

    return-wide p0

    :catch_1
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->r(Ljava/lang/Exception;)V

    sget-wide p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->k:J

    return-wide p0
.end method

.method public final p(Lorg/apache/poi/text/Piece;Landroid/graphics/PointF;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/text/Piece;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->t(Ljava/awt/geom/Rectangle2D;)Landroid/graphics/RectF;

    move-result-object p0

    const/high16 p1, 0x41200000    # 10.0f

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    iget p1, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    return p0
.end method

.method public final pageCount()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->a:Lorg/apache/poi/sl/PPTFactory;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/sl/PPTFactory;->getSlideSize()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->fromPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->fromInteger(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->fromString(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public final positionByPositionString(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "positionString"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->fromString(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/MathUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->fromPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/MathUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->fromInteger(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public final q()F
    .locals 1

    const/4 v0, 0x1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->s()F

    move-result p0

    div-float/2addr v0, p0

    return v0
.end method

.method public final r(Ljava/lang/Exception;)V
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;

    invoke-static {p1}, Lorg/apache/logging/NeoLogger;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final readTableOfContent(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)Z
    .locals 24
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    const-string v1, "toc"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->a:Lorg/apache/poi/sl/PPTFactory;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return v3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->pageCount()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;->getRootEntry()Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getChildren()Ljava/util/List;

    move-result-object v15

    new-instance v13, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    invoke-virtual {v1, v3}, Lorg/apache/poi/sl/PPTFactory;->getSlideTitle(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, ""

    :cond_1
    move-object v6, v5

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x3f8

    const/16 v21, 0x0

    move-object v5, v13

    move v7, v3

    move-object/from16 v22, v13

    move-wide/from16 v13, v16

    move-object/from16 v23, v15

    move/from16 v15, v18

    move-object/from16 v16, v19

    move/from16 v17, v20

    move-object/from16 v18, v21

    invoke-direct/range {v5 .. v18}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;-><init>(Ljava/lang/String;ILcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/lang/String;ZZZJZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v6, v22

    move-object/from16 v5, v23

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final s()F
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->c:Ljava/awt/Dimension;

    iget v1, v1, Ljava/awt/Dimension;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->d:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->c:Ljava/awt/Dimension;

    iget p0, p0, Ljava/awt/Dimension;->height:I

    int-to-float p0, p0

    div-float/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public final search(ILcom/onyx/android/sdk/reader/api/ReaderSearchOptions;Ljava/util/List;)Z
    .locals 4
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->n(I)Lorg/apache/poi/text/TextSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/text/TextSheet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/poi/text/SearchOptions;

    invoke-interface {p2}, Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;->pattern()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/text/SearchOptions;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;->contextLength()I

    move-result p2

    invoke-virtual {v2, p2}, Lorg/apache/poi/text/SearchOptions;->setContentLength(I)V

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/text/TextSheet;->search(Lorg/apache/poi/text/SearchOptions;Ljava/util/List;)Z

    move-result p2

    invoke-virtual {p0, p3, v1, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->f(Ljava/util/List;Ljava/util/List;I)V

    return p2
.end method

.method public final selectOnDocument(ILcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 1
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->getAllCharRectList(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->setAllCharRectList(Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->setScreenPage(Z)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->createReaderSelectionImpl(I)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->selectCharRectList(Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setRectList(Ljava/util/List;)V

    return-object p0
.end method

.method public final selectTextOnScreen(III)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->n(I)Lorg/apache/poi/text/TextSheet;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/apache/poi/text/TextSheet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-le p2, p3, :cond_1

    move v3, p3

    move p3, p2

    move p2, v3

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->createReaderSelectionImpl(I)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object p1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v0, p2, p3, v1, v2}, Lorg/apache/poi/text/TextSheet;->combineSelection(IILjava/lang/StringBuilder;Ljava/util/List;)V

    .line 7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setText(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setRectList(Ljava/util/List;)V

    .line 9
    sget-object p0, Lcom/onyx/android/sdk/reader/api/PageRange;->Companion:Lcom/onyx/android/sdk/reader/api/PageRange$Companion;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/android/sdk/reader/api/PageRange$Companion;->createSelectionRange(II)Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setSelectionRange(Lcom/onyx/android/sdk/reader/api/PageRange;)V

    return-object p1
.end method

.method public final selectTextOnScreen(ILandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/RectF;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 7
    .param p2    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "start"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "end"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayRect"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget v0, p4, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    iget v1, p4, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/PointF;->offset(FF)V

    .line 11
    iget v0, p4, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    iget v1, p4, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/PointF;->offset(FF)V

    .line 12
    invoke-virtual {p0, p4}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->j(Landroid/graphics/RectF;)F

    move-result p4

    .line 13
    invoke-static {p2, p4}, Lcom/onyx/android/sdk/base/extension/PointFKt;->scale(Landroid/graphics/PointF;F)V

    .line 14
    invoke-static {p3, p4}, Lcom/onyx/android/sdk/base/extension/PointFKt;->scale(Landroid/graphics/PointF;F)V

    .line 15
    invoke-virtual {p0, p2, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->h(Landroid/graphics/PointF;I)Lorg/apache/poi/text/Piece;

    move-result-object v2

    const/4 p4, 0x0

    if-nez v2, :cond_0

    return-object p4

    .line 16
    :cond_0
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->v(Landroid/graphics/PointF;)Ljava/awt/geom/Point2D;

    move-result-object p2

    .line 17
    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->v(Landroid/graphics/PointF;)Ljava/awt/geom/Point2D;

    move-result-object p3

    .line 18
    invoke-virtual {v2, p2}, Lorg/apache/poi/text/Piece;->getLineIndex(Ljava/awt/geom/Point2D;)I

    move-result v3

    .line 19
    invoke-virtual {v2, p3}, Lorg/apache/poi/text/Piece;->getLineIndex(Ljava/awt/geom/Point2D;)I

    move-result v4

    if-ltz v3, :cond_3

    if-gez v4, :cond_1

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {v2, v3}, Lorg/apache/poi/text/Piece;->getLine(I)Lorg/apache/poi/text/Line;

    move-result-object v0

    .line 21
    invoke-virtual {v2, v4}, Lorg/apache/poi/text/Piece;->getLine(I)Lorg/apache/poi/text/Line;

    move-result-object v1

    .line 22
    invoke-virtual {v0, p2}, Lorg/apache/poi/text/Line;->getWordIndex(Ljava/awt/geom/Point2D;)I

    move-result v5

    .line 23
    invoke-virtual {v1, p3}, Lorg/apache/poi/text/Line;->getWordIndex(Ljava/awt/geom/Point2D;)I

    move-result v6

    if-ltz v5, :cond_3

    if-gez v6, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p0

    move v1, p1

    .line 24
    invoke-virtual/range {v0 .. v6}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->b(ILorg/apache/poi/text/Piece;IIII)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p4

    :cond_3
    :goto_0
    return-object p4
.end method

.method public final selectWordOnScreen(ILandroid/graphics/PointF;Landroid/graphics/RectF;Lcom/onyx/android/sdk/reader/api/ReaderTextSplitter;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 7
    .param p2    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/reader/api/ReaderTextSplitter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "point"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayRect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "splitter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p3, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    iget v1, p3, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/PointF;->offset(FF)V

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->j(Landroid/graphics/RectF;)F

    move-result p3

    invoke-static {p2, p3}, Lcom/onyx/android/sdk/base/extension/PointFKt;->scale(Landroid/graphics/PointF;F)V

    invoke-virtual {p0, p2, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->h(Landroid/graphics/PointF;I)Lorg/apache/poi/text/Piece;

    move-result-object v2

    const/4 p3, 0x0

    if-nez v2, :cond_0

    return-object p3

    :cond_0
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->v(Landroid/graphics/PointF;)Ljava/awt/geom/Point2D;

    move-result-object p2

    const/16 v0, 0xa

    invoke-virtual {v2, p2, v0}, Lorg/apache/poi/text/Piece;->getLineIndexExact(Ljava/awt/geom/Point2D;I)I

    move-result v3

    if-gez v3, :cond_1

    return-object p3

    :cond_1
    invoke-virtual {v2, v3}, Lorg/apache/poi/text/Piece;->getLine(I)Lorg/apache/poi/text/Line;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/poi/text/Line;->getWordIndexExact(Ljava/awt/geom/Point2D;)I

    move-result v4

    if-gez v4, :cond_2

    return-object p3

    :cond_2
    invoke-virtual {v0, v4}, Lorg/apache/poi/text/Line;->getWord(I)Lorg/apache/poi/text/OneWord;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/text/OneWord;->getText()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/CharKt;->isChinese(C)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p3, 0x32

    invoke-virtual {p0, v2, v3, v4, p3}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->k(Lorg/apache/poi/text/Piece;III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v4, p3}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->l(Lorg/apache/poi/text/Piece;III)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p2, v0, p3}, Lcom/onyx/android/sdk/reader/api/ReaderTextSplitter;->getTextLeftBoundary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-interface {p4, p2, v0, p3}, Lcom/onyx/android/sdk/reader/api/ReaderTextSplitter;->getTextRightBoundary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    move v6, p2

    move v5, v1

    goto :goto_0

    :cond_3
    move v5, p3

    move v6, v5

    :goto_0
    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->d(ILorg/apache/poi/text/Piece;IIII)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public final t(Ljava/awt/geom/Rectangle2D;)Landroid/graphics/RectF;
    .locals 5

    new-instance p0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getMaxY()D

    move-result-wide v3

    double-to-float p1, v3

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method

.method public final thumbnail()Ljava/io/InputStream;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->a:Lorg/apache/poi/sl/PPTFactory;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/sl/PPTFactory;->getThumbnail()Ljava/io/InputStream;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final u(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/awt/geom/Rectangle2D;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

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

    check-cast v1, Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->t(Ljava/awt/geom/Rectangle2D;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final v(Landroid/graphics/PointF;)Ljava/awt/geom/Point2D;
    .locals 4

    new-instance p0, Ljava/awt/geom/Point2D$Double;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, p1

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    return-object p0
.end method
