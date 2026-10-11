.class public abstract Ljava/awt/FontMetrics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DEFAULT_FRC:Ljava/awt/font/FontRenderContext;

.field private static final serialVersionUID:J = 0x17548f6513f0bb23L


# instance fields
.field protected font:Ljava/awt/Font;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Ljava/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/awt/FontMetrics;->initIDs()V

    :cond_0
    new-instance v0, Ljava/awt/font/FontRenderContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ljava/awt/font/FontRenderContext;-><init>(Ljava/awt/geom/AffineTransform;ZZ)V

    sput-object v0, Ljava/awt/FontMetrics;->DEFAULT_FRC:Ljava/awt/font/FontRenderContext;

    return-void
.end method

.method public constructor <init>(Ljava/awt/Font;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/awt/FontMetrics;->font:Ljava/awt/Font;

    return-void
.end method

.method private static initIDs()V
    .locals 0

    return-void
.end method

.method private myFRC(Ljava/awt/Graphics;)Ljava/awt/font/FontRenderContext;
    .locals 0

    instance-of p0, p1, Ljava/awt/Graphics2D;

    if-eqz p0, :cond_0

    check-cast p1, Ljava/awt/Graphics2D;

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/awt/FontMetrics;->DEFAULT_FRC:Ljava/awt/font/FontRenderContext;

    return-object p0
.end method


# virtual methods
.method public bytesWidth([BII)I
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Ljava/lang/String;-><init>([BIII)V

    invoke-virtual {p0, v0}, Ljava/awt/FontMetrics;->stringWidth(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public charWidth(C)I
    .locals 3

    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/awt/FontMetrics;->getWidths()[I

    move-result-object p0

    aget p0, p0, p1

    return p0

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [C

    const/4 v2, 0x0

    aput-char p1, v1, v2

    .line 6
    invoke-virtual {p0, v1, v2, v0}, Ljava/awt/FontMetrics;->charsWidth([CII)I

    move-result p0

    return p0
.end method

.method public charWidth(I)I
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v0

    if-nez v0, :cond_0

    const p1, 0xffff

    :cond_0
    const/16 v0, 0x100

    if-ge p1, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/awt/FontMetrics;->getWidths()[I

    move-result-object p0

    aget p0, p0, p1

    return p0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, v1}, Ljava/lang/Character;->toChars(I[CI)I

    move-result p1

    .line 4
    invoke-virtual {p0, v0, v1, p1}, Ljava/awt/FontMetrics;->charsWidth([CII)I

    move-result p0

    return p0
.end method

.method public charsWidth([CII)I
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Ljava/awt/FontMetrics;->stringWidth(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getAscent()I
    .locals 0

    iget-object p0, p0, Ljava/awt/FontMetrics;->font:Ljava/awt/Font;

    invoke-virtual {p0}, Ljava/awt/Font;->getSize()I

    move-result p0

    return p0
.end method

.method public getDescent()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFont()Ljava/awt/Font;
    .locals 0

    iget-object p0, p0, Ljava/awt/FontMetrics;->font:Ljava/awt/Font;

    return-object p0
.end method

.method public getFontRenderContext()Ljava/awt/font/FontRenderContext;
    .locals 0

    sget-object p0, Ljava/awt/FontMetrics;->DEFAULT_FRC:Ljava/awt/font/FontRenderContext;

    return-object p0
.end method

.method public getHeight()I
    .locals 2

    invoke-virtual {p0}, Ljava/awt/FontMetrics;->getLeading()I

    move-result v0

    invoke-virtual {p0}, Ljava/awt/FontMetrics;->getAscent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/awt/FontMetrics;->getDescent()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getLeading()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLineMetrics(Ljava/lang/String;IILjava/awt/Graphics;)Ljava/awt/font/LineMetrics;
    .locals 1

    .line 2
    iget-object v0, p0, Ljava/awt/FontMetrics;->font:Ljava/awt/Font;

    invoke-direct {p0, p4}, Ljava/awt/FontMetrics;->myFRC(Ljava/awt/Graphics;)Ljava/awt/font/FontRenderContext;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p3, p0}, Ljava/awt/Font;->getLineMetrics(Ljava/lang/String;IILjava/awt/font/FontRenderContext;)Ljava/awt/font/LineMetrics;

    move-result-object p0

    return-object p0
.end method

.method public getLineMetrics(Ljava/lang/String;Ljava/awt/Graphics;)Ljava/awt/font/LineMetrics;
    .locals 1

    .line 1
    iget-object v0, p0, Ljava/awt/FontMetrics;->font:Ljava/awt/Font;

    invoke-direct {p0, p2}, Ljava/awt/FontMetrics;->myFRC(Ljava/awt/Graphics;)Ljava/awt/font/FontRenderContext;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/awt/Font;->getLineMetrics(Ljava/lang/String;Ljava/awt/font/FontRenderContext;)Ljava/awt/font/LineMetrics;

    move-result-object p0

    return-object p0
.end method

.method public getLineMetrics(Ljava/text/CharacterIterator;IILjava/awt/Graphics;)Ljava/awt/font/LineMetrics;
    .locals 1

    .line 6
    iget-object v0, p0, Ljava/awt/FontMetrics;->font:Ljava/awt/Font;

    invoke-direct {p0, p4}, Ljava/awt/FontMetrics;->myFRC(Ljava/awt/Graphics;)Ljava/awt/font/FontRenderContext;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p3, p0}, Ljava/awt/Font;->getLineMetrics(Ljava/text/CharacterIterator;IILjava/awt/font/FontRenderContext;)Ljava/awt/font/LineMetrics;

    move-result-object p0

    return-object p0
.end method

.method public getLineMetrics([CIILjava/awt/Graphics;)Ljava/awt/font/LineMetrics;
    .locals 1

    .line 3
    iget-object v0, p0, Ljava/awt/FontMetrics;->font:Ljava/awt/Font;

    .line 4
    invoke-direct {p0, p4}, Ljava/awt/FontMetrics;->myFRC(Ljava/awt/Graphics;)Ljava/awt/font/FontRenderContext;

    move-result-object p0

    .line 5
    invoke-virtual {v0, p1, p2, p3, p0}, Ljava/awt/Font;->getLineMetrics([CIILjava/awt/font/FontRenderContext;)Ljava/awt/font/LineMetrics;

    move-result-object p0

    return-object p0
.end method

.method public getMaxAdvance()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getMaxAscent()I
    .locals 0

    invoke-virtual {p0}, Ljava/awt/FontMetrics;->getAscent()I

    move-result p0

    return p0
.end method

.method public getMaxCharBounds(Ljava/awt/Graphics;)Ljava/awt/geom/Rectangle2D;
    .locals 1

    iget-object v0, p0, Ljava/awt/FontMetrics;->font:Ljava/awt/Font;

    invoke-direct {p0, p1}, Ljava/awt/FontMetrics;->myFRC(Ljava/awt/Graphics;)Ljava/awt/font/FontRenderContext;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/awt/Font;->getMaxCharBounds(Ljava/awt/font/FontRenderContext;)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public getMaxDecent()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/awt/FontMetrics;->getMaxDescent()I

    move-result p0

    return p0
.end method

.method public getMaxDescent()I
    .locals 0

    invoke-virtual {p0}, Ljava/awt/FontMetrics;->getDescent()I

    move-result p0

    return p0
.end method

.method public getStringBounds(Ljava/lang/String;IILjava/awt/Graphics;)Ljava/awt/geom/Rectangle2D;
    .locals 1

    .line 2
    iget-object v0, p0, Ljava/awt/FontMetrics;->font:Ljava/awt/Font;

    .line 3
    invoke-direct {p0, p4}, Ljava/awt/FontMetrics;->myFRC(Ljava/awt/Graphics;)Ljava/awt/font/FontRenderContext;

    move-result-object p0

    .line 4
    invoke-virtual {v0, p1, p2, p3, p0}, Ljava/awt/Font;->getStringBounds(Ljava/lang/String;IILjava/awt/font/FontRenderContext;)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public getStringBounds(Ljava/lang/String;Ljava/awt/Graphics;)Ljava/awt/geom/Rectangle2D;
    .locals 1

    .line 1
    iget-object v0, p0, Ljava/awt/FontMetrics;->font:Ljava/awt/Font;

    invoke-direct {p0, p2}, Ljava/awt/FontMetrics;->myFRC(Ljava/awt/Graphics;)Ljava/awt/font/FontRenderContext;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/awt/Font;->getStringBounds(Ljava/lang/String;Ljava/awt/font/FontRenderContext;)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public getStringBounds(Ljava/text/CharacterIterator;IILjava/awt/Graphics;)Ljava/awt/geom/Rectangle2D;
    .locals 1

    .line 8
    iget-object v0, p0, Ljava/awt/FontMetrics;->font:Ljava/awt/Font;

    .line 9
    invoke-direct {p0, p4}, Ljava/awt/FontMetrics;->myFRC(Ljava/awt/Graphics;)Ljava/awt/font/FontRenderContext;

    move-result-object p0

    .line 10
    invoke-virtual {v0, p1, p2, p3, p0}, Ljava/awt/Font;->getStringBounds(Ljava/text/CharacterIterator;IILjava/awt/font/FontRenderContext;)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public getStringBounds([CIILjava/awt/Graphics;)Ljava/awt/geom/Rectangle2D;
    .locals 1

    .line 5
    iget-object v0, p0, Ljava/awt/FontMetrics;->font:Ljava/awt/Font;

    .line 6
    invoke-direct {p0, p4}, Ljava/awt/FontMetrics;->myFRC(Ljava/awt/Graphics;)Ljava/awt/font/FontRenderContext;

    move-result-object p0

    .line 7
    invoke-virtual {v0, p1, p2, p3, p0}, Ljava/awt/Font;->getStringBounds([CIILjava/awt/font/FontRenderContext;)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public getWidths()[I
    .locals 4

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/awt/FontMetrics;->charWidth(C)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public hasUniformLineMetrics()Z
    .locals 0

    iget-object p0, p0, Ljava/awt/FontMetrics;->font:Ljava/awt/Font;

    invoke-virtual {p0}, Ljava/awt/Font;->hasUniformLineMetrics()Z

    move-result p0

    return p0
.end method

.method public stringWidth(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [C

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {p0, v1, v2, v0}, Ljava/awt/FontMetrics;->charsWidth([CII)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[font="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/awt/FontMetrics;->getFont()Ljava/awt/Font;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "ascent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/awt/FontMetrics;->getAscent()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", descent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/awt/FontMetrics;->getDescent()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/awt/FontMetrics;->getHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
