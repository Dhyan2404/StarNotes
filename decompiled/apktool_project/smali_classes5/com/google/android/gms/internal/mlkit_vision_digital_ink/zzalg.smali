.class abstract Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalg;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalt;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalt;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalg;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzale;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzald;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzald;

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzald;->zza()I

    move-result v0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalg;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzale;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzald;->zzb()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzale;->zza(Ljava/lang/Object;)I

    move-result p0

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzald;->zza()I

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzald;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzald;

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzald;->zzb()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzald;->zza()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalg;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzale;

    move-result-object p0

    invoke-interface {p0, v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzale;->zzi(Ljava/lang/Object;II)Z

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public abstract zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzale;
.end method
