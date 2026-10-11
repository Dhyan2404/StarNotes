.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Z

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;


# direct methods
.method public synthetic constructor <init>(ZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaru;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarv;->zza:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarv;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqy;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarv;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarv;->zza:Z

    invoke-direct {v0, v1, p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajg;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqy;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarv;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarv;->zza:Z

    invoke-direct {v0, v1, p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajg;ZLjava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;)V

    return-object v0
.end method
