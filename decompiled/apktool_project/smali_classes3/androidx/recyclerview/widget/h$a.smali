.class public Landroidx/recyclerview/widget/h$a;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/h;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/h;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/h$a;->a:Landroidx/recyclerview/widget/h;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/h$a;->a:Landroidx/recyclerview/widget/h;

    iget-object v1, v0, Landroidx/recyclerview/widget/h;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/h;->e:I

    iget-object p0, p0, Landroidx/recyclerview/widget/h$a;->a:Landroidx/recyclerview/widget/h;

    iget-object v0, p0, Landroidx/recyclerview/widget/h;->d:Landroidx/recyclerview/widget/h$b;

    invoke-interface {v0, p0}, Landroidx/recyclerview/widget/h$b;->g(Landroidx/recyclerview/widget/h;)V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/h$a;->a:Landroidx/recyclerview/widget/h;

    iget-object v0, p0, Landroidx/recyclerview/widget/h;->d:Landroidx/recyclerview/widget/h$b;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, p2, v1}, Landroidx/recyclerview/widget/h$b;->c(Landroidx/recyclerview/widget/h;IILjava/lang/Object;)V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object p0, p0, Landroidx/recyclerview/widget/h$a;->a:Landroidx/recyclerview/widget/h;

    iget-object v0, p0, Landroidx/recyclerview/widget/h;->d:Landroidx/recyclerview/widget/h$b;

    invoke-interface {v0, p0, p1, p2, p3}, Landroidx/recyclerview/widget/h$b;->c(Landroidx/recyclerview/widget/h;IILjava/lang/Object;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/h$a;->a:Landroidx/recyclerview/widget/h;

    iget v1, v0, Landroidx/recyclerview/widget/h;->e:I

    add-int/2addr v1, p2

    iput v1, v0, Landroidx/recyclerview/widget/h;->e:I

    iget-object v1, v0, Landroidx/recyclerview/widget/h;->d:Landroidx/recyclerview/widget/h$b;

    invoke-interface {v1, v0, p1, p2}, Landroidx/recyclerview/widget/h$b;->f(Landroidx/recyclerview/widget/h;II)V

    iget-object p1, p0, Landroidx/recyclerview/widget/h$a;->a:Landroidx/recyclerview/widget/h;

    iget p2, p1, Landroidx/recyclerview/widget/h;->e:I

    if-lez p2, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/widget/h;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getStateRestorationPolicy()Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    move-result-object p1

    sget-object p2, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/h$a;->a:Landroidx/recyclerview/widget/h;

    iget-object p1, p0, Landroidx/recyclerview/widget/h;->d:Landroidx/recyclerview/widget/h$b;

    invoke-interface {p1, p0}, Landroidx/recyclerview/widget/h$b;->b(Landroidx/recyclerview/widget/h;)V

    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string p3, "moving more than 1 item is not supported in RecyclerView"

    invoke-static {v0, p3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object p0, p0, Landroidx/recyclerview/widget/h$a;->a:Landroidx/recyclerview/widget/h;

    iget-object p3, p0, Landroidx/recyclerview/widget/h;->d:Landroidx/recyclerview/widget/h$b;

    invoke-interface {p3, p0, p1, p2}, Landroidx/recyclerview/widget/h$b;->a(Landroidx/recyclerview/widget/h;II)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/h$a;->a:Landroidx/recyclerview/widget/h;

    iget v1, v0, Landroidx/recyclerview/widget/h;->e:I

    sub-int/2addr v1, p2

    iput v1, v0, Landroidx/recyclerview/widget/h;->e:I

    iget-object v1, v0, Landroidx/recyclerview/widget/h;->d:Landroidx/recyclerview/widget/h$b;

    invoke-interface {v1, v0, p1, p2}, Landroidx/recyclerview/widget/h$b;->e(Landroidx/recyclerview/widget/h;II)V

    iget-object p1, p0, Landroidx/recyclerview/widget/h$a;->a:Landroidx/recyclerview/widget/h;

    iget p2, p1, Landroidx/recyclerview/widget/h;->e:I

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/widget/h;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getStateRestorationPolicy()Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    move-result-object p1

    sget-object p2, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/h$a;->a:Landroidx/recyclerview/widget/h;

    iget-object p1, p0, Landroidx/recyclerview/widget/h;->d:Landroidx/recyclerview/widget/h$b;

    invoke-interface {p1, p0}, Landroidx/recyclerview/widget/h$b;->b(Landroidx/recyclerview/widget/h;)V

    :cond_0
    return-void
.end method

.method public onStateRestorationPolicyChanged()V
    .locals 1

    iget-object p0, p0, Landroidx/recyclerview/widget/h$a;->a:Landroidx/recyclerview/widget/h;

    iget-object v0, p0, Landroidx/recyclerview/widget/h;->d:Landroidx/recyclerview/widget/h$b;

    invoke-interface {v0, p0}, Landroidx/recyclerview/widget/h$b;->b(Landroidx/recyclerview/widget/h;)V

    return-void
.end method
