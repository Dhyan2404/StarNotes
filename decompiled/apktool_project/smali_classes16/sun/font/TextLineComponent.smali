.class public interface abstract Lsun/font/TextLineComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LEFT_TO_RIGHT:I = 0x0

.field public static final RIGHT_TO_LEFT:I = 0x1

.field public static final UNCHANGED:I = 0x2


# virtual methods
.method public abstract applyJustificationDeltas([FI[Z)Lsun/font/TextLineComponent;
.end method

.method public abstract caretAtOffsetIsValid(I)Z
.end method

.method public abstract draw(Ljava/awt/Graphics2D;FF)V
.end method

.method public abstract getAdvance()F
.end method

.method public abstract getAdvanceBetween(II)F
.end method

.method public abstract getBaselineTransform()Ljava/awt/geom/AffineTransform;
.end method

.method public abstract getCharAdvance(I)F
.end method

.method public abstract getCharVisualBounds(I)Ljava/awt/geom/Rectangle2D;
.end method

.method public abstract getCharX(I)F
.end method

.method public abstract getCharY(I)F
.end method

.method public abstract getCoreMetrics()Lsun/font/CoreMetrics;
.end method

.method public abstract getItalicBounds()Ljava/awt/geom/Rectangle2D;
.end method

.method public abstract getJustificationInfos([Ljava/awt/font/GlyphJustificationInfo;III)V
.end method

.method public abstract getLineBreakIndex(IF)I
.end method

.method public abstract getLogicalBounds()Ljava/awt/geom/Rectangle2D;
.end method

.method public abstract getNumCharacters()I
.end method

.method public abstract getNumJustificationInfos()I
.end method

.method public abstract getOutline(FF)Ljava/awt/Shape;
.end method

.method public abstract getPixelBounds(Ljava/awt/font/FontRenderContext;FF)Ljava/awt/Rectangle;
.end method

.method public abstract getSubset(III)Lsun/font/TextLineComponent;
.end method

.method public abstract getVisualBounds()Ljava/awt/geom/Rectangle2D;
.end method

.method public abstract isSimple()Z
.end method
