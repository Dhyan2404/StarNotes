.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzach;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

.field public final synthetic zzc:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzach;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzach;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzach;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzach;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzach;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzach;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
