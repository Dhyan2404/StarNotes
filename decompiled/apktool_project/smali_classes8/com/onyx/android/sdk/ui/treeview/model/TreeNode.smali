.class public Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;,
        Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$TreeNodeClickListener;,
        Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$TreeNodeLongClickListener;
    }
.end annotation


# static fields
.field public static final NODES_ID_SEPARATOR:Ljava/lang/String; = ":"


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

.field public d:Z

.field public e:Z

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;

.field public h:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$TreeNodeClickListener;

.field public i:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$TreeNodeLongClickListener;

.field public j:Ljava/lang/Object;

.field public k:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->e:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->f:Ljava/util/List;

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->j:Ljava/lang/Object;

    return-void
.end method

.method public static root()Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->setSelectable(Z)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->b:I

    return v0
.end method

.method public addChild(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;
    .locals 1

    .line 1
    iput-object p0, p1, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->c:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->a()I

    move-result v0

    iput v0, p1, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->a:I

    .line 3
    iget-object v0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addChild(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;I)Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;
    .locals 2

    .line 4
    iput-object p0, p1, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->c:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    .line 5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->a()I

    move-result v0

    iput v0, p1, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->a:I

    if-ltz p2, :cond_1

    .line 6
    iget-object v0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->f:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object p0
.end method

.method public addChildren(Ljava/util/Collection;)Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;",
            ">;)",
            "Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;"
        }
    .end annotation

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    .line 4
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->addChild(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs addChildren([Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;
    .locals 3

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2
    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->addChild(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public deleteChild(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v1, p1, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->a:I

    iget-object v2, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    iget v2, v2, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->a:I

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->f:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->f:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getClickListener()Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$TreeNodeClickListener;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->h:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$TreeNodeClickListener;

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->a:I

    return p0
.end method

.method public getLevel()I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->c:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getLongClickListener()Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$TreeNodeLongClickListener;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->i:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$TreeNodeLongClickListener;

    return-object p0
.end method

.method public getParent()Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->c:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->c:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->c:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->c:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    if-eqz v1, :cond_0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->c:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    if-eqz v0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->j:Ljava/lang/Object;

    return-object p0
.end method

.method public getViewHolder()Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->g:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;

    return-object p0
.end method

.method public isExpanded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->k:Z

    return p0
.end method

.method public isFirstChild()Z
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->isRoot()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->c:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    iget-object v0, v0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    iget v0, v0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->a:I

    iget p0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->a:I

    if-ne v0, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isLastChild()Z
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->isRoot()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->c:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    iget-object v0, v0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->c:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    iget-object v2, v2, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->f:Ljava/util/List;

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    iget v0, v0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->a:I

    iget p0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->a:I

    if-ne v0, p0, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method

.method public isLeaf()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRoot()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->c:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSelectable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->e:Z

    return p0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->e:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->d:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reParent(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->c:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    return-void
.end method

.method public setClickListener(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$TreeNodeClickListener;)Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->h:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$TreeNodeClickListener;

    return-object p0
.end method

.method public setExpanded(Z)Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->k:Z

    return-object p0
.end method

.method public setLongClickListener(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$TreeNodeLongClickListener;)Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->i:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$TreeNodeLongClickListener;

    return-object p0
.end method

.method public setSelectable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->e:Z

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->d:Z

    return-void
.end method

.method public setViewHolder(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;)Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->g:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;

    if-eqz p1, :cond_0

    iput-object p0, p1, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->mNode:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    :cond_0
    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
