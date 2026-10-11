.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjr;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;
.source "SourceFile"


# instance fields
.field final synthetic zza:Z

.field final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;

.field final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;

.field final synthetic zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjs;

.field private zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjs;ZZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjr;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjs;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjr;->zza:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjr;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjr;->zza:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjr;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjr;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjs;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjr;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjr;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzp()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method
