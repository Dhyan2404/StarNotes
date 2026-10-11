.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa<",
            "TV;>;"
        }
    .end annotation
.end field

.field final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzf;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzf;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzf;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;

    invoke-virtual {v1, v2, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzf;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Z)V

    :cond_1
    return-void
.end method
