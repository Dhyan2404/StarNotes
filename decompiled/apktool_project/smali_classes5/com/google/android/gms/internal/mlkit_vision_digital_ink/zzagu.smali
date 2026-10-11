.class abstract Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagu;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafc;
.source "SourceFile"


# instance fields
.field final zzb:Ljava/lang/CharSequence;

.field final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;

.field final zzd:Z

.field zze:I

.field zzf:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafc;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagu;->zze:I

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagu;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagu;->zzd:Z

    const p1, 0x7fffffff

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagu;->zzf:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagu;->zzb:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 5
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagu;->zze:I

    :cond_0
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagu;->zze:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagu;->zzd(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagu;->zzb:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagu;->zze:I

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagu;->zzc(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagu;->zze:I

    :goto_1
    if-ne v3, v0, :cond_2

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagu;->zze:I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagu;->zzb:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v3, v1, :cond_0

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagu;->zze:I

    goto :goto_0

    :cond_2
    if-ge v0, v1, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagu;->zzb:Ljava/lang/CharSequence;

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    :cond_3
    if-ge v0, v1, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagu;->zzb:Ljava/lang/CharSequence;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    :cond_4
    iget-boolean v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagu;->zzd:Z

    if-eqz v3, :cond_5

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagu;->zze:I

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagu;->zzf:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagu;->zzb:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagu;->zze:I

    if-le v1, v0, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagu;->zzb:Ljava/lang/CharSequence;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    goto :goto_2

    :cond_6
    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagu;->zzf:I

    :cond_7
    :goto_2
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagu;->zzb:Ljava/lang/CharSequence;

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafc;->zzb()Ljava/lang/Object;

    const/4 p0, 0x0

    :goto_3
    return-object p0
.end method

.method public abstract zzc(I)I
.end method

.method public abstract zzd(I)I
.end method
