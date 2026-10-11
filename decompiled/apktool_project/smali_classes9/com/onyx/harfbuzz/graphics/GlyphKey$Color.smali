.class public final Lcom/onyx/harfbuzz/graphics/GlyphKey$Color;
.super Lcom/onyx/harfbuzz/graphics/GlyphKey;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/harfbuzz/graphics/GlyphKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Color"
.end annotation


# instance fields
.field public foregroundColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/harfbuzz/graphics/GlyphKey;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/onyx/harfbuzz/graphics/GlyphKey$Color;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Color;

    invoke-direct {v0}, Lcom/onyx/harfbuzz/graphics/GlyphKey$Color;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Lcom/onyx/harfbuzz/graphics/GlyphKey;->set(Lcom/onyx/harfbuzz/graphics/GlyphKey;)V

    .line 4
    iget p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Color;->foregroundColor:I

    iput p0, v0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Color;->foregroundColor:I

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/onyx/harfbuzz/graphics/GlyphKey;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/GlyphKey$Color;->copy()Lcom/onyx/harfbuzz/graphics/GlyphKey$Color;

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

    const-class v2, Lcom/onyx/harfbuzz/graphics/GlyphKey$Color;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/onyx/harfbuzz/graphics/GlyphKey$Color;

    invoke-super {p0, p1}, Lcom/onyx/harfbuzz/graphics/GlyphKey;->equals(Lcom/onyx/harfbuzz/graphics/GlyphKey;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Color;->foregroundColor:I

    iget p1, p1, Lcom/onyx/harfbuzz/graphics/GlyphKey$Color;->foregroundColor:I

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
    .locals 1

    invoke-super {p0}, Lcom/onyx/harfbuzz/graphics/GlyphKey;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Color;->foregroundColor:I

    add-int/2addr v0, p0

    return v0
.end method

.method public set(Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/onyx/harfbuzz/graphics/GlyphKey;->set(Lcom/onyx/harfbuzz/graphics/GlyphKey;)V

    return-void
.end method
