.class public final Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;
.super Lcom/onyx/harfbuzz/graphics/GlyphKey;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/harfbuzz/graphics/GlyphKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/harfbuzz/graphics/GlyphKey;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;

    invoke-direct {v0}, Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Lcom/onyx/harfbuzz/graphics/GlyphKey;->set(Lcom/onyx/harfbuzz/graphics/GlyphKey;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/onyx/harfbuzz/graphics/GlyphKey;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;->copy()Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;

    invoke-super {p0, p1}, Lcom/onyx/harfbuzz/graphics/GlyphKey;->equals(Lcom/onyx/harfbuzz/graphics/GlyphKey;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic hashCode()I
    .locals 0

    invoke-super {p0}, Lcom/onyx/harfbuzz/graphics/GlyphKey;->hashCode()I

    move-result p0

    return p0
.end method
