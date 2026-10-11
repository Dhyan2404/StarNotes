.class public final Lcom/onyx/android/sdk/reader/utils/TocUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J \u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bJ\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00122\u0006\u0010\u0011\u001a\u00020\u0010J\u001c\u0010\u0016\u001a\u00020\u000b2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00122\u0006\u0010\u0015\u001a\u00020\tJ\u0010\u0010\u0018\u001a\u00020\u00172\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0018\u0010\u0019\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0015\u001a\u00020\tJ\u0018\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u001e\u0010\u001d\u001a\u00020\u00062\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u001a\u001a\u00020\tH\u0002J.\u0010 \u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00122\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00122\u0006\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u000bH\u0002R\u0014\u0010\"\u001a\u00020\u000b8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010!\u00a8\u0006%"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/utils/TocUtils;",
        "",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;",
        "toc",
        "Lcom/onyx/android/sdk/reader/api/ReaderNavigator;",
        "navigator",
        "",
        "updateTocPageNumberForTextFlowDocument",
        "",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;",
        "flatTocEntryList",
        "",
        "positionInt",
        "pageNumber",
        "",
        "getChapterShowTitle",
        "Lcom/onyx/android/sdk/reader/api/TocSortArgs;",
        "tocSortArgs",
        "",
        "getTocEntryList",
        "entryList",
        "keyEntry",
        "searchIndex",
        "",
        "isEmpty",
        "updateTocExpanded",
        "entry",
        "c",
        "list",
        "a",
        "startSortId",
        "endSortId",
        "b",
        "I",
        "INVALID_INDEX",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/reader/utils/TocUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:I = -0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/reader/utils/TocUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/utils/TocUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/reader/utils/TocUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/utils/TocUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;",
            ">;",
            "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->isValidPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getChildren()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/reader/utils/TocUtils;->a(Ljava/util/List;Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b(Ljava/util/List;II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;",
            ">;II)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getSortId()I

    move-result v2

    if-ge v2, p2, :cond_1

    move-object v0, v1

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getSortId()I

    move-result v2

    const/4 v3, 0x0

    if-gt p2, v2, :cond_2

    if-gt v2, p3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    if-eqz v2, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getSortId()I

    move-result v1

    if-le v1, p3, :cond_0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getSortId()I

    move-result p1

    if-gt p1, p2, :cond_6

    :cond_5
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    invoke-interface {p0, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_7
    :goto_1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz v0, :cond_8

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object p0
.end method

.method public final c(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)V
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->isPageIndexValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator;->getPageNumberByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->setPageIndex(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

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

    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/reader/utils/TocUtils;->c(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final flatTocEntryList(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)Ljava/util/List;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/utils/TocUtils;->isEmpty(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;->getRootEntry()Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/reader/utils/TocUtils;->a(Ljava/util/List;Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getChapterShowTitle(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;II)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "toc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/utils/TocUtils;->isEmpty(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_5

    sget-object v0, Lcom/onyx/android/sdk/base/utils/PageInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/PageInfoUtils;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/base/utils/PageInfoUtils;->isValidPositionInt(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/reader/api/TocSortArgs;->Companion:Lcom/onyx/android/sdk/reader/api/TocSortArgs$Companion;

    invoke-virtual {v0, p1, p2, p3}, Lcom/onyx/android/sdk/reader/api/TocSortArgs$Companion;->createTocSortArgs(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;II)Lcom/onyx/android/sdk/reader/api/TocSortArgs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/utils/TocUtils;->getTocEntryList(Lcom/onyx/android/sdk/reader/api/TocSortArgs;)Ljava/util/List;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, p3

    goto :goto_1

    :cond_2
    :goto_0
    move p1, p2

    :goto_1
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    const/4 p1, 0x0

    invoke-static {p0, p3, p2, p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getShowTitle$default(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, p0

    :cond_5
    :goto_2
    return-object v1
.end method

.method public final getTocEntryList(Lcom/onyx/android/sdk/reader/api/TocSortArgs;)Ljava/util/List;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/reader/api/TocSortArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/TocSortArgs;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "tocSortArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/TocSortArgs;->getToc()Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/utils/TocUtils;->flatTocEntryList(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/TocSortArgs;->getStartSortId()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/TocSortArgs;->getEndSortId()I

    move-result p1

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1, p1}, Lcom/onyx/android/sdk/reader/utils/TocUtils;->b(Ljava/util/List;II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v3

    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getSortId()I

    move-result p1

    invoke-virtual {p0, v0, v2, p1}, Lcom/onyx/android/sdk/reader/utils/TocUtils;->b(Ljava/util/List;II)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v3, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v3
.end method

.method public final isEmpty(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public final searchIndex(Ljava/util/List;Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)I
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;",
            ">;",
            "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;",
            ")I"
        }
    .end annotation

    const-string p0, "entryList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "keyEntry"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getSortId()I

    move-result v3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getSortId()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p2, v0, v4, v3}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getShowTitle$default(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final updateTocExpanded(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "keyEntry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/utils/TocUtils;->flatTocEntryList(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getSortId()I

    move-result v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getSortId()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getShowTitle$default(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getExpanded()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->setExpanded(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateTocPageNumberForTextFlowDocument(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "toc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;->getRootEntry()Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/reader/utils/TocUtils;->c(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)V

    goto :goto_0

    :cond_1
    return-void
.end method
