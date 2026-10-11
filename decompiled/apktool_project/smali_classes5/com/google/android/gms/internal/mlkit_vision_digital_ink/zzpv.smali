.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;

.field public final synthetic zzb:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpv;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpv;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpv;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpv;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzd(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;

    move-result-object p0

    return-object p0
.end method
