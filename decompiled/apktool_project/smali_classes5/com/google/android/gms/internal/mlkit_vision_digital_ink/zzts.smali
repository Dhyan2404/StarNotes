.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzts;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzts;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzts;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzts;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzse;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzse;->zza()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzts;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyr;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyq;

    move-result-object v0

    const-string v1, "mdd_pds_config"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyq;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyq;

    const-string v1, "DestSharedFiles"

    const-string v2, "pb"

    invoke-static {v1, v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvm;->zzc(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyq;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyq;->zza()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcat;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
