.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztd;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztd;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztd;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztd;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztd;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgs;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztd;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Ljava/util/concurrent/Executor;

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvh;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagm;->zzc()Ljava/security/SecureRandom;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvh;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgs;Ljava/util/concurrent/Executor;Ljava/util/Random;[B)V

    return-object p0
.end method
