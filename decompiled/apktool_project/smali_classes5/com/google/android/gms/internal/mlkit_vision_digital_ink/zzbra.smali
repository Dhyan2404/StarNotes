.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbra;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:J

.field private static final zzb:J

.field private static final zzc:J


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbra;->zza:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbra;->zzb:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbra;->zzc:J

    return-void
.end method

.method public static bridge synthetic zza()J
    .locals 2

    sget-wide v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbra;->zza:J

    return-wide v0
.end method

.method public static bridge synthetic zzb()J
    .locals 2

    sget-wide v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbra;->zzb:J

    return-wide v0
.end method

.method public static bridge synthetic zzc()J
    .locals 2

    sget-wide v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbra;->zzc:J

    return-wide v0
.end method

.method public static zzd(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;
    .locals 8

    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqz;

    move-object v0, v7

    move-object v1, p4

    move-object v2, p1

    move-object v3, p0

    move-object v4, p5

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Ljava/util/concurrent/Executor;Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)V

    return-object v7
.end method
