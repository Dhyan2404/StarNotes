.class final Lcom/google/android/gms/internal/measurement/zzmq;
.super Lcom/google/android/gms/internal/measurement/zzmr;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I[BII)I
    .locals 5

    :goto_0
    if-ge p3, p4, :cond_0

    .line 21
    aget-byte p0, p2, p3

    if-ltz p0, :cond_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    if-lt p3, p4, :cond_1

    return p0

    :cond_1
    :goto_1
    if-lt p3, p4, :cond_2

    return p0

    :cond_2
    add-int/lit8 p1, p3, 0x1

    .line 22
    aget-byte p3, p2, p3

    if-gez p3, :cond_d

    const/16 v0, -0x20

    const/4 v1, -0x1

    const/16 v2, -0x41

    if-ge p3, v0, :cond_5

    if-lt p1, p4, :cond_3

    return p3

    :cond_3
    const/16 v0, -0x3e

    if-lt p3, v0, :cond_4

    add-int/lit8 p3, p1, 0x1

    .line 23
    aget-byte p1, p2, p1

    if-le p1, v2, :cond_1

    :cond_4
    return v1

    :cond_5
    const/16 v3, -0x10

    if-ge p3, v3, :cond_a

    add-int/lit8 v3, p4, -0x1

    if-lt p1, v3, :cond_6

    .line 24
    invoke-static {p2, p1, p4}, Lcom/google/android/gms/internal/measurement/zzmp;->zza([BII)I

    move-result p0

    return p0

    :cond_6
    add-int/lit8 v3, p1, 0x1

    .line 25
    aget-byte p1, p2, p1

    if-gt p1, v2, :cond_9

    const/16 v4, -0x60

    if-ne p3, v0, :cond_7

    if-lt p1, v4, :cond_9

    :cond_7
    const/16 v0, -0x13

    if-ne p3, v0, :cond_8

    if-ge p1, v4, :cond_9

    :cond_8
    add-int/lit8 p1, v3, 0x1

    aget-byte p3, p2, v3

    if-le p3, v2, :cond_d

    :cond_9
    return v1

    :cond_a
    add-int/lit8 v0, p4, -0x2

    if-lt p1, v0, :cond_b

    .line 26
    invoke-static {p2, p1, p4}, Lcom/google/android/gms/internal/measurement/zzmp;->zza([BII)I

    move-result p0

    return p0

    :cond_b
    add-int/lit8 v0, p1, 0x1

    .line 27
    aget-byte p1, p2, p1

    if-gt p1, v2, :cond_c

    shl-int/lit8 p3, p3, 0x1c

    add-int/lit8 p1, p1, 0x70

    add-int/2addr p3, p1

    shr-int/lit8 p1, p3, 0x1e

    if-nez p1, :cond_c

    add-int/lit8 p1, v0, 0x1

    aget-byte p3, p2, v0

    if-gt p3, v2, :cond_c

    add-int/lit8 p3, p1, 0x1

    aget-byte p1, p2, p1

    if-le p1, v2, :cond_1

    :cond_c
    return v1

    :cond_d
    move p3, p1

    goto :goto_1
.end method

.method public final zza(Ljava/lang/String;[BII)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p4, p3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x80

    if-ge v0, p0, :cond_0

    add-int v2, v0, p3

    if-ge v2, p4, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ge v3, v1, :cond_0

    int-to-byte v1, v3

    .line 3
    aput-byte v1, p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ne v0, p0, :cond_1

    add-int/2addr p3, p0

    return p3

    :cond_1
    add-int/2addr p3, v0

    :goto_1
    if-ge v0, p0, :cond_b

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ge v2, v1, :cond_2

    if-ge p3, p4, :cond_2

    add-int/lit8 v3, p3, 0x1

    int-to-byte v2, v2

    .line 5
    aput-byte v2, p2, p3

    :goto_2
    move p3, v3

    goto/16 :goto_3

    :cond_2
    const/16 v3, 0x800

    if-ge v2, v3, :cond_3

    add-int/lit8 v3, p4, -0x2

    if-gt p3, v3, :cond_3

    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v4, v2, 0x6

    or-int/lit16 v4, v4, 0x3c0

    int-to-byte v4, v4

    .line 6
    aput-byte v4, p2, p3

    add-int/lit8 p3, v3, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v1

    int-to-byte v2, v2

    .line 7
    aput-byte v2, p2, v3

    goto :goto_3

    :cond_3
    const v3, 0xdfff

    const v4, 0xd800

    if-lt v2, v4, :cond_4

    if-ge v3, v2, :cond_5

    :cond_4
    add-int/lit8 v5, p4, -0x3

    if-gt p3, v5, :cond_5

    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v4, v2, 0xc

    or-int/lit16 v4, v4, 0x1e0

    int-to-byte v4, v4

    .line 8
    aput-byte v4, p2, p3

    add-int/lit8 p3, v3, 0x1

    ushr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v1

    int-to-byte v4, v4

    .line 9
    aput-byte v4, p2, v3

    add-int/lit8 v3, p3, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v1

    int-to-byte v2, v2

    .line 10
    aput-byte v2, p2, p3

    goto :goto_2

    :cond_5
    add-int/lit8 v5, p4, -0x4

    if-gt p3, v5, :cond_8

    add-int/lit8 v3, v0, 0x1

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_7

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 12
    invoke-static {v2, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    add-int/lit8 v2, p3, 0x1

    ushr-int/lit8 v4, v0, 0x12

    or-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    .line 13
    aput-byte v4, p2, p3

    add-int/lit8 p3, v2, 0x1

    ushr-int/lit8 v4, v0, 0xc

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v1

    int-to-byte v4, v4

    .line 14
    aput-byte v4, p2, v2

    add-int/lit8 v2, p3, 0x1

    ushr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v1

    int-to-byte v4, v4

    .line 15
    aput-byte v4, p2, p3

    add-int/lit8 p3, v2, 0x1

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 16
    aput-byte v0, p2, v2

    move v0, v3

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_6
    move v0, v3

    .line 17
    :cond_7
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzmt;

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/measurement/zzmt;-><init>(II)V

    throw p1

    :cond_8
    if-gt v4, v2, :cond_a

    if-gt v2, v3, :cond_a

    add-int/lit8 p2, v0, 0x1

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-eq p2, p4, :cond_9

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result p1

    if-nez p1, :cond_a

    .line 19
    :cond_9
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzmt;

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/measurement/zzmt;-><init>(II)V

    throw p1

    .line 20
    :cond_a
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed writing "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, " at index "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    return p3
.end method

.method public final zza([BII)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzkb;
        }
    .end annotation

    or-int p0, p2, p3

    .line 28
    array-length v0, p1

    sub-int/2addr v0, p2

    sub-int/2addr v0, p3

    or-int/2addr p0, v0

    if-ltz p0, :cond_c

    add-int p0, p2, p3

    .line 29
    new-array p3, p3, [C

    const/4 v6, 0x0

    move v0, v6

    :goto_0
    const/4 v7, 0x1

    if-ge p2, p0, :cond_1

    .line 30
    aget-byte v1, p1, p2

    if-ltz v1, :cond_0

    move v2, v7

    goto :goto_1

    :cond_0
    move v2, v6

    :goto_1
    if-eqz v2, :cond_1

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v2, v0, 0x1

    .line 31
    invoke-static {v1, p3, v0}, Lcom/google/android/gms/internal/measurement/zzmo;->zza(B[CI)V

    move v0, v2

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_2
    if-ge p2, p0, :cond_b

    add-int/lit8 v0, p2, 0x1

    .line 32
    aget-byte p2, p1, p2

    if-ltz p2, :cond_2

    move v1, v7

    goto :goto_3

    :cond_2
    move v1, v6

    :goto_3
    if-eqz v1, :cond_5

    add-int/lit8 v1, v5, 0x1

    .line 33
    invoke-static {p2, p3, v5}, Lcom/google/android/gms/internal/measurement/zzmo;->zza(B[CI)V

    :goto_4
    if-ge v0, p0, :cond_4

    .line 34
    aget-byte p2, p1, v0

    if-ltz p2, :cond_3

    move v2, v7

    goto :goto_5

    :cond_3
    move v2, v6

    :goto_5
    if-eqz v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v1, 0x1

    .line 35
    invoke-static {p2, p3, v1}, Lcom/google/android/gms/internal/measurement/zzmo;->zza(B[CI)V

    move v1, v2

    goto :goto_4

    :cond_4
    move p2, v0

    move v5, v1

    goto :goto_2

    :cond_5
    const/16 v1, -0x20

    if-ge p2, v1, :cond_7

    if-ge v0, p0, :cond_6

    add-int/lit8 v1, v0, 0x1

    .line 36
    aget-byte v0, p1, v0

    add-int/lit8 v2, v5, 0x1

    invoke-static {p2, v0, p3, v5}, Lcom/google/android/gms/internal/measurement/zzmo;->zza(BB[CI)V

    move p2, v1

    move v5, v2

    goto :goto_2

    .line 37
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zzd()Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object p0

    throw p0

    :cond_7
    const/16 v1, -0x10

    if-ge p2, v1, :cond_9

    add-int/lit8 v1, p0, -0x1

    if-ge v0, v1, :cond_8

    add-int/lit8 v1, v0, 0x1

    .line 38
    aget-byte v0, p1, v0

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    add-int/lit8 v3, v5, 0x1

    invoke-static {p2, v0, v1, p3, v5}, Lcom/google/android/gms/internal/measurement/zzmo;->zza(BBB[CI)V

    move p2, v2

    move v5, v3

    goto :goto_2

    .line 39
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zzd()Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object p0

    throw p0

    :cond_9
    add-int/lit8 v1, p0, -0x2

    if-ge v0, v1, :cond_a

    add-int/lit8 v1, v0, 0x1

    .line 40
    aget-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v3, p1, v1

    add-int/lit8 v8, v0, 0x1

    aget-byte v4, p1, v0

    add-int/lit8 v9, v5, 0x1

    move v0, p2

    move v1, v2

    move v2, v3

    move v3, v4

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzmo;->zza(BBBB[CI)V

    add-int/2addr v9, v7

    move p2, v8

    move v5, v9

    goto :goto_2

    .line 41
    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zzd()Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object p0

    throw p0

    .line 42
    :cond_b
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p3, v6, v5}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    .line 43
    :cond_c
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length p1, p1

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "buffer length=%d, index=%d, size=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
