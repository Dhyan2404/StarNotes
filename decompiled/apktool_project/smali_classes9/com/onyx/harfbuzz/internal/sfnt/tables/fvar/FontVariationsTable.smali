.class public final Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/FontVariationsTable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:I = 0x0

.field public static final d:I = 0x2

.field public static final e:I = 0x4

.field public static final f:I = 0x8

.field public static final g:I = 0xa

.field public static final h:I = 0xc

.field public static final i:I = 0xe


# instance fields
.field public final a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public b:I


# direct methods
.method public constructor <init>(Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;I)V
    .locals 0
    .param p1    # Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/FontVariationsTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    iput p2, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/FontVariationsTable;->b:I

    return-void
.end method

.method public static from(Lcom/onyx/harfbuzz/graphics/HBTypeface;)Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/FontVariationsTable;
    .locals 2
    .param p0    # Lcom/onyx/harfbuzz/graphics/HBTypeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "fvar"

    invoke-static {v0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTag;->make(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getTableData(I)[B

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/FontVariationsTable;

    new-instance v1, Lcom/onyx/harfbuzz/internal/sfnt/DataTable;

    invoke-direct {v1, p0}, Lcom/onyx/harfbuzz/internal/sfnt/DataTable;-><init>([B)V

    array-length p0, p0

    invoke-direct {v0, v1, p0}, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/FontVariationsTable;-><init>(Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;I)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(III)I
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/FontVariationsTable;->instanceCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    mul-int v3, v1, p2

    add-int/2addr v3, p1

    iget v4, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/FontVariationsTable;->b:I

    invoke-static {v3, p3, v4}, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/InstanceRecord;->checkBounds(III)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public axesArrayOffset()I
    .locals 1

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/FontVariationsTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readUInt16(I)I

    move-result p0

    return p0
.end method

.method public axisCount()I
    .locals 1

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/FontVariationsTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    const/16 v0, 0x8

    invoke-interface {p0, v0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readUInt16(I)I

    move-result p0

    return p0
.end method

.method public axisRecords()[Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/VariationAxisRecord;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/FontVariationsTable;->axesArrayOffset()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/FontVariationsTable;->axisCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/FontVariationsTable;->axisSize()I

    move-result v2

    new-array v3, v1, [Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/VariationAxisRecord;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    new-instance v5, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/VariationAxisRecord;

    iget-object v6, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/FontVariationsTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    mul-int v7, v4, v2

    add-int/2addr v7, v0

    invoke-interface {v6, v7}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->subTable(I)Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/VariationAxisRecord;-><init>(Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;)V

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public axisSize()I
    .locals 1

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/FontVariationsTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    const/16 v0, 0xa

    invoke-interface {p0, v0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readUInt16(I)I

    move-result p0

    return p0
.end method

.method public instanceCount()I
    .locals 1

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/FontVariationsTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    const/16 v0, 0xc

    invoke-interface {p0, v0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readUInt16(I)I

    move-result p0

    return p0
.end method

.method public instanceRecords()[Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/InstanceRecord;
    .locals 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/FontVariationsTable;->axesArrayOffset()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/FontVariationsTable;->axisCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/FontVariationsTable;->axisSize()I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/FontVariationsTable;->instanceSize()I

    move-result v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/FontVariationsTable;->a(III)I

    move-result v3

    new-array v4, v3, [Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/InstanceRecord;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    new-instance v6, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/InstanceRecord;

    iget-object v7, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/FontVariationsTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    mul-int v8, v5, v2

    add-int/2addr v8, v0

    invoke-interface {v7, v8}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->subTable(I)Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    move-result-object v7

    invoke-direct {v6, v7, v1, v2}, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/InstanceRecord;-><init>(Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;II)V

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method public instanceSize()I
    .locals 1

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/FontVariationsTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    const/16 v0, 0xe

    invoke-interface {p0, v0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readUInt16(I)I

    move-result p0

    return p0
.end method

.method public majorVersion()I
    .locals 1

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/FontVariationsTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readUInt16(I)I

    move-result p0

    return p0
.end method

.method public minorVersion()I
    .locals 1

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/FontVariationsTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readUInt16(I)I

    move-result p0

    return p0
.end method
