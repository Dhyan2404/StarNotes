.class public abstract Lcom/onyx/harfbuzz/graphics/GlyphKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;,
        Lcom/onyx/harfbuzz/graphics/GlyphKey$Color;,
        Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;
    }
.end annotation


# instance fields
.field public antiAlias:Z

.field public pixelHeight:I

.field public pixelWidth:I

.field public skewX:I

.field public strength:I

.field public threshold:I

.field public typeface:Lcom/onyx/harfbuzz/graphics/HBTypeface;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->strength:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->antiAlias:Z

    iput v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->threshold:I

    return-void
.end method


# virtual methods
.method public abstract copy()Lcom/onyx/harfbuzz/graphics/GlyphKey;
.end method

.method public equals(Lcom/onyx/harfbuzz/graphics/GlyphKey;)Z
    .locals 2
    .param p1    # Lcom/onyx/harfbuzz/graphics/GlyphKey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->typeface:Lcom/onyx/harfbuzz/graphics/HBTypeface;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/onyx/harfbuzz/graphics/GlyphKey;->typeface:Lcom/onyx/harfbuzz/graphics/HBTypeface;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/onyx/harfbuzz/graphics/GlyphKey;->typeface:Lcom/onyx/harfbuzz/graphics/HBTypeface;

    if-nez v0, :cond_1

    :goto_0
    iget v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->pixelWidth:I

    iget v1, p1, Lcom/onyx/harfbuzz/graphics/GlyphKey;->pixelWidth:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->pixelHeight:I

    iget v1, p1, Lcom/onyx/harfbuzz/graphics/GlyphKey;->pixelHeight:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->skewX:I

    iget v1, p1, Lcom/onyx/harfbuzz/graphics/GlyphKey;->skewX:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->antiAlias:Z

    iget-boolean v1, p1, Lcom/onyx/harfbuzz/graphics/GlyphKey;->antiAlias:Z

    if-ne v0, v1, :cond_1

    iget p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->threshold:I

    iget p1, p1, Lcom/onyx/harfbuzz/graphics/GlyphKey;->threshold:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->typeface:Lcom/onyx/harfbuzz/graphics/HBTypeface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->pixelWidth:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->pixelHeight:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->skewX:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->antiAlias:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->threshold:I

    add-int/2addr v0, p0

    return v0
.end method

.method public set(Lcom/onyx/harfbuzz/graphics/GlyphKey;)V
    .locals 1
    .param p1    # Lcom/onyx/harfbuzz/graphics/GlyphKey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, Lcom/onyx/harfbuzz/graphics/GlyphKey;->typeface:Lcom/onyx/harfbuzz/graphics/HBTypeface;

    iput-object v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->typeface:Lcom/onyx/harfbuzz/graphics/HBTypeface;

    iget v0, p1, Lcom/onyx/harfbuzz/graphics/GlyphKey;->pixelWidth:I

    iput v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->pixelWidth:I

    iget v0, p1, Lcom/onyx/harfbuzz/graphics/GlyphKey;->pixelHeight:I

    iput v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->pixelHeight:I

    iget v0, p1, Lcom/onyx/harfbuzz/graphics/GlyphKey;->skewX:I

    iput v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->skewX:I

    iget v0, p1, Lcom/onyx/harfbuzz/graphics/GlyphKey;->strength:I

    iput v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->strength:I

    iget-boolean v0, p1, Lcom/onyx/harfbuzz/graphics/GlyphKey;->antiAlias:Z

    iput-boolean v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->antiAlias:Z

    iget p1, p1, Lcom/onyx/harfbuzz/graphics/GlyphKey;->threshold:I

    iput p1, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->threshold:I

    return-void
.end method
