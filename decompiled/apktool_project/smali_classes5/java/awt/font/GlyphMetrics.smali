.class public final Ljava/awt/font/GlyphMetrics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COMBINING:B = 0x2t

.field public static final COMPONENT:B = 0x3t

.field public static final LIGATURE:B = 0x1t

.field public static final STANDARD:B = 0x0t

.field public static final WHITESPACE:B = 0x4t


# instance fields
.field private advanceX:F

.field private advanceY:F

.field private bounds:Ljava/awt/geom/Rectangle2D$Float;

.field private glyphType:B

.field private horizontal:Z


# direct methods
.method public constructor <init>(FLjava/awt/geom/Rectangle2D;B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ljava/awt/font/GlyphMetrics;->horizontal:Z

    .line 3
    iput p1, p0, Ljava/awt/font/GlyphMetrics;->advanceX:F

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Ljava/awt/font/GlyphMetrics;->advanceY:F

    .line 5
    new-instance p1, Ljava/awt/geom/Rectangle2D$Float;

    invoke-direct {p1}, Ljava/awt/geom/Rectangle2D$Float;-><init>()V

    iput-object p1, p0, Ljava/awt/font/GlyphMetrics;->bounds:Ljava/awt/geom/Rectangle2D$Float;

    .line 6
    invoke-virtual {p1, p2}, Ljava/awt/geom/Rectangle2D$Float;->setRect(Ljava/awt/geom/Rectangle2D;)V

    .line 7
    iput-byte p3, p0, Ljava/awt/font/GlyphMetrics;->glyphType:B

    return-void
.end method

.method public constructor <init>(ZFFLjava/awt/geom/Rectangle2D;B)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean p1, p0, Ljava/awt/font/GlyphMetrics;->horizontal:Z

    .line 10
    iput p2, p0, Ljava/awt/font/GlyphMetrics;->advanceX:F

    .line 11
    iput p3, p0, Ljava/awt/font/GlyphMetrics;->advanceY:F

    .line 12
    new-instance p1, Ljava/awt/geom/Rectangle2D$Float;

    invoke-direct {p1}, Ljava/awt/geom/Rectangle2D$Float;-><init>()V

    iput-object p1, p0, Ljava/awt/font/GlyphMetrics;->bounds:Ljava/awt/geom/Rectangle2D$Float;

    .line 13
    invoke-virtual {p1, p4}, Ljava/awt/geom/Rectangle2D$Float;->setRect(Ljava/awt/geom/Rectangle2D;)V

    .line 14
    iput-byte p5, p0, Ljava/awt/font/GlyphMetrics;->glyphType:B

    return-void
.end method


# virtual methods
.method public getAdvance()F
    .locals 1

    iget-boolean v0, p0, Ljava/awt/font/GlyphMetrics;->horizontal:Z

    if-eqz v0, :cond_0

    iget p0, p0, Ljava/awt/font/GlyphMetrics;->advanceX:F

    goto :goto_0

    :cond_0
    iget p0, p0, Ljava/awt/font/GlyphMetrics;->advanceY:F

    :goto_0
    return p0
.end method

.method public getAdvanceX()F
    .locals 0

    iget p0, p0, Ljava/awt/font/GlyphMetrics;->advanceX:F

    return p0
.end method

.method public getAdvanceY()F
    .locals 0

    iget p0, p0, Ljava/awt/font/GlyphMetrics;->advanceY:F

    return p0
.end method

.method public getBounds2D()Ljava/awt/geom/Rectangle2D;
    .locals 4

    new-instance v0, Ljava/awt/geom/Rectangle2D$Float;

    iget-object p0, p0, Ljava/awt/font/GlyphMetrics;->bounds:Ljava/awt/geom/Rectangle2D$Float;

    iget v1, p0, Ljava/awt/geom/Rectangle2D$Float;->x:F

    iget v2, p0, Ljava/awt/geom/Rectangle2D$Float;->y:F

    iget v3, p0, Ljava/awt/geom/Rectangle2D$Float;->width:F

    iget p0, p0, Ljava/awt/geom/Rectangle2D$Float;->height:F

    invoke-direct {v0, v1, v2, v3, p0}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v0
.end method

.method public getLSB()F
    .locals 1

    iget-boolean v0, p0, Ljava/awt/font/GlyphMetrics;->horizontal:Z

    iget-object p0, p0, Ljava/awt/font/GlyphMetrics;->bounds:Ljava/awt/geom/Rectangle2D$Float;

    if-eqz v0, :cond_0

    iget p0, p0, Ljava/awt/geom/Rectangle2D$Float;->x:F

    goto :goto_0

    :cond_0
    iget p0, p0, Ljava/awt/geom/Rectangle2D$Float;->y:F

    :goto_0
    return p0
.end method

.method public getRSB()F
    .locals 2

    iget-boolean v0, p0, Ljava/awt/font/GlyphMetrics;->horizontal:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ljava/awt/font/GlyphMetrics;->advanceX:F

    iget-object p0, p0, Ljava/awt/font/GlyphMetrics;->bounds:Ljava/awt/geom/Rectangle2D$Float;

    iget v1, p0, Ljava/awt/geom/Rectangle2D$Float;->x:F

    sub-float/2addr v0, v1

    iget p0, p0, Ljava/awt/geom/Rectangle2D$Float;->width:F

    goto :goto_0

    :cond_0
    iget v0, p0, Ljava/awt/font/GlyphMetrics;->advanceY:F

    iget-object p0, p0, Ljava/awt/font/GlyphMetrics;->bounds:Ljava/awt/geom/Rectangle2D$Float;

    iget v1, p0, Ljava/awt/geom/Rectangle2D$Float;->y:F

    sub-float/2addr v0, v1

    iget p0, p0, Ljava/awt/geom/Rectangle2D$Float;->height:F

    :goto_0
    sub-float/2addr v0, p0

    return v0
.end method

.method public getType()I
    .locals 0

    iget-byte p0, p0, Ljava/awt/font/GlyphMetrics;->glyphType:B

    return p0
.end method

.method public isCombining()Z
    .locals 1

    iget-byte p0, p0, Ljava/awt/font/GlyphMetrics;->glyphType:B

    and-int/lit8 p0, p0, 0x3

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isComponent()Z
    .locals 1

    iget-byte p0, p0, Ljava/awt/font/GlyphMetrics;->glyphType:B

    const/4 v0, 0x3

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLigature()Z
    .locals 1

    iget-byte p0, p0, Ljava/awt/font/GlyphMetrics;->glyphType:B

    and-int/lit8 p0, p0, 0x3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStandard()Z
    .locals 0

    iget-byte p0, p0, Ljava/awt/font/GlyphMetrics;->glyphType:B

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWhitespace()Z
    .locals 1

    iget-byte p0, p0, Ljava/awt/font/GlyphMetrics;->glyphType:B

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
