.class abstract Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

.field zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

.field zzc:I

.field final synthetic zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkb;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkb;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzc:I

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkb;->zzc:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkb;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkb;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkb;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkb;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;

    iget v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkb;->zzc:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkb;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkb;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;

    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    if-eq v0, v2, :cond_1

    iget v1, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzc:I

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkb;->zzc:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkb;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
