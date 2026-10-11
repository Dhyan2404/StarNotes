.class public final Lcom/onyx/galaxy/note/category/view/dialog/SelectFolderDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/dialog/SelectFolderDialog;->x()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/view/dialog/SelectFolderDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/dialog/SelectFolderDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectFolderDialog$a;->e:Lcom/onyx/galaxy/note/category/view/dialog/SelectFolderDialog;

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
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "rootNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->expandChildren()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectFolderDialog$a;->e:Lcom/onyx/galaxy/note/category/view/dialog/SelectFolderDialog;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectFolderDialog;->access$getManageFolderContext$p(Lcom/onyx/galaxy/note/category/view/dialog/SelectFolderDialog;)Lcom/onyx/galaxy/note/common/data/ManageFolderContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;->setRootNode(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectFolderDialog$a;->e:Lcom/onyx/galaxy/note/category/view/dialog/SelectFolderDialog;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectFolderDialog;->access$initData(Lcom/onyx/galaxy/note/category/view/dialog/SelectFolderDialog;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/SelectFolderDialog$a;->a(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    return-void
.end method
