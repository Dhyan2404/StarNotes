.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static zza:Ljava/lang/Thread;

.field private static volatile zzb:Landroid/os/Handler;


# direct methods
.method public static zza()Landroid/os/Handler;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxz;->zzb:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxz;->zzb:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxz;->zzb:Landroid/os/Handler;

    return-object v0
.end method

.method public static zzb(Ljava/lang/Thread;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxz;->zza:Ljava/lang/Thread;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxz;->zza:Ljava/lang/Thread;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxz;->zza:Ljava/lang/Thread;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
