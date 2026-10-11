.class public Lorg/apache/poi/hwmf/draw/HwmfGraphicsState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private background:Ljava/awt/Color;

.field private clip:Ljava/awt/Shape;

.field private color:Ljava/awt/Color;

.field private composite:Ljava/awt/Composite;

.field private font:Ljava/awt/Font;

.field private paint:Ljava/awt/Paint;

.field private stroke:Ljava/awt/Stroke;

.field private trans:Ljava/awt/geom/AffineTransform;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backup(Ljava/awt/Graphics2D;)V
    .locals 1

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getBackground()Ljava/awt/Color;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphicsState;->background:Ljava/awt/Color;

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getClip()Ljava/awt/Shape;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphicsState;->clip:Ljava/awt/Shape;

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getColor()Ljava/awt/Color;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphicsState;->color:Ljava/awt/Color;

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getComposite()Ljava/awt/Composite;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphicsState;->composite:Ljava/awt/Composite;

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getFont()Ljava/awt/Font;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphicsState;->font:Ljava/awt/Font;

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getPaint()Ljava/awt/Paint;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphicsState;->paint:Ljava/awt/Paint;

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getStroke()Ljava/awt/Stroke;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphicsState;->stroke:Ljava/awt/Stroke;

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphicsState;->trans:Ljava/awt/geom/AffineTransform;

    return-void
.end method

.method public restore(Ljava/awt/Graphics2D;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphicsState;->background:Ljava/awt/Color;

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setBackground(Ljava/awt/Color;)V

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphicsState;->clip:Ljava/awt/Shape;

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setClip(Ljava/awt/Shape;)V

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphicsState;->color:Ljava/awt/Color;

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphicsState;->composite:Ljava/awt/Composite;

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphicsState;->font:Ljava/awt/Font;

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setFont(Ljava/awt/Font;)V

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphicsState;->paint:Ljava/awt/Paint;

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphicsState;->stroke:Ljava/awt/Stroke;

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphicsState;->trans:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p1, p0}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    return-void
.end method
