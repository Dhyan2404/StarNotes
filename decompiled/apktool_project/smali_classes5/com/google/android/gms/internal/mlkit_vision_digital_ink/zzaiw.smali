.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field zza:I

.field zzb:I

.field zzc:I

.field final synthetic zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiw;->zza:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzb()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiw;->zzb:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiw;->zzc:I

    return-void
.end method

.method private final zza()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;)I

    move-result v0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiw;->zza:I

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

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiw;->zzb:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiw;->zza()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiw;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiw;->zzb:I

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiw;->zzc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;

    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zza:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zzc(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiw;->zzb:I

    return-object v2

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiw;->zza()V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiw;->zzc:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzk(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiw;->zza:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiw;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiw;->zzc:I

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->zza:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaix;->remove(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiw;->zzb:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiw;->zzb:I

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiw;->zzc:I

    return-void
.end method
