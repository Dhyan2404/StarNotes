.class Lsun/java2d/pipe/BufferedMaskFill$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/java2d/pipe/BufferedMaskFill;->MaskFill(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;Ljava/awt/Composite;IIII[BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsun/java2d/pipe/BufferedMaskFill;

.field final synthetic val$h:I

.field final synthetic val$mask:[B

.field final synthetic val$maskoff:I

.field final synthetic val$maskscan:I

.field final synthetic val$w:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method public constructor <init>(Lsun/java2d/pipe/BufferedMaskFill;IIIIII[B)V
    .locals 0

    iput-object p1, p0, Lsun/java2d/pipe/BufferedMaskFill$1;->this$0:Lsun/java2d/pipe/BufferedMaskFill;

    iput p2, p0, Lsun/java2d/pipe/BufferedMaskFill$1;->val$x:I

    iput p3, p0, Lsun/java2d/pipe/BufferedMaskFill$1;->val$y:I

    iput p4, p0, Lsun/java2d/pipe/BufferedMaskFill$1;->val$w:I

    iput p5, p0, Lsun/java2d/pipe/BufferedMaskFill$1;->val$h:I

    iput p6, p0, Lsun/java2d/pipe/BufferedMaskFill$1;->val$maskoff:I

    iput p7, p0, Lsun/java2d/pipe/BufferedMaskFill$1;->val$maskscan:I

    iput-object p8, p0, Lsun/java2d/pipe/BufferedMaskFill$1;->val$mask:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lsun/java2d/pipe/BufferedMaskFill$1;->this$0:Lsun/java2d/pipe/BufferedMaskFill;

    iget v1, p0, Lsun/java2d/pipe/BufferedMaskFill$1;->val$x:I

    iget v2, p0, Lsun/java2d/pipe/BufferedMaskFill$1;->val$y:I

    iget v3, p0, Lsun/java2d/pipe/BufferedMaskFill$1;->val$w:I

    iget v4, p0, Lsun/java2d/pipe/BufferedMaskFill$1;->val$h:I

    iget v5, p0, Lsun/java2d/pipe/BufferedMaskFill$1;->val$maskoff:I

    iget v6, p0, Lsun/java2d/pipe/BufferedMaskFill$1;->val$maskscan:I

    iget-object v8, p0, Lsun/java2d/pipe/BufferedMaskFill$1;->val$mask:[B

    array-length v7, v8

    invoke-virtual/range {v0 .. v8}, Lsun/java2d/pipe/BufferedMaskFill;->maskFill(IIIIIII[B)V

    return-void
.end method
