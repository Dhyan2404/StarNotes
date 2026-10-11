.class public Lorg/apache/poi/hemf/record/emf/HemfWindowing;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hemf/record/emf/HemfWindowing$EmfSelectClipPath;,
        Lorg/apache/poi/hemf/record/emf/HemfWindowing$EmfScaleWindowExtEx;,
        Lorg/apache/poi/hemf/record/emf/HemfWindowing$EmfScaleViewportExtEx;,
        Lorg/apache/poi/hemf/record/emf/HemfWindowing$EmfSetIntersectClipRect;,
        Lorg/apache/poi/hemf/record/emf/HemfWindowing$EmfSetExcludeClipRect;,
        Lorg/apache/poi/hemf/record/emf/HemfWindowing$EmfSetOffsetClipRgn;,
        Lorg/apache/poi/hemf/record/emf/HemfWindowing$EmfSetViewportOrgEx;,
        Lorg/apache/poi/hemf/record/emf/HemfWindowing$EmfSetViewportExtEx;,
        Lorg/apache/poi/hemf/record/emf/HemfWindowing$EmfSetWindowOrgEx;,
        Lorg/apache/poi/hemf/record/emf/HemfWindowing$EmfSetWindowExtEx;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Dimension2D;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hemf/record/emf/HemfWindowing;->readScale(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Dimension2D;)I

    move-result p0

    return p0
.end method

.method private static readScale(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Dimension2D;)I
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p0

    int-to-double v6, p0

    div-double/2addr v0, v2

    div-double/2addr v4, v6

    invoke-virtual {p1, v0, v1, v4, v5}, Ljava/awt/geom/Dimension2D;->setSize(DD)V

    const/16 p0, 0x10

    return p0
.end method
