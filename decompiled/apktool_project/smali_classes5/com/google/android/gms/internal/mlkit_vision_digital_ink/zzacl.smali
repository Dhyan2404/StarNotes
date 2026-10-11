.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacn;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

.field public final synthetic zzc:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacn;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacl;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacn;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacl;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacl;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacn;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacl;->zzc:Ljava/util/concurrent/Executor;

    check-cast p1, Ljava/lang/Void;

    iget-object p1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacn;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacr;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacr;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacq;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
