.class final Lcom/google/android/play/core/integrity/au;
.super Lcom/google/android/play/core/integrity/at;
.source "SourceFile"


# instance fields
.field private final c:Lcom/google/android/play/integrity/internal/q;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/integrity/ax;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/integrity/at;-><init>(Lcom/google/android/play/core/integrity/ax;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    new-instance p1, Lcom/google/android/play/integrity/internal/q;

    const-string p2, "OnRequestIntegrityTokenCallback"

    invoke-direct {p1, p2}, Lcom/google/android/play/integrity/internal/q;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/play/core/integrity/au;->c:Lcom/google/android/play/integrity/internal/q;

    return-void
.end method


# virtual methods
.method public final c(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/play/core/integrity/at;->c(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/play/core/integrity/au;->c:Lcom/google/android/play/integrity/internal/q;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onRequestExpressIntegrityToken"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/integrity/internal/q;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/play/core/integrity/at;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance p1, Lcom/google/android/play/core/integrity/StandardIntegrityException;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/play/core/integrity/StandardIntegrityException;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "dialog.intent"

    if-lt v0, v1, :cond_1

    const-class v0, Landroid/app/PendingIntent;

    invoke-static {p1, v2, v0}, Lcom/sunia/HTREnginev2/n4h;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_0
    iget-object v1, p0, Lcom/google/android/play/core/integrity/at;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v2, Lcom/google/android/play/core/integrity/b;

    invoke-direct {v2}, Lcom/google/android/play/core/integrity/b;-><init>()V

    const-string v3, "token"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/play/core/integrity/ba;->c(Ljava/lang/String;)Lcom/google/android/play/core/integrity/ba;

    iget-object p0, p0, Lcom/google/android/play/core/integrity/au;->c:Lcom/google/android/play/integrity/internal/q;

    invoke-virtual {v2, p0}, Lcom/google/android/play/core/integrity/ba;->b(Lcom/google/android/play/integrity/internal/q;)Lcom/google/android/play/core/integrity/ba;

    invoke-virtual {v2, v0}, Lcom/google/android/play/core/integrity/ba;->a(Landroid/app/PendingIntent;)Lcom/google/android/play/core/integrity/ba;

    invoke-virtual {v2}, Lcom/google/android/play/core/integrity/ba;->d()Lcom/google/android/play/core/integrity/bb;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    return-void
.end method
