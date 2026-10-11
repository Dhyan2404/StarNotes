.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzux;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzux;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuy;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuy;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzux;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuy;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;->zzt()Z

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzux;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzux;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
