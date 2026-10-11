.class public final Lcom/onyx/harfbuzz/graphics/GlyphAttributes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/harfbuzz/graphics/GlyphAttributes$LineJoin;,
        Lcom/onyx/harfbuzz/graphics/GlyphAttributes$LineCap;
    }
.end annotation


# static fields
.field public static final LINECAP_BUTT:I = 0x0

.field public static final LINECAP_ROUND:I = 0x1

.field public static final LINECAP_SQUARE:I = 0x2

.field public static final LINEJOIN_BEVEL:I = 0x1

.field public static final LINEJOIN_MITER_FIXED:I = 0x3

.field public static final LINEJOIN_MITER_VARIABLE:I = 0x2

.field public static final LINEJOIN_ROUND:I


# instance fields
.field public final a:Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/harfbuzz/graphics/GlyphKey$Color;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;

    invoke-direct {v0}, Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;-><init>()V

    iput-object v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->a:Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;

    new-instance v0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Color;

    invoke-direct {v0}, Lcom/onyx/harfbuzz/graphics/GlyphKey$Color;-><init>()V

    iput-object v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->b:Lcom/onyx/harfbuzz/graphics/GlyphKey$Color;

    new-instance v0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;

    invoke-direct {v0}, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;-><init>()V

    iput-object v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->c:Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;

    return-void
.end method


# virtual methods
.method public colorKey()Lcom/onyx/harfbuzz/graphics/GlyphKey$Color;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->b:Lcom/onyx/harfbuzz/graphics/GlyphKey$Color;

    iget-object v1, p0, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->a:Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;

    invoke-virtual {v0, v1}, Lcom/onyx/harfbuzz/graphics/GlyphKey$Color;->set(Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;)V

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->b:Lcom/onyx/harfbuzz/graphics/GlyphKey$Color;

    return-object p0
.end method

.method public dataKey()Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->a:Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;

    return-object p0
.end method

.method public isAntiAlias()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->a:Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;

    iget-boolean p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->antiAlias:Z

    return p0
.end method

.method public isRenderable()Z
    .locals 2

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->a:Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;

    iget v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->pixelWidth:I

    const/16 v1, 0x40

    if-lt v0, v1, :cond_0

    iget p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->pixelHeight:I

    if-lt p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAntiAlias(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->a:Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;

    iput-boolean p1, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->antiAlias:Z

    return-void
.end method

.method public setForegroundColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->b:Lcom/onyx/harfbuzz/graphics/GlyphKey$Color;

    iput p1, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Color;->foregroundColor:I

    return-void
.end method

.method public setLineCap(I)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->c:Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;

    iput p1, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;->lineCap:I

    return-void
.end method

.method public setLineJoin(I)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->c:Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;

    iput p1, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;->lineJoin:I

    return-void
.end method

.method public setLineRadius(F)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->c:Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;

    const/high16 v0, 0x42800000    # 64.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;->lineRadius:I

    return-void
.end method

.method public setMiterLimit(F)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->c:Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;

    const/high16 v0, 0x47800000    # 65536.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;->miterLimit:I

    return-void
.end method

.method public setPixelHeight(F)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->a:Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;

    const/high16 v0, 0x42800000    # 64.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->pixelHeight:I

    return-void
.end method

.method public setPixelWidth(F)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->a:Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;

    const/high16 v0, 0x42800000    # 64.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->pixelWidth:I

    return-void
.end method

.method public setSkewX(F)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->a:Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;

    const/high16 v0, 0x47800000    # 65536.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->skewX:I

    return-void
.end method

.method public setStrength(I)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->a:Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;

    iput p1, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->strength:I

    return-void
.end method

.method public setThreshold(I)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->a:Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;

    iput p1, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->threshold:I

    return-void
.end method

.method public setTypeface(Lcom/onyx/harfbuzz/graphics/HBTypeface;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->a:Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;

    iput-object p1, p0, Lcom/onyx/harfbuzz/graphics/GlyphKey;->typeface:Lcom/onyx/harfbuzz/graphics/HBTypeface;

    return-void
.end method

.method public strokeKey()Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->c:Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;

    iget-object v1, p0, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->a:Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;

    invoke-virtual {v0, v1}, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;->set(Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;)V

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->c:Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;

    return-object p0
.end method
