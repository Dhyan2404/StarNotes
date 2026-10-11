.class public final synthetic Lcom/sunia/HTREnginev2/wa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;

.field public final synthetic f:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wa;->e:Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/wa;->f:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/wa;->e:Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wa;->f:Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;->b(Lcom/onyx/android/sdk/ui/treeview/view/AndroidTreeView;Lcom/onyx/android/sdk/ui/treeview/model/TreeNode;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
