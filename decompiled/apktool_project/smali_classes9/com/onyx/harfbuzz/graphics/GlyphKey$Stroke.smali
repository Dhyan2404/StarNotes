.class public final Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;
.super Lcom/onyx/harfbuzz/graphics/GlyphKey;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/harfbuzz/graphics/GlyphKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stroke"
.end annotation


# instance fields
.field public lineCap:I

.field public lineJoin:I

.field public lineRadius:I

.field public miterLimit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/harfbuzz/graphics/GlyphKey;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;

    invoke-direct {v0}, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Lcom/onyx/harfbuzz/graphics/GlyphKey;->set(Lcom/onyx/harfbuzz/graphics/GlyphKey;)V

    .line 4
    iget v1, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;->lineRadius:I

    iput v1, v0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;->lineRadius:I

    .line 5
    iget v1, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;->lineCap:I

    iput v1, v0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;->lineCap:I

    .line 6
    iget v1, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;->lineJoin:I

    iput v1, v0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;->lineJoin:I

    .line 7
    iget p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;->miterLimit:I

    iput p0, v0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;->miterLimit:I

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/onyx/harfbuzz/graphics/GlyphKey;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;->copy()Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;

    invoke-super {p0, p1}, Lcom/onyx/harfbuzz/graphics/GlyphKey;->equals(Lcom/onyx/harfbuzz/graphics/GlyphKey;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;->lineRadius:I

    iget v3, p1, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;->lineRadius:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;->lineCap:I

    iget v3, p1, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;->lineCap:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;->lineJoin:I

    iget v3, p1, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;->lineJoin:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;->miterLimit:I

    iget p1, p1, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;->miterLimit:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lcom/onyx/harfbuzz/graphics/GlyphKey;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;->lineRadius:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;->lineCap:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;->lineJoin:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;->miterLimit:I

    add-int/2addr v0, p0

    return v0
.end method

.method public set(Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/onyx/harfbuzz/graphics/GlyphKey;->set(Lcom/onyx/harfbuzz/graphics/GlyphKey;)V

    return-void
.end method
