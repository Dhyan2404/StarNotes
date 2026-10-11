.class public abstract Lsun/java2d/loops/ProcessPath$DrawHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/loops/ProcessPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DrawHandler"
.end annotation


# instance fields
.field public strokeControl:I

.field public xMax:I

.field public xMaxf:F

.field public xMin:I

.field public xMinf:F

.field public yMax:I

.field public yMaxf:F

.field public yMin:I

.field public yMinf:F


# direct methods
.method public constructor <init>(IIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lsun/java2d/loops/ProcessPath$DrawHandler;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual/range {p0 .. p5}, Lsun/java2d/loops/ProcessPath$DrawHandler;->setBounds(IIIII)V

    return-void
.end method


# virtual methods
.method public adjustBounds(IIII)V
    .locals 1

    iget v0, p0, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMin:I

    if-le v0, p1, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMax:I

    if-ge v0, p3, :cond_1

    move p3, v0

    :cond_1
    iget v0, p0, Lsun/java2d/loops/ProcessPath$DrawHandler;->yMin:I

    if-le v0, p2, :cond_2

    move p2, v0

    :cond_2
    iget v0, p0, Lsun/java2d/loops/ProcessPath$DrawHandler;->yMax:I

    if-ge v0, p4, :cond_3

    move p4, v0

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/java2d/loops/ProcessPath$DrawHandler;->setBounds(IIII)V

    return-void
.end method

.method public abstract drawLine(IIII)V
.end method

.method public abstract drawPixel(II)V
.end method

.method public abstract drawScanline(III)V
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 1
    iput p1, p0, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMin:I

    .line 2
    iput p2, p0, Lsun/java2d/loops/ProcessPath$DrawHandler;->yMin:I

    .line 3
    iput p3, p0, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMax:I

    .line 4
    iput p4, p0, Lsun/java2d/loops/ProcessPath$DrawHandler;->yMax:I

    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 5
    iput p1, p0, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMinf:F

    int-to-float p1, p2

    sub-float/2addr p1, v0

    .line 6
    iput p1, p0, Lsun/java2d/loops/ProcessPath$DrawHandler;->yMinf:F

    int-to-float p1, p3

    sub-float/2addr p1, v0

    const/high16 p2, 0x3a800000    # 9.765625E-4f

    sub-float/2addr p1, p2

    .line 7
    iput p1, p0, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMaxf:F

    int-to-float p1, p4

    sub-float/2addr p1, v0

    sub-float/2addr p1, p2

    .line 8
    iput p1, p0, Lsun/java2d/loops/ProcessPath$DrawHandler;->yMaxf:F

    return-void
.end method

.method public setBounds(IIIII)V
    .locals 0

    .line 9
    iput p5, p0, Lsun/java2d/loops/ProcessPath$DrawHandler;->strokeControl:I

    .line 10
    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/java2d/loops/ProcessPath$DrawHandler;->setBounds(IIII)V

    return-void
.end method
