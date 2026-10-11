.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwz;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvv;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwy;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;)V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzag()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzB()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;I)V

    return-object p0
.end method

.method public final zzb(J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzag()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzB()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;J)V

    return-object p0
.end method
