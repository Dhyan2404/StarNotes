.class public abstract Lsun/java2d/pipe/BufferedContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_CONTEXT_FLAGS:I = 0x0

.field public static final SRC_IS_OPAQUE:I = 0x1

.field public static final USE_MASK:I = 0x2

.field protected static currentContext:Lsun/java2d/pipe/BufferedContext;


# instance fields
.field protected buf:Lsun/java2d/pipe/RenderBuffer;

.field private isValidatedPaintJustAColor:Z

.field protected rq:Lsun/java2d/pipe/RenderQueue;

.field private transform:Ljava/awt/geom/AffineTransform;

.field private validClipRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lsun/java2d/pipe/Region;",
            ">;"
        }
    .end annotation
.end field

.field private validCompRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Ljava/awt/Composite;",
            ">;"
        }
    .end annotation
.end field

.field private validDstDataRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lsun/java2d/pipe/hw/AccelSurface;",
            ">;"
        }
    .end annotation
.end field

.field private validPaintRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Ljava/awt/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private validSrcDataRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lsun/java2d/pipe/hw/AccelSurface;",
            ">;"
        }
    .end annotation
.end field

.field private validatedFlags:I

.field private validatedRGB:I

.field private xformInUse:Z


# direct methods
.method public constructor <init>(Lsun/java2d/pipe/RenderQueue;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lsun/java2d/pipe/BufferedContext;->validSrcDataRef:Ljava/lang/ref/Reference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lsun/java2d/pipe/BufferedContext;->validDstDataRef:Ljava/lang/ref/Reference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lsun/java2d/pipe/BufferedContext;->validClipRef:Ljava/lang/ref/Reference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lsun/java2d/pipe/BufferedContext;->validCompRef:Ljava/lang/ref/Reference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lsun/java2d/pipe/BufferedContext;->validPaintRef:Ljava/lang/ref/Reference;

    iput-object p1, p0, Lsun/java2d/pipe/BufferedContext;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {p1}, Lsun/java2d/pipe/RenderQueue;->getBuffer()Lsun/java2d/pipe/RenderBuffer;

    move-result-object p1

    iput-object p1, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    return-void
.end method

.method private invalidateSurfaces()V
    .locals 1

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->validSrcDataRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    iget-object p0, p0, Lsun/java2d/pipe/BufferedContext;->validDstDataRef:Ljava/lang/ref/Reference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->clear()V

    return-void
.end method

.method private resetClip()V
    .locals 2

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->rq:Lsun/java2d/pipe/RenderQueue;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lsun/java2d/pipe/RenderQueue;->ensureCapacity(I)V

    iget-object p0, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    const/16 v0, 0x37

    invoke-virtual {p0, v0}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    return-void
.end method

.method private resetComposite()V
    .locals 2

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->rq:Lsun/java2d/pipe/RenderQueue;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lsun/java2d/pipe/RenderQueue;->ensureCapacity(I)V

    iget-object p0, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    return-void
.end method

.method private resetTransform()V
    .locals 2

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->rq:Lsun/java2d/pipe/RenderQueue;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lsun/java2d/pipe/RenderQueue;->ensureCapacity(I)V

    iget-object p0, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    return-void
.end method

.method private setClip(Lsun/java2d/pipe/Region;)V
    .locals 10

    invoke-virtual {p1}, Lsun/java2d/pipe/Region;->isRectangular()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->rq:Lsun/java2d/pipe/RenderQueue;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lsun/java2d/pipe/RenderQueue;->ensureCapacity(I)V

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {p1}, Lsun/java2d/pipe/Region;->getLoX()I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lsun/java2d/pipe/Region;->getLoY()I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object p0, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {p1}, Lsun/java2d/pipe/Region;->getHiX()I

    move-result v0

    invoke-virtual {p0, v0}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    move-result-object p0

    invoke-virtual {p1}, Lsun/java2d/pipe/Region;->getHiY()I

    move-result p1

    invoke-virtual {p0, p1}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->rq:Lsun/java2d/pipe/RenderQueue;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lsun/java2d/pipe/RenderQueue;->ensureCapacity(I)V

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderBuffer;->position()I

    move-result v0

    iget-object v2, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object v2, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v2}, Lsun/java2d/pipe/RenderBuffer;->remaining()I

    move-result v2

    div-int/lit8 v2, v2, 0x10

    const/4 v4, 0x4

    new-array v5, v4, [I

    invoke-virtual {p1}, Lsun/java2d/pipe/Region;->getSpanIterator()Lsun/java2d/pipe/SpanIterator;

    move-result-object p1

    move v6, v3

    :goto_0
    invoke-interface {p1, v5}, Lsun/java2d/pipe/SpanIterator;->nextSpan([I)Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v2, :cond_1

    iget-object v2, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v2, v0, v6}, Lsun/java2d/pipe/RenderBuffer;->putInt(II)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderQueue;->flushNow()V

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v0, v1}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderBuffer;->position()I

    move-result v0

    iget-object v2, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v2, v3}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object v2, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v2}, Lsun/java2d/pipe/RenderBuffer;->remaining()I

    move-result v2

    div-int/lit8 v2, v2, 0x10

    move v6, v3

    :cond_1
    iget-object v7, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    aget v8, v5, v3

    invoke-virtual {v7, v8}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object v7, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    const/4 v8, 0x1

    aget v9, v5, v8

    invoke-virtual {v7, v9}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object v7, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    const/4 v9, 0x2

    aget v9, v5, v9

    invoke-virtual {v7, v9}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object v7, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    const/4 v9, 0x3

    aget v9, v5, v9

    invoke-virtual {v7, v9}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    add-int/2addr v6, v8

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {p1, v0, v6}, Lsun/java2d/pipe/RenderBuffer;->putInt(II)Lsun/java2d/pipe/RenderBuffer;

    iget-object p1, p0, Lsun/java2d/pipe/BufferedContext;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {p1, v4}, Lsun/java2d/pipe/RenderQueue;->ensureCapacity(I)V

    iget-object p0, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    const/16 p1, 0x36

    invoke-virtual {p0, p1}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    :goto_1
    return-void
.end method

.method private setComposite(Ljava/awt/Composite;I)V
    .locals 2

    instance-of v0, p1, Ljava/awt/AlphaComposite;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/awt/AlphaComposite;

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->rq:Lsun/java2d/pipe/RenderQueue;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lsun/java2d/pipe/RenderQueue;->ensureCapacity(I)V

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {p1}, Ljava/awt/AlphaComposite;->getRule()I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {p1}, Ljava/awt/AlphaComposite;->getAlpha()F

    move-result p1

    invoke-virtual {v0, p1}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    iget-object p0, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {p0, p2}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lsun/java2d/loops/XORComposite;

    if-eqz p2, :cond_1

    check-cast p1, Lsun/java2d/loops/XORComposite;

    invoke-virtual {p1}, Lsun/java2d/loops/XORComposite;->getXorPixel()I

    move-result p1

    iget-object p2, p0, Lsun/java2d/pipe/BufferedContext;->rq:Lsun/java2d/pipe/RenderQueue;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lsun/java2d/pipe/RenderQueue;->ensureCapacity(I)V

    iget-object p2, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    const/16 v0, 0x39

    invoke-virtual {p2, v0}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object p0, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {p0, p1}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/InternalError;

    const-string p1, "not yet implemented"

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setSurfaces(Lsun/java2d/pipe/hw/AccelSurface;Lsun/java2d/pipe/hw/AccelSurface;)V
    .locals 3

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->rq:Lsun/java2d/pipe/RenderQueue;

    const/16 v1, 0x14

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lsun/java2d/pipe/RenderQueue;->ensureCapacityAndAlignment(II)V

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-interface {p1}, Lsun/java2d/pipe/hw/AccelSurface;->getNativeOps()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lsun/java2d/pipe/RenderBuffer;->putLong(J)Lsun/java2d/pipe/RenderBuffer;

    iget-object p0, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-interface {p2}, Lsun/java2d/pipe/hw/AccelSurface;->getNativeOps()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lsun/java2d/pipe/RenderBuffer;->putLong(J)Lsun/java2d/pipe/RenderBuffer;

    return-void
.end method

.method private setTransform(Ljava/awt/geom/AffineTransform;)V
    .locals 3

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->rq:Lsun/java2d/pipe/RenderQueue;

    const/16 v1, 0x34

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lsun/java2d/pipe/RenderQueue;->ensureCapacityAndAlignment(II)V

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lsun/java2d/pipe/RenderBuffer;->putDouble(D)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lsun/java2d/pipe/RenderBuffer;->putDouble(D)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lsun/java2d/pipe/RenderBuffer;->putDouble(D)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lsun/java2d/pipe/RenderBuffer;->putDouble(D)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lsun/java2d/pipe/RenderBuffer;->putDouble(D)Lsun/java2d/pipe/RenderBuffer;

    iget-object p0, p0, Lsun/java2d/pipe/BufferedContext;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lsun/java2d/pipe/RenderBuffer;->putDouble(D)Lsun/java2d/pipe/RenderBuffer;

    return-void
.end method

.method public static validateContext(Lsun/java2d/pipe/hw/AccelSurface;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p0

    .line 3
    invoke-static/range {v0 .. v7}, Lsun/java2d/pipe/BufferedContext;->validateContext(Lsun/java2d/pipe/hw/AccelSurface;Lsun/java2d/pipe/hw/AccelSurface;Lsun/java2d/pipe/Region;Ljava/awt/Composite;Ljava/awt/geom/AffineTransform;Ljava/awt/Paint;Lsun/java2d/SunGraphics2D;I)V

    return-void
.end method

.method public static validateContext(Lsun/java2d/pipe/hw/AccelSurface;Lsun/java2d/pipe/hw/AccelSurface;Lsun/java2d/pipe/Region;Ljava/awt/Composite;Ljava/awt/geom/AffineTransform;Ljava/awt/Paint;Lsun/java2d/SunGraphics2D;I)V
    .locals 9

    .line 1
    invoke-interface {p1}, Lsun/java2d/pipe/hw/BufferedContextProvider;->getContext()Lsun/java2d/pipe/BufferedContext;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    .line 2
    invoke-virtual/range {v0 .. v8}, Lsun/java2d/pipe/BufferedContext;->validate(Lsun/java2d/pipe/hw/AccelSurface;Lsun/java2d/pipe/hw/AccelSurface;Lsun/java2d/pipe/Region;Ljava/awt/Composite;Ljava/awt/geom/AffineTransform;Ljava/awt/Paint;Lsun/java2d/SunGraphics2D;I)V

    return-void
.end method


# virtual methods
.method public abstract getRenderQueue()Lsun/java2d/pipe/RenderQueue;
.end method

.method public invalidateContext()V
    .locals 1

    invoke-direct {p0}, Lsun/java2d/pipe/BufferedContext;->resetTransform()V

    invoke-direct {p0}, Lsun/java2d/pipe/BufferedContext;->resetComposite()V

    invoke-direct {p0}, Lsun/java2d/pipe/BufferedContext;->resetClip()V

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-static {v0}, Lsun/java2d/pipe/BufferedPaints;->resetPaint(Lsun/java2d/pipe/RenderQueue;)V

    invoke-direct {p0}, Lsun/java2d/pipe/BufferedContext;->invalidateSurfaces()V

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->validCompRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->validClipRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->validPaintRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/java2d/pipe/BufferedContext;->isValidatedPaintJustAColor:Z

    iput-boolean v0, p0, Lsun/java2d/pipe/BufferedContext;->xformInUse:Z

    return-void
.end method

.method public abstract restoreState()V
.end method

.method public abstract saveState()V
.end method

.method public validate(Lsun/java2d/pipe/hw/AccelSurface;Lsun/java2d/pipe/hw/AccelSurface;Lsun/java2d/pipe/Region;Ljava/awt/Composite;Ljava/awt/geom/AffineTransform;Ljava/awt/Paint;Lsun/java2d/SunGraphics2D;I)V
    .locals 6

    invoke-interface {p2}, Lsun/java2d/pipe/hw/AccelSurface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p2}, Lsun/java2d/pipe/hw/AccelSurface;->isSurfaceLost()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-interface {p1}, Lsun/java2d/pipe/hw/AccelSurface;->isSurfaceLost()Z

    move-result v0

    if-nez v0, :cond_16

    instance-of v0, p6, Ljava/awt/Color;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v0, p6

    check-cast v0, Ljava/awt/Color;

    invoke-virtual {v0}, Ljava/awt/Color;->getRGB()I

    move-result v0

    iget-boolean v3, p0, Lsun/java2d/pipe/BufferedContext;->isValidatedPaintJustAColor:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lsun/java2d/pipe/BufferedContext;->validatedRGB:I

    if-eq v0, v3, :cond_2

    iput v0, p0, Lsun/java2d/pipe/BufferedContext;->validatedRGB:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lsun/java2d/pipe/BufferedContext;->validatedRGB:I

    iput-boolean v1, p0, Lsun/java2d/pipe/BufferedContext;->isValidatedPaintJustAColor:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lsun/java2d/pipe/BufferedContext;->validPaintRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p6, :cond_2

    iput-boolean v2, p0, Lsun/java2d/pipe/BufferedContext;->isValidatedPaintJustAColor:Z

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iget-object v3, p0, Lsun/java2d/pipe/BufferedContext;->validSrcDataRef:Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/java2d/pipe/hw/AccelSurface;

    iget-object v4, p0, Lsun/java2d/pipe/BufferedContext;->validDstDataRef:Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/java2d/pipe/hw/AccelSurface;

    sget-object v5, Lsun/java2d/pipe/BufferedContext;->currentContext:Lsun/java2d/pipe/BufferedContext;

    if-ne v5, p0, :cond_4

    if-ne p1, v3, :cond_4

    if-eq p2, v4, :cond_3

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_4

    :cond_4
    :goto_2
    if-eq p2, v4, :cond_5

    move v3, v1

    goto :goto_3

    :cond_5
    move v3, v2

    :goto_3
    if-nez p6, :cond_6

    move v0, v1

    :cond_6
    invoke-direct {p0, p1, p2}, Lsun/java2d/pipe/BufferedContext;->setSurfaces(Lsun/java2d/pipe/hw/AccelSurface;Lsun/java2d/pipe/hw/AccelSurface;)V

    sput-object p0, Lsun/java2d/pipe/BufferedContext;->currentContext:Lsun/java2d/pipe/BufferedContext;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lsun/java2d/pipe/BufferedContext;->validSrcDataRef:Ljava/lang/ref/Reference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lsun/java2d/pipe/BufferedContext;->validDstDataRef:Ljava/lang/ref/Reference;

    :goto_4
    iget-object p1, p0, Lsun/java2d/pipe/BufferedContext;->validClipRef:Ljava/lang/ref/Reference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsun/java2d/pipe/Region;

    if-ne p3, p1, :cond_7

    if-eqz v3, :cond_b

    :cond_7
    if-eqz p3, :cond_9

    if-nez v3, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lsun/java2d/pipe/Region;->isRectangular()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p3}, Lsun/java2d/pipe/Region;->isRectangular()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p3}, Lsun/java2d/pipe/Region;->getLoX()I

    move-result v3

    invoke-virtual {p1}, Lsun/java2d/pipe/Region;->getLoX()I

    move-result v4

    if-ne v3, v4, :cond_8

    invoke-virtual {p3}, Lsun/java2d/pipe/Region;->getLoY()I

    move-result v3

    invoke-virtual {p1}, Lsun/java2d/pipe/Region;->getLoY()I

    move-result v4

    if-ne v3, v4, :cond_8

    invoke-virtual {p3}, Lsun/java2d/pipe/Region;->getHiX()I

    move-result v3

    invoke-virtual {p1}, Lsun/java2d/pipe/Region;->getHiX()I

    move-result v4

    if-ne v3, v4, :cond_8

    invoke-virtual {p3}, Lsun/java2d/pipe/Region;->getHiY()I

    move-result v3

    invoke-virtual {p1}, Lsun/java2d/pipe/Region;->getHiY()I

    move-result p1

    if-eq v3, p1, :cond_a

    :cond_8
    invoke-direct {p0, p3}, Lsun/java2d/pipe/BufferedContext;->setClip(Lsun/java2d/pipe/Region;)V

    goto :goto_5

    :cond_9
    invoke-direct {p0}, Lsun/java2d/pipe/BufferedContext;->resetClip()V

    :cond_a
    :goto_5
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lsun/java2d/pipe/BufferedContext;->validClipRef:Ljava/lang/ref/Reference;

    :cond_b
    iget-object p1, p0, Lsun/java2d/pipe/BufferedContext;->validCompRef:Ljava/lang/ref/Reference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p4, p1, :cond_c

    iget p1, p0, Lsun/java2d/pipe/BufferedContext;->validatedFlags:I

    if-eq p8, p1, :cond_e

    :cond_c
    if-eqz p4, :cond_d

    invoke-direct {p0, p4, p8}, Lsun/java2d/pipe/BufferedContext;->setComposite(Ljava/awt/Composite;I)V

    goto :goto_6

    :cond_d
    invoke-direct {p0}, Lsun/java2d/pipe/BufferedContext;->resetComposite()V

    :goto_6
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lsun/java2d/pipe/BufferedContext;->validCompRef:Ljava/lang/ref/Reference;

    iput p8, p0, Lsun/java2d/pipe/BufferedContext;->validatedFlags:I

    move v0, v1

    :cond_e
    if-nez p5, :cond_11

    iget-boolean p1, p0, Lsun/java2d/pipe/BufferedContext;->xformInUse:Z

    if-eqz p1, :cond_f

    invoke-direct {p0}, Lsun/java2d/pipe/BufferedContext;->resetTransform()V

    iput-boolean v2, p0, Lsun/java2d/pipe/BufferedContext;->xformInUse:Z

    :goto_7
    move v2, v1

    goto :goto_8

    :cond_f
    if-eqz p7, :cond_10

    iget-object p1, p7, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    iget-object p3, p0, Lsun/java2d/pipe/BufferedContext;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p1, p3}, Ljava/awt/geom/AffineTransform;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_7

    :cond_10
    :goto_8
    if-eqz p7, :cond_12

    if-eqz v2, :cond_12

    new-instance p1, Ljava/awt/geom/AffineTransform;

    iget-object p3, p7, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-direct {p1, p3}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    iput-object p1, p0, Lsun/java2d/pipe/BufferedContext;->transform:Ljava/awt/geom/AffineTransform;

    goto :goto_9

    :cond_11
    invoke-direct {p0, p5}, Lsun/java2d/pipe/BufferedContext;->setTransform(Ljava/awt/geom/AffineTransform;)V

    iput-boolean v1, p0, Lsun/java2d/pipe/BufferedContext;->xformInUse:Z

    move v2, v1

    :cond_12
    :goto_9
    iget-boolean p1, p0, Lsun/java2d/pipe/BufferedContext;->isValidatedPaintJustAColor:Z

    if-nez p1, :cond_13

    if-eqz v2, :cond_13

    goto :goto_a

    :cond_13
    move v1, v0

    :goto_a
    if-eqz v1, :cond_15

    if-eqz p6, :cond_14

    iget-object p1, p0, Lsun/java2d/pipe/BufferedContext;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-static {p1, p7, p6, p8}, Lsun/java2d/pipe/BufferedPaints;->setPaint(Lsun/java2d/pipe/RenderQueue;Lsun/java2d/SunGraphics2D;Ljava/awt/Paint;I)V

    goto :goto_b

    :cond_14
    iget-object p1, p0, Lsun/java2d/pipe/BufferedContext;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-static {p1}, Lsun/java2d/pipe/BufferedPaints;->resetPaint(Lsun/java2d/pipe/RenderQueue;)V

    :goto_b
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lsun/java2d/pipe/BufferedContext;->validPaintRef:Ljava/lang/ref/Reference;

    :cond_15
    invoke-interface {p2}, Lsun/java2d/pipe/hw/AccelSurface;->markDirty()V

    return-void

    :cond_16
    invoke-virtual {p0}, Lsun/java2d/pipe/BufferedContext;->invalidateContext()V

    new-instance p0, Lsun/java2d/InvalidPipeException;

    const-string p1, "bounds changed or surface lost"

    invoke-direct {p0, p1}, Lsun/java2d/InvalidPipeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
