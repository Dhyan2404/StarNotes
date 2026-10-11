.class public Lcom/onyx/harfbuzz/internal/sfnt/SubTable;
.super Lcom/onyx/harfbuzz/internal/sfnt/AbstractSfntTable;
.source "SourceFile"


# instance fields
.field public final a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

.field public final b:I


# direct methods
.method public constructor <init>(Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;I)V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/harfbuzz/internal/sfnt/AbstractSfntTable;-><init>()V

    iput-object p1, p0, Lcom/onyx/harfbuzz/internal/sfnt/SubTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    iput p2, p0, Lcom/onyx/harfbuzz/internal/sfnt/SubTable;->b:I

    return-void
.end method


# virtual methods
.method public readBytes(II)[B
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/harfbuzz/internal/sfnt/SubTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    iget p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/SubTable;->b:I

    add-int/2addr p0, p1

    invoke-interface {v0, p0, p2}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readBytes(II)[B

    move-result-object p0

    return-object p0
.end method

.method public readInt16(I)S
    .locals 1

    iget-object v0, p0, Lcom/onyx/harfbuzz/internal/sfnt/SubTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    iget p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/SubTable;->b:I

    add-int/2addr p0, p1

    invoke-interface {v0, p0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readInt16(I)S

    move-result p0

    return p0
.end method

.method public readInt32(I)I
    .locals 1

    iget-object v0, p0, Lcom/onyx/harfbuzz/internal/sfnt/SubTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    iget p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/SubTable;->b:I

    add-int/2addr p0, p1

    invoke-interface {v0, p0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readInt32(I)I

    move-result p0

    return p0
.end method

.method public readInt64(I)J
    .locals 1

    iget-object v0, p0, Lcom/onyx/harfbuzz/internal/sfnt/SubTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    iget p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/SubTable;->b:I

    add-int/2addr p0, p1

    invoke-interface {v0, p0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readInt64(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public readInt8(I)B
    .locals 1

    iget-object v0, p0, Lcom/onyx/harfbuzz/internal/sfnt/SubTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    iget p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/SubTable;->b:I

    add-int/2addr p0, p1

    invoke-interface {v0, p0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readInt8(I)B

    move-result p0

    return p0
.end method

.method public readUInt16(I)I
    .locals 1

    iget-object v0, p0, Lcom/onyx/harfbuzz/internal/sfnt/SubTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    iget p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/SubTable;->b:I

    add-int/2addr p0, p1

    invoke-interface {v0, p0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readUInt16(I)I

    move-result p0

    return p0
.end method

.method public readUInt32(I)J
    .locals 1

    iget-object v0, p0, Lcom/onyx/harfbuzz/internal/sfnt/SubTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    iget p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/SubTable;->b:I

    add-int/2addr p0, p1

    invoke-interface {v0, p0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readUInt32(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public readUInt8(I)S
    .locals 1

    iget-object v0, p0, Lcom/onyx/harfbuzz/internal/sfnt/SubTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    iget p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/SubTable;->b:I

    add-int/2addr p0, p1

    invoke-interface {v0, p0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readUInt8(I)S

    move-result p0

    return p0
.end method

.method public subTable(I)Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;
    .locals 2

    new-instance v0, Lcom/onyx/harfbuzz/internal/sfnt/SubTable;

    iget-object v1, p0, Lcom/onyx/harfbuzz/internal/sfnt/SubTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    iget p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/SubTable;->b:I

    add-int/2addr p0, p1

    invoke-direct {v0, v1, p0}, Lcom/onyx/harfbuzz/internal/sfnt/SubTable;-><init>(Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;I)V

    return-object v0
.end method
