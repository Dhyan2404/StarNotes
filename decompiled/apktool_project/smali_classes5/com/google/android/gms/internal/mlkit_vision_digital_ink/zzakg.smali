.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakg;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahi;
.source "SourceFile"


# instance fields
.field final synthetic zza:Ljava/util/Iterator;

.field final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagh;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakg;->zza:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakg;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagh;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahi;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakg;->zza:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakg;->zza:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakg;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagh;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagh;->zza(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahi;->zzb()Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method
