.class public final synthetic Lcom/sunia/HTREnginev2/cfm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;

.field public final synthetic f:Lcom/onyx/android/sdk/base/data/TreeNode;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;Lcom/onyx/android/sdk/base/data/TreeNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cfm;->e:Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/cfm;->f:Lcom/onyx/android/sdk/base/data/TreeNode;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/cfm;->e:Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cfm;->f:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->m(Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;Lcom/onyx/android/sdk/base/data/TreeNode;Landroid/view/View;)V

    return-void
.end method
