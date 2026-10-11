.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahg;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaey;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaey;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaez;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaez;-><init>()V

    :goto_0
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafa;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahg;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafa;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahg;

    return-object v0
.end method
