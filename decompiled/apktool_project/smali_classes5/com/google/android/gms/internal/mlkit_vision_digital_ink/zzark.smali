.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/concurrent/atomic/AtomicReference;

.field private zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarj;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarj;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzari;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarj;

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarj;

    return-object p0
.end method

.method public static zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;-><init>()V

    return-object v0
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarj;

    return-void
.end method


# virtual methods
.method public final zzc(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzard;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzard;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;Ljava/util/concurrent/Callable;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;

    const/4 v0, 0x0

    invoke-direct {v5, p2, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarg;)V

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzare;

    invoke-direct {p2, p0, v5, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzare;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasw;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasw;

    move-result-object v2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasz;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;)V

    invoke-interface {v3, p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;->zzp(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarc;

    move-object v0, p2

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasw;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqz;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;->zzp(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzp(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method
