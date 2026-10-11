.class public Lcom/onyx/harfbuzz/internal/sfnt/DataTable;
.super Lcom/onyx/harfbuzz/internal/sfnt/AbstractSfntTable;
.source "SourceFile"


# instance fields
.field public final a:[B
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/onyx/harfbuzz/internal/sfnt/AbstractSfntTable;-><init>()V

    iput-object p1, p0, Lcom/onyx/harfbuzz/internal/sfnt/DataTable;->a:[B

    return-void
.end method


# virtual methods
.method public readBytes(II)[B
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-array v0, p2, [B

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/DataTable;->a:[B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public readInt16(I)S
    .locals 1

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/DataTable;->a:[B

    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x0

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public readInt32(I)I
    .locals 2

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/DataTable;->a:[B

    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x0

    or-int/2addr p0, v0

    return p0
.end method

.method public readInt64(I)J
    .locals 3

    add-int/lit8 v0, p1, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/harfbuzz/internal/sfnt/DataTable;->readUInt32(I)J

    move-result-wide v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lcom/onyx/harfbuzz/internal/sfnt/DataTable;->readUInt32(I)J

    move-result-wide p0

    const/4 v2, 0x0

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public readInt8(I)B
    .locals 0

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/DataTable;->a:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public readUInt16(I)I
    .locals 1

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/DataTable;->a:[B

    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x0

    or-int/2addr p0, v0

    const p1, 0xffff

    and-int/2addr p0, p1

    return p0
.end method

.method public readUInt32(I)J
    .locals 2

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/DataTable;->a:[B

    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x0

    or-int/2addr p0, v0

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method public readUInt8(I)S
    .locals 0

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/DataTable;->a:[B

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method
