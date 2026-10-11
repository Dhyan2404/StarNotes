.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzw;

.field private final zzb:J

.field private zzc:J

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzw;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwm;JLjava/util/concurrent/TimeUnit;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzx;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzw;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzx;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwm;

    const-wide/16 p1, 0xa

    invoke-virtual {p5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzx;->zzb:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzx;->zzc:J

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzx;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzw;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzw;->zzc()V

    return-void
.end method

.method public final zza([BII)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzx;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzw;

    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzw;->zzb(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzx;->zzc:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzx;->zzb:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzx;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzw;->zzc()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzx;->zzc:J

    :cond_0
    return-void
.end method
