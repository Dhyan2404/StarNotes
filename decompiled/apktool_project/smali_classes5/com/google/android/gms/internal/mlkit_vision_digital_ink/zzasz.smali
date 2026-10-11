.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasz;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarl;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# instance fields
.field private volatile zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzash;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarl;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasx;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzash;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarl;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasy;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasz;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzash;

    return-void
.end method

.method public static zzd(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasz;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasz;

    invoke-static {p0, p1}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasz;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzash;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzash;->run()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzash;

    return-void
.end method

.method public final zza()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzash;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "task=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zza()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzb()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzash;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzash;->zzh()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzash;

    return-void
.end method
