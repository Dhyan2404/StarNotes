.class Lcom/sun/org/apache/xalan/internal/processor/ProcessorKey;
.super Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x3b781b9f8fa66243L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public setPropertiesFromAttributes(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->getElemDef()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    move-result-object v10

    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    invoke-interface/range {p3 .. p3}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v12

    const/4 v13, 0x0

    move v14, v13

    :goto_0
    const/4 v0, 0x0

    if-ge v14, v12, :cond_2

    invoke-interface {v9, v14}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v14}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->getAttributeDef(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9, v14}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "attribute is not allowed on the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " element!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1, v0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_0
    invoke-interface {v9, v14}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "key("

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    const-string v4, "ER_INVALID_KEY_CALL"

    invoke-static {v4, v0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4, v0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    invoke-virtual {v11, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-interface {v9, v14}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v14}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v1

    move-object/from16 v1, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->setAttrValue(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Z

    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v10}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->getAttributes()[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    move-result-object v1

    array-length v2, v1

    :goto_2
    if-ge v13, v2, :cond_5

    aget-object v3, v1, v13

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getDefault()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v11, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v4, p4

    invoke-virtual {v3, v7, v4}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->setDefAttrValue(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    goto :goto_3

    :cond_3
    move-object/from16 v4, p4

    :goto_3
    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getRequired()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v11, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v8, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "ER_REQUIRES_ATTRIB"

    invoke-static {v5, v3}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3, v0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public startElement(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance p2, Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object p3

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->nextUid()I

    move-result v0

    invoke-direct {p2, p3, v0}, Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;-><init>(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;I)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getLocator()Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual {p0, p1, p4, p5, p2}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorKey;->setPropertiesFromAttributes(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->setKey(Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;)V

    return-void
.end method
