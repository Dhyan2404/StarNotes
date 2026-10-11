.class Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;
.super Lsun/java2d/loops/ProcessPath$DrawHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/pipe/BufferedRenderPipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BufferedDrawHandler"
.end annotation


# instance fields
.field private remainingScanlines:I

.field private scanlineCount:I

.field private scanlineCountIndex:I

.field final synthetic this$0:Lsun/java2d/pipe/BufferedRenderPipe;


# direct methods
.method public constructor <init>(Lsun/java2d/pipe/BufferedRenderPipe;)V
    .locals 0

    iput-object p1, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1, p1}, Lsun/java2d/loops/ProcessPath$DrawHandler;-><init>(IIII)V

    return-void
.end method

.method private resetFillPath()V
    .locals 2

    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderBuffer;->position()I

    move-result v0

    iput v0, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->scanlineCountIndex:I

    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iput v1, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->scanlineCount:I

    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderBuffer;->remaining()I

    move-result v0

    div-int/lit8 v0, v0, 0xc

    iput v0, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->remainingScanlines:I

    return-void
.end method

.method private updateScanlineCount()V
    .locals 2

    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    iget v1, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->scanlineCountIndex:I

    iget p0, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->scanlineCount:I

    invoke-virtual {v0, v1, p0}, Lsun/java2d/pipe/RenderBuffer;->putInt(II)Lsun/java2d/pipe/RenderBuffer;

    return-void
.end method


# virtual methods
.method public drawLine(IIII)V
    .locals 2

    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lsun/java2d/pipe/RenderQueue;->ensureCapacity(I)V

    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v0, p1}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object p1, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object p1, p1, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {p1, p2}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object p1, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object p1, p1, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {p1, p3}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object p0, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object p0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {p0, p4}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    return-void
.end method

.method public drawPixel(II)V
    .locals 2

    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lsun/java2d/pipe/RenderQueue;->ensureCapacity(I)V

    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v0, p1}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object p0, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object p0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {p0, p2}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    return-void
.end method

.method public drawScanline(III)V
    .locals 1

    iget v0, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->remainingScanlines:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->updateScanlineCount()V

    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderQueue;->flushNow()V

    invoke-direct {p0}, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->resetFillPath()V

    :cond_0
    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v0, p1}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object p1, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object p1, p1, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {p1, p2}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object p1, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object p1, p1, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {p1, p3}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget p1, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->scanlineCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->scanlineCount:I

    iget p1, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->remainingScanlines:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->remainingScanlines:I

    return-void
.end method

.method public endFillPath()V
    .locals 0

    invoke-direct {p0}, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->updateScanlineCount()V

    return-void
.end method

.method public startFillPath()V
    .locals 2

    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lsun/java2d/pipe/RenderQueue;->ensureCapacity(I)V

    invoke-direct {p0}, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->resetFillPath()V

    return-void
.end method

.method public validate(Lsun/java2d/SunGraphics2D;)V
    .locals 7

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->getCompClip()Lsun/java2d/pipe/Region;

    move-result-object v0

    invoke-virtual {v0}, Lsun/java2d/pipe/Region;->getLoX()I

    move-result v2

    invoke-virtual {v0}, Lsun/java2d/pipe/Region;->getLoY()I

    move-result v3

    invoke-virtual {v0}, Lsun/java2d/pipe/Region;->getHiX()I

    move-result v4

    invoke-virtual {v0}, Lsun/java2d/pipe/Region;->getHiY()I

    move-result v5

    iget v6, p1, Lsun/java2d/SunGraphics2D;->strokeHint:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lsun/java2d/loops/ProcessPath$DrawHandler;->setBounds(IIIII)V

    return-void
.end method
