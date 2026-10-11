.class Lsun/java2d/pipe/BufferedRenderPipe$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/java2d/pipe/BufferedRenderPipe;->drawPoly(Lsun/java2d/SunGraphics2D;[I[IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsun/java2d/pipe/BufferedRenderPipe;

.field final synthetic val$isClosed:Z

.field final synthetic val$nPoints:I

.field final synthetic val$sg2d:Lsun/java2d/SunGraphics2D;

.field final synthetic val$xPoints:[I

.field final synthetic val$yPoints:[I


# direct methods
.method public constructor <init>(Lsun/java2d/pipe/BufferedRenderPipe;[I[IIZLsun/java2d/SunGraphics2D;)V
    .locals 0

    iput-object p1, p0, Lsun/java2d/pipe/BufferedRenderPipe$1;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iput-object p2, p0, Lsun/java2d/pipe/BufferedRenderPipe$1;->val$xPoints:[I

    iput-object p3, p0, Lsun/java2d/pipe/BufferedRenderPipe$1;->val$yPoints:[I

    iput p4, p0, Lsun/java2d/pipe/BufferedRenderPipe$1;->val$nPoints:I

    iput-boolean p5, p0, Lsun/java2d/pipe/BufferedRenderPipe$1;->val$isClosed:Z

    iput-object p6, p0, Lsun/java2d/pipe/BufferedRenderPipe$1;->val$sg2d:Lsun/java2d/SunGraphics2D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe$1;->this$0:Lsun/java2d/pipe/BufferedRenderPipe;

    iget-object v1, p0, Lsun/java2d/pipe/BufferedRenderPipe$1;->val$xPoints:[I

    iget-object v2, p0, Lsun/java2d/pipe/BufferedRenderPipe$1;->val$yPoints:[I

    iget v3, p0, Lsun/java2d/pipe/BufferedRenderPipe$1;->val$nPoints:I

    iget-boolean v4, p0, Lsun/java2d/pipe/BufferedRenderPipe$1;->val$isClosed:Z

    iget-object p0, p0, Lsun/java2d/pipe/BufferedRenderPipe$1;->val$sg2d:Lsun/java2d/SunGraphics2D;

    iget v5, p0, Lsun/java2d/SunGraphics2D;->transX:I

    iget v6, p0, Lsun/java2d/SunGraphics2D;->transY:I

    invoke-virtual/range {v0 .. v6}, Lsun/java2d/pipe/BufferedRenderPipe;->drawPoly([I[IIZII)V

    return-void
.end method
