.class public final Lcom/onyx/galaxy/note/category/ui/TagsListPopup;
.super Lcom/onyx/android/sdk/ui/BasePopWindow;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0017J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u001a\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u001b\u0010\u0016\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/ui/TagsListPopup;",
        "Lcom/onyx/android/sdk/ui/BasePopWindow;",
        "Landroid/view/View;",
        "view",
        "",
        "setContentView",
        "onPrepareShow",
        "f",
        "Landroid/content/Context;",
        "k",
        "Landroid/content/Context;",
        "context",
        "",
        "",
        "l",
        "Ljava/util/List;",
        "tagIdList",
        "Lcom/onyx/galaxy/note/databinding/PopupTagsListBinding;",
        "m",
        "Lkotlin/Lazy;",
        "e",
        "()Lcom/onyx/galaxy/note/databinding/PopupTagsListBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter;",
        "n",
        "Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter;",
        "adapter",
        "<init>",
        "(Landroid/content/Context;Ljava/util/List;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final k:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1    # Landroid/content/Context;
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
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagIdList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/ui/BasePopWindow;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/TagsListPopup;->k:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/ui/TagsListPopup;->l:Ljava/util/List;

    new-instance p1, Lcom/onyx/galaxy/note/category/ui/TagsListPopup$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/ui/TagsListPopup$binding$2;-><init>(Lcom/onyx/galaxy/note/category/ui/TagsListPopup;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/TagsListPopup;->m:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/TagsListPopup;->n:Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/TagsListPopup;->e()Lcom/onyx/galaxy/note/databinding/PopupTagsListBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "getRoot(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/TagsListPopup;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/TagsListPopup;->f()V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/onyx/galaxy/note/category/ui/TagsListPopup;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/TagsListPopup;->k:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final e()Lcom/onyx/galaxy/note/databinding/PopupTagsListBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/TagsListPopup;->m:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupTagsListBinding;

    return-object p0
.end method

.method public final f()V
    .locals 2

    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/TagsListPopup;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/TagsListPopup;->e()Lcom/onyx/galaxy/note/databinding/PopupTagsListBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupTagsListBinding;->rv:Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/TagsListPopup;->n:Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/TagsListPopup;->l:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/TagsListPopup;->e()Lcom/onyx/galaxy/note/databinding/PopupTagsListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupTagsListBinding;->rv:Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/TagsListPopup;->n:Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onPrepareShow()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/BasePopWindow;->isForceShowAtUp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/TagsListPopup;->e()Lcom/onyx/galaxy/note/databinding/PopupTagsListBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupTagsListBinding;->bubbleLayout:Lcom/onyx/galaxy/note/ui/view/BubbleLayout;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/ui/view/BubbleLayout;->setTriangleDirection(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget p1, Lcom/onyx/galaxy/note/R$style;->popupWindowAnimation:I

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method
