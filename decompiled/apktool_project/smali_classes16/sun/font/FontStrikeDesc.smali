.class public Lsun/font/FontStrikeDesc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final AA_LCD_H:I = 0x20

.field static final AA_LCD_V:I = 0x40

.field static final AA_ON:I = 0x10

.field static final FRAC_METRICS_ON:I = 0x100

.field static final FRAC_METRICS_SP:I = 0x200


# instance fields
.field aaHint:I

.field devTx:Ljava/awt/geom/AffineTransform;

.field fmHint:I

.field glyphTx:Ljava/awt/geom/AffineTransform;

.field private hashCode:I

.field style:I

.field private valuemask:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/awt/geom/AffineTransform;Ljava/awt/geom/AffineTransform;III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lsun/font/FontStrikeDesc;->devTx:Ljava/awt/geom/AffineTransform;

    .line 4
    iput-object p2, p0, Lsun/font/FontStrikeDesc;->glyphTx:Ljava/awt/geom/AffineTransform;

    .line 5
    iput p3, p0, Lsun/font/FontStrikeDesc;->style:I

    .line 6
    iput p4, p0, Lsun/font/FontStrikeDesc;->aaHint:I

    .line 7
    iput p5, p0, Lsun/font/FontStrikeDesc;->fmHint:I

    .line 8
    iput p3, p0, Lsun/font/FontStrikeDesc;->valuemask:I

    const/4 p1, 0x2

    if-eq p4, p1, :cond_2

    const/4 p2, 0x4

    if-eq p4, p2, :cond_1

    const/4 p2, 0x5

    if-eq p4, p2, :cond_1

    const/4 p2, 0x6

    if-eq p4, p2, :cond_0

    const/4 p2, 0x7

    if-eq p4, p2, :cond_0

    goto :goto_0

    :cond_0
    or-int/lit8 p2, p3, 0x40

    .line 9
    iput p2, p0, Lsun/font/FontStrikeDesc;->valuemask:I

    goto :goto_0

    :cond_1
    or-int/lit8 p2, p3, 0x20

    .line 10
    iput p2, p0, Lsun/font/FontStrikeDesc;->valuemask:I

    goto :goto_0

    :cond_2
    or-int/lit8 p2, p3, 0x10

    .line 11
    iput p2, p0, Lsun/font/FontStrikeDesc;->valuemask:I

    :goto_0
    if-ne p5, p1, :cond_3

    .line 12
    iget p1, p0, Lsun/font/FontStrikeDesc;->valuemask:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lsun/font/FontStrikeDesc;->valuemask:I

    :cond_3
    return-void
.end method

.method public constructor <init>(Lsun/font/FontStrikeDesc;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iget-object v0, p1, Lsun/font/FontStrikeDesc;->devTx:Ljava/awt/geom/AffineTransform;

    iput-object v0, p0, Lsun/font/FontStrikeDesc;->devTx:Ljava/awt/geom/AffineTransform;

    .line 15
    iget-object v0, p1, Lsun/font/FontStrikeDesc;->glyphTx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0}, Ljava/awt/geom/AffineTransform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/geom/AffineTransform;

    iput-object v0, p0, Lsun/font/FontStrikeDesc;->glyphTx:Ljava/awt/geom/AffineTransform;

    .line 16
    iget v0, p1, Lsun/font/FontStrikeDesc;->style:I

    iput v0, p0, Lsun/font/FontStrikeDesc;->style:I

    .line 17
    iget v0, p1, Lsun/font/FontStrikeDesc;->aaHint:I

    iput v0, p0, Lsun/font/FontStrikeDesc;->aaHint:I

    .line 18
    iget v0, p1, Lsun/font/FontStrikeDesc;->fmHint:I

    iput v0, p0, Lsun/font/FontStrikeDesc;->fmHint:I

    .line 19
    iget v0, p1, Lsun/font/FontStrikeDesc;->hashCode:I

    iput v0, p0, Lsun/font/FontStrikeDesc;->hashCode:I

    .line 20
    iget p1, p1, Lsun/font/FontStrikeDesc;->valuemask:I

    iput p1, p0, Lsun/font/FontStrikeDesc;->valuemask:I

    return-void
.end method

.method public static getAAHintIntVal(Ljava/lang/Object;Lsun/font/Font2D;I)I
    .locals 3

    .line 1
    sget-object v0, Lsun/awt/SunHints;->VALUE_TEXT_ANTIALIAS_OFF:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eq p0, v0, :cond_8

    sget-object v0, Lsun/awt/SunHints;->VALUE_TEXT_ANTIALIAS_DEFAULT:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    sget-object v0, Lsun/awt/SunHints;->VALUE_TEXT_ANTIALIAS_ON:Ljava/lang/Object;

    const/4 v2, 0x2

    if-ne p0, v0, :cond_1

    return v2

    .line 3
    :cond_1
    sget-object v0, Lsun/awt/SunHints;->VALUE_TEXT_ANTIALIAS_GASP:Ljava/lang/Object;

    if-ne p0, v0, :cond_3

    .line 4
    invoke-virtual {p1, p2}, Lsun/font/Font2D;->useAAForPtSize(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v1

    .line 5
    :cond_3
    sget-object p1, Lsun/awt/SunHints;->VALUE_TEXT_ANTIALIAS_LCD_HRGB:Ljava/lang/Object;

    if-eq p0, p1, :cond_7

    sget-object p1, Lsun/awt/SunHints;->VALUE_TEXT_ANTIALIAS_LCD_HBGR:Ljava/lang/Object;

    if-ne p0, p1, :cond_4

    goto :goto_1

    .line 6
    :cond_4
    sget-object p1, Lsun/awt/SunHints;->VALUE_TEXT_ANTIALIAS_LCD_VRGB:Ljava/lang/Object;

    if-eq p0, p1, :cond_6

    sget-object p1, Lsun/awt/SunHints;->VALUE_TEXT_ANTIALIAS_LCD_VBGR:Ljava/lang/Object;

    if-ne p0, p1, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_0
    const/4 p0, 0x6

    return p0

    :cond_7
    :goto_1
    const/4 p0, 0x4

    return p0

    :cond_8
    :goto_2
    return v1
.end method

.method public static getAAHintIntVal(Lsun/font/Font2D;Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)I
    .locals 6

    .line 7
    invoke-virtual {p2}, Ljava/awt/font/FontRenderContext;->getAntiAliasingHint()Ljava/lang/Object;

    move-result-object v0

    .line 8
    sget-object v1, Lsun/awt/SunHints;->VALUE_TEXT_ANTIALIAS_OFF:Ljava/lang/Object;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_c

    sget-object v1, Lsun/awt/SunHints;->VALUE_TEXT_ANTIALIAS_DEFAULT:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    goto/16 :goto_4

    .line 9
    :cond_0
    sget-object v1, Lsun/awt/SunHints;->VALUE_TEXT_ANTIALIAS_ON:Ljava/lang/Object;

    const/4 v3, 0x2

    if-ne v0, v1, :cond_1

    return v3

    .line 10
    :cond_1
    sget-object v1, Lsun/awt/SunHints;->VALUE_TEXT_ANTIALIAS_GASP:Ljava/lang/Object;

    if-ne v0, v1, :cond_7

    .line 11
    invoke-virtual {p2}, Ljava/awt/font/FontRenderContext;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p2

    .line 12
    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/awt/Font;->isTransformed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    invoke-virtual {p1}, Ljava/awt/Font;->getSize()I

    move-result p1

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {p1}, Ljava/awt/Font;->getSize2D()F

    move-result v0

    .line 15
    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    invoke-virtual {p1}, Ljava/awt/Font;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p2

    float-to-double v0, v0

    .line 17
    invoke-virtual {p2, v0, v1, v0, v1}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    goto :goto_0

    :cond_3
    float-to-double v0, v0

    .line 18
    invoke-virtual {p2, v0, v1, v0, v1}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    .line 19
    invoke-virtual {p1}, Ljava/awt/Font;->isTransformed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {p1}, Ljava/awt/Font;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    .line 21
    :cond_4
    :goto_0
    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v0

    .line 22
    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide p1

    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-eqz v4, :cond_5

    mul-double/2addr v0, v0

    mul-double/2addr p1, p1

    add-double/2addr v0, p1

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    .line 24
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v0

    double-to-int p1, p1

    .line 25
    :goto_1
    invoke-virtual {p0, p1}, Lsun/font/Font2D;->useAAForPtSize(I)Z

    move-result p0

    if-eqz p0, :cond_6

    return v3

    :cond_6
    return v2

    .line 26
    :cond_7
    sget-object p0, Lsun/awt/SunHints;->VALUE_TEXT_ANTIALIAS_LCD_HRGB:Ljava/lang/Object;

    if-eq v0, p0, :cond_b

    sget-object p0, Lsun/awt/SunHints;->VALUE_TEXT_ANTIALIAS_LCD_HBGR:Ljava/lang/Object;

    if-ne v0, p0, :cond_8

    goto :goto_3

    .line 27
    :cond_8
    sget-object p0, Lsun/awt/SunHints;->VALUE_TEXT_ANTIALIAS_LCD_VRGB:Ljava/lang/Object;

    if-eq v0, p0, :cond_a

    sget-object p0, Lsun/awt/SunHints;->VALUE_TEXT_ANTIALIAS_LCD_VBGR:Ljava/lang/Object;

    if-ne v0, p0, :cond_9

    goto :goto_2

    :cond_9
    return v2

    :cond_a
    :goto_2
    const/4 p0, 0x6

    return p0

    :cond_b
    :goto_3
    const/4 p0, 0x4

    return p0

    :cond_c
    :goto_4
    return v2
.end method

.method public static getFMHintIntVal(Ljava/lang/Object;)I
    .locals 1

    sget-object v0, Lsun/awt/SunHints;->VALUE_FRACTIONALMETRICS_OFF:Ljava/lang/Object;

    if-eq p0, v0, :cond_1

    sget-object v0, Lsun/awt/SunHints;->VALUE_FRACTIONALMETRICS_DEFAULT:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    check-cast p1, Lsun/font/FontStrikeDesc;

    iget v1, p1, Lsun/font/FontStrikeDesc;->valuemask:I

    iget v2, p0, Lsun/font/FontStrikeDesc;->valuemask:I

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lsun/font/FontStrikeDesc;->glyphTx:Ljava/awt/geom/AffineTransform;

    iget-object v2, p0, Lsun/font/FontStrikeDesc;->glyphTx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v1, v2}, Ljava/awt/geom/AffineTransform;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p1, Lsun/font/FontStrikeDesc;->devTx:Ljava/awt/geom/AffineTransform;

    iget-object p0, p0, Lsun/font/FontStrikeDesc;->devTx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p1, p0}, Ljava/awt/geom/AffineTransform;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lsun/font/FontStrikeDesc;->hashCode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/font/FontStrikeDesc;->glyphTx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0}, Ljava/awt/geom/AffineTransform;->hashCode()I

    move-result v0

    iget-object v1, p0, Lsun/font/FontStrikeDesc;->devTx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v1}, Ljava/awt/geom/AffineTransform;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lsun/font/FontStrikeDesc;->valuemask:I

    add-int/2addr v0, v1

    iput v0, p0, Lsun/font/FontStrikeDesc;->hashCode:I

    :cond_0
    iget p0, p0, Lsun/font/FontStrikeDesc;->hashCode:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FontStrikeDesc: Style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsun/font/FontStrikeDesc;->style:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " AA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsun/font/FontStrikeDesc;->aaHint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " FM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsun/font/FontStrikeDesc;->fmHint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " devTx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/font/FontStrikeDesc;->devTx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " devTx.FontTx.ptSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lsun/font/FontStrikeDesc;->glyphTx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
