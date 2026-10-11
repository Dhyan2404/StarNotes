.class public final Lcom/sunia/HTREnginev2/ixm$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/ixm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# static fields
.field public static final c:I = 0x400

.field public static final d:I = 0x3ff


# instance fields
.field public final a:[C

.field public final synthetic b:Lcom/sunia/HTREnginev2/ixm;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/ixm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    const/16 p1, 0x400

    new-array p1, p1, [C

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ixm$a;->a:[C

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Iterator;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/ixm;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/Namespace;

    invoke-interface {v0}, Ljavax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/ixm;->y:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final b(Ljavax/xml/stream/events/EndElement;)V
    .locals 0

    invoke-interface {p1}, Ljavax/xml/stream/events/EndElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/ixm$a;->a(Ljava/util/Iterator;)V

    return-void
.end method

.method public final c(Ljavax/xml/stream/events/StartElement;)V
    .locals 0

    invoke-interface {p1}, Ljavax/xml/stream/events/StartElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/ixm$a;->a(Ljava/util/Iterator;)V

    return-void
.end method

.method public final d(Lorg/apache/xerces/xni/QName;Ljavax/xml/namespace/QName;)V
    .locals 2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/sunia/HTREnginev2/ixm;->l(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e(Ljavax/xml/stream/events/StartElement;)V
    .locals 6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/ixm;->x:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v0}, Lorg/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    invoke-interface {p1}, Ljavax/xml/stream/events/StartElement;->getAttributes()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/Attribute;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/ixm;->w:Lorg/apache/xerces/xni/QName;

    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sunia/HTREnginev2/ixm$a;->d(Lorg/apache/xerces/xni/QName;Ljavax/xml/namespace/QName;)V

    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getDTDType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    iget-object v2, v2, Lcom/sunia/HTREnginev2/ixm;->x:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v2}, Lorg/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v2

    iget-object v3, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    iget-object v4, v3, Lcom/sunia/HTREnginev2/ixm;->x:Lorg/apache/xerces/util/XMLAttributesImpl;

    iget-object v3, v3, Lcom/sunia/HTREnginev2/ixm;->w:Lorg/apache/xerces/xni/QName;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    :goto_1
    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v1, v5}, Lorg/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/ixm;->x:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->isSpecified()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    goto :goto_0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    and-int/lit16 v1, v0, 0x3ff

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lez v1, :cond_0

    iget-object v4, p0, Lcom/sunia/HTREnginev2/ixm$a;->a:[C

    invoke-virtual {p1, v3, v1, v4, v3}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v4, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    iget-object v4, v4, Lcom/sunia/HTREnginev2/ixm;->z:Lorg/apache/xerces/xni/XMLString;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/ixm$a;->a:[C

    invoke-virtual {v4, v5, v3, v1}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object v4, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {v4}, Lcom/sunia/HTREnginev2/ixm;->e(Lcom/sunia/HTREnginev2/ixm;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v4

    iget-object v5, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    iget-object v5, v5, Lcom/sunia/HTREnginev2/ixm;->z:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v4, v5, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    :goto_0
    if-lt v1, v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit16 v4, v1, 0x400

    iget-object v5, p0, Lcom/sunia/HTREnginev2/ixm$a;->a:[C

    invoke-virtual {p1, v1, v4, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/ixm;->z:Lorg/apache/xerces/xni/XMLString;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/ixm$a;->a:[C

    const/16 v6, 0x400

    invoke-virtual {v1, v5, v3, v6}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {v1}, Lcom/sunia/HTREnginev2/ixm;->e(Lcom/sunia/HTREnginev2/ixm;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v1

    iget-object v5, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    iget-object v5, v5, Lcom/sunia/HTREnginev2/ixm;->z:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v1, v5, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    move v1, v4

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final g(Ljavax/xml/stream/XMLEventReader;Ljavax/xml/transform/stax/StAXResult;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/ixm;->k(Lcom/sunia/HTREnginev2/ixm;Ljavax/xml/stream/events/XMLEvent;)Ljavax/xml/stream/events/XMLEvent;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/ixm;->j(Lcom/sunia/HTREnginev2/ixm;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/ixm;->j(Lcom/sunia/HTREnginev2/ixm;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/ixm;->a(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/tlo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string p2, "StAXIllegalInitialState"

    invoke-static {p0, p2, v3}, Lcom/sunia/HTREnginev2/oqi;->a(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, p2, v1}, Lcom/sunia/HTREnginev2/ixm;->p(Ljavax/xml/stream/Location;Ljavax/xml/transform/stax/StAXResult;Z)V

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->e(Lcom/sunia/HTREnginev2/ixm;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object p2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/ixm;->c(Lcom/sunia/HTREnginev2/ixm;)Lorg/apache/xerces/util/StAXLocationWrapper;

    move-result-object v0

    iget-object v4, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {v4}, Lcom/sunia/HTREnginev2/ixm;->d(Lcom/sunia/HTREnginev2/ixm;)Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-result-object v4

    invoke-virtual {p2, v0, v3, v4, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->hasNext()Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sunia/HTREnginev2/ixm;->k(Lcom/sunia/HTREnginev2/ixm;Ljavax/xml/stream/events/XMLEvent;)Ljavax/xml/stream/events/XMLEvent;

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->j(Lcom/sunia/HTREnginev2/ixm;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object p2

    invoke-interface {p2}, Ljavax/xml/stream/events/XMLEvent;->getEventType()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->j(Lcom/sunia/HTREnginev2/ixm;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object p2

    invoke-interface {p2}, Ljavax/xml/stream/events/XMLEvent;->asCharacters()Ljavax/xml/stream/events/Characters;

    move-result-object p2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/ixm;->i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sunia/HTREnginev2/dxm;->setIgnoringCharacters(Z)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/ixm;->e(Lcom/sunia/HTREnginev2/ixm;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->startCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/ixm;->j(Lcom/sunia/HTREnginev2/ixm;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->asCharacters()Ljavax/xml/stream/events/Characters;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/ixm$a;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/ixm;->e(Lcom/sunia/HTREnginev2/ixm;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->endCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/ixm;->i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sunia/HTREnginev2/dxm;->setIgnoringCharacters(Z)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/ixm;->i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sunia/HTREnginev2/dxm;->i(Ljavax/xml/stream/events/Characters;)V

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->e(Lcom/sunia/HTREnginev2/ixm;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->startCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->j(Lcom/sunia/HTREnginev2/ixm;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object p2

    invoke-interface {p2}, Ljavax/xml/stream/events/XMLEvent;->asCharacters()Ljavax/xml/stream/events/Characters;

    move-result-object p2

    invoke-interface {p2}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sunia/HTREnginev2/ixm$a;->f(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->e(Lcom/sunia/HTREnginev2/ixm;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->endCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->j(Lcom/sunia/HTREnginev2/ixm;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object p2

    check-cast p2, Ljavax/xml/stream/events/DTD;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-interface {p2}, Ljavax/xml/stream/events/DTD;->getEntities()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sunia/HTREnginev2/ixm;->o(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/ixm;->i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/ixm;->i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sunia/HTREnginev2/dxm;->j(Ljavax/xml/stream/events/DTD;)V

    goto/16 :goto_1

    :pswitch_3
    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;

    move-result-object p2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/ixm;->j(Lcom/sunia/HTREnginev2/ixm;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/EntityReference;

    invoke-interface {p2, v0}, Lcom/sunia/HTREnginev2/dxm;->g(Ljavax/xml/stream/events/EntityReference;)V

    goto/16 :goto_1

    :pswitch_4
    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;

    move-result-object p2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/ixm;->j(Lcom/sunia/HTREnginev2/ixm;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/EndDocument;

    invoke-interface {p2, v0}, Lcom/sunia/HTREnginev2/dxm;->m(Ljavax/xml/stream/events/EndDocument;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->g(Lcom/sunia/HTREnginev2/ixm;)I

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;

    move-result-object p2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/ixm;->j(Lcom/sunia/HTREnginev2/ixm;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/StartDocument;

    invoke-interface {p2, v0}, Lcom/sunia/HTREnginev2/dxm;->h(Ljavax/xml/stream/events/StartDocument;)V

    goto/16 :goto_1

    :pswitch_6
    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;

    move-result-object p2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/ixm;->j(Lcom/sunia/HTREnginev2/ixm;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/Comment;

    invoke-interface {p2, v0}, Lcom/sunia/HTREnginev2/dxm;->d(Ljavax/xml/stream/events/Comment;)V

    goto/16 :goto_1

    :pswitch_7
    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->j(Lcom/sunia/HTREnginev2/ixm;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object p2

    invoke-interface {p2}, Ljavax/xml/stream/events/XMLEvent;->asCharacters()Ljavax/xml/stream/events/Characters;

    move-result-object p2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/ixm;->i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sunia/HTREnginev2/dxm;->setIgnoringCharacters(Z)V

    invoke-interface {p2}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/ixm$a;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/ixm;->i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sunia/HTREnginev2/dxm;->setIgnoringCharacters(Z)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/ixm;->i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sunia/HTREnginev2/dxm;->e(Ljavax/xml/stream/events/Characters;)V

    goto/16 :goto_1

    :cond_5
    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->j(Lcom/sunia/HTREnginev2/ixm;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object p2

    invoke-interface {p2}, Ljavax/xml/stream/events/XMLEvent;->asCharacters()Ljavax/xml/stream/events/Characters;

    move-result-object p2

    invoke-interface {p2}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sunia/HTREnginev2/ixm$a;->f(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_8
    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;

    move-result-object p2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/ixm;->j(Lcom/sunia/HTREnginev2/ixm;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/ProcessingInstruction;

    invoke-interface {p2, v0}, Lcom/sunia/HTREnginev2/dxm;->k(Ljavax/xml/stream/events/ProcessingInstruction;)V

    goto/16 :goto_1

    :pswitch_9
    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->j(Lcom/sunia/HTREnginev2/ixm;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object p2

    invoke-interface {p2}, Ljavax/xml/stream/events/XMLEvent;->asEndElement()Ljavax/xml/stream/events/EndElement;

    move-result-object p2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/ixm;->v:Lorg/apache/xerces/xni/QName;

    invoke-interface {p2}, Ljavax/xml/stream/events/EndElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/sunia/HTREnginev2/ixm$a;->d(Lorg/apache/xerces/xni/QName;Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0, p2}, Lcom/sunia/HTREnginev2/ixm$a;->b(Ljavax/xml/stream/events/EndElement;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/ixm;->c(Lcom/sunia/HTREnginev2/ixm;)Lorg/apache/xerces/util/StAXLocationWrapper;

    move-result-object v0

    invoke-interface {p2}, Ljavax/xml/stream/events/XMLEvent;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/xerces/util/StAXLocationWrapper;->setLocation(Ljavax/xml/stream/Location;)V

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->e(Lcom/sunia/HTREnginev2/ixm;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object p2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/ixm;->v:Lorg/apache/xerces/xni/QName;

    invoke-virtual {p2, v0, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->h(Lcom/sunia/HTREnginev2/ixm;)I

    move-result p2

    if-gtz p2, :cond_2

    :goto_2
    iget-object p0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/ixm;->e(Lcom/sunia/HTREnginev2/ixm;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object p0

    invoke-virtual {p0, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->endDocument(Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_3

    :pswitch_a
    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->g(Lcom/sunia/HTREnginev2/ixm;)I

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->j(Lcom/sunia/HTREnginev2/ixm;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object p2

    invoke-interface {p2}, Ljavax/xml/stream/events/XMLEvent;->asStartElement()Ljavax/xml/stream/events/StartElement;

    move-result-object p2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/ixm;->v:Lorg/apache/xerces/xni/QName;

    invoke-interface {p2}, Ljavax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/sunia/HTREnginev2/ixm$a;->d(Lorg/apache/xerces/xni/QName;Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0, p2}, Lcom/sunia/HTREnginev2/ixm$a;->e(Ljavax/xml/stream/events/StartElement;)V

    invoke-virtual {p0, p2}, Lcom/sunia/HTREnginev2/ixm$a;->c(Ljavax/xml/stream/events/StartElement;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/ixm;->d(Lcom/sunia/HTREnginev2/ixm;)Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-result-object v0

    invoke-interface {p2}, Ljavax/xml/stream/events/StartElement;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/ixm;->c(Lcom/sunia/HTREnginev2/ixm;)Lorg/apache/xerces/util/StAXLocationWrapper;

    move-result-object v0

    invoke-interface {p2}, Ljavax/xml/stream/events/XMLEvent;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/xerces/util/StAXLocationWrapper;->setLocation(Ljavax/xml/stream/Location;)V

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/ixm;->e(Lcom/sunia/HTREnginev2/ixm;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object p2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm$a;->b:Lcom/sunia/HTREnginev2/ixm;

    iget-object v4, v0, Lcom/sunia/HTREnginev2/ixm;->v:Lorg/apache/xerces/xni/QName;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/ixm;->x:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {p2, v4, v0, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_1

    :cond_6
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
