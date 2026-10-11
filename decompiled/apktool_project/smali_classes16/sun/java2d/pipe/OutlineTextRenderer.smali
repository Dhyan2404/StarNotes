.class public Lsun/java2d/pipe/OutlineTextRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/pipe/TextPipe;


# static fields
.field public static final THRESHHOLD:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawChars(Lsun/java2d/SunGraphics2D;[CIIII)V
    .locals 7

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2, p3, p4}, Ljava/lang/String;-><init>([CII)V

    int-to-double v3, p5

    int-to-double v5, p6

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lsun/java2d/pipe/OutlineTextRenderer;->drawString(Lsun/java2d/SunGraphics2D;Ljava/lang/String;DD)V

    return-void
.end method

.method public drawGlyphVector(Lsun/java2d/SunGraphics2D;Ljava/awt/font/GlyphVector;FF)V
    .locals 2

    invoke-virtual {p2, p3, p4}, Ljava/awt/font/GlyphVector;->getOutline(FF)Ljava/awt/Shape;

    move-result-object p0

    invoke-virtual {p2}, Ljava/awt/font/GlyphVector;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object p3

    invoke-virtual {p3}, Ljava/awt/font/FontRenderContext;->isAntiAliased()Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p2}, Ljava/awt/font/GlyphVector;->getFont()Ljava/awt/Font;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lsun/java2d/SunGraphics2D;->getGVFontInfo(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)Lsun/java2d/loops/FontInfo;

    move-result-object p2

    iget p2, p2, Lsun/java2d/loops/FontInfo;->aaHint:I

    if-ne p2, v0, :cond_0

    const/4 p4, 0x0

    :cond_0
    const/4 p2, -0x1

    if-eqz p4, :cond_1

    iget p3, p1, Lsun/java2d/SunGraphics2D;->antialiasHint:I

    const/4 v1, 0x2

    if-eq p3, v1, :cond_1

    iput v1, p1, Lsun/java2d/SunGraphics2D;->antialiasHint:I

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->validatePipe()V

    goto :goto_0

    :cond_1
    if-nez p4, :cond_2

    iget p3, p1, Lsun/java2d/SunGraphics2D;->antialiasHint:I

    if-eq p3, v0, :cond_2

    iput v0, p1, Lsun/java2d/SunGraphics2D;->antialiasHint:I

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->validatePipe()V

    goto :goto_0

    :cond_2
    move p3, p2

    :goto_0
    invoke-virtual {p1, p0}, Lsun/java2d/SunGraphics2D;->fill(Ljava/awt/Shape;)V

    if-eq p3, p2, :cond_3

    iput p3, p1, Lsun/java2d/SunGraphics2D;->antialiasHint:I

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->validatePipe()V

    :cond_3
    return-void
.end method

.method public drawString(Lsun/java2d/SunGraphics2D;Ljava/lang/String;DD)V
    .locals 2

    const-string p0, ""

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/awt/font/TextLayout;

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->getFont()Ljava/awt/Font;

    move-result-object v0

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Ljava/awt/font/TextLayout;-><init>(Ljava/lang/String;Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V

    invoke-static {p3, p4, p5, p6}, Ljava/awt/geom/AffineTransform;->getTranslateInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/awt/font/TextLayout;->getOutline(Ljava/awt/geom/AffineTransform;)Ljava/awt/Shape;

    move-result-object p0

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->getFontInfo()Lsun/java2d/loops/FontInfo;

    move-result-object p2

    iget p2, p2, Lsun/java2d/loops/FontInfo;->aaHint:I

    const/4 p3, -0x1

    const/4 p4, 0x1

    if-eq p2, p4, :cond_1

    iget p5, p1, Lsun/java2d/SunGraphics2D;->antialiasHint:I

    const/4 p6, 0x2

    if-eq p5, p6, :cond_1

    iput p6, p1, Lsun/java2d/SunGraphics2D;->antialiasHint:I

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->validatePipe()V

    goto :goto_0

    :cond_1
    if-ne p2, p4, :cond_2

    iget p5, p1, Lsun/java2d/SunGraphics2D;->antialiasHint:I

    if-eq p5, p4, :cond_2

    iput p4, p1, Lsun/java2d/SunGraphics2D;->antialiasHint:I

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->validatePipe()V

    goto :goto_0

    :cond_2
    move p5, p3

    :goto_0
    invoke-virtual {p1, p0}, Lsun/java2d/SunGraphics2D;->fill(Ljava/awt/Shape;)V

    if-eq p5, p3, :cond_3

    iput p5, p1, Lsun/java2d/SunGraphics2D;->antialiasHint:I

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->validatePipe()V

    :cond_3
    return-void
.end method
