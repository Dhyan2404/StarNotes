.class public final Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;->s()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;


# direct methods
.method public constructor <init>(IILcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$k;->e:I

    iput p2, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$k;->f:I

    iput-object p3, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$k;->g:Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 4
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$k;->e:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lez p1, :cond_0

    iget v3, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$k;->f:I

    if-lez v3, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v3, Lcom/onyx/galaxy/note/R$string;->option_move_folder_note_deleted:I

    invoke-static {p1, v3, v2, v1, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget p1, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$k;->f:I

    if-lez p1, :cond_1

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v3, Lcom/onyx/galaxy/note/R$string;->option_move_note_deleted:I

    invoke-static {p1, v3, v2, v1, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v3, Lcom/onyx/galaxy/note/R$string;->option_move_folder_deleted:I

    invoke-static {p1, v3, v2, v1, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    :goto_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$k;->g:Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;->access$getDialog$p(Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectFolderDialog;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectFolderDialog;->dismiss()V

    :cond_2
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$k;->a(Ljava/lang/Throwable;)V

    return-void
.end method
