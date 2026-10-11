.class public final Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog$b;->e:Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/base/data/TreeNode;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TreeNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "rootNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->expandChildren()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog$b;->e:Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;->access$getManageTagContext$p(Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;)Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;->setRootNode(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog$b;->e:Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;->access$getAdapter(Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;)Lcom/onyx/galaxy/note/category/view/adapter/ManageTagAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/ManageTagAdapter;->initList()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog$b;->a(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    return-void
.end method
