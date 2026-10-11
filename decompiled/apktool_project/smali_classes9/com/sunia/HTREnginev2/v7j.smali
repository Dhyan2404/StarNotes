.class public final synthetic Lcom/sunia/HTREnginev2/v7j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/view/adapter/ManageTagAdapter;

.field public final synthetic f:I

.field public final synthetic g:Lcom/onyx/android/sdk/base/data/TreeNode;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/ManageTagAdapter;ILcom/onyx/android/sdk/base/data/TreeNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/v7j;->e:Lcom/onyx/galaxy/note/category/view/adapter/ManageTagAdapter;

    iput p2, p0, Lcom/sunia/HTREnginev2/v7j;->f:I

    iput-object p3, p0, Lcom/sunia/HTREnginev2/v7j;->g:Lcom/onyx/android/sdk/base/data/TreeNode;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/v7j;->e:Lcom/onyx/galaxy/note/category/view/adapter/ManageTagAdapter;

    iget v1, p0, Lcom/sunia/HTREnginev2/v7j;->f:I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/v7j;->g:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/ManageTagAdapter;->n(Lcom/onyx/galaxy/note/category/view/adapter/ManageTagAdapter;ILcom/onyx/android/sdk/base/data/TreeNode;Landroid/view/View;)V

    return-void
.end method
