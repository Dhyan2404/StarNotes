.class public Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Ljava/lang/String; = ";"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Z

.field public c:I

.field public d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$TreeNodeClickListener;

.field public f:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$TreeNodeLongClickListener;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field protected mRoot:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->c:I

    .line 3
    const-class v1, Lcom/onyx/android/sdk/ui/treeview/holder/SimpleViewHolder;

    iput-object v1, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->d:Ljava/lang/Class;

    .line 4
    iput-boolean v0, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->h:Z

    .line 5
    iput-boolean v0, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->i:Z

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->j:Z

    .line 7
    iput-object p1, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->c:I

    .line 10
    const-class v1, Lcom/onyx/android/sdk/ui/treeview/holder/SimpleViewHolder;

    iput-object v1, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->d:Ljava/lang/Class;

    .line 11
    iput-boolean v0, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->h:Z

    .line 12
    iput-boolean v0, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->i:Z

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->j:Z

    .line 14
    iput-object p2, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->mRoot:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    .line 15
    iput-object p1, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->a:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->l(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->m(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static d(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    new-instance v1, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView$c;

    invoke-direct {v1, p0, v0}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView$c;-><init>(Landroid/view/View;I)V

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static f(Landroid/view/View;)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView$b;

    invoke-direct {v1, p0, v0}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView$b;-><init>(Landroid/view/View;I)V

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private synthetic l(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getClickListener()Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$TreeNodeClickListener;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getClickListener()Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$TreeNodeClickListener;

    move-result-object p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$TreeNodeClickListener;->onClick(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->e:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$TreeNodeClickListener;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$TreeNodeClickListener;->onClick(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-boolean p2, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->j:Z

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->toggleNode(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)V

    :cond_2
    return-void
.end method

.method private synthetic m(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getLongClickListener()Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$TreeNodeLongClickListener;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getLongClickListener()Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$TreeNodeLongClickListener;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$TreeNodeLongClickListener;->onLongClick(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p2, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->f:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$TreeNodeLongClickListener;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$TreeNodeLongClickListener;->onLongClick(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    iget-boolean p2, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->j:Z

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->toggleNode(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addNode(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;ILcom/onyx/android/sdk/ui/treeview/model/TreeNode;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p3}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getParent()Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p1, p3, p2}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->addChild(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;I)Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->k(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->c(Landroid/view/ViewGroup;ILcom/onyx/android/sdk/ui/treeview/model/TreeNode;)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getViewHolder()Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->notifyItemUpdate(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getViewHolder()Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->notifyItemAdd(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)V

    :goto_1
    return-void
.end method

.method public final c(Landroid/view/ViewGroup;ILcom/onyx/android/sdk/ui/treeview/model/TreeNode;)V
    .locals 4

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->k(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->removeNode(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)V

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-ltz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ne p2, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    iget-boolean p1, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->g:Z

    if-eqz p1, :cond_3

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->toggleSelectionMode(Z)V

    :cond_3
    new-instance p1, Lcom/sunia/HTREnginev2/va;

    invoke-direct {p1, p0, p3}, Lcom/sunia/HTREnginev2/va;-><init>(Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/sunia/HTREnginev2/wa;

    invoke-direct {p1, p0, p3}, Lcom/sunia/HTREnginev2/wa;-><init>(Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public collapseAll()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->mRoot:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->e(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public collapseNode(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->e(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Z)V

    return-void
.end method

.method public deselectAll()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->n(ZZ)V

    return-void
.end method

.method public final e(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Z)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->setExpanded(Z)Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->k(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->h:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->d(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->toggle(Z)V

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->e(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public expandAll()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->mRoot:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->h(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Z)V

    return-void
.end method

.method public expandLevel(I)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->mRoot:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    invoke-virtual {p0, v1, p1}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->g(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public expandNode(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->h(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Z)V

    return-void
.end method

.method public final g(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getLevel()I

    move-result v0

    if-gt v0, p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->h(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Z)V

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->g(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getSaveState()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->mRoot:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->i(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSelected()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->mRoot:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->j(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getSelectedValues(Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->getSelected()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    const/4 v0, -0x1

    .line 13
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->getView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getView(I)Landroid/view/View;
    .locals 4

    if-lez p1, :cond_1

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 2
    iget-boolean p1, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->i:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/onyx/android/sdk/ui/treeview/view/TwoDScrollView;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/ui/treeview/view/TwoDScrollView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-boolean p1, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->i:Z

    if-eqz p1, :cond_2

    new-instance p1, Lcom/onyx/android/sdk/ui/treeview/view/TwoDScrollView;

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/ui/treeview/view/TwoDScrollView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->a:Landroid/content/Context;

    .line 5
    iget v1, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->c:I

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->b:Z

    if-eqz v1, :cond_3

    .line 6
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->a:Landroid/content/Context;

    iget v2, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->c:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 7
    :cond_3
    new-instance v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    iget v3, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->c:I

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    sget v0, Lcom/onyx/android/sdk/uicommon/R$id;->tree_items:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    const/4 v0, 0x1

    .line 9
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11
    iget-object v0, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->mRoot:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    new-instance v2, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView$a;

    iget-object v3, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->a:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView$a;-><init>(Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;Landroid/content/Context;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->setViewHolder(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;)Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    .line 12
    iget-object v0, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->mRoot:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->h(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Z)V

    return-object p1
.end method

.method public final h(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Z)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->setExpanded(Z)Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->k(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->toggle(Z)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3, v0}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->c(Landroid/view/ViewGroup;ILcom/onyx/android/sdk/ui/treeview/model/TreeNode;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->isExpanded()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_0

    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->h(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Z)V

    goto :goto_0

    :cond_2
    iget-boolean p0, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->h:Z

    if-eqz p0, :cond_3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->f(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final i(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Ljava/lang/StringBuilder;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->i(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public is2dScrollEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->i:Z

    return p0
.end method

.method public isAutoToggleEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->j:Z

    return p0
.end method

.method public isSelectionModeEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->g:Z

    return p0
.end method

.method public final j(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->j(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final k(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;
    .locals 5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getViewHolder()Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->d:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->a:Landroid/content/Context;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->setViewHolder(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;)Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not instantiate class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->d:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->getContainerStyle()I

    move-result p1

    if-gtz p1, :cond_1

    iget p1, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->c:I

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->setContainerStyle(I)V

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->getTreeView()Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->setTreeViev(Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;)V

    :cond_2
    return-object v0
.end method

.method public final n(ZZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->mRoot:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    invoke-virtual {p0, v1, p1, p2}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->p(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;ZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final o(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->expandNode(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)V

    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->o(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final p(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;ZZ)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->setSelected(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->r(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Z)V

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->isExpanded()Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    invoke-virtual {p0, v0, p2, p3}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->p(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;ZZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final q(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Z)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->r(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Z)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->q(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final r(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->k(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->k(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->toggleSelectionMode(Z)V

    :cond_0
    return-void
.end method

.method public removeNode(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)V
    .locals 3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getParent()Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getParent()Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->deleteChild(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->reParent(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->k(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getViewHolder()Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->notifyItemRemove(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)V

    :cond_1
    return-void
.end method

.method public restoreState(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->collapseAll()V

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->mRoot:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->o(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public selectAll(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->n(ZZ)V

    return-void
.end method

.method public selectNode(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->setSelected(Z)V

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->r(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Z)V

    :cond_0
    return-void
.end method

.method public setDefaultAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->h:Z

    return-void
.end method

.method public setDefaultContainerStyle(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->setDefaultContainerStyle(IZ)V

    return-void
.end method

.method public setDefaultContainerStyle(IZ)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->c:I

    .line 3
    iput-boolean p2, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->b:Z

    return-void
.end method

.method public setDefaultNodeClickListener(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$TreeNodeClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->e:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$TreeNodeClickListener;

    return-void
.end method

.method public setDefaultNodeLongClickListener(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$TreeNodeLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->f:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$TreeNodeLongClickListener;

    return-void
.end method

.method public setDefaultViewHolder(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->d:Ljava/lang/Class;

    return-void
.end method

.method public setRoot(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->mRoot:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    return-void
.end method

.method public setSelectionModeEnabled(Z)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->deselectAll()V

    :cond_0
    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->g:Z

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->mRoot:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    invoke-virtual {p0, v1, p1}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->q(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setUse2dScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->i:Z

    return-void
.end method

.method public setUseAutoToggle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->j:Z

    return-void
.end method

.method public toggleNode(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->isExpanded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->e(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->h(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Z)V

    :goto_0
    return-void
.end method
