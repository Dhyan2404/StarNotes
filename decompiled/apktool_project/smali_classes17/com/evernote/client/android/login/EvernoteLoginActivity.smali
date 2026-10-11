.class public Lcom/evernote/client/android/login/EvernoteLoginActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/evernote/client/android/login/EvernoteLoginTask$LoginTaskCallback;


# static fields
.field public static final h:Ljava/lang/String; = "EXTRA_CONSUMER_KEY"

.field public static final i:Ljava/lang/String; = "EXTRA_CONSUMER_SECRET"

.field public static final j:Ljava/lang/String; = "EXTRA_SUPPORT_APP_LINKED_NOTEBOOKS"

.field public static final k:Ljava/lang/String; = "EXTRA_LOCALE"

.field public static final l:Ljava/lang/String; = "KEY_TASK"

.field public static final m:Ljava/lang/String; = "KEY_RESULT_POSTED"


# instance fields
.field public e:I

.field public f:Z

.field public g:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/evernote/client/android/login/EvernoteLoginActivity;)I
    .locals 0

    iget p0, p0, Lcom/evernote/client/android/login/EvernoteLoginActivity;->e:I

    return p0
.end method

.method public static synthetic b(Lcom/evernote/client/android/login/EvernoteLoginActivity;)Landroid/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/evernote/client/android/login/EvernoteLoginActivity;->g:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Locale;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/evernote/client/android/login/EvernoteLoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "EXTRA_CONSUMER_KEY"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "EXTRA_CONSUMER_SECRET"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "EXTRA_SUPPORT_APP_LINKED_NOTEBOOKS"

    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "EXTRA_LOCALE"

    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x35a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x35b

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lnet/vrallev/android/task/TaskExecutor;->getInstance()Lnet/vrallev/android/task/TaskExecutor;

    move-result-object p1

    iget p0, p0, Lcom/evernote/client/android/login/EvernoteLoginActivity;->e:I

    invoke-virtual {p1, p0}, Lnet/vrallev/android/task/TaskExecutor;->getTask(I)Lnet/vrallev/android/task/Task;

    move-result-object p0

    check-cast p0, Lcom/evernote/client/android/login/EvernoteLoginTask;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p2, p3}, Lcom/evernote/client/android/login/EvernoteLoginTask;->r(ILandroid/content/Intent;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v1, -0x54fffffd

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onResult(Ljava/lang/Boolean;Lcom/evernote/client/android/login/EvernoteLoginTask;)V
    .locals 1
    .annotation runtime Lnet/vrallev/android/task/TaskResult;
    .end annotation

    iget-boolean v0, p0, Lcom/evernote/client/android/login/EvernoteLoginActivity;->f:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lnet/vrallev/android/task/Task;->getKey()I

    move-result p2

    iget v0, p0, Lcom/evernote/client/android/login/EvernoteLoginActivity;->e:I

    if-eq p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/evernote/client/android/login/EvernoteLoginActivity;->f:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "KEY_TASK"

    iget v1, p0, Lcom/evernote/client/android/login/EvernoteLoginActivity;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "KEY_RESULT_POSTED"

    iget-boolean p0, p0, Lcom/evernote/client/android/login/EvernoteLoginActivity;->f:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/evernote/client/android/login/EvernoteLoginActivity;->g:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/evernote/client/android/login/EvernoteLoginActivity;->showDialog()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/evernote/client/android/login/EvernoteLoginActivity;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/client/android/login/EvernoteLoginActivity;->g:Landroid/app/ProgressDialog;

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/evernote/client/android/login/EvernoteLoginActivity$b;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/login/EvernoteLoginActivity$b;-><init>(Lcom/evernote/client/android/login/EvernoteLoginActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showDialog()V
    .locals 4

    new-instance v0, Lcom/evernote/client/android/login/EvernoteLoginActivity$a;

    invoke-direct {v0, p0}, Lcom/evernote/client/android/login/EvernoteLoginActivity$a;-><init>(Lcom/evernote/client/android/login/EvernoteLoginActivity;)V

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/evernote/client/android/login/EvernoteLoginActivity;->g:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/evernote/client/android/login/EvernoteLoginActivity;->g:Landroid/app/ProgressDialog;

    sget v2, Lcom/evernote/androidsdk/R$string;->esdk_loading:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/evernote/client/android/login/EvernoteLoginActivity;->g:Landroid/app/ProgressDialog;

    const/high16 v2, 0x1040000

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-virtual {v1, v3, v2, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/evernote/client/android/login/EvernoteLoginActivity;->g:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object p0, p0, Lcom/evernote/client/android/login/EvernoteLoginActivity;->g:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public switchBootstrapProfile()V
    .locals 1

    invoke-static {}, Lnet/vrallev/android/task/TaskExecutor;->getInstance()Lnet/vrallev/android/task/TaskExecutor;

    move-result-object v0

    iget p0, p0, Lcom/evernote/client/android/login/EvernoteLoginActivity;->e:I

    invoke-virtual {v0, p0}, Lnet/vrallev/android/task/TaskExecutor;->getTask(I)Lnet/vrallev/android/task/Task;

    move-result-object p0

    check-cast p0, Lcom/evernote/client/android/login/EvernoteLoginTask;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/evernote/client/android/login/EvernoteLoginTask;->u()V

    :cond_0
    return-void
.end method
