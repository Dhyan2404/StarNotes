.class Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;
.source "SourceFile"


# instance fields
.field private volatile zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;

.field final zzc:Ljava/lang/Character;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;Ljava/lang/Character;)V
    .locals 2
    .param p2    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;->zze(C)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    const-string p1, "Padding character %s was already in alphabet"

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzh(ZLjava/lang/String;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;->zzc:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1
    .param p3    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;Ljava/lang/Character;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;

    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;->zzc:Ljava/lang/Character;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;->zzc:Ljava/lang/Character;

    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;->hashCode()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;->zzc:Ljava/lang/Character;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseEncoding."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;

    iget v1, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;->zza:I

    const/16 v2, 0x8

    rem-int/2addr v2, v1

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;->zzc:Ljava/lang/Character;

    if-nez v1, :cond_0

    const-string p0, ".omitPadding()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, ".withPadChar(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;->zzc:Ljava/lang/Character;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\')"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public zza([BLjava/lang/CharSequence;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaox;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;->zze(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;->zzd(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    const-wide/16 v3, 0x0

    move v5, v0

    move v6, v5

    :goto_1
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;

    iget v8, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;->zzb:I

    if-ge v5, v8, :cond_1

    iget v7, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;->zza:I

    shl-long/2addr v3, v7

    add-int v7, v1, v5

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v7, v8, :cond_0

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;

    add-int/lit8 v8, v6, 0x1

    add-int/2addr v6, v1

    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;->zzb(C)I

    move-result v6

    int-to-long v6, v6

    or-long/2addr v3, v6

    move v6, v8

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iget v5, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;->zzc:I

    mul-int/lit8 v8, v5, 0x8

    iget v7, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;->zza:I

    mul-int/2addr v6, v7

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x8

    :goto_2
    sub-int v7, v8, v6

    if-lt v5, v7, :cond_2

    add-int/lit8 v7, v2, 0x1

    ushr-long v9, v3, v5

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, p1, v2

    add-int/lit8 v5, v5, -0x8

    move v2, v7

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;

    iget v3, v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;->zzb:I

    add-int/2addr v1, v3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaox;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid input length "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaox;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;Ljava/lang/Character;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;
    .locals 0
    .param p2    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;Ljava/lang/Character;)V

    return-object p0
.end method

.method public final zzc(I)I
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;->zza:I

    int-to-long v0, p0

    int-to-long p0, p1

    mul-long/2addr v0, p0

    const-wide/16 p0, 0x7

    add-long/2addr v0, p0

    const-wide/16 p0, 0x8

    div-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;

    if-ne v0, v1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;->zzc:Ljava/lang/Character;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaou;Ljava/lang/Character;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;

    :cond_1
    return-object v0
.end method

.method public final zze(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;->zzc:Ljava/lang/Character;

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    :cond_1
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_2

    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_1

    :cond_2
    add-int/lit8 p0, p0, 0x1

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
