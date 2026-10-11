.class abstract Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzair;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field zzb:I

.field zzc:I

.field zzd:I

.field final synthetic zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzain;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzair;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzair;->zzb:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;->zze()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzair;->zzc:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzair;->zzd:I

    return-void
.end method

.method private final zzb()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzair;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;)I

    move-result v0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzair;->zzb:I

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzair;->zzc:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzair;->zzb()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzair;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzair;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzair;->zzd:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzair;->zza(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzair;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzair;->zzc:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;->zzf(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzair;->zzc:I

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzair;->zzb()V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzair;->zzd:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzk(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzair;->zzb:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzair;->zzb:I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzair;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzair;->zzd:I

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;->zzb:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzair;->zzc:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzair;->zzc:I

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzair;->zzd:I

    return-void
.end method

.method public abstract zza(I)Ljava/lang/Object;
.end method
