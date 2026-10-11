.class public final Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->h(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TreeNode;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;

.field public final synthetic f:Lcom/onyx/android/sdk/base/data/TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;Lcom/onyx/android/sdk/base/data/TreeNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$b;->e:Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$b;->f:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->dialog_create_tag_conflicted:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$b;->e:Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$b;->f:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->levelToRoot()I

    move-result v0

    invoke-static {p1, v0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->access$reportDoneEvent(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$b;->e:Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->dismiss()V

    :goto_1
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$b;->a(Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;)V

    return-void
.end method
