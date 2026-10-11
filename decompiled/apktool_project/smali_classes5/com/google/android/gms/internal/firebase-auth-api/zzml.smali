.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzml;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:[I

.field private static final zzb:[I

.field private static final zzc:[I

.field private static final zzd:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb:[I

    const v0, 0x3ffffff

    const v1, 0x1ffffff

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzc:[I

    const/16 v0, 0x1a

    const/16 v1, 0x19

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzd:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x6
        0x9
        0xc
        0x10
        0x13
        0x16
        0x19
        0x1c
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2
        0x3
        0x5
        0x6
        0x0
        0x1
        0x3
        0x4
        0x6
    .end array-data
.end method

.method public static zza([J)V
    .locals 14

    const/16 v0, 0xa

    const-wide/16 v1, 0x0

    .line 52
    aput-wide v1, p0, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x1a

    const-wide/32 v6, 0x4000000

    if-ge v4, v0, :cond_0

    .line 53
    aget-wide v8, p0, v4

    div-long v6, v8, v6

    shl-long v10, v6, v5

    sub-long/2addr v8, v10

    .line 54
    aput-wide v8, p0, v4

    add-int/lit8 v5, v4, 0x1

    .line 55
    aget-wide v8, p0, v5

    add-long/2addr v8, v6

    aput-wide v8, p0, v5

    const-wide/32 v6, 0x2000000

    .line 56
    div-long v6, v8, v6

    const/16 v10, 0x19

    shl-long v10, v6, v10

    sub-long/2addr v8, v10

    .line 57
    aput-wide v8, p0, v5

    add-int/lit8 v4, v4, 0x2

    .line 58
    aget-wide v8, p0, v4

    add-long/2addr v8, v6

    aput-wide v8, p0, v4

    goto :goto_0

    .line 59
    :cond_0
    aget-wide v8, p0, v3

    aget-wide v10, p0, v0

    const/4 v4, 0x4

    shl-long v12, v10, v4

    add-long/2addr v8, v12

    aput-wide v8, p0, v3

    const/4 v4, 0x1

    shl-long v12, v10, v4

    add-long/2addr v8, v12

    .line 60
    aput-wide v8, p0, v3

    add-long/2addr v8, v10

    .line 61
    aput-wide v8, p0, v3

    .line 62
    aput-wide v1, p0, v0

    .line 63
    div-long v0, v8, v6

    shl-long v5, v0, v5

    sub-long/2addr v8, v5

    .line 64
    aput-wide v8, p0, v3

    .line 65
    aget-wide v2, p0, v4

    add-long/2addr v2, v0

    aput-wide v2, p0, v4

    return-void
.end method

.method public static zza([J[J)V
    .locals 11

    const/16 v0, 0xa

    new-array v1, v0, [J

    new-array v2, v0, [J

    new-array v3, v0, [J

    new-array v4, v0, [J

    new-array v5, v0, [J

    new-array v6, v0, [J

    new-array v7, v0, [J

    new-array v8, v0, [J

    new-array v9, v0, [J

    new-array v10, v0, [J

    .line 1
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    .line 2
    invoke-static {v10, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    .line 3
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    .line 4
    invoke-static {v2, v9, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza([J[J[J)V

    .line 5
    invoke-static {v3, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza([J[J[J)V

    .line 6
    invoke-static {v9, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    .line 7
    invoke-static {v4, v9, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza([J[J[J)V

    .line 8
    invoke-static {v9, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    .line 9
    invoke-static {v10, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    .line 10
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    .line 11
    invoke-static {v10, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    .line 12
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    .line 13
    invoke-static {v5, v9, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza([J[J[J)V

    .line 14
    invoke-static {v9, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    .line 15
    invoke-static {v10, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    const/4 p1, 0x2

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 16
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    .line 17
    invoke-static {v10, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 18
    :cond_0
    invoke-static {v6, v10, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza([J[J[J)V

    .line 19
    invoke-static {v9, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    .line 20
    invoke-static {v10, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    move v1, p1

    :goto_1
    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    .line 21
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    .line 22
    invoke-static {v10, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 23
    :cond_1
    invoke-static {v9, v10, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza([J[J[J)V

    .line 24
    invoke-static {v10, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    .line 25
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    move v1, p1

    :goto_2
    if-ge v1, v0, :cond_2

    .line 26
    invoke-static {v10, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    .line 27
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 28
    :cond_2
    invoke-static {v7, v9, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza([J[J[J)V

    .line 29
    invoke-static {v9, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    .line 30
    invoke-static {v10, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    move v0, p1

    :goto_3
    const/16 v1, 0x32

    if-ge v0, v1, :cond_3

    .line 31
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    .line 32
    invoke-static {v10, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 33
    :cond_3
    invoke-static {v8, v10, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza([J[J[J)V

    .line 34
    invoke-static {v10, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    .line 35
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    move v0, p1

    :goto_4
    const/16 v2, 0x64

    if-ge v0, v2, :cond_4

    .line 36
    invoke-static {v10, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    .line 37
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    .line 38
    :cond_4
    invoke-static {v10, v9, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza([J[J[J)V

    .line 39
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    .line 40
    invoke-static {v10, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    :goto_5
    if-ge p1, v1, :cond_5

    .line 41
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    .line 42
    invoke-static {v10, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    add-int/lit8 p1, p1, 0x2

    goto :goto_5

    .line 43
    :cond_5
    invoke-static {v9, v10, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza([J[J[J)V

    .line 44
    invoke-static {v10, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    .line 45
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    .line 46
    invoke-static {v10, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    .line 47
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    .line 48
    invoke-static {v10, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J)V

    .line 49
    invoke-static {p0, v10, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza([J[J[J)V

    return-void
.end method

.method public static zza([J[JJ)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 66
    aget-wide v1, p1, v0

    mul-long/2addr v1, p2

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static zza([J[J[J)V
    .locals 1

    const/16 v0, 0x13

    new-array v0, v0, [J

    .line 50
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J[J[J)V

    .line 51
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zze([J[J)V

    return-void
.end method

.method public static zza([B)[J
    .locals 9

    const/16 v0, 0xa

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 67
    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza:[I

    aget v3, v3, v2

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v3, v3, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v6, v3

    const/16 v3, 0x18

    shl-long/2addr v6, v3

    or-long v3, v4, v6

    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb:[I

    aget v5, v5, v2

    shr-long/2addr v3, v5

    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzc:[I

    and-int/lit8 v6, v2, 0x1

    aget v5, v5, v6

    int-to-long v5, v5

    and-long/2addr v3, v5

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static zzb([J)V
    .locals 9

    const/16 v0, 0x8

    .line 20
    aget-wide v1, p0, v0

    const/16 v3, 0x12

    aget-wide v3, p0, v3

    const/4 v5, 0x4

    shl-long v6, v3, v5

    add-long/2addr v1, v6

    aput-wide v1, p0, v0

    const/4 v6, 0x1

    shl-long v7, v3, v6

    add-long/2addr v1, v7

    .line 21
    aput-wide v1, p0, v0

    add-long/2addr v1, v3

    .line 22
    aput-wide v1, p0, v0

    const/4 v0, 0x7

    .line 23
    aget-wide v1, p0, v0

    const/16 v3, 0x11

    aget-wide v3, p0, v3

    shl-long v7, v3, v5

    add-long/2addr v1, v7

    aput-wide v1, p0, v0

    shl-long v7, v3, v6

    add-long/2addr v1, v7

    .line 24
    aput-wide v1, p0, v0

    add-long/2addr v1, v3

    .line 25
    aput-wide v1, p0, v0

    const/4 v0, 0x6

    .line 26
    aget-wide v1, p0, v0

    const/16 v3, 0x10

    aget-wide v3, p0, v3

    shl-long v7, v3, v5

    add-long/2addr v1, v7

    aput-wide v1, p0, v0

    shl-long v7, v3, v6

    add-long/2addr v1, v7

    .line 27
    aput-wide v1, p0, v0

    add-long/2addr v1, v3

    .line 28
    aput-wide v1, p0, v0

    const/4 v0, 0x5

    .line 29
    aget-wide v1, p0, v0

    const/16 v3, 0xf

    aget-wide v3, p0, v3

    shl-long v7, v3, v5

    add-long/2addr v1, v7

    aput-wide v1, p0, v0

    shl-long v7, v3, v6

    add-long/2addr v1, v7

    .line 30
    aput-wide v1, p0, v0

    add-long/2addr v1, v3

    .line 31
    aput-wide v1, p0, v0

    .line 32
    aget-wide v0, p0, v5

    const/16 v2, 0xe

    aget-wide v2, p0, v2

    shl-long v7, v2, v5

    add-long/2addr v0, v7

    aput-wide v0, p0, v5

    shl-long v7, v2, v6

    add-long/2addr v0, v7

    .line 33
    aput-wide v0, p0, v5

    add-long/2addr v0, v2

    .line 34
    aput-wide v0, p0, v5

    const/4 v0, 0x3

    .line 35
    aget-wide v1, p0, v0

    const/16 v3, 0xd

    aget-wide v3, p0, v3

    shl-long v7, v3, v5

    add-long/2addr v1, v7

    aput-wide v1, p0, v0

    shl-long v7, v3, v6

    add-long/2addr v1, v7

    .line 36
    aput-wide v1, p0, v0

    add-long/2addr v1, v3

    .line 37
    aput-wide v1, p0, v0

    const/4 v0, 0x2

    .line 38
    aget-wide v1, p0, v0

    const/16 v3, 0xc

    aget-wide v3, p0, v3

    shl-long v7, v3, v5

    add-long/2addr v1, v7

    aput-wide v1, p0, v0

    shl-long v7, v3, v6

    add-long/2addr v1, v7

    .line 39
    aput-wide v1, p0, v0

    add-long/2addr v1, v3

    .line 40
    aput-wide v1, p0, v0

    .line 41
    aget-wide v0, p0, v6

    const/16 v2, 0xb

    aget-wide v2, p0, v2

    shl-long v7, v2, v5

    add-long/2addr v0, v7

    aput-wide v0, p0, v6

    shl-long v7, v2, v6

    add-long/2addr v0, v7

    .line 42
    aput-wide v0, p0, v6

    add-long/2addr v0, v2

    .line 43
    aput-wide v0, p0, v6

    const/4 v0, 0x0

    .line 44
    aget-wide v1, p0, v0

    const/16 v3, 0xa

    aget-wide v3, p0, v3

    shl-long v7, v3, v5

    add-long/2addr v1, v7

    aput-wide v1, p0, v0

    shl-long v5, v3, v6

    add-long/2addr v1, v5

    .line 45
    aput-wide v1, p0, v0

    add-long/2addr v1, v3

    .line 46
    aput-wide v1, p0, v0

    return-void
.end method

.method public static zzb([J[J)V
    .locals 31

    const/16 v0, 0x13

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 47
    aget-wide v2, p1, v1

    mul-long/2addr v2, v2

    aput-wide v2, v0, v1

    .line 48
    aget-wide v1, p1, v1

    const-wide/16 v3, 0x2

    mul-long v5, v1, v3

    const/4 v7, 0x1

    aget-wide v8, p1, v7

    mul-long/2addr v5, v8

    aput-wide v5, v0, v7

    .line 49
    aget-wide v5, p1, v7

    mul-long v7, v5, v5

    const/4 v9, 0x2

    aget-wide v10, p1, v9

    mul-long/2addr v10, v1

    add-long/2addr v7, v10

    mul-long/2addr v7, v3

    aput-wide v7, v0, v9

    .line 50
    aget-wide v7, p1, v9

    mul-long v9, v5, v7

    const/4 v11, 0x3

    aget-wide v12, p1, v11

    mul-long/2addr v12, v1

    add-long/2addr v9, v12

    mul-long/2addr v9, v3

    aput-wide v9, v0, v11

    mul-long v9, v7, v7

    const-wide/16 v12, 0x4

    mul-long v14, v5, v12

    .line 51
    aget-wide v16, p1, v11

    mul-long v14, v14, v16

    add-long/2addr v9, v14

    mul-long v14, v1, v3

    const/4 v11, 0x4

    aget-wide v18, p1, v11

    mul-long v14, v14, v18

    add-long/2addr v9, v14

    aput-wide v9, v0, v11

    mul-long v9, v7, v16

    .line 52
    aget-wide v14, p1, v11

    mul-long v18, v5, v14

    add-long v9, v9, v18

    const/4 v11, 0x5

    aget-wide v18, p1, v11

    mul-long v18, v18, v1

    add-long v9, v9, v18

    mul-long/2addr v9, v3

    aput-wide v9, v0, v11

    mul-long v9, v16, v16

    mul-long v18, v7, v14

    add-long v9, v9, v18

    const/16 v18, 0x6

    .line 53
    aget-wide v19, p1, v18

    mul-long v19, v19, v1

    add-long v9, v9, v19

    mul-long v19, v5, v3

    aget-wide v21, p1, v11

    mul-long v19, v19, v21

    add-long v9, v9, v19

    mul-long/2addr v9, v3

    aput-wide v9, v0, v18

    mul-long v9, v16, v14

    mul-long v19, v7, v21

    add-long v9, v9, v19

    .line 54
    aget-wide v18, p1, v18

    mul-long v23, v5, v18

    add-long v9, v9, v23

    const/4 v11, 0x7

    aget-wide v23, p1, v11

    mul-long v23, v23, v1

    add-long v9, v9, v23

    mul-long/2addr v9, v3

    aput-wide v9, v0, v11

    mul-long v9, v14, v14

    mul-long v23, v7, v18

    const/16 v20, 0x8

    .line 55
    aget-wide v25, p1, v20

    mul-long v25, v25, v1

    add-long v23, v23, v25

    aget-wide v25, p1, v11

    mul-long v27, v5, v25

    mul-long v29, v16, v21

    add-long v27, v27, v29

    mul-long v27, v27, v3

    add-long v23, v23, v27

    mul-long v23, v23, v3

    add-long v9, v9, v23

    aput-wide v9, v0, v20

    mul-long v9, v14, v21

    mul-long v23, v16, v18

    add-long v9, v9, v23

    mul-long v23, v7, v25

    add-long v9, v9, v23

    .line 56
    aget-wide v23, p1, v20

    mul-long v27, v5, v23

    add-long v9, v9, v27

    const/16 v11, 0x9

    aget-wide v27, p1, v11

    mul-long v1, v1, v27

    add-long/2addr v9, v1

    mul-long/2addr v9, v3

    aput-wide v9, v0, v11

    mul-long v1, v21, v21

    mul-long v9, v14, v18

    add-long/2addr v1, v9

    mul-long v9, v7, v23

    add-long/2addr v1, v9

    mul-long v9, v16, v25

    .line 57
    aget-wide v27, p1, v11

    mul-long v5, v5, v27

    add-long/2addr v9, v5

    mul-long/2addr v9, v3

    add-long/2addr v1, v9

    mul-long/2addr v1, v3

    const/16 v5, 0xa

    aput-wide v1, v0, v5

    mul-long v1, v21, v18

    mul-long v5, v14, v25

    add-long/2addr v1, v5

    mul-long v5, v16, v23

    add-long/2addr v1, v5

    mul-long v7, v7, v27

    add-long/2addr v1, v7

    mul-long/2addr v1, v3

    const/16 v5, 0xb

    aput-wide v1, v0, v5

    mul-long v1, v18, v18

    mul-long v5, v14, v23

    mul-long v7, v21, v25

    mul-long v16, v16, v27

    add-long v7, v7, v16

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    mul-long/2addr v5, v3

    add-long/2addr v1, v5

    const/16 v5, 0xc

    aput-wide v1, v0, v5

    mul-long v1, v18, v25

    mul-long v5, v21, v23

    add-long/2addr v1, v5

    mul-long v14, v14, v27

    add-long/2addr v1, v14

    mul-long/2addr v1, v3

    const/16 v5, 0xd

    aput-wide v1, v0, v5

    mul-long v1, v25, v25

    mul-long v5, v18, v23

    add-long/2addr v1, v5

    mul-long v21, v21, v3

    mul-long v21, v21, v27

    add-long v1, v1, v21

    mul-long/2addr v1, v3

    const/16 v5, 0xe

    aput-wide v1, v0, v5

    mul-long v1, v25, v23

    mul-long v18, v18, v27

    add-long v1, v1, v18

    mul-long/2addr v1, v3

    const/16 v5, 0xf

    aput-wide v1, v0, v5

    mul-long v1, v23, v23

    mul-long v25, v25, v12

    mul-long v25, v25, v27

    add-long v1, v1, v25

    const/16 v5, 0x10

    aput-wide v1, v0, v5

    mul-long v23, v23, v3

    mul-long v23, v23, v27

    const/16 v1, 0x11

    aput-wide v23, v0, v1

    mul-long v3, v3, v27

    mul-long v3, v3, v27

    const/16 v1, 0x12

    aput-wide v3, v0, v1

    move-object/from16 v1, p0

    .line 58
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zze([J[J)V

    return-void
.end method

.method public static zzb([J[J[J)V
    .locals 44

    const/4 v0, 0x0

    .line 1
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    mul-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 2
    aget-wide v1, p1, v0

    const/4 v3, 0x1

    aget-wide v4, p2, v3

    mul-long/2addr v4, v1

    aget-wide v6, p1, v3

    aget-wide v8, p2, v0

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    aput-wide v4, p0, v3

    .line 3
    aget-wide v4, p1, v3

    const-wide/16 v6, 0x2

    mul-long v10, v4, v6

    aget-wide v12, p2, v3

    mul-long/2addr v10, v12

    const/4 v0, 0x2

    aget-wide v14, p2, v0

    mul-long/2addr v14, v1

    add-long/2addr v10, v14

    aget-wide v14, p1, v0

    mul-long/2addr v14, v8

    add-long/2addr v10, v14

    aput-wide v10, p0, v0

    .line 4
    aget-wide v10, p2, v0

    mul-long v14, v4, v10

    aget-wide v16, p1, v0

    mul-long v18, v16, v12

    add-long v14, v14, v18

    const/4 v0, 0x3

    aget-wide v18, p2, v0

    mul-long v18, v18, v1

    add-long v14, v14, v18

    aget-wide v18, p1, v0

    mul-long v18, v18, v8

    add-long v14, v14, v18

    aput-wide v14, p0, v0

    mul-long v14, v16, v10

    .line 5
    aget-wide v18, p2, v0

    mul-long v20, v4, v18

    aget-wide v22, p1, v0

    mul-long v24, v22, v12

    add-long v20, v20, v24

    mul-long v20, v20, v6

    add-long v14, v14, v20

    const/4 v0, 0x4

    aget-wide v20, p2, v0

    mul-long v20, v20, v1

    add-long v14, v14, v20

    aget-wide v20, p1, v0

    mul-long v20, v20, v8

    add-long v14, v14, v20

    aput-wide v14, p0, v0

    mul-long v14, v16, v18

    mul-long v20, v22, v10

    add-long v14, v14, v20

    .line 6
    aget-wide v20, p2, v0

    mul-long v24, v4, v20

    add-long v14, v14, v24

    aget-wide v24, p1, v0

    mul-long v26, v24, v12

    add-long v14, v14, v26

    const/4 v0, 0x5

    aget-wide v26, p2, v0

    mul-long v26, v26, v1

    add-long v14, v14, v26

    aget-wide v26, p1, v0

    mul-long v26, v26, v8

    add-long v14, v14, v26

    aput-wide v14, p0, v0

    mul-long v14, v22, v18

    .line 7
    aget-wide v26, p2, v0

    mul-long v28, v4, v26

    add-long v14, v14, v28

    aget-wide v28, p1, v0

    mul-long v30, v28, v12

    add-long v14, v14, v30

    mul-long/2addr v14, v6

    mul-long v30, v16, v20

    add-long v14, v14, v30

    mul-long v30, v24, v10

    add-long v14, v14, v30

    const/4 v0, 0x6

    aget-wide v30, p2, v0

    mul-long v30, v30, v1

    add-long v14, v14, v30

    aget-wide v30, p1, v0

    mul-long v30, v30, v8

    add-long v14, v14, v30

    aput-wide v14, p0, v0

    mul-long v14, v22, v20

    mul-long v30, v24, v18

    add-long v14, v14, v30

    mul-long v30, v16, v26

    add-long v14, v14, v30

    mul-long v30, v28, v10

    add-long v14, v14, v30

    .line 8
    aget-wide v30, p2, v0

    mul-long v32, v4, v30

    add-long v14, v14, v32

    aget-wide v32, p1, v0

    mul-long v34, v32, v12

    add-long v14, v14, v34

    const/4 v0, 0x7

    aget-wide v34, p2, v0

    mul-long v34, v34, v1

    add-long v14, v14, v34

    aget-wide v34, p1, v0

    mul-long v34, v34, v8

    add-long v14, v14, v34

    aput-wide v14, p0, v0

    mul-long v14, v24, v20

    mul-long v34, v22, v26

    mul-long v36, v28, v18

    add-long v34, v34, v36

    .line 9
    aget-wide v36, p2, v0

    mul-long v38, v4, v36

    add-long v34, v34, v38

    aget-wide v38, p1, v0

    mul-long v40, v38, v12

    add-long v34, v34, v40

    mul-long v34, v34, v6

    add-long v14, v14, v34

    mul-long v34, v16, v30

    add-long v14, v14, v34

    mul-long v34, v32, v10

    add-long v14, v14, v34

    const/16 v0, 0x8

    aget-wide v34, p2, v0

    mul-long v34, v34, v1

    add-long v14, v14, v34

    aget-wide v34, p1, v0

    mul-long v34, v34, v8

    add-long v14, v14, v34

    aput-wide v14, p0, v0

    mul-long v14, v24, v26

    mul-long v34, v28, v20

    add-long v14, v14, v34

    mul-long v34, v22, v30

    add-long v14, v14, v34

    mul-long v34, v32, v18

    add-long v14, v14, v34

    mul-long v34, v16, v36

    add-long v14, v14, v34

    mul-long v34, v38, v10

    add-long v14, v14, v34

    .line 10
    aget-wide v34, p2, v0

    mul-long v40, v4, v34

    add-long v14, v14, v40

    aget-wide v40, p1, v0

    mul-long v42, v40, v12

    add-long v14, v14, v42

    const/16 v0, 0x9

    aget-wide v42, p2, v0

    mul-long v1, v1, v42

    add-long/2addr v14, v1

    aget-wide v1, p1, v0

    mul-long/2addr v1, v8

    add-long/2addr v14, v1

    aput-wide v14, p0, v0

    mul-long v1, v28, v26

    mul-long v8, v22, v36

    add-long/2addr v1, v8

    mul-long v8, v38, v18

    add-long/2addr v1, v8

    .line 11
    aget-wide v8, p2, v0

    mul-long/2addr v4, v8

    add-long/2addr v1, v4

    aget-wide v3, p1, v0

    mul-long/2addr v12, v3

    add-long/2addr v1, v12

    mul-long/2addr v1, v6

    mul-long v12, v24, v30

    add-long/2addr v1, v12

    mul-long v12, v32, v20

    add-long/2addr v1, v12

    mul-long v12, v16, v34

    add-long/2addr v1, v12

    mul-long v12, v40, v10

    add-long/2addr v1, v12

    const/16 v0, 0xa

    aput-wide v1, p0, v0

    mul-long v0, v28, v30

    mul-long v12, v32, v26

    add-long/2addr v0, v12

    mul-long v12, v24, v36

    add-long/2addr v0, v12

    mul-long v12, v38, v20

    add-long/2addr v0, v12

    mul-long v12, v22, v34

    add-long/2addr v0, v12

    mul-long v12, v40, v18

    add-long/2addr v0, v12

    mul-long v16, v16, v8

    add-long v0, v0, v16

    mul-long/2addr v10, v3

    add-long/2addr v0, v10

    const/16 v2, 0xb

    .line 12
    aput-wide v0, p0, v2

    mul-long v0, v32, v30

    mul-long v10, v28, v36

    mul-long v12, v38, v26

    add-long/2addr v10, v12

    mul-long v22, v22, v8

    add-long v10, v10, v22

    mul-long v18, v18, v3

    add-long v10, v10, v18

    mul-long/2addr v10, v6

    add-long/2addr v0, v10

    mul-long v10, v24, v34

    add-long/2addr v0, v10

    mul-long v10, v40, v20

    add-long/2addr v0, v10

    const/16 v2, 0xc

    .line 13
    aput-wide v0, p0, v2

    mul-long v0, v32, v36

    mul-long v10, v38, v30

    add-long/2addr v0, v10

    mul-long v10, v28, v34

    add-long/2addr v0, v10

    mul-long v10, v40, v26

    add-long/2addr v0, v10

    mul-long v24, v24, v8

    add-long v0, v0, v24

    mul-long v20, v20, v3

    add-long v0, v0, v20

    const/16 v2, 0xd

    .line 14
    aput-wide v0, p0, v2

    mul-long v0, v38, v36

    mul-long v28, v28, v8

    add-long v0, v0, v28

    mul-long v26, v26, v3

    add-long v0, v0, v26

    mul-long/2addr v0, v6

    mul-long v10, v32, v34

    add-long/2addr v0, v10

    mul-long v10, v40, v30

    add-long/2addr v0, v10

    const/16 v2, 0xe

    .line 15
    aput-wide v0, p0, v2

    mul-long v0, v38, v34

    mul-long v10, v40, v36

    add-long/2addr v0, v10

    mul-long v32, v32, v8

    add-long v0, v0, v32

    mul-long v30, v30, v3

    add-long v0, v0, v30

    const/16 v2, 0xf

    .line 16
    aput-wide v0, p0, v2

    mul-long v0, v40, v34

    mul-long v38, v38, v8

    mul-long v36, v36, v3

    add-long v38, v38, v36

    mul-long v38, v38, v6

    add-long v0, v0, v38

    const/16 v2, 0x10

    .line 17
    aput-wide v0, p0, v2

    mul-long v40, v40, v8

    mul-long v34, v34, v3

    add-long v40, v40, v34

    const/16 v0, 0x11

    .line 18
    aput-wide v40, p0, v0

    mul-long/2addr v3, v6

    mul-long/2addr v3, v8

    const/16 v0, 0x12

    .line 19
    aput-wide v3, p0, v0

    return-void
.end method

.method public static zzc([J[J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzc([J[J[J)V

    return-void
.end method

.method public static zzc([J[J[J)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 2
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    sub-long/2addr v1, v3

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static zzc([J)[B
    .locals 16

    const/16 v0, 0xa

    move-object/from16 v1, p0

    .line 3
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-wide/16 v4, 0x13

    const/16 v6, 0x19

    const/16 v7, 0x1f

    const/16 v8, 0x9

    const/4 v9, 0x2

    if-ge v3, v9, :cond_1

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_0

    .line 4
    aget-wide v10, v1, v9

    shr-long v12, v10, v7

    and-long/2addr v12, v10

    sget-object v14, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzd:[I

    and-int/lit8 v15, v9, 0x1

    aget v14, v14, v15

    shr-long/2addr v12, v14

    long-to-int v12, v12

    neg-int v12, v12

    shl-int v13, v12, v14

    int-to-long v13, v13

    add-long/2addr v10, v13

    .line 5
    aput-wide v10, v1, v9

    add-int/lit8 v9, v9, 0x1

    .line 6
    aget-wide v10, v1, v9

    int-to-long v12, v12

    sub-long/2addr v10, v12

    aput-wide v10, v1, v9

    goto :goto_1

    .line 7
    :cond_0
    aget-wide v9, v1, v8

    shr-long v11, v9, v7

    and-long/2addr v11, v9

    shr-long v6, v11, v6

    long-to-int v6, v6

    neg-int v6, v6

    shl-int/lit8 v7, v6, 0x19

    int-to-long v11, v7

    add-long/2addr v9, v11

    .line 8
    aput-wide v9, v1, v8

    .line 9
    aget-wide v7, v1, v2

    int-to-long v9, v6

    mul-long/2addr v9, v4

    sub-long/2addr v7, v9

    aput-wide v7, v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_1
    aget-wide v10, v1, v2

    shr-long v12, v10, v7

    and-long/2addr v12, v10

    const/16 v3, 0x1a

    shr-long/2addr v12, v3

    long-to-int v3, v12

    neg-int v3, v3

    shl-int/lit8 v12, v3, 0x1a

    int-to-long v12, v12

    add-long/2addr v10, v12

    .line 11
    aput-wide v10, v1, v2

    const/4 v10, 0x1

    .line 12
    aget-wide v11, v1, v10

    int-to-long v13, v3

    sub-long/2addr v11, v13

    aput-wide v11, v1, v10

    move v3, v2

    :goto_2
    if-ge v3, v9, :cond_3

    move v11, v2

    :goto_3
    if-ge v11, v8, :cond_2

    .line 13
    aget-wide v12, v1, v11

    sget-object v14, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzd:[I

    and-int/lit8 v15, v11, 0x1

    aget v14, v14, v15

    shr-long v9, v12, v14

    long-to-int v9, v9

    .line 14
    sget-object v10, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzc:[I

    aget v10, v10, v15

    int-to-long v14, v10

    and-long/2addr v12, v14

    aput-wide v12, v1, v11

    add-int/lit8 v11, v11, 0x1

    .line 15
    aget-wide v12, v1, v11

    int-to-long v9, v9

    add-long/2addr v12, v9

    aput-wide v12, v1, v11

    const/4 v9, 0x2

    const/4 v10, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x1

    goto :goto_2

    .line 16
    :cond_3
    aget-wide v9, v1, v8

    shr-long v11, v9, v6

    long-to-int v3, v11

    const-wide/32 v11, 0x1ffffff

    and-long/2addr v9, v11

    .line 17
    aput-wide v9, v1, v8

    .line 18
    aget-wide v8, v1, v2

    int-to-long v10, v3

    mul-long/2addr v10, v4

    add-long/2addr v8, v10

    aput-wide v8, v1, v2

    long-to-int v3, v8

    const v4, 0x3ffffed

    sub-int/2addr v3, v4

    shr-int/2addr v3, v7

    not-int v3, v3

    const/4 v5, 0x1

    :goto_4
    if-ge v5, v0, :cond_4

    .line 19
    aget-wide v8, v1, v5

    long-to-int v6, v8

    sget-object v8, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzc:[I

    and-int/lit8 v9, v5, 0x1

    aget v8, v8, v9

    xor-int/2addr v6, v8

    not-int v6, v6

    shl-int/lit8 v8, v6, 0x10

    and-int/2addr v6, v8

    shl-int/lit8 v8, v6, 0x8

    and-int/2addr v6, v8

    shl-int/lit8 v8, v6, 0x4

    and-int/2addr v6, v8

    shl-int/lit8 v8, v6, 0x2

    and-int/2addr v6, v8

    shl-int/lit8 v8, v6, 0x1

    and-int/2addr v6, v8

    shr-int/2addr v6, v7

    and-int/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 20
    :cond_4
    aget-wide v5, v1, v2

    and-int/2addr v4, v3

    int-to-long v7, v4

    sub-long/2addr v5, v7

    aput-wide v5, v1, v2

    const/4 v4, 0x1

    .line 21
    aget-wide v5, v1, v4

    const v7, 0x1ffffff

    and-int/2addr v7, v3

    int-to-long v7, v7

    sub-long/2addr v5, v7

    aput-wide v5, v1, v4

    const/4 v9, 0x2

    :goto_5
    if-ge v9, v0, :cond_5

    .line 22
    aget-wide v4, v1, v9

    const v6, 0x3ffffff

    and-int/2addr v6, v3

    int-to-long v10, v6

    sub-long/2addr v4, v10

    aput-wide v4, v1, v9

    add-int/lit8 v4, v9, 0x1

    .line 23
    aget-wide v5, v1, v4

    sub-long/2addr v5, v7

    aput-wide v5, v1, v4

    add-int/lit8 v9, v9, 0x2

    goto :goto_5

    :cond_5
    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_6

    .line 24
    aget-wide v4, v1, v3

    sget-object v6, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb:[I

    aget v6, v6, v3

    shl-long/2addr v4, v6

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_6
    const/16 v3, 0x20

    new-array v3, v3, [B

    :goto_7
    if-ge v2, v0, :cond_7

    .line 25
    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza:[I

    aget v4, v4, v2

    aget-byte v5, v3, v4

    int-to-long v5, v5

    aget-wide v7, v1, v2

    const-wide/16 v9, 0xff

    and-long v11, v7, v9

    or-long/2addr v5, v11

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v5, v4, 0x1

    .line 26
    aget-byte v6, v3, v5

    int-to-long v11, v6

    const/16 v6, 0x8

    shr-long v13, v7, v6

    and-long/2addr v13, v9

    or-long/2addr v11, v13

    long-to-int v6, v11

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v5, v4, 0x2

    .line 27
    aget-byte v6, v3, v5

    int-to-long v11, v6

    const/16 v6, 0x10

    shr-long v13, v7, v6

    and-long/2addr v13, v9

    or-long/2addr v11, v13

    long-to-int v6, v11

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v4, v4, 0x3

    .line 28
    aget-byte v5, v3, v4

    int-to-long v5, v5

    const/16 v11, 0x18

    shr-long/2addr v7, v11

    and-long/2addr v7, v9

    or-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_7
    return-object v3
.end method

.method public static zzd([J[J)V
    .locals 0

    .line 1
    invoke-static {p0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzd([J[J[J)V

    return-void
.end method

.method public static zzd([J[J[J)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 2
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static zze([J[J)V
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v2, [J

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb([J)V

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza([J)V

    const/16 v0, 0xa

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
