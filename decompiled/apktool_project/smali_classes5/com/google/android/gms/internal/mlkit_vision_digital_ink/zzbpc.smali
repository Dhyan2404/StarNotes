.class public abstract Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpb;
    .locals 1

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbox;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbox;-><init>()V

    const-string v0, "digital-ink-recognition"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbox;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpb;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpb;->zza(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpb;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpb;->zzb(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpb;

    return-object p0
.end method


# virtual methods
.method public abstract zza()I
.end method

.method public abstract zzb()Ljava/lang/String;
.end method

.method public abstract zzc()Z
.end method
