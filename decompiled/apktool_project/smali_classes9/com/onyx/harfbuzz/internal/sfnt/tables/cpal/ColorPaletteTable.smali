.class public final Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:I = 0x0

.field public static final c:I = 0x2

.field public static final d:I = 0x4

.field public static final e:I = 0x6

.field public static final f:I = 0x8

.field public static final g:I = 0xc

.field public static final h:I = 0x0

.field public static final i:I = 0x4

.field public static final j:I = 0x8


# instance fields
.field public final a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;)V
    .locals 0
    .param p1    # Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    return-void
.end method

.method public static from(Lcom/onyx/harfbuzz/graphics/HBTypeface;)Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;
    .locals 2
    .param p0    # Lcom/onyx/harfbuzz/graphics/HBTypeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "CPAL"

    invoke-static {v0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTag;->make(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getTableData(I)[B

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;

    new-instance v1, Lcom/onyx/harfbuzz/internal/sfnt/DataTable;

    invoke-direct {v1, p0}, Lcom/onyx/harfbuzz/internal/sfnt/DataTable;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;-><init>(Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public colorRecordIndexAt(I)I
    .locals 0

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0xc

    invoke-interface {p0, p1}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readUInt16(I)I

    move-result p0

    return p0
.end method

.method public colorRecords()Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorRecordsArray;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorRecordsArray;

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    const/16 v1, 0x8

    invoke-interface {p0, v1}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readOffset32(I)I

    move-result v1

    invoke-interface {p0, v1}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->subTable(I)Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorRecordsArray;-><init>(Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;)V

    return-object v0
.end method

.method public numColorRecords()I
    .locals 1

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    const/4 v0, 0x6

    invoke-interface {p0, v0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readUInt16(I)I

    move-result p0

    return p0
.end method

.method public numPaletteEntries()I
    .locals 1

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readUInt16(I)I

    move-result p0

    return p0
.end method

.method public numPalettes()I
    .locals 1

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readUInt16(I)I

    move-result p0

    return p0
.end method

.method public paletteEntryLabels()Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/PaletteLabelsArray;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;->version()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;->numColorRecords()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xc

    iget-object v1, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    add-int/lit8 v0, v0, 0x8

    invoke-interface {v1, v0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readOffset32(I)I

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    new-instance v1, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/PaletteLabelsArray;

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    invoke-interface {p0, v0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->subTable(I)Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/PaletteLabelsArray;-><init>(Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;)V

    return-object v1
.end method

.method public paletteLabels()Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/PaletteLabelsArray;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;->version()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;->numColorRecords()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xc

    iget-object v1, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    add-int/lit8 v0, v0, 0x4

    invoke-interface {v1, v0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readOffset32(I)I

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    new-instance v1, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/PaletteLabelsArray;

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    invoke-interface {p0, v0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->subTable(I)Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/PaletteLabelsArray;-><init>(Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;)V

    return-object v1
.end method

.method public paletteTypes()Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/PaletteTypesArray;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;->version()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;->numColorRecords()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xc

    iget-object v1, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    add-int/lit8 v0, v0, 0x0

    invoke-interface {v1, v0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readOffset32(I)I

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    new-instance v1, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/PaletteTypesArray;

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    invoke-interface {p0, v0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->subTable(I)Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/PaletteTypesArray;-><init>(Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;)V

    return-object v1
.end method

.method public version()I
    .locals 1

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readUInt16(I)I

    move-result p0

    return p0
.end method
