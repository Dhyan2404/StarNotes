.class public final Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;->q(Lcom/onyx/android/sdk/base/data/TreeNode;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;

.field public final synthetic f:Lcom/onyx/android/sdk/base/data/TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;Lcom/onyx/android/sdk/base/data/TreeNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$a;->e:Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$a;->f:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$a;->e:Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$a;->f:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-static {p1, p0}, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;->access$removeNode(Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;Lcom/onyx/android/sdk/base/data/TreeNode;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$a;->a(Z)V

    return-void
.end method
