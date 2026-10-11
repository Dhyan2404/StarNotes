.class public final Lio/nano/tex/TeXRender;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private nativePtr:J

.field private recorder:Lio/nano/tex/ActionRecorder;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/nano/tex/TeXRender;->nativePtr:J

    return-void
.end method

.method private static native nDraw(JLio/nano/tex/ActionRecorder;II)V
.end method

.method private static native nFinalize(J)V
.end method

.method private static native nGetBaseline(J)F
.end method

.method private static native nGetDepth(J)I
.end method

.method private static native nGetHeight(J)I
.end method

.method private static native nGetTextSize(J)F
.end method

.method private static native nGetWidth(J)I
.end method

.method private static native nSetForeground(JI)V
.end method

.method private static native nSetHeight(JII)V
.end method

.method private static native nSetTextSize(JF)V
.end method

.method private static native nSetWidth(JII)V
.end method


# virtual methods
.method public draw(Lio/nano/tex/Graphics2D;II)V
    .locals 4

    iget-object v0, p0, Lio/nano/tex/TeXRender;->recorder:Lio/nano/tex/ActionRecorder;

    if-nez v0, :cond_0

    new-instance v0, Lio/nano/tex/ActionRecorder;

    invoke-direct {v0}, Lio/nano/tex/ActionRecorder;-><init>()V

    iput-object v0, p0, Lio/nano/tex/TeXRender;->recorder:Lio/nano/tex/ActionRecorder;

    iget-wide v1, p0, Lio/nano/tex/TeXRender;->nativePtr:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, v3}, Lio/nano/tex/TeXRender;->nDraw(JLio/nano/tex/ActionRecorder;II)V

    :cond_0
    iget-object v0, p0, Lio/nano/tex/TeXRender;->recorder:Lio/nano/tex/ActionRecorder;

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v0, p2, p3}, Lio/nano/tex/ActionRecorder;->setPosition(FF)V

    iget-object p0, p0, Lio/nano/tex/TeXRender;->recorder:Lio/nano/tex/ActionRecorder;

    invoke-virtual {p0, p1}, Lio/nano/tex/ActionRecorder;->play(Lio/nano/tex/Graphics2D;)V

    return-void
.end method

.method public getBaseline()F
    .locals 2

    iget-wide v0, p0, Lio/nano/tex/TeXRender;->nativePtr:J

    invoke-static {v0, v1}, Lio/nano/tex/TeXRender;->nGetBaseline(J)F

    move-result p0

    return p0
.end method

.method public getDepth()I
    .locals 2

    iget-wide v0, p0, Lio/nano/tex/TeXRender;->nativePtr:J

    invoke-static {v0, v1}, Lio/nano/tex/TeXRender;->nGetDepth(J)I

    move-result p0

    return p0
.end method

.method public getHeight()I
    .locals 2

    iget-wide v0, p0, Lio/nano/tex/TeXRender;->nativePtr:J

    invoke-static {v0, v1}, Lio/nano/tex/TeXRender;->nGetHeight(J)I

    move-result p0

    return p0
.end method

.method public getTextSize()F
    .locals 2

    iget-wide v0, p0, Lio/nano/tex/TeXRender;->nativePtr:J

    invoke-static {v0, v1}, Lio/nano/tex/TeXRender;->nGetTextSize(J)F

    move-result p0

    return p0
.end method

.method public getWidth()I
    .locals 2

    iget-wide v0, p0, Lio/nano/tex/TeXRender;->nativePtr:J

    invoke-static {v0, v1}, Lio/nano/tex/TeXRender;->nGetWidth(J)I

    move-result p0

    return p0
.end method

.method public invalidateDrawingCache()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lio/nano/tex/TeXRender;->recorder:Lio/nano/tex/ActionRecorder;

    return-void
.end method

.method public release()V
    .locals 2

    iget-wide v0, p0, Lio/nano/tex/TeXRender;->nativePtr:J

    invoke-static {v0, v1}, Lio/nano/tex/TeXRender;->nFinalize(J)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/nano/tex/TeXRender;->recorder:Lio/nano/tex/ActionRecorder;

    return-void
.end method

.method public setForeground(I)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lio/nano/tex/TeXRender;->recorder:Lio/nano/tex/ActionRecorder;

    iget-wide v0, p0, Lio/nano/tex/TeXRender;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/nano/tex/TeXRender;->nSetForeground(JI)V

    return-void
.end method

.method public setHeight(II)V
    .locals 2

    iget-wide v0, p0, Lio/nano/tex/TeXRender;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/nano/tex/TeXRender;->nSetHeight(JII)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 2

    iget-wide v0, p0, Lio/nano/tex/TeXRender;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/nano/tex/TeXRender;->nSetTextSize(JF)V

    return-void
.end method

.method public setWidth(II)V
    .locals 2

    iget-wide v0, p0, Lio/nano/tex/TeXRender;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/nano/tex/TeXRender;->nSetWidth(JII)V

    return-void
.end method
