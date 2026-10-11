.class public abstract Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseNodeViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field protected containerStyle:I

.field protected context:Landroid/content/Context;

.field protected mNode:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

.field protected tView:Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract createNodeView(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Ljava/lang/Object;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;",
            "TE;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public getContainerStyle()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->containerStyle:I

    return p0
.end method

.method public getNodeItemsView()Landroid/view/ViewGroup;
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->getView()Landroid/view/View;

    move-result-object p0

    sget v0, Lcom/onyx/android/sdk/uicommon/R$id;->node_items:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getNodeView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->mNode:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->createNodeView(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getTreeView()Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->tView:Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->getNodeView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/ui/treeview/view/TreeNodeWrapperView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->getContainerStyle()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/ui/treeview/view/TreeNodeWrapperView;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/ui/treeview/view/TreeNodeWrapperView;->insertNodeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->a:Landroid/view/View;

    return-object v1
.end method

.method public isInitialized()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->a:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract notifyItemAdd(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)V
.end method

.method public abstract notifyItemRemove(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)V
.end method

.method public abstract notifyItemUpdate(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)V
.end method

.method public setContainerStyle(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->containerStyle:I

    return-void
.end method

.method public setTreeViev(Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->tView:Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;

    return-void
.end method

.method public toggle(Z)V
    .locals 0

    return-void
.end method

.method public toggleSelectionMode(Z)V
    .locals 0

    return-void
.end method
