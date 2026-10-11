.class public final Lcom/sunia/HTREnginev2/zxo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic e:Lcom/google/android/play/integrity/internal/ac;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/integrity/internal/ac;Lcom/google/android/play/integrity/internal/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zxo;->e:Lcom/google/android/play/integrity/internal/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zxo;->e:Lcom/google/android/play/integrity/internal/ac;

    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ac;->f(Lcom/google/android/play/integrity/internal/ac;)Lcom/google/android/play/integrity/internal/q;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "ServiceConnectionImpl.onServiceConnected(%s)"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/play/integrity/internal/q;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/sunia/HTREnginev2/zxo;->e:Lcom/google/android/play/integrity/internal/ac;

    new-instance v0, Lcom/sunia/HTREnginev2/u8p;

    invoke-direct {v0, p0, p2}, Lcom/sunia/HTREnginev2/u8p;-><init>(Lcom/sunia/HTREnginev2/zxo;Landroid/os/IBinder;)V

    invoke-virtual {p1}, Lcom/google/android/play/integrity/internal/ac;->c()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zxo;->e:Lcom/google/android/play/integrity/internal/ac;

    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ac;->f(Lcom/google/android/play/integrity/internal/ac;)Lcom/google/android/play/integrity/internal/q;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "ServiceConnectionImpl.onServiceDisconnected(%s)"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/play/integrity/internal/q;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/sunia/HTREnginev2/zxo;->e:Lcom/google/android/play/integrity/internal/ac;

    new-instance v0, Lcom/sunia/HTREnginev2/w8p;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/w8p;-><init>(Lcom/sunia/HTREnginev2/zxo;)V

    invoke-virtual {p1}, Lcom/google/android/play/integrity/internal/ac;->c()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
