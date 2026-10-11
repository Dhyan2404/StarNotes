.class public final Lcom/sunia/HTREnginev2/q8p;
.super Lcom/google/android/play/integrity/internal/r;
.source "SourceFile"


# instance fields
.field public final synthetic g:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic h:Lcom/google/android/play/integrity/internal/r;

.field public final synthetic i:Lcom/google/android/play/integrity/internal/ac;


# direct methods
.method public constructor <init>(Lcom/google/android/play/integrity/internal/ac;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/play/integrity/internal/r;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/q8p;->i:Lcom/google/android/play/integrity/internal/ac;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/q8p;->g:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/q8p;->h:Lcom/google/android/play/integrity/internal/r;

    invoke-direct {p0, p2}, Lcom/google/android/play/integrity/internal/r;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q8p;->i:Lcom/google/android/play/integrity/internal/ac;

    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ac;->h(Lcom/google/android/play/integrity/internal/ac;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/q8p;->i:Lcom/google/android/play/integrity/internal/ac;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/q8p;->g:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v1, v2}, Lcom/google/android/play/integrity/internal/ac;->o(Lcom/google/android/play/integrity/internal/ac;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/q8p;->i:Lcom/google/android/play/integrity/internal/ac;

    invoke-static {v1}, Lcom/google/android/play/integrity/internal/ac;->j(Lcom/google/android/play/integrity/internal/ac;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/q8p;->i:Lcom/google/android/play/integrity/internal/ac;

    invoke-static {v1}, Lcom/google/android/play/integrity/internal/ac;->f(Lcom/google/android/play/integrity/internal/ac;)Lcom/google/android/play/integrity/internal/q;

    move-result-object v1

    const-string v2, "Already connected to the service."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/play/integrity/internal/q;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/q8p;->i:Lcom/google/android/play/integrity/internal/ac;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q8p;->h:Lcom/google/android/play/integrity/internal/r;

    invoke-static {v1, p0}, Lcom/google/android/play/integrity/internal/ac;->q(Lcom/google/android/play/integrity/internal/ac;Lcom/google/android/play/integrity/internal/r;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
