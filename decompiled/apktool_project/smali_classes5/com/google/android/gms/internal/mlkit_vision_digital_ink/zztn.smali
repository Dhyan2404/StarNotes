.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztk;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

.field private final zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

.field private final zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztk;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztn;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztk;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztn;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztn;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztn;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    iput-object p6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztn;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztn;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztn;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztk;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztn;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzse;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzse;->zza()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztn;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    invoke-interface {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;->zzb()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztn;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    invoke-interface {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;->zzb()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztn;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpu;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpu;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpt;

    move-result-object v5

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztn;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztk;->zzd(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpt;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    move-result-object p0

    return-object p0
.end method
