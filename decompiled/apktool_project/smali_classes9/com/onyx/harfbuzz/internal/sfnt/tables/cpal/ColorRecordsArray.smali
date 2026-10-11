.class public final Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorRecordsArray;
.super Ljava/lang/Object;
.source "SourceFile"


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

    iput-object p1, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorRecordsArray;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 4
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    mul-int/lit8 p1, p1, 0x4

    iget-object v0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorRecordsArray;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    invoke-interface {v0, p1}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readUInt8(I)S

    move-result v0

    iget-object v1, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorRecordsArray;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v2}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readUInt8(I)S

    move-result v1

    iget-object v2, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorRecordsArray;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    add-int/lit8 v3, p1, 0x2

    invoke-interface {v2, v3}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readUInt8(I)S

    move-result v2

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorRecordsArray;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    add-int/lit8 p1, p1, 0x3

    invoke-interface {p0, p1}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readUInt8(I)S

    move-result p0

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method
