.class public final Lcom/onyx/galaxy/note/category/view/dialog/CreateSubTagDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/dialog/CreateSubTagDialog;->f()Z
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/view/dialog/CreateSubTagDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/dialog/CreateSubTagDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateSubTagDialog$a;->e:Lcom/onyx/galaxy/note/category/view/dialog/CreateSubTagDialog;

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

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->dialog_create_tag_conflicted:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateSubTagDialog$a;->e:Lcom/onyx/galaxy/note/category/view/dialog/CreateSubTagDialog;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/view/dialog/CreateSubTagDialog;->access$updateTagExpandStatus(Lcom/onyx/galaxy/note/category/view/dialog/CreateSubTagDialog;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateSubTagDialog$a;->e:Lcom/onyx/galaxy/note/category/view/dialog/CreateSubTagDialog;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/view/dialog/CreateSubTagDialog;->access$savePidToOption(Lcom/onyx/galaxy/note/category/view/dialog/CreateSubTagDialog;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateSubTagDialog$a;->e:Lcom/onyx/galaxy/note/category/view/dialog/CreateSubTagDialog;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/view/dialog/CreateSubTagDialog;->access$reportDoneEvent(Lcom/onyx/galaxy/note/category/view/dialog/CreateSubTagDialog;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateSubTagDialog$a;->e:Lcom/onyx/galaxy/note/category/view/dialog/CreateSubTagDialog;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateSubTagDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/CreateSubTagDialog$a;->a(Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;)V

    return-void
.end method
