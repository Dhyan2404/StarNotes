.class public Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView$a;
.super Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->getView(I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/LinearLayout;

.field public final synthetic c:Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView$a;->c:Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;

    iput-object p3, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView$a;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/ui/treeview/model/TreeNode$BaseNodeViewHolder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createNodeView(Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNodeItemsView()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView$a;->b:Landroid/widget/LinearLayout;

    return-object p0
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
