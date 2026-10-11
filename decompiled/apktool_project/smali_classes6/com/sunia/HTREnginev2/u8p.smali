.class public final Lcom/sunia/HTREnginev2/u8p;
.super Lcom/google/android/play/integrity/internal/r;
.source "SourceFile"


# instance fields
.field public final synthetic g:Landroid/os/IBinder;

.field public final synthetic h:Lcom/sunia/HTREnginev2/zxo;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/zxo;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/u8p;->h:Lcom/sunia/HTREnginev2/zxo;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/u8p;->g:Landroid/os/IBinder;

    invoke-direct {p0}, Lcom/google/android/play/integrity/internal/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u8p;->h:Lcom/sunia/HTREnginev2/zxo;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/zxo;->e:Lcom/google/android/play/integrity/internal/ac;

    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ac;->g(Lcom/google/android/play/integrity/internal/ac;)Lcom/google/android/play/integrity/internal/x;

    move-result-object v1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/u8p;->g:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/google/android/play/integrity/internal/x;->a(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IInterface;

    invoke-static {v0, v1}, Lcom/google/android/play/integrity/internal/ac;->n(Lcom/google/android/play/integrity/internal/ac;Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u8p;->h:Lcom/sunia/HTREnginev2/zxo;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/zxo;->e:Lcom/google/android/play/integrity/internal/ac;

    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ac;->r(Lcom/google/android/play/integrity/internal/ac;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u8p;->h:Lcom/sunia/HTREnginev2/zxo;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/zxo;->e:Lcom/google/android/play/integrity/internal/ac;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/play/integrity/internal/ac;->m(Lcom/google/android/play/integrity/internal/ac;Z)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u8p;->h:Lcom/sunia/HTREnginev2/zxo;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/zxo;->e:Lcom/google/android/play/integrity/internal/ac;

    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ac;->i(Lcom/google/android/play/integrity/internal/ac;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/u8p;->h:Lcom/sunia/HTREnginev2/zxo;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zxo;->e:Lcom/google/android/play/integrity/internal/ac;

    invoke-static {p0}, Lcom/google/android/play/integrity/internal/ac;->i(Lcom/google/android/play/integrity/internal/ac;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
