.class public final Lcom/sunia/HTREnginev2/gxm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final m:I = 0x400

.field public static final n:I = 0x3ff


# instance fields
.field public final a:[C

.field public b:Lorg/apache/xerces/util/SymbolTable;

.field public c:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

.field public final d:Lorg/apache/xerces/util/StAXLocationWrapper;

.field public final e:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

.field public final f:Lorg/apache/xerces/xni/QName;

.field public final g:Lorg/apache/xerces/xni/QName;

.field public final h:Lorg/apache/xerces/util/XMLAttributesImpl;

.field public final i:Lorg/apache/xerces/xni/XMLString;

.field public final j:Ljava/util/ArrayList;

.field public final k:Lorg/apache/xerces/util/XMLStringBuffer;

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sunia/HTREnginev2/gxm;->a:[C

    new-instance v0, Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v0}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/gxm;->b:Lorg/apache/xerces/util/SymbolTable;

    new-instance v0, Lorg/apache/xerces/util/StAXLocationWrapper;

    invoke-direct {v0}, Lorg/apache/xerces/util/StAXLocationWrapper;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/gxm;->d:Lorg/apache/xerces/util/StAXLocationWrapper;

    new-instance v0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gxm;->b:Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v0, v1}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;-><init>(Lorg/apache/xerces/util/SymbolTable;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/gxm;->e:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    new-instance v1, Lorg/apache/xerces/xni/QName;

    invoke-direct {v1}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/gxm;->f:Lorg/apache/xerces/xni/QName;

    new-instance v1, Lorg/apache/xerces/xni/QName;

    invoke-direct {v1}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/gxm;->g:Lorg/apache/xerces/xni/QName;

    new-instance v1, Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-direct {v1}, Lorg/apache/xerces/util/XMLAttributesImpl;-><init>()V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/gxm;->h:Lorg/apache/xerces/util/XMLAttributesImpl;

    new-instance v1, Lorg/apache/xerces/xni/XMLString;

    invoke-direct {v1}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/gxm;->i:Lorg/apache/xerces/xni/XMLString;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/gxm;->j:Ljava/util/ArrayList;

    new-instance v2, Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v2}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v2, p0, Lcom/sunia/HTREnginev2/gxm;->k:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->setDeclaredPrefixes(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gxm;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/gxm;->e:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v2, v1}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    sget-object v3, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->k:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->k:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->k:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->k:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4, v1}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->b:Lorg/apache/xerces/util/SymbolTable;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/gxm;->k:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v6, v5, Lorg/apache/xerces/xni/XMLString;->ch:[C

    iget v7, v5, Lorg/apache/xerces/xni/XMLString;->offset:I

    iget v5, v5, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v4, v6, v7, v5}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    sget-object v3, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    sget-object v1, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object v4, v1

    :goto_1
    iget-object v5, p0, Lcom/sunia/HTREnginev2/gxm;->g:Lorg/apache/xerces/xni/QName;

    sget-object v6, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v5, v3, v1, v4, v6}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gxm;->h:Lorg/apache/xerces/util/XMLAttributesImpl;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/gxm;->g:Lorg/apache/xerces/xni/QName;

    sget-object v4, Lorg/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    sget-object v2, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v3, v4, v2}, Lorg/apache/xerces/util/XMLAttributesImpl;->addAttribute(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final b(Ljava/util/Iterator;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gxm;->j:Ljava/util/ArrayList;

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

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gxm;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final c(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gxm;->j:Ljava/util/ArrayList;

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

    iget-object v3, p0, Lcom/sunia/HTREnginev2/gxm;->j:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final d(Ljavax/xml/stream/events/EndElement;)V
    .locals 0

    invoke-interface {p1}, Ljavax/xml/stream/events/EndElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/gxm;->b(Ljava/util/Iterator;)V

    return-void
.end method

.method public final e(Ljavax/xml/stream/events/StartElement;)V
    .locals 0

    invoke-interface {p1}, Ljavax/xml/stream/events/StartElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/gxm;->b(Ljava/util/Iterator;)V

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gxm;->a:[C

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v2, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    :goto_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/gxm;->i:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {p0, v1, v3, v0}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    return-void
.end method

.method public final g(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gxm;->b:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p2}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gxm;->b:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p3}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    sget-object p3, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gxm;->b:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p4}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_2

    :cond_2
    sget-object p4, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_2
    sget-object v0, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq p4, v0, :cond_3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gxm;->k:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gxm;->k:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, p4}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gxm;->k:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gxm;->k:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, p3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gxm;->b:Lorg/apache/xerces/util/SymbolTable;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gxm;->k:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v1, p0, Lorg/apache/xerces/xni/XMLString;->ch:[C

    iget v2, p0, Lorg/apache/xerces/xni/XMLString;->offset:I

    iget p0, p0, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v0, v1, v2, p0}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    move-object p0, p3

    :goto_3
    invoke-virtual {p1, p4, p3, p0, p2}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final h(Lorg/apache/xerces/xni/QName;Ljavax/xml/namespace/QName;)V
    .locals 2

    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/sunia/HTREnginev2/gxm;->g(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final i(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gxm;->h:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v0}, Lorg/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sunia/HTREnginev2/gxm;->g:Lorg/apache/xerces/xni/QName;

    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sunia/HTREnginev2/gxm;->g(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeType(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sunia/HTREnginev2/gxm;->h:Lorg/apache/xerces/util/XMLAttributesImpl;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->g:Lorg/apache/xerces/xni/QName;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lorg/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    :goto_1
    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Lorg/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunia/HTREnginev2/gxm;->h:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamReader;->isAttributeSpecified(I)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final j(Ljavax/xml/stream/events/StartElement;)V
    .locals 6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gxm;->h:Lorg/apache/xerces/util/XMLAttributesImpl;

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

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gxm;->g:Lorg/apache/xerces/xni/QName;

    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sunia/HTREnginev2/gxm;->h(Lorg/apache/xerces/xni/QName;Ljavax/xml/namespace/QName;)V

    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getDTDType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/gxm;->h:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v2}, Lorg/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v2

    iget-object v3, p0, Lcom/sunia/HTREnginev2/gxm;->h:Lorg/apache/xerces/util/XMLAttributesImpl;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->g:Lorg/apache/xerces/xni/QName;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    :goto_1
    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Lorg/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gxm;->h:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->isSpecified()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    goto :goto_0
.end method

.method public k()Lorg/w3c/dom/Document;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gxm;->c:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method public l(Ljavax/xml/stream/XMLEventReader;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {p0}, Ljavax/xml/stream/XMLStreamException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/gxm;->d:Lorg/apache/xerces/util/StAXLocationWrapper;

    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/xerces/util/StAXLocationWrapper;->setLocation(Ljavax/xml/stream/Location;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gxm;->c:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gxm;->d:Lorg/apache/xerces/util/StAXLocationWrapper;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->e:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4, v5}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v1

    if-eq v1, v3, :cond_a

    const/4 v4, 0x2

    if-eq v1, v4, :cond_9

    const/4 v4, 0x3

    if-eq v1, v4, :cond_8

    const/4 v4, 0x4

    const/4 v6, 0x0

    if-eq v1, v4, :cond_7

    const/4 v4, 0x6

    if-eq v1, v4, :cond_6

    if-eq v1, v2, :cond_5

    const/16 v4, 0xc

    if-eq v1, v4, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/sunia/HTREnginev2/gxm;->c:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v1, v5}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->startCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->asCharacters()Ljavax/xml/stream/events/Characters;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/sunia/HTREnginev2/gxm;->o(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gxm;->c:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v0, v5}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->endCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/sunia/HTREnginev2/gxm;->l:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/sunia/HTREnginev2/gxm;->l:I

    goto :goto_1

    :cond_6
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->asCharacters()Ljavax/xml/stream/events/Characters;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/sunia/HTREnginev2/gxm;->o(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_7
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->asCharacters()Ljavax/xml/stream/events/Characters;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/sunia/HTREnginev2/gxm;->o(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_8
    check-cast v0, Ljavax/xml/stream/events/ProcessingInstruction;

    invoke-interface {v0}, Ljavax/xml/stream/events/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/gxm;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gxm;->c:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-interface {v0}, Ljavax/xml/stream/events/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->i:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v1, v0, v4, v5}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_1

    :cond_9
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->asEndElement()Ljavax/xml/stream/events/EndElement;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gxm;->f:Lorg/apache/xerces/xni/QName;

    invoke-interface {v0}, Ljavax/xml/stream/events/EndElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/sunia/HTREnginev2/gxm;->h(Lorg/apache/xerces/xni/QName;Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/gxm;->d(Ljavax/xml/stream/events/EndElement;)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gxm;->d:Lorg/apache/xerces/util/StAXLocationWrapper;

    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/xerces/util/StAXLocationWrapper;->setLocation(Ljavax/xml/stream/Location;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gxm;->c:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gxm;->f:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v0, v1, v5}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gxm;->e:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v0}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->popContext()V

    iget v0, p0, Lcom/sunia/HTREnginev2/gxm;->l:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/sunia/HTREnginev2/gxm;->l:I

    if-gtz v0, :cond_2

    :goto_2
    iget-object p1, p0, Lcom/sunia/HTREnginev2/gxm;->d:Lorg/apache/xerces/util/StAXLocationWrapper;

    invoke-virtual {p1, v5}, Lorg/apache/xerces/util/StAXLocationWrapper;->setLocation(Ljavax/xml/stream/Location;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/gxm;->e:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {p1, v5}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gxm;->c:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {p0, v5}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->endDocument(Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_3

    :cond_a
    iget v1, p0, Lcom/sunia/HTREnginev2/gxm;->l:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/sunia/HTREnginev2/gxm;->l:I

    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->asStartElement()Ljavax/xml/stream/events/StartElement;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gxm;->f:Lorg/apache/xerces/xni/QName;

    invoke-interface {v0}, Ljavax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/sunia/HTREnginev2/gxm;->h(Lorg/apache/xerces/xni/QName;Ljavax/xml/namespace/QName;)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gxm;->d:Lorg/apache/xerces/util/StAXLocationWrapper;

    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/xerces/util/StAXLocationWrapper;->setLocation(Ljavax/xml/stream/Location;)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gxm;->e:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-interface {v0}, Ljavax/xml/stream/events/StartElement;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/gxm;->j(Ljavax/xml/stream/events/StartElement;)V

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/gxm;->e(Ljavax/xml/stream/events/StartElement;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/gxm;->a()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gxm;->e:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v0}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->pushContext()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gxm;->c:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gxm;->f:Lorg/apache/xerces/xni/QName;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->h:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v0, v1, v4, v5}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_1

    :cond_b
    :goto_3
    return-void
.end method

.method public m(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {p0}, Ljavax/xml/stream/XMLStreamException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/sunia/HTREnginev2/gxm;->d:Lorg/apache/xerces/util/StAXLocationWrapper;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/StAXLocationWrapper;->setLocation(Ljavax/xml/stream/Location;)V

    iget-object v3, p0, Lcom/sunia/HTREnginev2/gxm;->c:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->d:Lorg/apache/xerces/util/StAXLocationWrapper;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/gxm;->e:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5, v6}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V

    move v3, v2

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_3

    :cond_3
    if-nez v3, :cond_4

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v0

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-eq v0, v2, :cond_b

    const/4 v4, 0x2

    if-eq v0, v4, :cond_a

    const/4 v4, 0x3

    if-eq v0, v4, :cond_9

    const/4 v4, 0x4

    if-eq v0, v4, :cond_8

    const/4 v4, 0x6

    if-eq v0, v4, :cond_7

    if-eq v0, v1, :cond_6

    const/16 v4, 0xc

    if-eq v0, v4, :cond_5

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->c:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v4, v6}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->startCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->i:Lorg/apache/xerces/xni/XMLString;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v5

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v7

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v8

    invoke-virtual {v4, v5, v7, v8}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->c:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/gxm;->i:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->c:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v4, v6}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->endCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_1

    :cond_6
    iget v4, p0, Lcom/sunia/HTREnginev2/gxm;->l:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/sunia/HTREnginev2/gxm;->l:I

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->i:Lorg/apache/xerces/xni/XMLString;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v5

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v7

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v8

    invoke-virtual {v4, v5, v7, v8}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->c:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/gxm;->i:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_1

    :cond_8
    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->i:Lorg/apache/xerces/xni/XMLString;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v5

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v7

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v8

    invoke-virtual {v4, v5, v7, v8}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->c:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/gxm;->i:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_1

    :cond_9
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sunia/HTREnginev2/gxm;->f(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->c:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/sunia/HTREnginev2/gxm;->i:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v4, v5, v7, v6}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_1

    :cond_a
    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->d:Lorg/apache/xerces/util/StAXLocationWrapper;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/StAXLocationWrapper;->setLocation(Ljavax/xml/stream/Location;)V

    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->e:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->f:Lorg/apache/xerces/xni/QName;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v4, v5, v7, v8}, Lcom/sunia/HTREnginev2/gxm;->g(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/gxm;->c(Ljavax/xml/stream/XMLStreamReader;)V

    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->c:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/gxm;->f:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->e:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v4}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->popContext()V

    iget v4, p0, Lcom/sunia/HTREnginev2/gxm;->l:I

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/sunia/HTREnginev2/gxm;->l:I

    if-gtz v4, :cond_2

    :goto_3
    iget-object p1, p0, Lcom/sunia/HTREnginev2/gxm;->d:Lorg/apache/xerces/util/StAXLocationWrapper;

    invoke-virtual {p1, v6}, Lorg/apache/xerces/util/StAXLocationWrapper;->setLocation(Ljavax/xml/stream/Location;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/gxm;->e:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {p1, v6}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gxm;->c:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {p0, v6}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->endDocument(Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_4

    :cond_b
    iget v4, p0, Lcom/sunia/HTREnginev2/gxm;->l:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/sunia/HTREnginev2/gxm;->l:I

    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->d:Lorg/apache/xerces/util/StAXLocationWrapper;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/StAXLocationWrapper;->setLocation(Ljavax/xml/stream/Location;)V

    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->e:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->f:Lorg/apache/xerces/xni/QName;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v4, v5, v7, v8}, Lcom/sunia/HTREnginev2/gxm;->g(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/gxm;->i(Ljavax/xml/stream/XMLStreamReader;)V

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/gxm;->c(Ljavax/xml/stream/XMLStreamReader;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/gxm;->a()V

    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->e:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v4}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->pushContext()V

    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->c:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/gxm;->f:Lorg/apache/xerces/xni/QName;

    iget-object v7, p0, Lcom/sunia/HTREnginev2/gxm;->h:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v4, v5, v7, v6}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_1

    :cond_c
    :goto_4
    return-void
.end method

.method public n(Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;Lorg/apache/xerces/util/SymbolTable;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gxm;->c:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/gxm;->b:Lorg/apache/xerces/util/SymbolTable;

    iget-object p1, p0, Lcom/sunia/HTREnginev2/gxm;->e:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {p1, p2}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->setSymbolTable(Lorg/apache/xerces/util/SymbolTable;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gxm;->e:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {p0}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->reset()V

    return-void
.end method

.method public final o(Ljava/lang/String;Z)V
    .locals 7

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    and-int/lit16 v1, v0, 0x3ff

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lez v1, :cond_1

    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->a:[C

    invoke-virtual {p1, v3, v1, v4, v3}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->i:Lorg/apache/xerces/xni/XMLString;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/gxm;->a:[C

    invoke-virtual {v4, v5, v3, v1}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object v4, p0, Lcom/sunia/HTREnginev2/gxm;->c:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/gxm;->i:Lorg/apache/xerces/xni/XMLString;

    if-eqz p2, :cond_0

    invoke-virtual {v4, v5, v2}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v5, v2}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_1
    :goto_0
    if-lt v1, v0, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit16 v4, v1, 0x400

    iget-object v5, p0, Lcom/sunia/HTREnginev2/gxm;->a:[C

    invoke-virtual {p1, v1, v4, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gxm;->i:Lorg/apache/xerces/xni/XMLString;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/gxm;->a:[C

    const/16 v6, 0x400

    invoke-virtual {v1, v5, v3, v6}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gxm;->c:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/gxm;->i:Lorg/apache/xerces/xni/XMLString;

    if-eqz p2, :cond_3

    invoke-virtual {v1, v5, v2}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v5, v2}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :goto_1
    move v1, v4

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method
