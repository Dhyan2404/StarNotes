.class public final Lcom/sunia/HTREnginev2/ixm$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/ixm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/sunia/HTREnginev2/ixm;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/ixm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    return-void
.end method


# virtual methods
.method public final a(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/ixm;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    iget-object v3, v3, Lcom/sunia/HTREnginev2/ixm;->y:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final b(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 7

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/ixm;->x:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v0}, Lorg/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    iget-object v3, v2, Lcom/sunia/HTREnginev2/ixm;->w:Lorg/apache/xerces/xni/QName;

    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sunia/HTREnginev2/ixm;->l(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeType(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    iget-object v4, v3, Lcom/sunia/HTREnginev2/ixm;->x:Lorg/apache/xerces/util/XMLAttributesImpl;

    iget-object v3, v3, Lcom/sunia/HTREnginev2/ixm;->w:Lorg/apache/xerces/xni/QName;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lorg/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    :goto_1
    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v2, v5}, Lorg/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    iget-object v2, v2, Lcom/sunia/HTREnginev2/ixm;->x:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamReader;->isAttributeSpecified(I)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final c(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/transform/stax/StAXResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/ixm;->a(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/tlo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string p2, "StAXIllegalInitialState"

    invoke-static {p0, p2, v2}, Lcom/sunia/HTREnginev2/oqi;->a(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {v1}, Lcom/sunia/HTREnginev2/ixm;->b(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/ixm$c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sunia/HTREnginev2/ixm$c;->b(Ljavax/xml/stream/XMLStreamReader;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :try_start_0
    const-string v3, "javax.xml.stream.isInterning"

    invoke-interface {p1, v3}, Ljavax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v3, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {v3}, Lcom/sunia/HTREnginev2/ixm;->b(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/ixm$c;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v3, v4, p2, v1}, Lcom/sunia/HTREnginev2/ixm;->p(Ljavax/xml/stream/Location;Ljavax/xml/transform/stax/StAXResult;Z)V

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->e(Lcom/sunia/HTREnginev2/ixm;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object p2

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {v1}, Lcom/sunia/HTREnginev2/ixm;->c(Lcom/sunia/HTREnginev2/ixm;)Lorg/apache/xerces/util/StAXLocationWrapper;

    move-result-object v1

    iget-object v3, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {v3}, Lcom/sunia/HTREnginev2/ixm;->d(Lcom/sunia/HTREnginev2/ixm;)Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-result-object v3

    invoke-virtual {p2, v1, v2, v3, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_2
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->e(Lcom/sunia/HTREnginev2/ixm;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->startCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    iget-object p2, p2, Lcom/sunia/HTREnginev2/ixm;->z:Lorg/apache/xerces/xni/XMLString;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v0

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v1

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v3

    invoke-virtual {p2, v0, v1, v3}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->e(Lcom/sunia/HTREnginev2/ixm;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object p2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/ixm;->z:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {p2, v0, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->e(Lcom/sunia/HTREnginev2/ixm;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->endCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    const-string v0, "javax.xml.stream.entities"

    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p2, v0}, Lcom/sunia/HTREnginev2/ixm;->o(Ljava/util/List;)V

    goto/16 :goto_1

    :pswitch_3
    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/sunia/HTREnginev2/dxm;->l(Ljavax/xml/stream/XMLStreamReader;)V

    goto/16 :goto_1

    :pswitch_4
    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->g(Lcom/sunia/HTREnginev2/ixm;)I

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/sunia/HTREnginev2/dxm;->f(Ljavax/xml/stream/XMLStreamReader;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/sunia/HTREnginev2/dxm;->n(Ljavax/xml/stream/XMLStreamReader;)V

    goto/16 :goto_1

    :pswitch_6
    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    iget-object p2, p2, Lcom/sunia/HTREnginev2/ixm;->z:Lorg/apache/xerces/xni/XMLString;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v0

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v1

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v3

    invoke-virtual {p2, v0, v1, v3}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->e(Lcom/sunia/HTREnginev2/ixm;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object p2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/ixm;->z:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {p2, v0, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_1

    :pswitch_7
    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/sunia/HTREnginev2/dxm;->b(Ljavax/xml/stream/XMLStreamReader;)V

    goto :goto_1

    :pswitch_8
    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    iget-object v0, p2, Lcom/sunia/HTREnginev2/ixm;->v:Lorg/apache/xerces/xni/QName;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v0, v1, v3, v4}, Lcom/sunia/HTREnginev2/ixm;->l(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/ixm$b;->a(Ljavax/xml/stream/XMLStreamReader;)V

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->d(Lcom/sunia/HTREnginev2/ixm;)Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-result-object p2

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->e(Lcom/sunia/HTREnginev2/ixm;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object p2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/ixm;->v:Lorg/apache/xerces/xni/QName;

    invoke-virtual {p2, v0, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->h(Lcom/sunia/HTREnginev2/ixm;)I

    goto :goto_1

    :pswitch_9
    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->g(Lcom/sunia/HTREnginev2/ixm;)I

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    iget-object v0, p2, Lcom/sunia/HTREnginev2/ixm;->v:Lorg/apache/xerces/xni/QName;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v0, v1, v3, v4}, Lcom/sunia/HTREnginev2/ixm;->l(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/ixm$b;->b(Ljavax/xml/stream/XMLStreamReader;)V

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/ixm$b;->a(Ljavax/xml/stream/XMLStreamReader;)V

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->d(Lcom/sunia/HTREnginev2/ixm;)Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-result-object p2

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->e(Lcom/sunia/HTREnginev2/ixm;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object p2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    iget-object v1, v0, Lcom/sunia/HTREnginev2/ixm;->v:Lorg/apache/xerces/xni/QName;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/ixm;->x:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {p2, v1, v0, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v0

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->f(Lcom/sunia/HTREnginev2/ixm;)I

    move-result p2

    if-gtz p2, :cond_2

    :cond_4
    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->e(Lcom/sunia/HTREnginev2/ixm;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->endDocument(Lorg/apache/xerces/xni/Augmentations;)V

    const/16 p2, 0x8

    if-ne v0, p2, :cond_5

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ixm$b;->a:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/ixm;->i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/dxm;->a(Ljavax/xml/stream/XMLStreamReader;)V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
