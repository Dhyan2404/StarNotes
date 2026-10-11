.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzago;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafl;
.source "SourceFile"


# instance fields
.field private final zza:[C

.field private final zzb:Z

.field private final zzc:J


# direct methods
.method private constructor <init>([CJZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafl;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzago;->zza:[C

    iput-wide p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzago;->zzc:J

    iput-boolean p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzago;->zzb:Z

    return-void
.end method

.method public static zzo(I)I
    .locals 1

    const v0, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr p0, v0

    const/16 v0, 0xf

    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    const v0, 0x1b873593

    mul-int/2addr p0, v0

    return p0
.end method

.method public static zzp(Ljava/util/BitSet;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;
    .locals 9

    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v0, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    :goto_0
    add-int/2addr v2, v2

    int-to-double v3, v2

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v7

    int-to-double v7, v0

    cmpg-double v3, v3, v7

    if-gez v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    new-array v3, v0, [C

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const-wide/16 v4, 0x0

    :goto_2
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    add-int/2addr v2, v0

    const-wide/16 v7, 0x1

    shl-long/2addr v7, v1

    or-long/2addr v7, v4

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzago;->zzo(I)I

    move-result v4

    :goto_3
    and-int/2addr v4, v2

    aget-char v5, v3, v4

    if-nez v5, :cond_2

    int-to-char v2, v1

    aput-char v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    move-wide v4, v7

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzago;

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzago;-><init>([CJZLjava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final zzb(Ljava/util/BitSet;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzago;->zzb:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzago;->zza:[C

    array-length v0, p0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-char v2, p0, v1

    if-eqz v2, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final zzc(C)Z
    .locals 5

    if-nez p1, :cond_0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzago;->zzb:Z

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzago;->zzc:J

    shr-long/2addr v0, p1

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzago;->zza:[C

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzago;->zzo(I)I

    move-result v2

    and-int/2addr v2, v0

    move v3, v2

    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzago;->zza:[C

    aget-char v4, v4, v3

    if-nez v4, :cond_2

    return v1

    :cond_2
    if-ne v4, p1, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v0

    if-ne v3, v2, :cond_1

    :cond_4
    return v1
.end method
