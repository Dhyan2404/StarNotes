.class public final synthetic Lcom/sunia/HTREnginev2/zn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public final synthetic f:Lcom/chad/library/adapter4/BaseQuickAdapter;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/chad/library/adapter4/BaseQuickAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zn;->e:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/zn;->f:Lcom/chad/library/adapter4/BaseQuickAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zn;->e:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zn;->f:Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-static {v0, p0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->c(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;)V

    return-void
.end method
