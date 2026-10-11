.class public Lorg/apache/poi/xslf/draw/shape/XSLFPaintDelegateShape;
.super Lorg/apache/poi/xslf/usermodel/XSLFShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/PlaceableShape;


# static fields
.field public static final TRANSPARENT:Ljava/awt/Color;


# instance fields
.field private anchor:Ljava/awt/geom/Rectangle2D;

.field private props:Lorg/apache/xmlbeans/XmlObject;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/awt/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v1, v2}, Ljava/awt/Color;-><init>(FFFF)V

    sput-object v0, Lorg/apache/poi/xslf/draw/shape/XSLFPaintDelegateShape;->TRANSPARENT:Ljava/awt/Color;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/apache/xmlbeans/XmlObject;Ljava/awt/geom/Rectangle2D;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    iput-object p2, p0, Lorg/apache/poi/xslf/draw/shape/XSLFPaintDelegateShape;->props:Lorg/apache/xmlbeans/XmlObject;

    iput-object p3, p0, Lorg/apache/poi/xslf/draw/shape/XSLFPaintDelegateShape;->anchor:Ljava/awt/geom/Rectangle2D;

    return-void
.end method


# virtual methods
.method public fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xslf/model/PropertyFetcher<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->fetch(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z

    move-result p0

    return p0
.end method

.method public getAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/shape/XSLFPaintDelegateShape;->anchor:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getFillPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getFillPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object p0

    return-object p0
.end method

.method public getFlipHorizontal()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFlipVertical()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPaint()Ljava/awt/Paint;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/shape/XSLFPaintDelegateShape;->getFillPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Lorg/apache/poi/sl/draw/DrawPaint;

    invoke-direct {v2, p0}, Lorg/apache/poi/sl/draw/DrawPaint;-><init>(Lorg/apache/poi/sl/usermodel/PlaceableShape;)V

    invoke-virtual {v2, v1, v0}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;)Ljava/awt/Paint;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/xslf/draw/shape/XSLFPaintDelegateShape;->TRANSPARENT:Ljava/awt/Color;

    invoke-virtual {v0, p0}, Ljava/awt/Color;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic getParent()Lorg/apache/poi/sl/usermodel/ShapeContainer;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/shape/XSLFPaintDelegateShape;->getParent()Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;

    move-result-object p0

    return-object p0
.end method

.method public getParent()Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRotation()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getShapeProperties()Lorg/apache/xmlbeans/XmlObject;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/shape/XSLFPaintDelegateShape;->props:Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method

.method public getSpStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setAnchor(Ljava/awt/geom/Rectangle2D;)V
    .locals 0

    return-void
.end method

.method public setFlipHorizontal(Z)V
    .locals 0

    return-void
.end method

.method public setFlipVertical(Z)V
    .locals 0

    return-void
.end method

.method public setRotation(D)V
    .locals 0

    return-void
.end method
