.class public Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfFillPath;
.super Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfStrokePath;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfFillPath"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfStrokePath;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->getPath()Ljava/awt/geom/Path2D;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/geom/Path2D;->getCurrentPoint()Ljava/awt/geom/Point2D;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/awt/geom/Path2D;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/geom/Path2D;

    invoke-virtual {p0}, Ljava/awt/geom/Path2D;->closePath()V

    invoke-virtual {p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getWindingRule()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/awt/geom/Path2D;->setWindingRule(I)V

    invoke-virtual {p1, p0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->fill(Ljava/awt/Shape;)V

    return-void
.end method

.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->fillPath:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    return-object p0
.end method
