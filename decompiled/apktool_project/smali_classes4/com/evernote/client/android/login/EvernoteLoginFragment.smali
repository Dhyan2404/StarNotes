.class public Lcom/evernote/client/android/login/EvernoteLoginFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Lcom/evernote/client/android/login/EvernoteLoginTask$LoginTaskCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/client/android/login/EvernoteLoginFragment$ResultCallback;
    }
.end annotation


# static fields
.field public static final B1:Ljava/lang/String; = "consumerKey"

.field public static final C1:Ljava/lang/String; = "consumerSecret"

.field public static final D1:Ljava/lang/String; = "supportAppLinkedNotebooks"

.field public static final E1:Ljava/lang/String; = "ARG_LOCALE"

.field public static final F1:Ljava/lang/String; = "KEY_TASK"

.field public static final G1:Ljava/lang/String; = "KEY_RESULT_POSTED"

.field public static final TAG:Ljava/lang/String; = "EvernoteDialogFragment"


# instance fields
.field public A1:Z

.field public z1:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/evernote/client/android/login/EvernoteLoginFragment;->z1:I

    return-void
.end method

.method public static create(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Locale;)Lcom/evernote/client/android/login/EvernoteLoginFragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/evernote/client/android/login/EvernoteLoginFragment;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Locale;",
            ")TT;"
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evernote/client/android/login/EvernoteLoginFragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "consumerKey"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "consumerSecret"

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "supportAppLinkedNotebooks"

    .line 6
    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "ARG_LOCALE"

    .line 7
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 8
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Locale;)Lcom/evernote/client/android/login/EvernoteLoginFragment;
    .locals 1

    .line 1
    const-class v0, Lcom/evernote/client/android/login/EvernoteLoginFragment;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/evernote/client/android/login/EvernoteLoginFragment;->create(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Locale;)Lcom/evernote/client/android/login/EvernoteLoginFragment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r0(Lcom/evernote/client/android/login/EvernoteLoginFragment;)I
    .locals 0

    iget p0, p0, Lcom/evernote/client/android/login/EvernoteLoginFragment;->z1:I

    return p0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    new-instance v6, Lcom/evernote/client/android/EvernoteOAuthHelper;

    invoke-static {}, Lcom/evernote/client/android/EvernoteSession;->getInstance()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v1

    const-string v0, "consumerKey"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "consumerSecret"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "supportAppLinkedNotebooks"

    const/4 v7, 0x1

    invoke-virtual {p1, v0, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v0, "ARG_LOCALE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/util/Locale;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/evernote/client/android/EvernoteOAuthHelper;-><init>(Lcom/evernote/client/android/EvernoteSession;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Locale;)V

    invoke-static {}, Lnet/vrallev/android/task/TaskExecutor;->getInstance()Lnet/vrallev/android/task/TaskExecutor;

    move-result-object p1

    new-instance v0, Lcom/evernote/client/android/login/EvernoteLoginTask;

    invoke-direct {v0, v6, v7}, Lcom/evernote/client/android/login/EvernoteLoginTask;-><init>(Lcom/evernote/client/android/EvernoteOAuthHelper;Z)V

    invoke-virtual {p1, v0, p0}, Lnet/vrallev/android/task/TaskExecutor;->execute(Lnet/vrallev/android/task/Task;Landroidx/fragment/app/Fragment;)I

    move-result p1

    iput p1, p0, Lcom/evernote/client/android/login/EvernoteLoginFragment;->z1:I

    goto :goto_0

    :cond_0
    const-string v0, "KEY_TASK"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/evernote/client/android/login/EvernoteLoginFragment;->z1:I

    const-string v0, "KEY_RESULT_POSTED"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/evernote/client/android/login/EvernoteLoginFragment;->A1:Z

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x35a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x35b

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lnet/vrallev/android/task/TaskExecutor;->getInstance()Lnet/vrallev/android/task/TaskExecutor;

    move-result-object p1

    iget p0, p0, Lcom/evernote/client/android/login/EvernoteLoginFragment;->z1:I

    invoke-virtual {p1, p0}, Lnet/vrallev/android/task/TaskExecutor;->getTask(I)Lnet/vrallev/android/task/Task;

    move-result-object p0

    check-cast p0, Lcom/evernote/client/android/login/EvernoteLoginTask;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p2, p3}, Lcom/evernote/client/android/login/EvernoteLoginTask;->r(ILandroid/content/Intent;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    new-instance p1, Lcom/evernote/client/android/login/EvernoteLoginFragment$a;

    invoke-direct {p1, p0}, Lcom/evernote/client/android/login/EvernoteLoginFragment$a;-><init>(Lcom/evernote/client/android/login/EvernoteLoginFragment;)V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    sget v1, Lcom/evernote/androidsdk/R$string;->esdk_loading:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->isCancelable()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object v0
.end method

.method public onLoginFinished(Z)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized onResult(Ljava/lang/Boolean;Lcom/evernote/client/android/login/EvernoteLoginTask;)V
    .locals 1
    .annotation runtime Lnet/vrallev/android/task/TaskResult;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/evernote/client/android/login/EvernoteLoginFragment;->A1:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lnet/vrallev/android/task/Task;->getKey()I

    move-result p2

    iget v0, p0, Lcom/evernote/client/android/login/EvernoteLoginFragment;->z1:I

    if-eq p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/evernote/client/android/login/EvernoteLoginFragment;->A1:Z

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of v0, p2, Lcom/evernote/client/android/login/EvernoteLoginFragment$ResultCallback;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/evernote/client/android/login/EvernoteLoginFragment$ResultCallback;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p2, p1}, Lcom/evernote/client/android/login/EvernoteLoginFragment$ResultCallback;->onLoginFinished(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/evernote/client/android/login/EvernoteLoginFragment;->onLoginFinished(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "KEY_TASK"

    iget v1, p0, Lcom/evernote/client/android/login/EvernoteLoginFragment;->z1:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "KEY_RESULT_POSTED"

    iget-boolean p0, p0, Lcom/evernote/client/android/login/EvernoteLoginFragment;->A1:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/evernote/client/android/login/EvernoteLoginFragment$b;

    invoke-direct {v1, p0, p1}, Lcom/evernote/client/android/login/EvernoteLoginFragment$b;-><init>(Lcom/evernote/client/android/login/EvernoteLoginFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public switchBootstrapProfile()V
    .locals 1

    invoke-static {}, Lnet/vrallev/android/task/TaskExecutor;->getInstance()Lnet/vrallev/android/task/TaskExecutor;

    move-result-object v0

    iget p0, p0, Lcom/evernote/client/android/login/EvernoteLoginFragment;->z1:I

    invoke-virtual {v0, p0}, Lnet/vrallev/android/task/TaskExecutor;->getTask(I)Lnet/vrallev/android/task/Task;

    move-result-object p0

    check-cast p0, Lcom/evernote/client/android/login/EvernoteLoginTask;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/evernote/client/android/login/EvernoteLoginTask;->u()V

    :cond_0
    return-void
.end method
