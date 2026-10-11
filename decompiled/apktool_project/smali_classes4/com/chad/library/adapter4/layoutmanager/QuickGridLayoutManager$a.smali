.class public final Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager$a;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public e:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final synthetic f:Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager$a;->f:Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager$a;->e:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    return-object p0
.end method

.method public final e(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager$a;->e:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    return-void
.end method

.method public getSpanSize(I)I
    .locals 4

    iget-object v0, p0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager$a;->f:Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;

    invoke-static {v0}, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;->access$getAdapter$p(Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, v0, Landroidx/recyclerview/widget/ConcatAdapter;

    if-eqz v2, :cond_5

    check-cast v0, Landroidx/recyclerview/widget/ConcatAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ConcatAdapter;->getWrappedAdapterAndPosition(I)Landroid/util/Pair;

    move-result-object v0

    const-string v2, "adapter.getWrappedAdapterAndPosition(position)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v3, v2, Lcom/chad/library/adapter4/fullspan/FullSpanAdapterType;

    if-eqz v3, :cond_1

    iget-object p0, p0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager$a;->f:Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    goto :goto_0

    :cond_1
    instance-of v3, v2, Lcom/chad/library/adapter4/BaseQuickAdapter;

    if-eqz v3, :cond_3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v3, "pair.second"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    check-cast v2, Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual {v2, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->isFullSpanItem(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager$a;->f:Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager$a;->e:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager$a;->e:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    :cond_4
    :goto_0
    return v1

    :cond_5
    instance-of v2, v0, Lcom/chad/library/adapter4/fullspan/FullSpanAdapterType;

    if-eqz v2, :cond_6

    iget-object p0, p0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager$a;->f:Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    goto :goto_1

    :cond_6
    instance-of v2, v0, Lcom/chad/library/adapter4/BaseQuickAdapter;

    if-eqz v2, :cond_8

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v2

    check-cast v0, Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->isFullSpanItem(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager$a;->f:Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    goto :goto_1

    :cond_7
    iget-object p0, p0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager$a;->e:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    goto :goto_1

    :cond_8
    iget-object p0, p0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager$a;->e:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    :cond_9
    :goto_1
    return v1
.end method
