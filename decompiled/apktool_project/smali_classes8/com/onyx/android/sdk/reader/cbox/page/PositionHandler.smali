.class public final Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001a\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002J\"\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u00062\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002J\"\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\t2\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002J\"\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\r2\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002J\u0016\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0004J\u000e\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0004J\"\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002H\u0002J\u0010\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u0004H\u0002\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler;",
        "",
        "",
        "",
        "Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;",
        "bookChapters",
        "",
        "getTotalPage",
        "page",
        "Lcom/onyx/engine/sdk/PinPosition;",
        "getPositionOfPageNumber",
        "position",
        "getPageNumberOfPosition",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;",
        "toc",
        "",
        "updateTocPageNumber",
        "chapter",
        "getPageNumberInChapter",
        "getChapterTotalPageCount",
        "",
        "Lcom/onyx/engine/sdk/PageInfo;",
        "c",
        "b",
        "<init>",
        "()V",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler;->d(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final d(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
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
.method public final b(Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;)Lcom/onyx/engine/sdk/PageInfo;
    .locals 0

    new-instance p0, Lcom/onyx/engine/sdk/PageInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/onyx/engine/sdk/PageInfo;-><init>(Lcom/onyx/engine/sdk/Chapter;)V

    return-object p0
.end method

.method public final c(Ljava/util/Map;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/PageInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->isPaginationComplete()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler;->b(Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getLayoutList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/engine/sdk/PageInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public final getChapterTotalPageCount(Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;)I
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "chapter"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getLayoutList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result p0

    return p0
.end method

.method public final getPageNumberInChapter(ILcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;)I
    .locals 4
    .param p2    # Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "chapter"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getLayoutList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/engine/sdk/PageInfo;

    invoke-virtual {v2}, Lcom/onyx/engine/sdk/PageInfo;->getStartPositionInt()I

    move-result v3

    invoke-virtual {v2}, Lcom/onyx/engine/sdk/PageInfo;->getEndPositionInt()I

    move-result v2

    if-gt v3, p1, :cond_0

    if-ge p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, p2

    :goto_1
    if-eqz v2, :cond_1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return p2
.end method

.method public final getPageNumberOfPosition(Lcom/onyx/engine/sdk/PinPosition;Ljava/util/Map;)I
    .locals 6
    .param p1    # Lcom/onyx/engine/sdk/PinPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/engine/sdk/PinPosition;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;",
            ">;)I"
        }
    .end annotation

    const-string p0, "position"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "bookChapters"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x0

    move v0, p2

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getLayoutList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->isPaginationComplete()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getChapterStartPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/engine/sdk/Chapter;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getPositionInt()I

    move-result v4

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/Chapter;->getEndPos()I

    move-result v1

    if-lt v4, v1, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/engine/sdk/PageInfo;

    invoke-virtual {v3}, Lcom/onyx/engine/sdk/PageInfo;->getStartPositionInt()I

    move-result v4

    invoke-virtual {v3}, Lcom/onyx/engine/sdk/PageInfo;->getEndPositionInt()I

    move-result v3

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getPositionInt()I

    move-result v5

    if-gt v4, v5, :cond_4

    if-ge v5, v3, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    move v3, p2

    :goto_2
    if-eqz v3, :cond_5

    return v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    sub-int/2addr v0, v2

    return v0
.end method

.method public final getPositionOfPageNumber(ILjava/util/Map;)Lcom/onyx/engine/sdk/PinPosition;
    .locals 3
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;",
            ">;)",
            "Lcom/onyx/engine/sdk/PinPosition;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "bookChapters"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getLayoutList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->isPaginationComplete()Z

    move-result v2

    if-nez v2, :cond_1

    if-ne p2, p1, :cond_0

    new-instance p0, Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/onyx/engine/sdk/PinPosition;-><init>(Lcom/onyx/engine/sdk/Chapter;)V

    return-object p0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    if-lt p1, p2, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p2

    if-ge p1, v0, :cond_2

    sub-int/2addr p1, p2

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/PageInfo;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PageInfo;->getPageRange()Lcom/onyx/engine/sdk/PageRange;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PageRange;->getStart()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object p0

    const-string p1, "getStart(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/onyx/engine/sdk/PinPosition;

    invoke-direct {p0}, Lcom/onyx/engine/sdk/PinPosition;-><init>()V

    return-object p0
.end method

.method public final getTotalPage(Ljava/util/Map;)I
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;",
            ">;)I"
        }
    .end annotation

    const-string p0, "bookChapters"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getLayoutList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->isPaginationComplete()Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0

    :cond_1
    return p1
.end method

.method public final updateTocPageNumber(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;Ljava/util/Map;)V
    .locals 10
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;",
            ">;)V"
        }
    .end annotation

    const-string v0, "toc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bookChapters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler;->c(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    sget-object p2, Lcom/onyx/android/sdk/reader/utils/TocUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/utils/TocUtils;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/reader/utils/TocUtils;->flatTocEntryList(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)Ljava/util/List;

    move-result-object p1

    sget-object p2, Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler$updateTocPageNumber$1;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler$updateTocPageNumber$1;

    new-instance v0, Lcom/sunia/HTREnginev2/l5l;

    invoke-direct {v0, p2}, Lcom/sunia/HTREnginev2/l5l;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_5

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/engine/sdk/PageInfo;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    :goto_1
    if-ge v4, v5, :cond_4

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    invoke-virtual {v3}, Lcom/onyx/engine/sdk/PageInfo;->getStartPositionInt()I

    move-result v7

    invoke-virtual {v3}, Lcom/onyx/engine/sdk/PageInfo;->getEndPositionInt()I

    move-result v8

    invoke-virtual {v6}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getPositionInt()I

    move-result v9

    if-gt v7, v9, :cond_1

    if-ge v9, v8, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    move v7, v0

    :goto_2
    if-eqz v7, :cond_2

    invoke-virtual {v6, v2}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->setPageNumber(I)Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    move v1, v4

    goto :goto_3

    :cond_2
    invoke-virtual {v6}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getPositionInt()I

    move-result v6

    invoke-virtual {v3}, Lcom/onyx/engine/sdk/PageInfo;->getEndPositionInt()I

    move-result v7

    if-le v6, v7, :cond_3

    goto :goto_4

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
