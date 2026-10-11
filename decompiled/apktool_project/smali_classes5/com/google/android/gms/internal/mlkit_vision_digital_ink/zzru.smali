.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzru;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzru;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzru;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzru;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzru;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzru;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrt;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzru;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzse;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzse;->zza()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzru;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgs;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzru;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzru;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzru;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Ljava/util/concurrent/Executor;

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrt;

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrt;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgs;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Ljava/util/concurrent/Executor;[B)V

    return-object p0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzru;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrt;

    move-result-object p0

    return-object p0
.end method
