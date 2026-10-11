.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;

.field public final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

.field public final synthetic zzd:J

.field public final synthetic zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzft;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzft;IJ[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzet;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzet;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzet;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzet;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzft;

    iput-wide p6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzet;->zzd:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzet;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzet;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzet;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzft;

    const/4 v3, 0x4

    iget-wide v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzet;->zzd:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzz(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzft;IJ)V

    return-void
.end method
