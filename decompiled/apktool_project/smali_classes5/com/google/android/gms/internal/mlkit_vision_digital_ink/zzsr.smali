.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsq;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsr;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsq;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsr;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsq;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzse;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzse;->zza()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsq;->zzd(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcat;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
