.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzjx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;


# instance fields
.field public final synthetic zza:Z

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuu;

.field public final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;


# direct methods
.method public synthetic constructor <init>(ZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzjx;->zza:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzjx;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuu;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzjx;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzjx;->zza:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzjx;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuu;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzjx;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    check-cast p1, Ljava/lang/Void;

    if-nez v0, :cond_0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuu;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)V

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlk;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlk;

    return-object p0
.end method
