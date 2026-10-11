.class Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/pipe/ParallelogramPipe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/pipe/BufferedRenderPipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AAParallelogramPipe"
.end annotation


# instance fields
.field final synthetic this$0:Lsun/java2d/pipe/BufferedRenderPipe;


# direct methods
.method private constructor <init>(Lsun/java2d/pipe/BufferedRenderPipe;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsun/java2d/pipe/BufferedRenderPipe;Lsun/java2d/pipe/BufferedRenderPipe$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;-><init>(Lsun/java2d/pipe/BufferedRenderPipe;)V

    return-void
.end method


# virtual methods
.method public drawParallelogram(Lsun/java2d/SunGraphics2D;DDDDDDDDDDDD)V
    .locals 4

    move-object v1, p0

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderQueue;->lock()V

    :try_start_0
    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    move-object v2, p1

    invoke-virtual {v0, p1}, Lsun/java2d/pipe/BufferedRenderPipe;->validateContextAA(Lsun/java2d/SunGraphics2D;)V

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderQueue;->ensureCapacity(I)V

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    move-wide v2, p10

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    move-wide/from16 v2, p12

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    move-wide/from16 v2, p14

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    move-wide/from16 v2, p16

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    move-wide/from16 v2, p18

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    move-wide/from16 v2, p20

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    move-wide/from16 v2, p22

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    move-wide/from16 v2, p24

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderQueue;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v1, Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v1, v1, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v1}, Lsun/java2d/pipe/RenderQueue;->unlock()V

    throw v0
.end method

.method public fillParallelogram(Lsun/java2d/SunGraphics2D;DDDDDDDDDD)V
    .locals 4

    move-object v1, p0

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderQueue;->lock()V

    :try_start_0
    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    move-object v2, p1

    invoke-virtual {v0, p1}, Lsun/java2d/pipe/BufferedRenderPipe;->validateContextAA(Lsun/java2d/SunGraphics2D;)V

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    const/16 v2, 0x1c

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderQueue;->ensureCapacity(I)V

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    move-wide v2, p10

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    move-wide/from16 v2, p12

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    move-wide/from16 v2, p14

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    move-wide/from16 v2, p16

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    move-wide/from16 v2, p18

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    move-wide/from16 v2, p20

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v0, v0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderQueue;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v1, Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v1, v1, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v1}, Lsun/java2d/pipe/RenderQueue;->unlock()V

    throw v0
.end method
