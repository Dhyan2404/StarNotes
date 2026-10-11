.class final Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/harfbuzz/Disposable;


# instance fields
.field public a:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/onyx/harfbuzz/internal/JniBridge;->loadLibrary()V

    return-void
.end method

.method public constructor <init>(Lcom/onyx/harfbuzz/graphics/GlyphKey;)V
    .locals 9
    .param p1    # Lcom/onyx/harfbuzz/graphics/GlyphKey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/onyx/harfbuzz/graphics/GlyphKey;->typeface:Lcom/onyx/harfbuzz/graphics/HBTypeface;

    iget-wide v1, v0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    iget v3, p1, Lcom/onyx/harfbuzz/graphics/GlyphKey;->pixelWidth:I

    iget v4, p1, Lcom/onyx/harfbuzz/graphics/GlyphKey;->pixelHeight:I

    const/high16 v5, 0x10000

    iget p1, p1, Lcom/onyx/harfbuzz/graphics/GlyphKey;->skewX:I

    neg-int v6, p1

    const/4 v7, 0x0

    const/high16 v8, 0x10000

    invoke-static/range {v1 .. v8}, Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;->nCreate(JIIIIII)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;->a:J

    return-void
.end method

.method private static native nCreate(JIIIIII)J
.end method

.method private static native nDispose(J)V
.end method

.method private static native nGetGlyphImage(JIIJZ[II)Lcom/onyx/harfbuzz/graphics/GlyphImage;
.end method

.method private static native nGetGlyphOutline(JI)J
.end method

.method private static native nGetGlyphPath(JI)Landroid/graphics/Path;
.end method

.method private static native nGetGlyphType(JI)I
.end method

.method private static native nGetStrokeImage(JJIIII)Lcom/onyx/harfbuzz/graphics/GlyphImage;
.end method


# virtual methods
.method public a(IIJZ[II)Lcom/onyx/harfbuzz/graphics/GlyphImage;
    .locals 9
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object v0, p0

    iget-wide v0, v0, Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;->a:J

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;->nGetGlyphImage(JIIJZ[II)Lcom/onyx/harfbuzz/graphics/GlyphImage;

    move-result-object v0

    return-object v0
.end method

.method public b(IJZ[II)Lcom/onyx/harfbuzz/graphics/GlyphImage;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;->a(IIJZ[II)Lcom/onyx/harfbuzz/graphics/GlyphImage;

    move-result-object p0

    return-object p0
.end method

.method public c(I)Lcom/onyx/harfbuzz/graphics/GlyphOutline;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-wide v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;->a:J

    invoke-static {v0, v1, p1}, Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;->nGetGlyphOutline(JI)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/onyx/harfbuzz/graphics/GlyphOutline;

    invoke-direct {v0, p0, p1}, Lcom/onyx/harfbuzz/graphics/GlyphOutline;-><init>(J)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public d(I)Landroid/graphics/Path;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;->a:J

    invoke-static {v0, v1, p1}, Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;->nGetGlyphPath(JI)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public dispose()V
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;->a:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;->nDispose(J)V

    return-void
.end method

.method public e(I)I
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;->a:J

    invoke-static {v0, v1, p1}, Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;->nGetGlyphType(JI)I

    move-result p0

    return p0
.end method

.method public f(Lcom/onyx/harfbuzz/graphics/GlyphOutline;IIII)Lcom/onyx/harfbuzz/graphics/GlyphImage;
    .locals 8
    .param p1    # Lcom/onyx/harfbuzz/graphics/GlyphOutline;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-wide v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;->a:J

    iget-wide v2, p1, Lcom/onyx/harfbuzz/graphics/GlyphOutline;->a:J

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;->nGetStrokeImage(JJIIII)Lcom/onyx/harfbuzz/graphics/GlyphImage;

    move-result-object p0

    return-object p0
.end method
