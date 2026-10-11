.class public abstract Lsun/font/ExtendedTextLabel;
.super Lsun/font/TextLabel;
.source "SourceFile"

# interfaces
.implements Lsun/font/TextLineComponent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsun/font/TextLabel;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract applyJustificationDeltas([FI[Z)Lsun/font/TextLineComponent;
.end method

.method public abstract caretAtOffsetIsValid(I)Z
.end method

.method public abstract getAdvanceBetween(II)F
.end method

.method public abstract getCharAdvance(I)F
.end method

.method public getCharVisualBounds(I)Ljava/awt/geom/Rectangle2D;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lsun/font/ExtendedTextLabel;->getCharVisualBounds(IFF)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public abstract getCharVisualBounds(IFF)Ljava/awt/geom/Rectangle2D;
.end method

.method public abstract getCharX(I)F
.end method

.method public abstract getCharY(I)F
.end method

.method public abstract getCoreMetrics()Lsun/font/CoreMetrics;
.end method

.method public abstract getJustificationInfos([Ljava/awt/font/GlyphJustificationInfo;III)V
.end method

.method public abstract getLineBreakIndex(IF)I
.end method

.method public abstract getNumCharacters()I
.end method

.method public abstract getNumJustificationInfos()I
.end method

.method public abstract getSubset(III)Lsun/font/TextLineComponent;
.end method

.method public abstract logicalToVisual(I)I
.end method

.method public abstract visualToLogical(I)I
.end method
