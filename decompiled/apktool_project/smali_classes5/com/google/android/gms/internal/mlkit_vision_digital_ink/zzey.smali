.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;

.field public final synthetic zzb:J

.field public final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;

.field public final synthetic zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

.field public final synthetic zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzft;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;JLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzft;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzey;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;

    iput-wide p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzey;->zzb:J

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzey;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzey;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    iput-object p6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzey;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzft;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzey;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;

    iget-wide v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzey;->zzb:J

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzey;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzey;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzey;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzft;

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzy(JLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzft;I)V

    return-void
.end method
