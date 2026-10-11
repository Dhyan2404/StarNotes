.class public Lcom/sun/org/apache/xerces/internal/impl/dtd/XML11NSDTDValidator;
.super Lcom/sun/org/apache/xerces/internal/impl/dtd/XML11DTDValidator;
.source "SourceFile"


# instance fields
.field private fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XML11DTDValidator;-><init>()V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XML11NSDTDValidator;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    return-void
.end method


# virtual methods
.method public endNamespaceScope(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-eqz v1, :cond_1

    iput-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_2

    if-nez p3, :cond_2

    invoke-interface {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->popContext()V

    return-void
.end method

.method public final startNamespaceScope(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {p3}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->pushContext()V

    iget-object p3, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    sget-object v0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    if-ne p3, v0, :cond_0

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "ElementXMLNSPrefix"

    invoke-virtual {p3, v2, v3, v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_0
    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getLength()I

    move-result p3

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, p3, :cond_9

    invoke-interface {p2, v3}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getPrefix(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v5, v6, :cond_1

    sget-object v7, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v5, v7, :cond_8

    if-ne v4, v6, :cond_8

    :cond_1
    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-interface {p2, v3}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "CantBindXMLNS"

    if-ne v5, v6, :cond_2

    if-ne v4, v6, :cond_2

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-interface {p2, v3}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v2, v8, v9, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_2
    sget-object v5, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne v7, v5, :cond_3

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-interface {p2, v3}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v2, v8, v9, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_3
    sget-object v5, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    const-string v8, "CantBindXML"

    if-ne v4, v5, :cond_4

    sget-object v5, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-eq v7, v5, :cond_5

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-interface {p2, v3}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v2, v8, v9, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_1

    :cond_4
    sget-object v5, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-ne v7, v5, :cond_5

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-interface {p2, v3}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v2, v8, v9, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_5
    :goto_1
    if-eq v4, v6, :cond_6

    goto :goto_2

    :cond_6
    sget-object v4, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_2
    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    :goto_3
    invoke-interface {v5, v4, v7}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_9
    iget-object v3, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v3, :cond_a

    goto :goto_4

    :cond_a
    sget-object v3, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_4
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v4, v3}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object v4, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    if-nez v4, :cond_b

    if-eqz v3, :cond_b

    sget-object v4, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v4, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    :cond_b
    iget-object v4, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v4, :cond_c

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v5, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "ElementPrefixUnbound"

    invoke-virtual {v3, v2, v5, v4, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_c
    move v3, v0

    :goto_5
    if-ge v3, p3, :cond_11

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XML11NSDTDValidator;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-interface {p2, v3, v4}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getName(ILcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XML11NSDTDValidator;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v5, v4, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v5, :cond_d

    goto :goto_6

    :cond_d
    sget-object v5, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_6
    iget-object v6, v4, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    sget-object v7, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v6, v7, :cond_e

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v5, v7}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XML11NSDTDValidator;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-interface {p2, v3, v4}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->setName(ILcom/sun/org/apache/xerces/internal/xni/QName;)V

    goto :goto_7

    :cond_e
    sget-object v7, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v5, v7, :cond_10

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v7, v5}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XML11NSDTDValidator;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-nez v4, :cond_f

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v7, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v7, v6, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "AttributePrefixUnbound"

    invoke-virtual {v4, v2, v6, v5, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_f
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XML11NSDTDValidator;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-interface {p2, v3, v4}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->setName(ILcom/sun/org/apache/xerces/internal/xni/QName;)V

    :cond_10
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_11
    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getLength()I

    move-result p3

    :goto_8
    add-int/lit8 v3, p3, -0x1

    if-ge v0, v3, :cond_15

    invoke-interface {p2, v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    sget-object v4, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne v3, v4, :cond_12

    goto :goto_a

    :cond_12
    invoke-interface {p2, v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    :goto_9
    if-ge v5, p3, :cond_14

    invoke-interface {p2, v5}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v5}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v7

    if-ne v4, v6, :cond_13

    if-ne v3, v7, :cond_13

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v7, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v7, v4, v3}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "AttributeNSNotUnique"

    invoke-virtual {v6, v2, v8, v7, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_14
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_15
    return-void
.end method
