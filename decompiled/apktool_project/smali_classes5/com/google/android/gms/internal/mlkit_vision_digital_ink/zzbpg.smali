.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbph;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:I

.field public final synthetic zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpk;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbph;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpk;ILjava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbph;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpg;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpk;

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpg;->zzc:I

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpg;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbph;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpg;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpk;

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpg;->zzc:I

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpg;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbph;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpk;ILjava/lang/String;)V

    return-void
.end method
