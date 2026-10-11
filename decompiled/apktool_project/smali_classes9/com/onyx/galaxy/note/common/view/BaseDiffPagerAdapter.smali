.class public abstract Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "L:Ljava/lang/Object;",
        ">",
        "Landroidx/viewpager2/adapter/FragmentStateAdapter;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseDiffPagerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseDiffPagerAdapter.kt\ncom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,122:1\n1855#2,2:123\n*S KotlinDebug\n*F\n+ 1 BaseDiffPagerAdapter.kt\ncom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter\n*L\n34#1:123,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u0001*\u0004\u0008\u0001\u0010\u00032\u00020\u0004B\u0011\u0008\u0016\u0012\u0006\u00101\u001a\u000200\u00a2\u0006\u0004\u00082\u00103B\u0011\u0008\u0016\u0012\u0006\u00105\u001a\u000204\u00a2\u0006\u0004\u00082\u00106J\u001c\u0010\u0008\u001a\u00020\u00062\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016J\'\u0010\u0012\u001a\u00020\u00062\u0006\u0010\r\u001a\u00028\u00002\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001f\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00028\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0018\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010J\u0008\u0010\u0018\u001a\u00020\u000eH\u0016J\u0014\u0010\u001b\u001a\u00020\u00062\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0019J \u0010\u001d\u001a\u00020\u00062\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00192\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u001f\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u000eH\u0016J\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0019J\u000e\u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00000!H\u0016J\u000e\u0010$\u001a\u00020#2\u0006\u0010\u0017\u001a\u00020\u000eJ\u0014\u0010%\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0000H\u0002R\u001e\u0010(\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010\'R0\u0010/\u001a\u0010\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.\u00a8\u00067"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;",
        "",
        "T",
        "L",
        "Landroidx/viewpager2/adapter/FragmentStateAdapter;",
        "Lkotlin/Function1;",
        "",
        "l",
        "setFragmentListener",
        "",
        "itemId",
        "",
        "containsItem",
        "addFragmentTab",
        "",
        "insertPos",
        "Ljava/lang/Runnable;",
        "commitCallback",
        "addFragment",
        "(Ljava/lang/Object;ILjava/lang/Runnable;)V",
        "removeFragmentTab",
        "removeFragment",
        "(Ljava/lang/Object;Ljava/lang/Runnable;)V",
        "pos",
        "getItemCount",
        "",
        "list",
        "setNewData",
        "mNewList",
        "mergeList",
        "position",
        "getItemId",
        "getMutablePageList",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "genDiffItemCall",
        "",
        "fragmentTag",
        "o",
        "Landroidx/recyclerview/widget/AsyncListDiffer;",
        "Landroidx/recyclerview/widget/AsyncListDiffer;",
        "mDiffer",
        "p",
        "Lkotlin/jvm/functions/Function1;",
        "getListener",
        "()Lkotlin/jvm/functions/Function1;",
        "setListener",
        "(Lkotlin/jvm/functions/Function1;)V",
        "listener",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "<init>",
        "(Landroidx/fragment/app/Fragment;)V",
        "Landroidx/fragment/app/FragmentActivity;",
        "fragmentActivity",
        "(Landroidx/fragment/app/FragmentActivity;)V",
        "note_overseasRelease"
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
        "SMAP\nBaseDiffPagerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseDiffPagerAdapter.kt\ncom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,122:1\n1855#2,2:123\n*S KotlinDebug\n*F\n+ 1 BaseDiffPagerAdapter.kt\ncom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter\n*L\n34#1:123,2\n*E\n"
    }
.end annotation


# instance fields
.field public o:Landroidx/recyclerview/widget/AsyncListDiffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/AsyncListDiffer<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public p:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-T",
            "L;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 2
    new-instance p1, Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;->o()Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;->genDiffItemCall()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/AsyncListDiffer;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;->o:Landroidx/recyclerview/widget/AsyncListDiffer;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fragmentActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 4
    new-instance p1, Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;->o()Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;->genDiffItemCall()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/AsyncListDiffer;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;->o:Landroidx/recyclerview/widget/AsyncListDiffer;

    return-void
.end method

.method public static synthetic mergeList$default(Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;->mergeList(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: mergeList"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addFragment(Ljava/lang/Object;ILjava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const-string v0, "addFragmentTab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;->getMutablePageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;->getItemCount()I

    move-result v1

    if-gt p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;->getItemCount()I

    move-result p2

    :goto_0
    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, p3}, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;->mergeList(Ljava/util/List;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public containsItem(J)Z
    .locals 2

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;->o:Landroidx/recyclerview/widget/AsyncListDiffer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final fragmentTag(I)Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "f#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;->getItemId(I)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public genDiffItemCall()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter$genDiffItemCall$1;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter$genDiffItemCall$1;-><init>()V

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;->o:Landroidx/recyclerview/widget/AsyncListDiffer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getItemId(I)J
    .locals 3

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;->o:Landroidx/recyclerview/widget/AsyncListDiffer;

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, p1, :cond_1

    return-wide v0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public final getListener()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "T",
            "L;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;->p:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getMutablePageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;->o:Landroidx/recyclerview/widget/AsyncListDiffer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/util/Collection;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final mergeList(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const-string v0, "mNewList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;->getMutablePageList()Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;->o:Landroidx/recyclerview/widget/AsyncListDiffer;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final o()Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter<",
            "TT;T",
            "L;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public final removeFragment(ILjava/lang/Runnable;)V
    .locals 2
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;->getMutablePageList()Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;->removeFragment(Ljava/lang/Object;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final removeFragment(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const-string v0, "removeFragmentTab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;->getMutablePageList()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0, v0, p2}, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;->mergeList(Ljava/util/List;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final setFragmentListener(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-T",
            "L;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;->p:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setListener(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-T",
            "L;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;->p:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setNewData(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;->mergeList$default(Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method
