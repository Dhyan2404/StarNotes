.class public Lcom/evernote/client/android/login/EvernoteLoginFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/login/EvernoteLoginFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/evernote/client/android/login/EvernoteLoginFragment;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/login/EvernoteLoginFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/login/EvernoteLoginFragment$a;->e:Lcom/evernote/client/android/login/EvernoteLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lnet/vrallev/android/task/TaskExecutor;->getInstance()Lnet/vrallev/android/task/TaskExecutor;

    move-result-object p1

    iget-object p2, p0, Lcom/evernote/client/android/login/EvernoteLoginFragment$a;->e:Lcom/evernote/client/android/login/EvernoteLoginFragment;

    invoke-static {p2}, Lcom/evernote/client/android/login/EvernoteLoginFragment;->r0(Lcom/evernote/client/android/login/EvernoteLoginFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Lnet/vrallev/android/task/TaskExecutor;->getTask(I)Lnet/vrallev/android/task/Task;

    move-result-object p1

    check-cast p1, Lcom/evernote/client/android/login/EvernoteLoginTask;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/vrallev/android/task/Task;->cancel()V

    :cond_0
    iget-object p0, p0, Lcom/evernote/client/android/login/EvernoteLoginFragment$a;->e:Lcom/evernote/client/android/login/EvernoteLoginFragment;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p2, p1}, Lcom/evernote/client/android/login/EvernoteLoginFragment;->onResult(Ljava/lang/Boolean;Lcom/evernote/client/android/login/EvernoteLoginTask;)V

    return-void
.end method
