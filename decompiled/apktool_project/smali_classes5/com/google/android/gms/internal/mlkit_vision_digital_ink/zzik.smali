.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzik;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzll;

.field public final synthetic zzb:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzll;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzik;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzll;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzik;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzik;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzik;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzll;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzik;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzik;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {v0, v1, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzll;->zzC(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;Ljava/lang/Exception;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
