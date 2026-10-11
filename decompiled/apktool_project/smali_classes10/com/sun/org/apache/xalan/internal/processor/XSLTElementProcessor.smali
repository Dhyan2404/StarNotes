.class public Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x4dae0941c545a1e5L


# instance fields
.field private m_elemDef:Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

.field private m_savedLastOrder:Lcom/sun/org/apache/xml/internal/utils/IntStack;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;-><init>()V

    return-void
.end method


# virtual methods
.method public characters(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;[CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p0, "ER_CHARS_NOT_ALLOWED"

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, p2}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method public endElement(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->m_savedLastOrder:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->empty()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->getElemDef()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    move-result-object p2

    iget-object p3, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->m_savedLastOrder:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {p3}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->pop()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->setLastOrder(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->getElemDef()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->getRequiredFound()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->getElemDef()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->getRequiredElem()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p2, 0x0

    const-string p3, "ER_REQUIRED_ELEM_NOT_FOUND"

    invoke-virtual {p1, p3, p0, p2}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public getElemDef()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->m_elemDef:Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    return-object p0
.end method

.method public ignorableWhitespace(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;[CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public notationDecl(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public processingInstruction(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public resolveEntity(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public setElemDef(Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->m_elemDef:Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    return-void
.end method

.method public setPropertiesFromAttributes(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Z)Lorg/xml/sax/Attributes;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->getElemDef()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    move-result-object v10

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getCompatibleMode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p5, :cond_2

    :cond_1
    const/4 v0, 0x1

    move v12, v0

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    :goto_0
    const/4 v13, 0x0

    if-eqz v12, :cond_3

    .line 4
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    move-object v14, v0

    goto :goto_1

    :cond_3
    move-object v14, v13

    .line 5
    :goto_1
    new-instance v15, Ljava/util/Vector;

    invoke-direct {v15}, Ljava/util/Vector;-><init>()V

    .line 6
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 7
    invoke-interface/range {p3 .. p3}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_9

    .line 8
    invoke-interface {v9, v5}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v9, v5}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "xmlns:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v9, v5}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "xmlns"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const-string v1, "http://www.w3.org/XML/1998/namespace"

    :cond_5
    move-object v2, v1

    .line 10
    invoke-interface {v9, v5}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v10, v2, v3}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->getAttributeDef(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    move-result-object v4

    if-nez v4, :cond_7

    if-nez v12, :cond_6

    .line 12
    invoke-interface {v9, v5}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ER_ATTR_NOT_ALLOWED"

    invoke-virtual {v7, v2, v1, v13}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    move-object v13, v0

    move v11, v5

    move/from16 v16, v6

    goto :goto_3

    .line 13
    :cond_6
    invoke-interface {v9, v5}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v5}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface {v9, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v17

    move-object v1, v14

    move v11, v5

    move-object/from16 v5, v16

    move/from16 v16, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v0

    goto :goto_3

    :cond_7
    move v11, v5

    move/from16 v16, v6

    .line 14
    invoke-interface {v9, v11}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v11}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    move-object v0, v4

    move-object v13, v1

    move-object/from16 v1, p1

    move-object v9, v4

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->setAttrValue(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 15
    invoke-virtual {v15, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    .line 16
    :cond_8
    invoke-virtual {v13, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_3
    add-int/lit8 v5, v11, 0x1

    move-object/from16 v9, p3

    move-object v0, v13

    move/from16 v6, v16

    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_9
    move-object v13, v0

    .line 17
    invoke-virtual {v10}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->getAttributes()[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    move-result-object v0

    .line 18
    array-length v1, v0

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v1, :cond_c

    .line 19
    aget-object v2, v0, v11

    .line 20
    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getDefault()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 21
    invoke-virtual {v15, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move-object/from16 v3, p4

    .line 22
    invoke-virtual {v2, v7, v3}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->setDefAttrValue(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    goto :goto_5

    :cond_a
    move-object/from16 v3, p4

    .line 23
    :goto_5
    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getRequired()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 24
    invoke-virtual {v15, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v13, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 25
    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v8, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "ER_REQUIRES_ATTRIB"

    invoke-static {v4, v2}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v7, v2, v4}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_6

    :cond_b
    const/4 v4, 0x0

    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_c
    return-object v14
.end method

.method public setPropertiesFromAttributes(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->setPropertiesFromAttributes(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Z)Lorg/xml/sax/Attributes;

    return-void
.end method

.method public skippedEntity(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->m_savedLastOrder:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    if-nez p1, :cond_0

    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-direct {p1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->m_savedLastOrder:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->m_savedLastOrder:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->getElemDef()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->getLastOrder()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->push(I)I

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->getElemDef()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->setLastOrder(I)V

    return-void
.end method

.method public startNonText(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public unparsedEntityDecl(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
