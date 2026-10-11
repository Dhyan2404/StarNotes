.class public final Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayoutManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutManager.kt\ncom/onyx/android/sdk/reader/cbox/page/LayoutManager\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,399:1\n215#2,2:400\n41#3,5:402\n*S KotlinDebug\n*F\n+ 1 LayoutManager.kt\ncom/onyx/android/sdk/reader/cbox/page/LayoutManager\n*L\n35#1:400,2\n358#1:402,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0000\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008W\u0010XJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0012\u0010\n\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002J\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0002J\u0012\u0010\r\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0002J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006H\u0002J\u0018\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\u0006H\u0002J\u0018\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J\u0018\u0010\u0017\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0010\u0010\u001b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006H\u0002J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u00022\u0006\u0010\t\u001a\u00020\u0006H\u0002J\u0008\u0010\u001d\u001a\u00020\u0004H\u0002J\u0008\u0010\u001e\u001a\u00020\u0015H\u0002J\u0008\u0010\u001f\u001a\u00020\u0015H\u0002J\u0012\u0010 \u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002J4\u0010%\u001a\u0004\u0018\u00010\u00062\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00060!2\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00060#2\u0006\u0010\t\u001a\u00020\u0006H\u0002J2\u0010&\u001a\u00020\u00182\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00060!2\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00060#2\u0006\u0010\t\u001a\u00020\u0006H\u0002J\u001a\u0010*\u001a\u00020\u00042\u0012\u0010)\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\u00020\'J\u001a\u0010-\u001a\u00020\u00042\u0012\u0010,\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020+0\'J\u0006\u0010.\u001a\u00020\u0002J\u0006\u0010/\u001a\u00020\u0006J\u0006\u00100\u001a\u00020\u0018J\u0006\u00101\u001a\u00020\u0006J\u0010\u00102\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u0008\u00103\u001a\u0004\u0018\u00010\u0006J\u0008\u00104\u001a\u0004\u0018\u00010\u0006J\u000e\u00107\u001a\u00020\u00062\u0006\u00106\u001a\u000205J\u001e\u00109\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\u00062\u0006\u00108\u001a\u00020\u0015J\u000e\u0010<\u001a\u00020;2\u0006\u0010:\u001a\u00020\u0018J\u000e\u0010>\u001a\u00020\u00182\u0006\u0010=\u001a\u00020;J\u0006\u0010?\u001a\u00020\u0018J\u000e\u0010B\u001a\u00020\u00042\u0006\u0010A\u001a\u00020@J\u000e\u0010C\u001a\u00020\u00152\u0006\u0010=\u001a\u00020;J\u000e\u0010D\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020+J\u000e\u0010F\u001a\u00020\u00042\u0006\u0010E\u001a\u00020(J\u000e\u0010H\u001a\u00020\u00022\u0006\u0010G\u001a\u00020(J\u0006\u0010J\u001a\u00020IJ\u0006\u0010K\u001a\u00020IJ\u0006\u0010L\u001a\u00020\u0004R\u0014\u0010\u0010\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008M\u0010NR\u0014\u0010Q\u001a\u00020O8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010PR \u0010S\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020+0\'8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010RR\"\u0010)\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\u00020\'8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010RR\u0016\u0010U\u001a\u00020\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010TR\u0016\u0010\u000b\u001a\u00020\u00068\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008 \u0010V\u00a8\u0006Y"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;",
        "",
        "Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;",
        "chapter",
        "",
        "q",
        "Lcom/onyx/engine/sdk/PageInfo;",
        "page",
        "r",
        "pageInfo",
        "l",
        "currentPage",
        "k",
        "j",
        "t",
        "Lcom/onyx/engine/sdk/NeoBaseNative;",
        "neoNative",
        "b",
        "expectPage",
        "actualPage",
        "e",
        "",
        "throwException",
        "d",
        "",
        "index",
        "i",
        "s",
        "h",
        "c",
        "n",
        "m",
        "f",
        "",
        "pageList",
        "",
        "pageMap",
        "g",
        "o",
        "Ljava/util/LinkedHashMap;",
        "",
        "chapterMap",
        "setChapter",
        "Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;",
        "paginateChapterMap",
        "updateStyle",
        "getCurrentChapter",
        "getCurrentPage",
        "getBookPositionInt",
        "layoutCurrentPage",
        "gotoPage",
        "prevPage",
        "nextPage",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "drawPage",
        "verifyPageRange",
        "layoutPage",
        "pageNumber",
        "Lcom/onyx/engine/sdk/PinPosition;",
        "getPositionOfPageNumber",
        "position",
        "getPageNumberOfPosition",
        "getTotalPage",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;",
        "toc",
        "updateTocPageNumber",
        "hitPageCache",
        "setPaginationChapter",
        "chapterId",
        "updateReaderPageInfo",
        "chapterID",
        "getChapter",
        "Lcom/onyx/engine/sdk/Chapter;",
        "getNextScreenChapter",
        "getPrevScreenChapter",
        "close",
        "a",
        "Lcom/onyx/engine/sdk/NeoBaseNative;",
        "Lcom/onyx/android/sdk/reader/cbox/page/ChapterCacheManager;",
        "Lcom/onyx/android/sdk/reader/cbox/page/ChapterCacheManager;",
        "chapterCacheManager",
        "Ljava/util/LinkedHashMap;",
        "paginationChapterMap",
        "Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;",
        "currentChapter",
        "Lcom/onyx/engine/sdk/PageInfo;",
        "<init>",
        "(Lcom/onyx/engine/sdk/NeoBaseNative;)V",
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
        "SMAP\nLayoutManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutManager.kt\ncom/onyx/android/sdk/reader/cbox/page/LayoutManager\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,399:1\n215#2,2:400\n41#3,5:402\n*S KotlinDebug\n*F\n+ 1 LayoutManager.kt\ncom/onyx/android/sdk/reader/cbox/page/LayoutManager\n*L\n35#1:400,2\n358#1:402,5\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/engine/sdk/NeoBaseNative;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/reader/cbox/page/ChapterCacheManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/util/LinkedHashMap;
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

.field public d:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

.field public f:Lcom/onyx/engine/sdk/PageInfo;


# direct methods
.method public constructor <init>(Lcom/onyx/engine/sdk/NeoBaseNative;)V
    .locals 4
    .param p1    # Lcom/onyx/engine/sdk/NeoBaseNative;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "neoNative"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    new-instance v0, Lcom/onyx/android/sdk/reader/cbox/page/ChapterCacheManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3, v1, v2}, Lcom/onyx/android/sdk/reader/cbox/page/ChapterCacheManager;-><init>(Lcom/onyx/engine/sdk/NeoBaseNative;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->b:Lcom/onyx/android/sdk/reader/cbox/page/ChapterCacheManager;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->c:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->p(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final p(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(Lcom/onyx/engine/sdk/NeoBaseNative;Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->layoutPage(Lcom/onyx/engine/sdk/NeoBaseNative;Lcom/onyx/engine/sdk/PageInfo;Z)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    const/4 v0, 0x0

    const-string v1, "currentChapter"

    if-nez p2, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->isPaginationComplete()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    if-nez p0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->addPageInfo(Lcom/onyx/engine/sdk/PageInfo;)V

    :cond_2
    return-object p1
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->b:Lcom/onyx/android/sdk/reader/cbox/page/ChapterCacheManager;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    if-nez p0, :cond_0

    const-string p0, "currentChapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/cbox/page/ChapterCacheManager;->cacheChapter(Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;)V

    return-void
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->b:Lcom/onyx/android/sdk/reader/cbox/page/ChapterCacheManager;

    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public final d(Lcom/onyx/engine/sdk/PageInfo;Z)V
    .locals 3

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getStartPositionInt()I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getEndPositionInt()I

    move-result v1

    if-le v0, v1, :cond_2

    new-instance v0, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layout exception! current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    if-nez p0, :cond_0

    const-string p0, "currentChapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->chapterInfo(Lcom/onyx/engine/sdk/Chapter;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", pageInfo "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->pagePositionInfo(Lcom/onyx/engine/sdk/PageInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p1, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public final drawPage(Landroid/graphics/Bitmap;)Lcom/onyx/engine/sdk/PageInfo;
    .locals 4
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->c()V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->f:Lcom/onyx/engine/sdk/PageInfo;

    const/4 v2, 0x0

    const-string v3, "currentPage"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-interface {v0, v1}, Lcom/onyx/engine/sdk/NeoBaseNative;->gotoPage(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance p1, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "goto page failed, current chapter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->f:Lcom/onyx/engine/sdk/PageInfo;

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/engine/sdk/PageInfo;->getStartChapterID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->f:Lcom/onyx/engine/sdk/PageInfo;

    if-nez p0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, p0

    :goto_0
    invoke-virtual {v2}, Lcom/onyx/engine/sdk/PageInfo;->getStartPositionInt()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-interface {v1, p1}, Lcom/onyx/engine/sdk/NeoBaseNative;->drawPage(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->s(Lcom/onyx/engine/sdk/PageInfo;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->t(Lcom/onyx/engine/sdk/PageInfo;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->f:Lcom/onyx/engine/sdk/PageInfo;

    return-object v0

    :cond_4
    new-instance p0, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "draw page failed, page:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PageInfo;->getStartChapterID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PageInfo;->getStartPositionInt()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Lcom/onyx/engine/sdk/PageInfo;Lcom/onyx/engine/sdk/PageInfo;)V
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getStartPositionInt()I

    move-result p0

    invoke-virtual {p2}, Lcom/onyx/engine/sdk/PageInfo;->getStartPositionInt()I

    move-result v0

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getEndPositionInt()I

    move-result p0

    invoke-virtual {p2}, Lcom/onyx/engine/sdk/PageInfo;->getEndPositionInt()I

    move-result v0

    if-eq p0, v0, :cond_1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkPageRange, exception, please clear page cache. expectRange "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->pagePositionInfo(Lcom/onyx/engine/sdk/PageInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", actualRange "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->pagePositionInfo(Lcom/onyx/engine/sdk/PageInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p2, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;

    invoke-virtual {p0, p2, p1}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final f(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    const/4 v1, 0x0

    const-string v2, "currentChapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getLayoutList()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getLayoutMap()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->g(Ljava/util/List;Ljava/util/Map;Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final g(Ljava/util/List;Ljava/util/Map;Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/engine/sdk/PageInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lcom/onyx/engine/sdk/PageInfo;",
            ">;",
            "Lcom/onyx/engine/sdk/PageInfo;",
            ")",
            "Lcom/onyx/engine/sdk/PageInfo;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->o(Ljava/util/List;Ljava/util/Map;Lcom/onyx/engine/sdk/PageInfo;)I

    move-result p0

    if-ltz p0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge p0, p2, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/PageInfo;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getBookPositionInt()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->f:Lcom/onyx/engine/sdk/PageInfo;

    if-nez p0, :cond_0

    const-string p0, "currentPage"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PageInfo;->getStartPositionInt()I

    move-result p0

    return p0
.end method

.method public final getChapter(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;
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

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->d:Ljava/util/LinkedHashMap;

    if-nez p0, :cond_0

    const-string p0, "chapterMap"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
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

.method public final getCurrentChapter()Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    if-nez p0, :cond_0

    const-string p0, "currentChapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final getCurrentPage()Lcom/onyx/engine/sdk/PageInfo;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->f:Lcom/onyx/engine/sdk/PageInfo;

    const/4 v1, 0x0

    const-string v2, "currentPage"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PageInfo;->getPageNumber()I

    move-result v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->f:Lcom/onyx/engine/sdk/PageInfo;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->gotoPage(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->f:Lcom/onyx/engine/sdk/PageInfo;

    if-nez p0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, p0

    :goto_0
    return-object v1
.end method

.method public final getNextScreenChapter()Lcom/onyx/engine/sdk/Chapter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/api/ReaderException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->n()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "currentChapter"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/Chapter;->isLastChapter()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/Chapter;->getNextSiblingId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->i(I)Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object p0

    goto :goto_2

    :cond_2
    new-instance p0, Lcom/onyx/android/sdk/reader/api/ReaderException;

    new-instance v0, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;

    const-string v1, "is last chapter"

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/reader/api/ReaderException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_3
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    if-nez p0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, p0

    :goto_1
    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object p0

    :goto_2
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

    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->d:Ljava/util/LinkedHashMap;

    if-nez p0, :cond_0

    const-string p0, "chapterMap"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler;->getPageNumberOfPosition(Lcom/onyx/engine/sdk/PinPosition;Ljava/util/Map;)I

    move-result p0

    return p0
.end method

.method public final getPositionOfPageNumber(I)Lcom/onyx/engine/sdk/PinPosition;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->d:Ljava/util/LinkedHashMap;

    if-nez p0, :cond_0

    const-string p0, "chapterMap"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler;->getPositionOfPageNumber(ILjava/util/Map;)Lcom/onyx/engine/sdk/PinPosition;

    move-result-object p0

    return-object p0
.end method

.method public final getPrevScreenChapter()Lcom/onyx/engine/sdk/Chapter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/api/ReaderException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->m()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "currentChapter"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/Chapter;->isFirstChapter()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/Chapter;->getPrevSiblingID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->i(I)Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object p0

    goto :goto_2

    :cond_2
    new-instance p0, Lcom/onyx/android/sdk/reader/api/ReaderException;

    new-instance v0, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;

    const-string v1, "is first chapter"

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/reader/api/ReaderException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_3
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    if-nez p0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, p0

    :goto_1
    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public final getTotalPage()I
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->d:Ljava/util/LinkedHashMap;

    if-nez p0, :cond_0

    const-string p0, "chapterMap"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler;->getTotalPage(Ljava/util/Map;)I

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

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->r(Lcom/onyx/engine/sdk/PageInfo;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->l(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->s(Lcom/onyx/engine/sdk/PageInfo;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->f:Lcom/onyx/engine/sdk/PageInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final h(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/cbox/exception/PageException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getStartChapterID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x0

    const-string v2, "chapterMap"

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->d:Ljava/util/LinkedHashMap;

    if-nez p0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v1, p0

    :goto_2
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getStartChapterID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    return-object p0

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getStartPositionInt()I

    move-result p1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->d:Ljava/util/LinkedHashMap;

    if-nez p0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object v1, p0

    :goto_3
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

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

    if-eqz v1, :cond_5

    return-object v0

    :cond_6
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

.method public final hitPageCache(Lcom/onyx/engine/sdk/PinPosition;)Z
    .locals 5
    .param p1    # Lcom/onyx/engine/sdk/PinPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->d:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    const-string v0, "chapterMap"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getChapterID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->isPaginationComplete()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getLayoutList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getLayoutMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    new-instance v3, Lcom/onyx/engine/sdk/PageInfo;

    new-instance v4, Lcom/onyx/engine/sdk/PageRange;

    invoke-direct {v4, p1}, Lcom/onyx/engine/sdk/PageRange;-><init>(Lcom/onyx/engine/sdk/PinPosition;)V

    invoke-direct {v3, v4}, Lcom/onyx/engine/sdk/PageInfo;-><init>(Lcom/onyx/engine/sdk/PageRange;)V

    invoke-virtual {p0, v2, v0, v3}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->g(Ljava/util/List;Ljava/util/Map;Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final i(I)Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/cbox/exception/PageException;
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->d:Ljava/util/LinkedHashMap;

    if-nez p0, :cond_0

    const-string p0, "chapterMap"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    add-int/lit8 v2, v0, 0x1

    if-ne v0, p1, :cond_1

    return-object v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not found chapter by index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    const/4 v1, 0x0

    const-string v2, "currentChapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getLayoutList()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getLayoutMap()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->o(Ljava/util/List;Ljava/util/Map;Lcom/onyx/engine/sdk/PageInfo;)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/PageInfo;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    new-instance v1, Lcom/onyx/engine/sdk/PageInfo;

    new-instance v2, Lcom/onyx/engine/sdk/PageRange;

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getPageRange()Lcom/onyx/engine/sdk/PageRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageRange;->getEnd()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/onyx/engine/sdk/PageRange;-><init>(Lcom/onyx/engine/sdk/PinPosition;)V

    invoke-direct {v1, v2}, Lcom/onyx/engine/sdk/PageInfo;-><init>(Lcom/onyx/engine/sdk/PageRange;)V

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->b(Lcom/onyx/engine/sdk/NeoBaseNative;Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final k(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;
    .locals 8

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    const-string v1, "currentChapter"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getLayoutList()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    if-nez v3, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getLayoutMap()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {p0, v0, v3, p1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->o(Ljava/util/List;Ljava/util/Map;Lcom/onyx/engine/sdk/PageInfo;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/PageInfo;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PageInfo;->getStartPositionInt()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getStartPositionInt()I

    move-result p1

    if-eq v1, p1, :cond_2

    return-object p0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/onyx/engine/sdk/PageInfo;

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    if-nez v3, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_4
    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->isPaginationComplete()Z

    move-result v3

    const-string v4, ", current "

    const-class v5, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;

    if-eqz v3, :cond_6

    new-instance v0, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PrevPage exception, current "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    if-nez p0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v2

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object p0

    invoke-virtual {v6, p0}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->chapterInfo(Lcom/onyx/engine/sdk/Chapter;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->pagePositionInfo(Lcom/onyx/engine/sdk/PageInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0, v5, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_6
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/engine/sdk/PageInfo;

    sget-object v3, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Haven\'t paginated here yet, current "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    if-nez p0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v2

    :cond_7
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->chapterInfo(Lcom/onyx/engine/sdk/Chapter;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->pagePositionInfo(Lcom/onyx/engine/sdk/PageInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\uff0clast "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->pagePositionInfo(Lcom/onyx/engine/sdk/PageInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v3, v5, p0, p1}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v2
.end method

.method public final l(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->f(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->b(Lcom/onyx/engine/sdk/NeoBaseNative;Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final layoutCurrentPage()Lcom/onyx/engine/sdk/PageInfo;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->c()V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->f:Lcom/onyx/engine/sdk/PageInfo;

    if-nez v1, :cond_0

    const-string v1, "currentPage"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0, v1}, Lcom/onyx/engine/sdk/NeoBaseNative;->gotoPage(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->s(Lcom/onyx/engine/sdk/PageInfo;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->f:Lcom/onyx/engine/sdk/PageInfo;

    return-object v0
.end method

.method public final layoutPage(Lcom/onyx/engine/sdk/NeoBaseNative;Lcom/onyx/engine/sdk/PageInfo;Z)Lcom/onyx/engine/sdk/PageInfo;
    .locals 1
    .param p1    # Lcom/onyx/engine/sdk/NeoBaseNative;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/engine/sdk/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "neoNative"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->c()V

    invoke-interface {p1, p2}, Lcom/onyx/engine/sdk/NeoBaseNative;->gotoPage(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e(Lcom/onyx/engine/sdk/PageInfo;Lcom/onyx/engine/sdk/PageInfo;)V

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->d(Lcom/onyx/engine/sdk/PageInfo;Z)V

    return-object p1

    :cond_1
    new-instance p0, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "native goto page["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/onyx/engine/sdk/PageInfo;->getStartChapterID()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2d

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/onyx/engine/sdk/PageInfo;->getStartPositionInt()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] failed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final m()Z
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->f:Lcom/onyx/engine/sdk/PageInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "currentPage"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PageInfo;->getStartPositionInt()I

    move-result v0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    if-nez p0, :cond_1

    const-string p0, "currentChapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/Chapter;->getStartPos()I

    move-result p0

    if-gt v0, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final n()Z
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->f:Lcom/onyx/engine/sdk/PageInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "currentPage"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PageInfo;->getEndPositionInt()I

    move-result v0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    if-nez p0, :cond_1

    const-string p0, "currentChapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/Chapter;->getEndPos()I

    move-result p0

    if-lt v0, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final nextPage()Lcom/onyx/engine/sdk/PageInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    const-string v2, "currentChapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/Chapter;->isLastChapter()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/Chapter;->getNextSiblingId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->i(I)Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->q(Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;)V

    new-instance v2, Lcom/onyx/engine/sdk/PageInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/onyx/engine/sdk/PageInfo;-><init>(Lcom/onyx/engine/sdk/Chapter;)V

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->l(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->s(Lcom/onyx/engine/sdk/PageInfo;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->f:Lcom/onyx/engine/sdk/PageInfo;

    move-object v1, v0

    :cond_2
    return-object v1

    :cond_3
    new-instance p0, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;

    const-string v0, "No next page"

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->f:Lcom/onyx/engine/sdk/PageInfo;

    if-nez v0, :cond_5

    const-string v0, "currentPage"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->j(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->s(Lcom/onyx/engine/sdk/PageInfo;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->f:Lcom/onyx/engine/sdk/PageInfo;

    move-object v1, v0

    :cond_6
    return-object v1
.end method

.method public final o(Ljava/util/List;Ljava/util/Map;Lcom/onyx/engine/sdk/PageInfo;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/engine/sdk/PageInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lcom/onyx/engine/sdk/PageInfo;",
            ">;",
            "Lcom/onyx/engine/sdk/PageInfo;",
            ")I"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/onyx/engine/sdk/PageInfo;->getStartPositionInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/PageInfo;

    if-eqz p0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_1

    return p0

    :cond_1
    new-instance p0, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;

    const-string p1, "PageList not match PageMap"

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager$searchPage$1;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager$searchPage$1;

    new-instance p2, Lcom/sunia/HTREnginev2/pwi;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/pwi;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-static {p1, p3, p2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p0

    return p0
.end method

.method public final prevPage()Lcom/onyx/engine/sdk/PageInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->m()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    const-string v2, "currentChapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/Chapter;->isFirstChapter()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/Chapter;->getPrevSiblingID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->i(I)Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->q(Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getLayoutList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v1

    :cond_2
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/engine/sdk/PageInfo;

    invoke-virtual {v2}, Lcom/onyx/engine/sdk/PageInfo;->getEndPositionInt()I

    move-result v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/engine/sdk/Chapter;->getEndPos()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->s(Lcom/onyx/engine/sdk/PageInfo;)V

    iput-object v2, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->f:Lcom/onyx/engine/sdk/PageInfo;

    return-object v2

    :cond_3
    new-instance v2, Lcom/onyx/engine/sdk/PageInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/onyx/engine/sdk/PageInfo;-><init>(Lcom/onyx/engine/sdk/Chapter;)V

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->l(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->s(Lcom/onyx/engine/sdk/PageInfo;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->f:Lcom/onyx/engine/sdk/PageInfo;

    move-object v1, v0

    :cond_4
    return-object v1

    :cond_5
    new-instance p0, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;

    const-string v0, "No prev page"

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->f:Lcom/onyx/engine/sdk/PageInfo;

    if-nez v0, :cond_7

    const-string v0, "currentPage"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_7
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->k(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->s(Lcom/onyx/engine/sdk/PageInfo;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->f:Lcom/onyx/engine/sdk/PageInfo;

    move-object v1, v0

    :cond_8
    return-object v1
.end method

.method public final q(Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    if-nez v0, :cond_0

    const-string v0, "currentChapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    :cond_1
    return-void
.end method

.method public final r(Lcom/onyx/engine/sdk/PageInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    if-nez v0, :cond_0

    const-string v0, "currentChapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/Chapter;->getPlayOrder()I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getStartChapterIndex()I

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->h(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->q(Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "goto chapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getStartChapterID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->pagePositionInfo(Lcom/onyx/engine/sdk/PageInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/exception/PageException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public final s(Lcom/onyx/engine/sdk/PageInfo;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getPageRange()Lcom/onyx/engine/sdk/PageRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PageRange;->getStart()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v0

    const-string v1, "getStart(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->getPageNumberOfPosition(Lcom/onyx/engine/sdk/PinPosition;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/engine/sdk/PageInfo;->setPageNumber(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->getTotalPage()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/engine/sdk/PageInfo;->setTotalPage(I)V

    return-void
.end method

.method public final setChapter(Ljava/util/LinkedHashMap;)V
    .locals 2
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

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->d:Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "<get-values>(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->e:Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    new-instance v0, Lcom/onyx/engine/sdk/PageInfo;

    if-nez p1, :cond_1

    const-string p1, "currentChapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/onyx/engine/sdk/PageInfo;-><init>(Lcom/onyx/engine/sdk/Chapter;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->f:Lcom/onyx/engine/sdk/PageInfo;

    const/4 p0, -0x1

    invoke-virtual {v0, p0}, Lcom/onyx/engine/sdk/PageInfo;->setPageNumber(I)V

    return-void
.end method

.method public final setPaginationChapter(Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "chapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/Chapter;->getChapterId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getChapterId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final t(Lcom/onyx/engine/sdk/PageInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->f:Lcom/onyx/engine/sdk/PageInfo;

    const/4 v1, 0x0

    const-string v2, "currentPage"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PageInfo;->getPageRange()Lcom/onyx/engine/sdk/PageRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PageRange;->getStart()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->f:Lcom/onyx/engine/sdk/PageInfo;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PageInfo;->getPageRange()Lcom/onyx/engine/sdk/PageRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PageRange;->getStart()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getPageRange()Lcom/onyx/engine/sdk/PageRange;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/engine/sdk/PageRange;->getStart()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/engine/sdk/PinPosition;->setXpath(Ljava/util/List;)Lcom/onyx/engine/sdk/PinPosition;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->f:Lcom/onyx/engine/sdk/PageInfo;

    if-nez p0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/engine/sdk/PageInfo;->getPageRange()Lcom/onyx/engine/sdk/PageRange;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PageRange;->getEnd()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getPageRange()Lcom/onyx/engine/sdk/PageRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageRange;->getEnd()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/engine/sdk/PinPosition;->setXpath(Ljava/util/List;)Lcom/onyx/engine/sdk/PinPosition;

    :cond_3
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

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->getChapter(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    move-result-object p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getPageList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->setLayoutPageList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->isChapterLastPage()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->isPaginationComplete()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final updateStyle(Ljava/util/LinkedHashMap;)V
    .locals 5
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

    const-string v0, "paginateChapterMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->f:Lcom/onyx/engine/sdk/PageInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "currentPage"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/onyx/engine/sdk/PageInfo;->setPageNumber(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->d:Ljava/util/LinkedHashMap;

    if-nez v2, :cond_1

    const-string v2, "chapterMap"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->isPaginationComplete()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->isChapterLastPage()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->setLayoutPageList(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->reset()V

    goto :goto_0

    :cond_3
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

    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;->d:Ljava/util/LinkedHashMap;

    if-nez p0, :cond_0

    const-string p0, "chapterMap"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler;->updateTocPageNumber(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;Ljava/util/Map;)V

    return-void
.end method
