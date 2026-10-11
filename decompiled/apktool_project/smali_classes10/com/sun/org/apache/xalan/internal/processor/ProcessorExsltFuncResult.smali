.class public Lcom/sun/org/apache/xalan/internal/processor/ProcessorExsltFuncResult;
.super Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x598760557a657ab7L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;-><init>()V

    return-void
.end method


# virtual methods
.method public startElement(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;->startElement(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getElemTemplateElement()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getParentElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    instance-of p2, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExsltFunction;

    if-nez p2, :cond_2

    instance-of p2, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;

    if-nez p2, :cond_0

    instance-of p2, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemParam;

    if-nez p2, :cond_0

    instance-of p2, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExsltFuncResult;

    if-eqz p2, :cond_1

    :cond_0
    new-instance p2, Lorg/xml/sax/SAXException;

    const-string p3, "func:result cannot appear within a variable, parameter, or another func:result."

    invoke-direct {p2, p3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, p2}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getParentElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p0

    goto :goto_0

    :cond_2
    if-nez p0, :cond_3

    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p2, "func:result must appear in a func:function element"

    invoke-direct {p0, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_3
    return-void
.end method
