.class public final Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;->s()V
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog$a;->e:Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog$a;->e:Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;->access$setListChange$p(Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog$a;->e:Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;->dismiss()V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->manager_folder_save_failed:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog$a;->a(Z)V

    return-void
.end method
