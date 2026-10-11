.class public final Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView$setupScrollbar$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J \u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/onyx/galaxy/note/category/view/CustomScrollBarRecycleView$setupScrollbar$2",
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


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView$setupScrollbar$2;->a:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView$setupScrollbar$2;->a:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->access$isScrollBarEnable$p(Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView$setupScrollbar$2;->a:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->getScrollbarDragging()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView$setupScrollbar$2;->a:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->access$hideScrollbarDelay(Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;)V

    :cond_1
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView$setupScrollbar$2;->a:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->access$isScrollBarEnable$p(Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView$setupScrollbar$2;->a:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->getScrollbarDragging()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView$setupScrollbar$2;->a:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-static {p2}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->access$showScrollbar(Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;)V

    :cond_2
    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView$setupScrollbar$2;->a:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->getScrollbarDragging()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result p1

    sub-int/2addr p3, p1

    if-lez p3, :cond_3

    int-to-float p1, p2

    int-to-float p2, p3

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView$setupScrollbar$2;->a:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-static {p2}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->access$getBinding$p(Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;)Lcom/onyx/galaxy/note/databinding/CustomScrollBarRecycleViewBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/CustomScrollBarRecycleViewBinding;->scrollBar:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iget-object p3, p0, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView$setupScrollbar$2;->a:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-static {p3}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->access$getMaxScrollY(Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;)F

    move-result p3

    mul-float/2addr p1, p3

    invoke-virtual {p2, p1}, Landroid/view/View;->setY(F)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView$setupScrollbar$2;->a:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->access$getBinding$p(Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;)Lcom/onyx/galaxy/note/databinding/CustomScrollBarRecycleViewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/CustomScrollBarRecycleViewBinding;->scrollBar:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->setScrollbarTop(F)V

    :cond_3
    return-void
.end method
