.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzoj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;

.field public final synthetic zzb:Z

.field public final synthetic zzc:Z

.field public final synthetic zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;ZZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzoj;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzoj;->zzb:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzoj;->zzc:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzoj;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzoj;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzoj;->zzb:Z

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzoj;->zzc:Z

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzoj;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;->zza(ZZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;

    move-result-object p0

    return-object p0
.end method
