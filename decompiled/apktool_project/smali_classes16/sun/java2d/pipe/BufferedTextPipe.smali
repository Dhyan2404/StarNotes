.class public abstract Lsun/java2d/pipe/BufferedTextPipe;
.super Lsun/java2d/pipe/GlyphListPipe;
.source "SourceFile"


# static fields
.field private static final BYTES_PER_GLYPH_IMAGE:I = 0x8

.field private static final BYTES_PER_GLYPH_POSITION:I = 0x8

.field private static final OFFSET_CONTRAST:I = 0x8

.field private static final OFFSET_POSITIONS:I = 0x0

.field private static final OFFSET_RGBORDER:I = 0x2

.field private static final OFFSET_SUBPIXPOS:I = 0x1


# instance fields
.field protected final rq:Lsun/java2d/pipe/RenderQueue;


# direct methods
.method public constructor <init>(Lsun/java2d/pipe/RenderQueue;)V
    .locals 0

    invoke-direct {p0}, Lsun/java2d/pipe/GlyphListPipe;-><init>()V

    iput-object p1, p0, Lsun/java2d/pipe/BufferedTextPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    return-void
.end method

.method private static createPackedParams(Lsun/java2d/SunGraphics2D;Lsun/font/GlyphList;)I
    .locals 2

    invoke-virtual {p1}, Lsun/font/GlyphList;->usePositions()Z

    move-result v0

    shl-int/lit8 v0, v0, 0x0

    invoke-virtual {p1}, Lsun/font/GlyphList;->isSubPixPos()Z

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    invoke-virtual {p1}, Lsun/font/GlyphList;->isRGBOrder()Z

    move-result p1

    shl-int/lit8 p1, p1, 0x2

    or-int/2addr p1, v0

    iget p0, p0, Lsun/java2d/SunGraphics2D;->lcdTextContrast:I

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, p1

    return p0
.end method

.method private enqueueGlyphList(Lsun/java2d/SunGraphics2D;Lsun/font/GlyphList;)V
    .locals 10

    iget-object v0, p0, Lsun/java2d/pipe/BufferedTextPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderQueue;->getBuffer()Lsun/java2d/pipe/RenderBuffer;

    move-result-object v0

    invoke-virtual {p2}, Lsun/font/GlyphList;->getNumGlyphs()I

    move-result v3

    mul-int/lit8 v1, v3, 0x8

    invoke-virtual {p2}, Lsun/font/GlyphList;->usePositions()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    add-int/lit8 v1, v1, 0x18

    add-int/2addr v1, v2

    invoke-virtual {p2}, Lsun/font/GlyphList;->getImages()[J

    move-result-object v8

    invoke-virtual {p2}, Lsun/font/GlyphList;->getX()F

    move-result v2

    const/high16 v5, 0x3f000000    # 0.5f

    add-float v6, v2, v5

    invoke-virtual {p2}, Lsun/font/GlyphList;->getY()F

    move-result v2

    add-float v7, v2, v5

    iget-object v2, p0, Lsun/java2d/pipe/BufferedTextPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {p2}, Lsun/font/GlyphList;->getStrike()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Lsun/java2d/pipe/RenderQueue;->addReference(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderBuffer;->capacity()I

    move-result v2

    if-gt v1, v2, :cond_2

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lsun/java2d/pipe/BufferedTextPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v1}, Lsun/java2d/pipe/RenderQueue;->flushNow()V

    :cond_1
    iget-object p0, p0, Lsun/java2d/pipe/BufferedTextPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lsun/java2d/pipe/RenderQueue;->ensureAlignment(I)V

    const/16 p0, 0x28

    invoke-virtual {v0, p0}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v0, v3}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    invoke-static {p1, p2}, Lsun/java2d/pipe/BufferedTextPipe;->createPackedParams(Lsun/java2d/SunGraphics2D;Lsun/font/GlyphList;)I

    move-result p0

    invoke-virtual {v0, p0}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v0, v6}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v0, v7}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v0, v8, v4, v3}, Lsun/java2d/pipe/RenderBuffer;->put([JII)Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {p2}, Lsun/font/GlyphList;->usePositions()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p2}, Lsun/font/GlyphList;->getPositions()[F

    move-result-object p0

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, p0, v4, v3}, Lsun/java2d/pipe/RenderBuffer;->put([FII)Lsun/java2d/pipe/RenderBuffer;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lsun/java2d/pipe/BufferedTextPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    new-instance v9, Lsun/java2d/pipe/BufferedTextPipe$1;

    move-object v1, v9

    move-object v2, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v1 .. v8}, Lsun/java2d/pipe/BufferedTextPipe$1;-><init>(Lsun/java2d/pipe/BufferedTextPipe;ILsun/font/GlyphList;Lsun/java2d/SunGraphics2D;FF[J)V

    invoke-virtual {v0, v9}, Lsun/java2d/pipe/RenderQueue;->flushAndInvokeNow(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public abstract drawGlyphList(IZZZIFF[J[F)V
.end method

.method public drawGlyphList(Lsun/java2d/SunGraphics2D;Lsun/font/GlyphList;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->composite:Ljava/awt/Composite;

    .line 2
    sget-object v1, Ljava/awt/AlphaComposite;->Src:Ljava/awt/AlphaComposite;

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Ljava/awt/AlphaComposite;->SrcOver:Ljava/awt/AlphaComposite;

    .line 4
    :cond_0
    iget-object v1, p0, Lsun/java2d/pipe/BufferedTextPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v1}, Lsun/java2d/pipe/RenderQueue;->lock()V

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lsun/java2d/pipe/BufferedTextPipe;->validateContext(Lsun/java2d/SunGraphics2D;Ljava/awt/Composite;)V

    .line 6
    invoke-direct {p0, p1, p2}, Lsun/java2d/pipe/BufferedTextPipe;->enqueueGlyphList(Lsun/java2d/SunGraphics2D;Lsun/font/GlyphList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p0, p0, Lsun/java2d/pipe/BufferedTextPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {p0}, Lsun/java2d/pipe/RenderQueue;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lsun/java2d/pipe/BufferedTextPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {p0}, Lsun/java2d/pipe/RenderQueue;->unlock()V

    .line 8
    throw p1
.end method

.method public abstract validateContext(Lsun/java2d/SunGraphics2D;Ljava/awt/Composite;)V
.end method
