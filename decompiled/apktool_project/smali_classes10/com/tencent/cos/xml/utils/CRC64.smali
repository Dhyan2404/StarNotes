.class public Lcom/tencent/cos/xml/utils/CRC64;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/zip/Checksum;


# static fields
.field private static final GF2_DIM:I = 0x40

.field private static final POLY:J = -0x3693a86a2878f0beL

.field private static final table:[J


# instance fields
.field private value:J


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x100

    new-array v1, v0, [J

    sput-object v1, Lcom/tencent/cos/xml/utils/CRC64;->table:[J

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    int-to-long v3, v2

    move v5, v1

    :goto_1
    const/16 v6, 0x8

    if-ge v5, v6, :cond_1

    const-wide/16 v6, 0x1

    and-long v8, v3, v6

    cmp-long v6, v8, v6

    const/4 v7, 0x1

    if-nez v6, :cond_0

    ushr-long/2addr v3, v7

    const-wide v6, -0x3693a86a2878f0beL    # -5.0564049839430436E45

    xor-long/2addr v3, v6

    goto :goto_2

    :cond_0
    ushr-long/2addr v3, v7

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/tencent/cos/xml/utils/CRC64;->table:[J

    aput-wide v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/tencent/cos/xml/utils/CRC64;->value:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/tencent/cos/xml/utils/CRC64;->value:J

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/tencent/cos/xml/utils/CRC64;->value:J

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/tencent/cos/xml/utils/CRC64;->update([BI)V

    return-void
.end method

.method public static combine(JJJ)J
    .locals 14

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    return-wide p0

    :cond_0
    const/16 v2, 0x40

    new-array v3, v2, [J

    new-array v4, v2, [J

    const/4 v5, 0x0

    const-wide v6, -0x3693a86a2878f0beL    # -5.0564049839430436E45

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x1

    move v8, v5

    move-wide v9, v6

    :goto_0
    if-ge v8, v2, :cond_1

    .line 12
    aput-wide v9, v4, v8

    shl-long/2addr v9, v5

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {v3, v4}, Lcom/tencent/cos/xml/utils/CRC64;->gf2MatrixSquare([J[J)V

    .line 14
    invoke-static {v4, v3}, Lcom/tencent/cos/xml/utils/CRC64;->gf2MatrixSquare([J[J)V

    move-wide v8, p0

    move-wide/from16 v10, p4

    .line 15
    :cond_2
    invoke-static {v3, v4}, Lcom/tencent/cos/xml/utils/CRC64;->gf2MatrixSquare([J[J)V

    and-long v12, v10, v6

    cmp-long v2, v12, v6

    if-nez v2, :cond_3

    .line 16
    invoke-static {v3, v8, v9}, Lcom/tencent/cos/xml/utils/CRC64;->gf2MatrixTimes([JJ)J

    move-result-wide v8

    :cond_3
    ushr-long/2addr v10, v5

    cmp-long v2, v10, v0

    if-nez v2, :cond_4

    goto :goto_1

    .line 17
    :cond_4
    invoke-static {v4, v3}, Lcom/tencent/cos/xml/utils/CRC64;->gf2MatrixSquare([J[J)V

    and-long v12, v10, v6

    cmp-long v2, v12, v6

    if-nez v2, :cond_5

    .line 18
    invoke-static {v4, v8, v9}, Lcom/tencent/cos/xml/utils/CRC64;->gf2MatrixTimes([JJ)J

    move-result-wide v8

    :cond_5
    ushr-long/2addr v10, v5

    cmp-long v2, v10, v0

    if-nez v2, :cond_2

    :goto_1
    xor-long v0, v8, p2

    return-wide v0
.end method

.method public static combine(Lcom/tencent/cos/xml/utils/CRC64;Lcom/tencent/cos/xml/utils/CRC64;J)Lcom/tencent/cos/xml/utils/CRC64;
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    .line 1
    new-instance p1, Lcom/tencent/cos/xml/utils/CRC64;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/utils/CRC64;->getValue()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lcom/tencent/cos/xml/utils/CRC64;-><init>(J)V

    return-object p1

    :cond_0
    const/16 v2, 0x40

    new-array v3, v2, [J

    new-array v4, v2, [J

    const/4 v5, 0x0

    const-wide v6, -0x3693a86a2878f0beL    # -5.0564049839430436E45

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x1

    move v8, v5

    move-wide v9, v6

    :goto_0
    if-ge v8, v2, :cond_1

    .line 2
    aput-wide v9, v4, v8

    shl-long/2addr v9, v5

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {v3, v4}, Lcom/tencent/cos/xml/utils/CRC64;->gf2MatrixSquare([J[J)V

    .line 4
    invoke-static {v4, v3}, Lcom/tencent/cos/xml/utils/CRC64;->gf2MatrixSquare([J[J)V

    .line 5
    invoke-virtual {p0}, Lcom/tencent/cos/xml/utils/CRC64;->getValue()J

    move-result-wide v8

    .line 6
    invoke-virtual {p1}, Lcom/tencent/cos/xml/utils/CRC64;->getValue()J

    move-result-wide p0

    .line 7
    :cond_2
    invoke-static {v3, v4}, Lcom/tencent/cos/xml/utils/CRC64;->gf2MatrixSquare([J[J)V

    and-long v10, p2, v6

    cmp-long v2, v10, v6

    if-nez v2, :cond_3

    .line 8
    invoke-static {v3, v8, v9}, Lcom/tencent/cos/xml/utils/CRC64;->gf2MatrixTimes([JJ)J

    move-result-wide v8

    :cond_3
    ushr-long/2addr p2, v5

    cmp-long v2, p2, v0

    if-nez v2, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    invoke-static {v4, v3}, Lcom/tencent/cos/xml/utils/CRC64;->gf2MatrixSquare([J[J)V

    and-long v10, p2, v6

    cmp-long v2, v10, v6

    if-nez v2, :cond_5

    .line 10
    invoke-static {v4, v8, v9}, Lcom/tencent/cos/xml/utils/CRC64;->gf2MatrixTimes([JJ)J

    move-result-wide v8

    :cond_5
    ushr-long/2addr p2, v5

    cmp-long v2, p2, v0

    if-nez v2, :cond_2

    :goto_1
    xor-long/2addr p0, v8

    .line 11
    new-instance p2, Lcom/tencent/cos/xml/utils/CRC64;

    invoke-direct {p2, p0, p1}, Lcom/tencent/cos/xml/utils/CRC64;-><init>(J)V

    return-object p2
.end method

.method public static fromBytes([B)Lcom/tencent/cos/xml/utils/CRC64;
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    aget-byte v3, p0, v2

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    xor-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/tencent/cos/xml/utils/CRC64;

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/utils/CRC64;-><init>(J)V

    return-object p0
.end method

.method private static gf2MatrixSquare([J[J)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    aget-wide v1, p1, v0

    invoke-static {p1, v1, v2}, Lcom/tencent/cos/xml/utils/CRC64;->gf2MatrixTimes([JJ)J

    move-result-wide v1

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static gf2MatrixTimes([JJ)J
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    :goto_0
    cmp-long v5, p1, v0

    if-eqz v5, :cond_1

    const-wide/16 v5, 0x1

    and-long v7, p1, v5

    cmp-long v5, v7, v5

    if-nez v5, :cond_0

    aget-wide v5, p0, v2

    xor-long/2addr v3, v5

    :cond_0
    const/4 v5, 0x1

    ushr-long/2addr p1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v3
.end method


# virtual methods
.method public getBytes()[B
    .locals 7

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    rsub-int/lit8 v3, v2, 0x7

    iget-wide v4, p0, Lcom/tencent/cos/xml/utils/CRC64;->value:J

    mul-int/lit8 v6, v2, 0x8

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getValue()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/cos/xml/utils/CRC64;->value:J

    return-wide v0
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/cos/xml/utils/CRC64;->value:J

    return-void
.end method

.method public update(B)V
    .locals 5

    .line 4
    iget-wide v0, p0, Lcom/tencent/cos/xml/utils/CRC64;->value:J

    not-long v0, v0

    .line 5
    sget-object v2, Lcom/tencent/cos/xml/utils/CRC64;->table:[J

    int-to-long v3, p1

    xor-long/2addr v3, v0

    long-to-int p1, v3

    and-int/lit16 p1, p1, 0xff

    aget-wide v2, v2, p1

    const/16 p1, 0x8

    ushr-long/2addr v0, p1

    xor-long/2addr v0, v2

    not-long v0, v0

    .line 6
    iput-wide v0, p0, Lcom/tencent/cos/xml/utils/CRC64;->value:J

    return-void
.end method

.method public update(I)V
    .locals 0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/utils/CRC64;->update(B)V

    return-void
.end method

.method public update([BI)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/tencent/cos/xml/utils/CRC64;->value:J

    not-long v0, v0

    iput-wide v0, p0, Lcom/tencent/cos/xml/utils/CRC64;->value:J

    const/4 v0, 0x0

    :goto_0
    if-lez p2, :cond_0

    .line 2
    sget-object v1, Lcom/tencent/cos/xml/utils/CRC64;->table:[J

    iget-wide v2, p0, Lcom/tencent/cos/xml/utils/CRC64;->value:J

    aget-byte v4, p1, v0

    int-to-long v4, v4

    xor-long/2addr v4, v2

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    aget-wide v4, v1, v4

    const/16 v1, 0x8

    ushr-long v1, v2, v1

    xor-long/2addr v1, v4

    iput-wide v1, p0, Lcom/tencent/cos/xml/utils/CRC64;->value:J

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-wide p1, p0, Lcom/tencent/cos/xml/utils/CRC64;->value:J

    not-long p1, p1

    iput-wide p1, p0, Lcom/tencent/cos/xml/utils/CRC64;->value:J

    return-void
.end method

.method public update([BII)V
    .locals 1

    :goto_0
    if-lez p3, :cond_0

    add-int/lit8 v0, p2, 0x1

    .line 8
    aget-byte p2, p1, p2

    invoke-virtual {p0, p2}, Lcom/tencent/cos/xml/utils/CRC64;->update(B)V

    add-int/lit8 p3, p3, -0x1

    move p2, v0

    goto :goto_0

    :cond_0
    return-void
.end method
