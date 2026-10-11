.class public Lsun/font/AndroidFontStrike;
.super Lsun/font/FileFontStrike;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lsun/font/FileFont;Lsun/font/FontStrikeDesc;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lsun/font/FileFontStrike;-><init>(Lsun/font/FileFont;Lsun/font/FontStrikeDesc;)V

    iget-object p1, p2, Lsun/font/FontStrikeDesc;->glyphTx:Ljava/awt/geom/AffineTransform;

    iget-object p2, p0, Lsun/font/FileFontStrike;->invertDevTx:Ljava/awt/geom/AffineTransform;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/awt/geom/AffineTransform;

    iget-object p2, p0, Lsun/font/FileFontStrike;->invertDevTx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p1, p2}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lsun/font/FileFontStrike;->invertDevTx:Ljava/awt/geom/AffineTransform;

    :cond_0
    invoke-static {p1}, Lcom/trans/android/util/MatrixUtils;->getScaleX(Ljava/awt/geom/AffineTransform;)D

    move-result-wide p1

    const-wide v0, 0x40c3880000000000L    # 10000.0

    mul-double/2addr p1, v0

    double-to-long p1, p1

    iput-wide p1, p0, Lsun/font/PhysicalStrike;->pScalerContext:J

    return-void
.end method
