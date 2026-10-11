.class public final Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002J\u0014\u0010\n\u001a\u00020\t2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007J\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00052\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005J\"\u0010\u000f\u001a\u00020\r2\u0012\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00070\u00022\u0006\u0010\u000e\u001a\u00020\rJ6\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\"\u0004\u0008\u0000\u0010\u00102\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00030\u0011H\u0002\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils;",
        "",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
        "queryModelList",
        "",
        "sortVirtualTocModelListToNatural",
        "Lcom/onyx/android/sdk/base/data/Tree;",
        "tree",
        "",
        "sortVirtualTocModelTreeToNatural",
        "list",
        "reorderIndex",
        "",
        "page",
        "findCurrentTocIndex",
        "T",
        "Lkotlin/Function1;",
        "getter",
        "b",
        "<init>",
        "()V",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils;->c(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final c(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
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
.method public final b(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils$sort$1;

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils$sort$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/sunia/HTREnginev2/vin;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/vin;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final findCurrentTocIndex(Ljava/util/List;I)I
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;>;I)I"
        }
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    :goto_0
    if-ge v3, p0, :cond_5

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/Tree;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getPageIndex()I

    move-result v5

    if-ne v5, p2, :cond_2

    return v3

    :cond_2
    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getPageIndex()I

    move-result v5

    if-le v5, p2, :cond_4

    if-ltz v2, :cond_3

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getPageIndex()I

    move-result v5

    if-ge v5, v2, :cond_4

    :cond_3
    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getPageIndex()I

    move-result v0

    move v2, v0

    move v0, v3

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-lez v0, :cond_6

    add-int/lit8 v1, v0, -0x1

    goto :goto_2

    :cond_6
    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 v1, p0, -0x1

    :goto_2
    return v1
.end method

.method public final reorderIndex(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/OrderListUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/OrderListUtils;

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils$reorderIndex$1;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils$reorderIndex$1;

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils$reorderIndex$2;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils$reorderIndex$2;

    invoke-virtual {p0, p1, v0, v1}, Lcom/onyx/android/sdk/base/utils/OrderListUtils;->reorderIndexChecked(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final sortVirtualTocModelListToNatural(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "queryModelList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils$sortVirtualTocModelListToNatural$1;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils$sortVirtualTocModelListToNatural$1;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils;->b(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final sortVirtualTocModelTreeToNatural(Lcom/onyx/android/sdk/base/data/Tree;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tree"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils$sortVirtualTocModelTreeToNatural$1;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils$sortVirtualTocModelTreeToNatural$1;

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils;->b(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/data/Tree;->setChildren(Ljava/util/List;)V

    return-void
.end method
