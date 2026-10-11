.class public Lcom/onyx/android/sdk/ui/treeview/holder/SimpleViewHolder;
.super Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createNodeView(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    new-instance p1, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;->context:Landroid/content/Context;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public notifyItemAdd(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)V
    .locals 0

    return-void
.end method

.method public notifyItemRemove(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)V
    .locals 0

    return-void
.end method

.method public notifyItemUpdate(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)V
    .locals 0

    return-void
.end method

.method public toggle(Z)V
    .locals 0

    return-void
.end method
