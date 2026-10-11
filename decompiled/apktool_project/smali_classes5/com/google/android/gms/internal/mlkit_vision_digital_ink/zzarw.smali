.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarw;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzi;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzi;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Z

    :cond_0
    return-void
.end method

.method public final zza()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delegate=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    return-void
.end method
