.class public Lorg/apache/poi/xwpf/usermodel/CurveShape;
.super Lorg/apache/poi/xwpf/usermodel/XWPFShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
        "Lcom/microsoft/schemas/vml/CTCurve;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lcom/microsoft/schemas/vml/CTCurve;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xwpf/usermodel/ShapeContainer<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
            "*>;>;",
            "Lcom/microsoft/schemas/vml/CTCurve;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFShape;-><init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lorg/apache/xmlbeans/XmlObject;)V

    return-void
.end method


# virtual methods
.method public draw(Ljava/awt/Graphics2D;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "CurveShape draw do nothing"

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    return-void
.end method

.method public parseShapeProperties(Lcom/microsoft/schemas/vml/CTCurve;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "CurveShape parseShapeProperties do nothing"

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic parseShapeProperties(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/schemas/vml/CTCurve;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/CurveShape;->parseShapeProperties(Lcom/microsoft/schemas/vml/CTCurve;)V

    return-void
.end method
