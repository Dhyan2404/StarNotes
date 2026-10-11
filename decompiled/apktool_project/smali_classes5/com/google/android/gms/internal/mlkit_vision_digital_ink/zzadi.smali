.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzade;

.field private final zzb:Ljava/util/concurrent/atomic/AtomicLong;

.field private final zzc:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzd:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;Ljava/util/concurrent/Executor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const/high16 v1, -0x80000000

    invoke-static {v1, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zzi(II)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzc(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zze:Ljava/util/concurrent/Executor;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasw;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasw;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzade;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzade;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzade;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzb()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzp(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzade;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzade;

    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;)Z
    .locals 6

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-int v2, v0

    const/16 v3, 0x20

    ushr-long v3, v0, v3

    const/high16 v5, -0x80000000

    if-eq v2, v5, :cond_3

    long-to-int v3, v3

    const v4, -0x7fffffff

    if-ne v2, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zzi(II)J

    move-result-wide v2

    invoke-virtual {v5, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return v4

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refcount is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method private static zzi(II)J
    .locals 4

    int-to-long v0, p0

    int-to-long p0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private final zzj(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    if-le v0, p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadh;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadh;-><init>(I)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadh;

    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadh;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadh;)I

    move-result v3

    if-gt v3, p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzada;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    ushr-long v1, v3, v2

    long-to-int v1, v1

    if-le v1, p1, :cond_4

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->cancel(Z)Z

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzada;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v0

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzade;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzade;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzade;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzade;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzade;)Ljava/util/concurrent/Executor;

    move-result-object p1

    if-eqz v1, :cond_6

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadh;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Z

    goto :goto_2

    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasw;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadh;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Z

    :goto_2
    return-object v0
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    long-to-int v4, v0

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    long-to-int v2, v2

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zzi(II)J

    move-result-wide v3

    invoke-virtual {v5, v0, v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasw;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadc;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;I)V

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadd;

    invoke-direct {v3, p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;I)V

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zze:Ljava/util/concurrent/Executor;

    const-class v5, Ljava/lang/Throwable;

    invoke-static {v1, v5, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasw;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Z

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadg;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadg;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadf;)V

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadb;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadb;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasw;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadg;)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzb()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzp(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v1

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasw;

    return-object p0
.end method

.method public final synthetic zzc(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zzj(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzd(ILjava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zzj(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasw;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadg;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzp(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasw;->zzs(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasw;

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadg;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Z

    return-void

    :catchall_0
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadg;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Z

    return-void
.end method

.method public final zzh()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->isDone()Z

    move-result p0

    return p0
.end method
