.class public final Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaginateManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaginateManager.kt\ncom/onyx/android/sdk/reader/cbox/page/PaginateManager\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,475:1\n215#2,2:476\n215#2,2:478\n*S KotlinDebug\n*F\n+ 1 PaginateManager.kt\ncom/onyx/android/sdk/reader/cbox/page/PaginateManager\n*L\n48#1:476,2\n65#1:478,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c8\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 u2\u00020\u0001:\u0001uB\u001f\u0012\u0006\u0010Y\u001a\u00020W\u0012\u0006\u0010\\\u001a\u00020Z\u0012\u0006\u0010_\u001a\u00020]\u00a2\u0006\u0004\u0008s\u0010tJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J \u0010\u0012\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0010H\u0002J\u0008\u0010\u0016\u001a\u00020\u0004H\u0002J\u0010\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u0006H\u0002J\u0010\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0008\u0010\u001a\u001a\u00020\u0010H\u0002J\u0012\u0010\u001c\u001a\u00020\u00042\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0002H\u0002J\u0010\u0010 \u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J\u0010\u0010\"\u001a\u00020!2\u0006\u0010\u0007\u001a\u00020\u001dH\u0002J \u0010(\u001a\u0004\u0018\u00010&2\u0006\u0010$\u001a\u00020#2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020&0%H\u0002J\u0008\u0010)\u001a\u00020\u0004H\u0002J\u0010\u0010+\u001a\u00020*2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u001e\u0010/\u001a\u0008\u0012\u0004\u0012\u00020.0%2\u000e\u0010-\u001a\n\u0012\u0004\u0012\u00020,\u0018\u00010%H\u0002J\u001e\u00103\u001a\u0008\u0012\u0004\u0012\u0002020%2\u000e\u00101\u001a\n\u0012\u0004\u0012\u000200\u0018\u00010%H\u0002J\u0010\u00105\u001a\u0002042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u00106\u001a\u00020\u0010H\u0002J\u0008\u00107\u001a\u00020\u0010H\u0002J\u0008\u00108\u001a\u00020\u0010H\u0002J\u0008\u00109\u001a\u00020\u0010H\u0002J\u0008\u0010:\u001a\u00020\u0010H\u0002J\u0008\u0010;\u001a\u00020\u0004H\u0002J*\u0010@\u001a\u00020\u00042\"\u0010?\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020=0<j\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020=`>J\u000e\u0010B\u001a\u00020\u00042\u0006\u0010A\u001a\u00020\u0002J\u0006\u0010C\u001a\u00020!J\u0006\u0010D\u001a\u00020\u0004J\u000e\u0010G\u001a\u00020\u00102\u0006\u0010F\u001a\u00020EJ\u0010\u0010H\u001a\u0004\u0018\u00010\u00082\u0006\u0010F\u001a\u00020EJ\u0006\u0010I\u001a\u00020\u001fJ\u000e\u0010J\u001a\u00020!2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010K\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010L\u001a\u00020\u0010J\u0006\u0010M\u001a\u00020\u0010J\u0006\u0010N\u001a\u00020\u0002J\u0006\u0010O\u001a\u00020\u0010J\u0006\u0010P\u001a\u00020\u0004J\u0006\u0010Q\u001a\u00020\u0010J\u0006\u0010R\u001a\u00020\u0004J\u000e\u0010T\u001a\u00020\u00042\u0006\u0010S\u001a\u00020\u0010J\u0006\u0010U\u001a\u00020\u0010J\u0006\u0010V\u001a\u00020\u0004R\u0014\u0010Y\u001a\u00020W8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u0010XR\u0014\u0010\\\u001a\u00020Z8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010[R\u0014\u0010_\u001a\u00020]8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u0010^R\u0018\u0010`\u001a\u0004\u0018\u00010W8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u0010XR\u0014\u0010c\u001a\u00020a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010bR>\u0010?\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020!0<j\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020!`>8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010d\u001a\u0004\u0008e\u0010f\"\u0004\u0008g\u0010hR\u0016\u0010j\u001a\u00020!8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008;\u0010iR\u0014\u0010m\u001a\u00020k8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010lR\u0014\u0010p\u001a\u00020n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010oR\u0016\u0010r\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010q\u00a8\u0006v"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;",
        "",
        "",
        "chapterID",
        "",
        "y",
        "Lcom/onyx/engine/sdk/PinPosition;",
        "position",
        "Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;",
        "t",
        "Lcom/onyx/engine/sdk/PageInfo;",
        "pageInfo",
        "n",
        "paginationInfo",
        "Lcom/onyx/engine/sdk/PageRange;",
        "pageRange",
        "",
        "isLastPage",
        "x",
        "h",
        "throwException",
        "f",
        "u",
        "bookPosition",
        "i",
        "j",
        "e",
        "chapterId",
        "v",
        "",
        "bookSize",
        "",
        "m",
        "Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;",
        "k",
        "Lcom/onyx/engine/sdk/Chapter;",
        "chapter",
        "",
        "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeListProto;",
        "list",
        "l",
        "w",
        "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeProto;",
        "b",
        "Lcom/onyx/engine/sdk/TableRow;",
        "tableRows",
        "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto;",
        "d",
        "Lcom/onyx/engine/sdk/TableCell;",
        "tableCells",
        "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;",
        "c",
        "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;",
        "a",
        "q",
        "r",
        "s",
        "o",
        "p",
        "g",
        "Ljava/util/LinkedHashMap;",
        "Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;",
        "Lkotlin/collections/LinkedHashMap;",
        "chapterMap",
        "setChapter",
        "bookKeyCode",
        "setBookKeyCode",
        "getCurrentChapter",
        "updateStyle",
        "Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;",
        "info",
        "hasPaginationNext",
        "paginationNext",
        "getPaginationProgress",
        "getChapter",
        "isPaginationComplete",
        "isAllPaginationComplete",
        "resetPageList",
        "getStyleHashKey",
        "onPaginationStart",
        "onPaginationFinally",
        "isNeedClearPaginationCache",
        "clearPaginationCache",
        "abort",
        "setAbortPagination",
        "isAbortPagination",
        "close",
        "Lcom/onyx/engine/sdk/NeoBaseNative;",
        "Lcom/onyx/engine/sdk/NeoBaseNative;",
        "neoNative",
        "Lcom/onyx/engine/sdk/DisplayMetrics;",
        "Lcom/onyx/engine/sdk/DisplayMetrics;",
        "displayMetrics",
        "Lcom/onyx/engine/sdk/ReaderTextStyle;",
        "Lcom/onyx/engine/sdk/ReaderTextStyle;",
        "engineTextStyle",
        "pagination",
        "Lcom/onyx/android/sdk/reader/cbox/page/PagePositionCacheManager;",
        "Lcom/onyx/android/sdk/reader/cbox/page/PagePositionCacheManager;",
        "positionCacheManager",
        "Ljava/util/LinkedHashMap;",
        "getChapterMap",
        "()Ljava/util/LinkedHashMap;",
        "setChapterMap",
        "(Ljava/util/LinkedHashMap;)V",
        "Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;",
        "currentChapter",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "abortPagination",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "pagingStatus",
        "Z",
        "allPaginationComplete",
        "<init>",
        "(Lcom/onyx/engine/sdk/NeoBaseNative;Lcom/onyx/engine/sdk/DisplayMetrics;Lcom/onyx/engine/sdk/ReaderTextStyle;)V",
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
        "SMAP\nPaginateManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaginateManager.kt\ncom/onyx/android/sdk/reader/cbox/page/PaginateManager\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,475:1\n215#2,2:476\n215#2,2:478\n*S KotlinDebug\n*F\n+ 1 PaginateManager.kt\ncom/onyx/android/sdk/reader/cbox/page/PaginateManager\n*L\n48#1:476,2\n65#1:478,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final k:I = 0x0

.field public static final l:I = 0x1

.field public static final m:I = 0x3

.field public static final n:I = 0x4

.field public static final o:I = 0x5

.field public static final p:I = 0x32


# instance fields
.field public final a:Lcom/onyx/engine/sdk/NeoBaseNative;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/engine/sdk/DisplayMetrics;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/onyx/engine/sdk/ReaderTextStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Lcom/onyx/engine/sdk/NeoBaseNative;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Lcom/onyx/android/sdk/reader/cbox/page/PagePositionCacheManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->Companion:Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/engine/sdk/NeoBaseNative;Lcom/onyx/engine/sdk/DisplayMetrics;Lcom/onyx/engine/sdk/ReaderTextStyle;)V
    .locals 1
    .param p1    # Lcom/onyx/engine/sdk/NeoBaseNative;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/engine/sdk/DisplayMetrics;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/engine/sdk/ReaderTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "neoNative"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayMetrics"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "engineTextStyle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    iput-object p2, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->b:Lcom/onyx/engine/sdk/DisplayMetrics;

    iput-object p3, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->c:Lcom/onyx/engine/sdk/ReaderTextStyle;

    new-instance p1, Lcom/onyx/android/sdk/reader/cbox/page/PagePositionCacheManager;

    invoke-direct {p1}, Lcom/onyx/android/sdk/reader/cbox/page/PagePositionCacheManager;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/PagePositionCacheManager;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->f:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;
    .locals 2

    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->newBuilder()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->addAllXpath(Ljava/lang/Iterable;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getNodePosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->setNodePosition(I)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getTextOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->setTextStartOffset(I)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getTextOffset()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->setTextEndOffset(I)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->build()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final b(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeProto;
    .locals 3

    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeProto;->newBuilder()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeProto$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getPageRange()Lcom/onyx/engine/sdk/PageRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/PageRange;->getStart()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v1

    const-string v2, "getStart(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->a(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeProto$Builder;->setPosition(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeProto$Builder;

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getPageRange()Lcom/onyx/engine/sdk/PageRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageRange;->getTableRows()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeProto$Builder;->addAllTableRow(Ljava/lang/Iterable;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeProto$Builder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeProto$Builder;->build()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeProto;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final c(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/engine/sdk/TableCell;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;",
            ">;"
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

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/engine/sdk/TableCell;

    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;->newBuilder()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/TableCell;->getPin()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v3

    const-string v4, "getPin(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->a(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->setPin(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/PageRange;->getStart()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v4

    const-string v5, "getStart(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->a(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->setStart(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/PageRange;->getEnd()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v4

    const-string v5, "getEnd(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->a(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->setEnd(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/PageRange;->getTableRows()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->addAllTableRow(Ljava/lang/Iterable;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->build()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public final clearPaginationCache()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/PagePositionCacheManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PagePositionCacheManager;->clear()V

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/PagePositionCacheManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/PagePositionCacheManager;->close()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :goto_0
    return-void
.end method

.method public final d(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/engine/sdk/TableRow;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto;",
            ">;"
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

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/engine/sdk/TableRow;

    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto;->newBuilder()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto$Builder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/TableRow;->getPin()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v3

    const-string v4, "getPin(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->a(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto$Builder;->setPin(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto$Builder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/TableRow;->getTableCells()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto$Builder;->addAllTableCell(Ljava/lang/Iterable;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto$Builder;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto$Builder;->build()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public final e()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->isAbortPagination()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->r()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final f(Lcom/onyx/engine/sdk/PageInfo;Z)V
    .locals 3

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getStartPositionInt()I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getEndPositionInt()I

    move-result v1

    if-lt v0, v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    if-nez v2, :cond_0

    const-string v2, "currentChapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->chapterInfo(Lcom/onyx/engine/sdk/Chapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff0c pageInfo "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->pagePositionInfo(Lcom/onyx/engine/sdk/PageInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getPageRange()Lcom/onyx/engine/sdk/PageRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/PageRange;->hasTable()Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->j(Lcom/onyx/engine/sdk/PageInfo;)Z

    move-result p1

    if-nez p1, :cond_2

    if-nez p2, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p1, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;

    new-instance p2, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;

    invoke-direct {p2, v0}, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->u()V

    new-instance p0, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", exist in cache"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->u()V

    new-instance p0, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", no table"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->u()V

    new-instance p0, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->d:Lcom/onyx/engine/sdk/NeoBaseNative;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/onyx/engine/sdk/NeoBaseNative;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->d:Lcom/onyx/engine/sdk/NeoBaseNative;

    return-void
.end method

.method public final getChapter(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;
    .locals 2
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

    const-string v0, "chapterID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not found chapter id by id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getChapterMap()Ljava/util/LinkedHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->f:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public final getCurrentChapter()Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    if-nez p0, :cond_0

    const-string p0, "currentChapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final getPaginationProgress()F
    .locals 7

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-interface {v1}, Lcom/onyx/engine/sdk/NeoBaseNative;->getBookSize()I

    move-result v1

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->f:Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->isPaginationComplete()Z

    move-result v6

    if-eqz v6, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v4, v6

    invoke-virtual {v5}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/engine/sdk/Chapter;->getEndPos()I

    move-result v6

    invoke-virtual {v5}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/engine/sdk/Chapter;->getStartPos()I

    move-result v5

    sub-int/2addr v6, v5

    int-to-float v5, v6

    add-float/2addr v3, v5

    goto :goto_0

    :cond_1
    int-to-float v2, v1

    div-float/2addr v3, v2

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->m(I)F

    move-result p0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v2, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "paginationCompletePercent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", currentPaginationPercent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", paginationCompleteCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", total = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", percent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-float/2addr v4, v0

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    add-float/2addr v3, p0

    return v3
.end method

.method public final getStyleHashKey()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->c:Lcom/onyx/engine/sdk/ReaderTextStyle;

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/ReaderTextStyle;->getLayoutStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->b:Lcom/onyx/engine/sdk/DisplayMetrics;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/DisplayMetrics;->getLayoutStyle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/engine/sdk/PageInfo;
    .locals 6

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getPositionInt()I

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    const/4 v2, 0x0

    const-string v3, "currentChapter"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/Chapter;->getStartPos()I

    move-result v1

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createChapterStartPageInfo, does not hit cache, must start from chapter.startPos, request position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getPositionInt()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", current "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    iget-object v5, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    if-nez v5, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_1
    invoke-virtual {v5}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->chapterInfo(Lcom/onyx/engine/sdk/Chapter;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    new-instance p1, Lcom/onyx/engine/sdk/PinPosition;

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, v0

    :goto_0
    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/onyx/engine/sdk/PinPosition;-><init>(Lcom/onyx/engine/sdk/Chapter;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->i(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final hasPaginationNext(Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;->getChapterId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->y(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    if-nez v0, :cond_0

    const-string v0, "currentChapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->isPaginationComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->v(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final i(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/engine/sdk/PageInfo;
    .locals 1

    new-instance p0, Lcom/onyx/engine/sdk/PageInfo;

    new-instance v0, Lcom/onyx/engine/sdk/PageRange;

    invoke-direct {v0, p1}, Lcom/onyx/engine/sdk/PageRange;-><init>(Lcom/onyx/engine/sdk/PinPosition;)V

    invoke-direct {p0, v0}, Lcom/onyx/engine/sdk/PageInfo;-><init>(Lcom/onyx/engine/sdk/PageRange;)V

    return-object p0
.end method

.method public final isAbortPagination()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final isAllPaginationComplete()Z
    .locals 3

    iget-boolean v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->isPaginationComplete()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_2
    iput-boolean v1, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->j:Z

    return v1
.end method

.method public final isNeedClearPaginationCache()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    if-nez p0, :cond_0

    const-string p0, "currentChapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getNeedClearPaginationCache()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

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

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->getChapter(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->isPaginationComplete()Z

    move-result p0

    return p0
.end method

.method public final j(Lcom/onyx/engine/sdk/PageInfo;)Z
    .locals 2

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    if-nez p0, :cond_0

    const-string p0, "currentChapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getPageList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/engine/sdk/PageInfo;

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PageInfo;->getStartPositionInt()I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getStartPositionInt()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final k(I)Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/cbox/exception/PageException;
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->f:Ljava/util/LinkedHashMap;

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

    check-cast v0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/onyx/engine/sdk/Chapter;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

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

.method public final l(Lcom/onyx/engine/sdk/Chapter;Ljava/util/List;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeListProto;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/engine/sdk/Chapter;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeListProto;",
            ">;)",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeListProto;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeListProto;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeListProto;->getChapter()I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/Chapter;->getStartPos()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-object p2

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final m(I)F
    .locals 8

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    const/4 v1, 0x0

    const-string v2, "currentChapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->isPaginationComplete()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    iget-object v4, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    if-nez v4, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_2
    invoke-virtual {v4}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getCurrentPaginationProgress()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v0, v4, v5, v7}, Lcom/onyx/android/sdk/base/utils/MathUtils;->clamp(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget-object v4, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    if-nez v4, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_3
    invoke-virtual {v4}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/engine/sdk/Chapter;->getEndPos()I

    move-result v4

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    if-nez p0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/Chapter;->getStartPos()I

    move-result p0

    sub-int/2addr v4, p0

    if-gtz v4, :cond_5

    return v3

    :cond_5
    int-to-float p0, v4

    mul-float/2addr p0, v6

    int-to-float p1, p1

    div-float/2addr p0, p1

    mul-float/2addr v0, p0

    return v0
.end method

.method public final n(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getPageRange()Lcom/onyx/engine/sdk/PageRange;

    move-result-object v1

    const-string v2, "getPageRange(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->isChapterLastPage()Z

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->x(Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;Lcom/onyx/engine/sdk/PageRange;Z)V

    return-object v0
.end method

.method public final o()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onPaginationFinally()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g()V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->isAbortPagination()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->setAbortPagination(Z)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->isAllPaginationComplete()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->w()V

    :cond_4
    return-void
.end method

.method public final onPaginationStart()Z
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;

    const-string v2, "pagination occur error, please clear cache"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->d:Lcom/onyx/engine/sdk/NeoBaseNative;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-interface {v0}, Lcom/onyx/engine/sdk/NeoBaseNative;->forkForPagination()Lcom/onyx/engine/sdk/NeoBaseNative;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->d:Lcom/onyx/engine/sdk/NeoBaseNative;

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->d:Lcom/onyx/engine/sdk/NeoBaseNative;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->c:Lcom/onyx/engine/sdk/ReaderTextStyle;

    invoke-interface {v0, v2}, Lcom/onyx/engine/sdk/NeoBaseNative;->setReaderTextStyle(Lcom/onyx/engine/sdk/ReaderTextStyle;)Z

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->d:Lcom/onyx/engine/sdk/NeoBaseNative;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->b:Lcom/onyx/engine/sdk/DisplayMetrics;

    invoke-interface {v0, v2}, Lcom/onyx/engine/sdk/NeoBaseNative;->setupDisplayMetrics(Lcom/onyx/engine/sdk/DisplayMetrics;)Z

    :cond_3
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->d:Lcom/onyx/engine/sdk/NeoBaseNative;

    if-eqz p0, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public final p()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final paginationNext(Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;)Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;
    .locals 6
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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->e()Z

    move-result v0

    const-class v1, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before next, abort or style changed, abortPagination:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", pagingStatus:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, p0, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    const-string v3, "currentChapter"

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/Chapter;->getChapterId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;->getChapterId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Paginate error, current "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    if-nez p0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, p0

    :goto_0
    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->chapterInfo(Lcom/onyx/engine/sdk/Chapter;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", need paginate chapter:"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;->getChapterId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;->getPageStartPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->convert(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/engine/sdk/PinPosition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->t(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    if-nez v0, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->isPaginationComplete()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    if-nez v0, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v2, v0

    :goto_1
    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/Chapter;->getChapterId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->v(Ljava/lang/String;)V

    :cond_6
    return-object p1
.end method

.method public final q()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final r()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final resetPageList()Z
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->isAllPaginationComplete()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->getStyleHashKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/PagePositionCacheManager;

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/reader/cbox/page/PagePositionCacheManager;->getCache(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$ChapterCacheListProto;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$ChapterCacheListProto;->getCacheList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->isPaginationComplete()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$ChapterCacheListProto;->getCacheList()Ljava/util/List;

    move-result-object v5

    const-string v6, "getCacheList(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->l(Lcom/onyx/engine/sdk/Chapter;Ljava/util/List;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeListProto;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->resetPageList(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeListProto;)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_2

    :cond_6
    return v1
.end method

.method public final s()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setAbortPagination(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final setBookKeyCode(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bookKeyCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/PagePositionCacheManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/PagePositionCacheManager;->init(Ljava/lang/String;)V

    return-void
.end method

.method public final setChapter(Ljava/util/LinkedHashMap;)V
    .locals 4
    .param p1    # Ljava/util/LinkedHashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;",
            ">;)V"
        }
    .end annotation

    const-string v0, "chapterMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->f:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;-><init>(Lcom/onyx/engine/sdk/Chapter;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "<get-values>(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    return-void
.end method

.method public final setChapterMap(Ljava/util/LinkedHashMap;)V
    .locals 1
    .param p1    # Ljava/util/LinkedHashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->f:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public final t(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;
    .locals 9

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    const-string v1, "currentChapter"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const-class v4, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->h(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/engine/sdk/PageInfo;

    invoke-virtual {v3}, Lcom/onyx/engine/sdk/PageInfo;->getStartPositionInt()I

    move-result v6

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getPositionInt()I

    move-result v7

    if-eq v6, v7, :cond_2

    sget-object v6, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "create last next PageInfo, last "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    invoke-virtual {v8, v3}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->pagePositionInfo(Lcom/onyx/engine/sdk/PageInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", next pos:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getPositionInt()I

    move-result p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v6, v4, p1, v7}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v3}, Lcom/onyx/engine/sdk/PageInfo;->getPageRange()Lcom/onyx/engine/sdk/PageRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageRange;->getEnd()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->copy()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object p1

    const-string v3, "copy(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->i(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p1

    :goto_0
    iget-object v3, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->d:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3, p1}, Lcom/onyx/engine/sdk/NeoBaseNative;->gotoPage(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "after next, abort or style changed, abortPagination:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pagingStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v4, p0, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_3
    iget-object v3, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    if-nez v3, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_4
    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getPageList()Ljava/util/ArrayList;

    move-result-object v3

    if-eq v0, v3, :cond_6

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chapter page list changed\uff0ccurrent "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    if-nez p0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v2

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->chapterInfo(Lcom/onyx/engine/sdk/Chapter;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v4, p0, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_6
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v5}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->f(Lcom/onyx/engine/sdk/PageInfo;Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    if-nez v0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v2, v0

    :goto_1
    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->updatePaginationPageInfo(Lcom/onyx/engine/sdk/PageInfo;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->n(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;

    move-result-object p0

    return-object p0
.end method

.method public final u()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "style: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->c:Lcom/onyx/engine/sdk/ReaderTextStyle;

    invoke-virtual {v3}, Lcom/onyx/engine/sdk/ReaderTextStyle;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", \ndisplay metrics: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->b:Lcom/onyx/engine/sdk/DisplayMetrics;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/DisplayMetrics;->toJson()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final updateStyle()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->j:Z

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->f:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->reset()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->resetPageList()Z

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->d:Lcom/onyx/engine/sdk/NeoBaseNative;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/onyx/engine/sdk/NeoBaseNative;->recycleChapter(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final w()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->getStyleHashKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$ChapterCacheListProto;->newBuilder()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$ChapterCacheListProto$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->isPaginationComplete()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getPageList()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeListProto;->newBuilder()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeListProto$Builder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/engine/sdk/Chapter;->getStartPos()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeListProto$Builder;->setChapter(I)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeListProto$Builder;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/engine/sdk/PageInfo;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->b(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeProto;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeListProto$Builder;->addRange(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeListProto$Builder;

    goto :goto_3

    :cond_4
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/engine/sdk/PageInfo;

    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeProto;->newBuilder()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeProto$Builder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/onyx/engine/sdk/PageInfo;->getPageRange()Lcom/onyx/engine/sdk/PageRange;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/engine/sdk/PageRange;->getEnd()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v4

    const-string v6, "getEnd(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->a(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeProto$Builder;->setPosition(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeProto$Builder;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeProto$Builder;->build()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeProto;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeListProto$Builder;->addRange(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeListProto$Builder;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeListProto$Builder;->build()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeListProto;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$ChapterCacheListProto$Builder;->addCache(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeListProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$ChapterCacheListProto$Builder;

    goto/16 :goto_0

    :cond_5
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/PagePositionCacheManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$ChapterCacheListProto$Builder;->build()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$ChapterCacheListProto;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/reader/cbox/page/PagePositionCacheManager;->addCache(Ljava/lang/String;Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$ChapterCacheListProto;)Z

    return-void
.end method

.method public final x(Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;Lcom/onyx/engine/sdk/PageRange;Z)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    const/4 v1, 0x0

    const-string v2, "currentChapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/Chapter;->getChapterId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;->setChapterID(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;->setPageRange(Lcom/onyx/engine/sdk/PageRange;)V

    invoke-virtual {p2}, Lcom/onyx/engine/sdk/PageRange;->getEndPositionInt()I

    move-result p2

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/Chapter;->getStartPos()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;->setProgress(I)V

    iget-object p2, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    if-nez p2, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_2
    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/engine/sdk/Chapter;->isFirstChapter()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;->setFirstChapter(Z)V

    iget-object p2, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    if-nez p2, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_3
    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/engine/sdk/Chapter;->isLastChapter()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;->setLastChapter(Z)V

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;->setPaginationComplete(Z)V

    if-nez p3, :cond_6

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    if-nez p0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getPageList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    rem-int/lit8 p0, p0, 0x32

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p0, 0x1

    :goto_2
    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;->setUpdateReaderPageInfo(Z)V

    return-void
.end method

.method public final y(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    const/4 v1, 0x0

    const-string v2, "currentChapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/Chapter;->getChapterId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->getChapter(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/Chapter;->getChapterId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->v(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;->g:Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    :cond_2
    return-void
.end method
