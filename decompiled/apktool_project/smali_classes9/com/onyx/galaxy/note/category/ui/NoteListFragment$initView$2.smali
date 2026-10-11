.class public final Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initView$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->C1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListFragment$initView$2\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,1546:1\n256#2,2:1547\n*S KotlinDebug\n*F\n+ 1 NoteListFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListFragment$initView$2\n*L\n804#1:1547,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J \u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/onyx/galaxy/note/category/ui/NoteListFragment$initView$2",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "onScrollStateChanged",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "newState",
        "",
        "onScrolled",
        "dx",
        "dy",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNoteListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListFragment$initView$2\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,1546:1\n256#2,2:1547\n*S KotlinDebug\n*F\n+ 1 NoteListFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListFragment$initView$2\n*L\n804#1:1547,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initView$2;->a:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$integer;->hide_list_go_top_delay:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initView$2;->a:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "rv"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initView$2;->a:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {v2}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$getHideGoTopRunnable(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {p1, v2, v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->repostDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initView$2;->a:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$setScrollTop$p(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Z)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initView$2;->a:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$setScrollBottom$p(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Z)V

    if-nez p2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initView$2;->a:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {p2}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$refreshAfterScrollIfDataIsUpdated(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initView$2;->a:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    xor-int/2addr p1, v1

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$setRvScrolling$p(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Z)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p3, :cond_1

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initView$2;->a:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$getShowGoTopRowCount$p(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initView$2;->a:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$toggleGoTopVisible(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initView$2;->a:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->slGoTop:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    const-string p1, "slGoTop"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
