.class public final Lcom/twelvemonkeys/imageio/color/YCbCrConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x10

.field public static final b:I = 0xff

.field public static final c:I = 0x80

.field public static final d:I = 0x8000

.field public static final e:[I

.field public static final f:[I

.field public static final g:[I

.field public static final h:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x100

    new-array v1, v0, [I

    sput-object v1, Lcom/twelvemonkeys/imageio/color/YCbCrConverter;->e:[I

    new-array v1, v0, [I

    sput-object v1, Lcom/twelvemonkeys/imageio/color/YCbCrConverter;->f:[I

    new-array v1, v0, [I

    sput-object v1, Lcom/twelvemonkeys/imageio/color/YCbCrConverter;->g:[I

    new-array v0, v0, [I

    sput-object v0, Lcom/twelvemonkeys/imageio/color/YCbCrConverter;->h:[I

    invoke-static {}, Lcom/twelvemonkeys/imageio/color/YCbCrConverter;->a()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 9

    sget-boolean v0, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Building YCC conversion table"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    const/16 v1, -0x80

    :goto_0
    const/16 v2, 0xff

    if-gt v0, v2, :cond_1

    sget-object v2, Lcom/twelvemonkeys/imageio/color/YCbCrConverter;->e:[I

    int-to-double v3, v1

    const-wide v5, 0x40f66e9f8d4fdf3bL    # 91881.972

    mul-double/2addr v5, v3

    const-wide/high16 v7, 0x40e0000000000000L    # 32768.0

    add-double/2addr v5, v7

    double-to-int v5, v5

    shr-int/lit8 v5, v5, 0x10

    aput v5, v2, v0

    sget-object v2, Lcom/twelvemonkeys/imageio/color/YCbCrConverter;->f:[I

    const-wide v5, 0x40fc5a24ac083127L    # 116130.292

    mul-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    shr-int/lit8 v3, v3, 0x10

    aput v3, v2, v0

    sget-object v2, Lcom/twelvemonkeys/imageio/color/YCbCrConverter;->g:[I

    const v3, -0xb6d2

    mul-int/2addr v3, v1

    aput v3, v2, v0

    sget-object v2, Lcom/twelvemonkeys/imageio/color/YCbCrConverter;->h:[I

    mul-int/lit16 v3, v1, -0x581a

    const v4, 0x8000

    add-int/2addr v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static b(I)B
    .locals 1

    const/16 v0, 0xff

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public static convertYCbCr2RGB([B[BI)V
    .locals 5

    .line 16
    aget-byte v0, p0, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x2

    .line 17
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p2, 0x1

    .line 18
    aget-byte p0, p0, v3

    and-int/lit16 p0, p0, 0xff

    .line 19
    sget-object v4, Lcom/twelvemonkeys/imageio/color/YCbCrConverter;->e:[I

    aget v4, v4, v2

    add-int/2addr v4, v0

    invoke-static {v4}, Lcom/twelvemonkeys/imageio/color/YCbCrConverter;->b(I)B

    move-result v4

    aput-byte v4, p1, p2

    .line 20
    sget-object p2, Lcom/twelvemonkeys/imageio/color/YCbCrConverter;->h:[I

    aget p2, p2, p0

    sget-object v4, Lcom/twelvemonkeys/imageio/color/YCbCrConverter;->g:[I

    aget v2, v4, v2

    add-int/2addr p2, v2

    shr-int/lit8 p2, p2, 0x10

    add-int/2addr p2, v0

    invoke-static {p2}, Lcom/twelvemonkeys/imageio/color/YCbCrConverter;->b(I)B

    move-result p2

    aput-byte p2, p1, v3

    .line 21
    sget-object p2, Lcom/twelvemonkeys/imageio/color/YCbCrConverter;->f:[I

    aget p0, p2, p0

    add-int/2addr v0, p0

    invoke-static {v0}, Lcom/twelvemonkeys/imageio/color/YCbCrConverter;->b(I)B

    move-result p0

    aput-byte p0, p1, v1

    return-void
.end method

.method public static convertYCbCr2RGB([B[B[D[DI)V
    .locals 17

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p3, :cond_0

    .line 1
    aget-byte v3, p0, p4

    and-int/lit16 v3, v3, 0xff

    int-to-double v3, v3

    add-int/lit8 v5, p4, 0x1

    .line 2
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v5, v5, -0x80

    int-to-double v5, v5

    add-int/lit8 v7, p4, 0x2

    .line 3
    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v7, v7, -0x80

    int-to-double v7, v7

    goto :goto_0

    .line 4
    :cond_0
    aget-byte v3, p0, p4

    and-int/lit16 v3, v3, 0xff

    int-to-double v3, v3

    aget-wide v5, p3, v0

    sub-double/2addr v3, v5

    const-wide v7, 0x406fe00000000000L    # 255.0

    mul-double/2addr v3, v7

    aget-wide v7, p3, v2

    sub-double/2addr v7, v5

    div-double/2addr v3, v7

    add-int/lit8 v5, p4, 0x1

    .line 5
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-double v5, v5

    aget-wide v7, p3, v1

    sub-double/2addr v5, v7

    const-wide v9, 0x405fc00000000000L    # 127.0

    mul-double/2addr v5, v9

    const/4 v11, 0x3

    aget-wide v11, p3, v11

    sub-double/2addr v11, v7

    div-double/2addr v5, v11

    add-int/lit8 v7, p4, 0x2

    .line 6
    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    int-to-double v7, v7

    const/4 v11, 0x4

    aget-wide v11, p3, v11

    sub-double/2addr v7, v11

    mul-double/2addr v7, v9

    const/4 v9, 0x5

    aget-wide v9, p3, v9

    sub-double/2addr v9, v11

    div-double/2addr v7, v9

    .line 7
    :goto_0
    aget-wide v9, p2, v0

    .line 8
    aget-wide v11, p2, v2

    .line 9
    aget-wide v0, p2, v1

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double v15, v9, v13

    sub-double v15, v13, v15

    mul-double/2addr v7, v15

    add-double/2addr v7, v3

    .line 10
    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v7, v7

    mul-double v15, v0, v13

    sub-double/2addr v13, v15

    mul-double/2addr v5, v13

    add-double/2addr v5, v3

    .line 11
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    int-to-double v13, v7

    mul-double/2addr v9, v13

    sub-double/2addr v3, v9

    int-to-double v8, v5

    mul-double/2addr v0, v8

    sub-double/2addr v3, v0

    div-double/2addr v3, v11

    .line 12
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 13
    invoke-static {v7}, Lcom/twelvemonkeys/imageio/color/YCbCrConverter;->b(I)B

    move-result v1

    aput-byte v1, p1, p4

    add-int/lit8 v1, p4, 0x2

    .line 14
    invoke-static {v5}, Lcom/twelvemonkeys/imageio/color/YCbCrConverter;->b(I)B

    move-result v3

    aput-byte v3, p1, v1

    add-int/lit8 v1, p4, 0x1

    .line 15
    invoke-static {v0}, Lcom/twelvemonkeys/imageio/color/YCbCrConverter;->b(I)B

    move-result v0

    aput-byte v0, p1, v1

    return-void
.end method
