.class Lsun/java2d/pipe/BufferedTextPipe$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/java2d/pipe/BufferedTextPipe;->enqueueGlyphList(Lsun/java2d/SunGraphics2D;Lsun/font/GlyphList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsun/java2d/pipe/BufferedTextPipe;

.field final synthetic val$gl:Lsun/font/GlyphList;

.field final synthetic val$glyphListOrigX:F

.field final synthetic val$glyphListOrigY:F

.field final synthetic val$images:[J

.field final synthetic val$sg2d:Lsun/java2d/SunGraphics2D;

.field final synthetic val$totalGlyphs:I


# direct methods
.method public constructor <init>(Lsun/java2d/pipe/BufferedTextPipe;ILsun/font/GlyphList;Lsun/java2d/SunGraphics2D;FF[J)V
    .locals 0

    iput-object p1, p0, Lsun/java2d/pipe/BufferedTextPipe$1;->this$0:Lsun/java2d/pipe/BufferedTextPipe;

    iput p2, p0, Lsun/java2d/pipe/BufferedTextPipe$1;->val$totalGlyphs:I

    iput-object p3, p0, Lsun/java2d/pipe/BufferedTextPipe$1;->val$gl:Lsun/font/GlyphList;

    iput-object p4, p0, Lsun/java2d/pipe/BufferedTextPipe$1;->val$sg2d:Lsun/java2d/SunGraphics2D;

    iput p5, p0, Lsun/java2d/pipe/BufferedTextPipe$1;->val$glyphListOrigX:F

    iput p6, p0, Lsun/java2d/pipe/BufferedTextPipe$1;->val$glyphListOrigY:F

    iput-object p7, p0, Lsun/java2d/pipe/BufferedTextPipe$1;->val$images:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lsun/java2d/pipe/BufferedTextPipe$1;->this$0:Lsun/java2d/pipe/BufferedTextPipe;

    iget v1, p0, Lsun/java2d/pipe/BufferedTextPipe$1;->val$totalGlyphs:I

    iget-object v2, p0, Lsun/java2d/pipe/BufferedTextPipe$1;->val$gl:Lsun/font/GlyphList;

    invoke-virtual {v2}, Lsun/font/GlyphList;->usePositions()Z

    move-result v2

    iget-object v3, p0, Lsun/java2d/pipe/BufferedTextPipe$1;->val$gl:Lsun/font/GlyphList;

    invoke-virtual {v3}, Lsun/font/GlyphList;->isSubPixPos()Z

    move-result v3

    iget-object v4, p0, Lsun/java2d/pipe/BufferedTextPipe$1;->val$gl:Lsun/font/GlyphList;

    invoke-virtual {v4}, Lsun/font/GlyphList;->isRGBOrder()Z

    move-result v4

    iget-object v5, p0, Lsun/java2d/pipe/BufferedTextPipe$1;->val$sg2d:Lsun/java2d/SunGraphics2D;

    iget v5, v5, Lsun/java2d/SunGraphics2D;->lcdTextContrast:I

    iget v6, p0, Lsun/java2d/pipe/BufferedTextPipe$1;->val$glyphListOrigX:F

    iget v7, p0, Lsun/java2d/pipe/BufferedTextPipe$1;->val$glyphListOrigY:F

    iget-object v8, p0, Lsun/java2d/pipe/BufferedTextPipe$1;->val$images:[J

    iget-object p0, p0, Lsun/java2d/pipe/BufferedTextPipe$1;->val$gl:Lsun/font/GlyphList;

    invoke-virtual {p0}, Lsun/font/GlyphList;->getPositions()[F

    move-result-object v9

    invoke-virtual/range {v0 .. v9}, Lsun/java2d/pipe/BufferedTextPipe;->drawGlyphList(IZZZIFF[J[F)V

    return-void
.end method
