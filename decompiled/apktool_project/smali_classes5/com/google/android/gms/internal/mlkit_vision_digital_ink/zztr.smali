.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztk;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztk;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztr;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztk;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztr;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztr;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztk;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzse;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzse;->zza()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztr;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztk;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    move-result-object p0

    return-object p0
.end method
