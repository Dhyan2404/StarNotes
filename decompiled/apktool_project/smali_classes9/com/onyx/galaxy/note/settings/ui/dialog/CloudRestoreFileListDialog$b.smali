.class public final Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->G0()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$b;->e:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$b;->e:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$b;->e:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$b;->a(Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;)V

    return-void
.end method
