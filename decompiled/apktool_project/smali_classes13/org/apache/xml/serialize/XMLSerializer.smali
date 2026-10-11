.class public Lorg/apache/xml/serialize/XMLSerializer;
.super Lorg/apache/xml/serialize/BaseMarkupSerializer;
.source "SourceFile"


# static fields
.field protected static final DEBUG:Z = false

.field protected static final PREFIX:Ljava/lang/String; = "NS"


# instance fields
.field protected fLocalNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

.field protected fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

.field protected fNamespacePrefixes:Z

.field protected fNamespaces:Z

.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/xml/serialize/OutputFormat;

    const-string v1, "xml"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lorg/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lorg/apache/xml/serialize/OutputFormat;)V

    iput-boolean v3, p0, Lorg/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/apache/xml/serialize/OutputFormat;)V
    .locals 3

    .line 2
    const/4 v0, 0x0

    const-string v1, "xml"

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/apache/xml/serialize/OutputFormat;

    const/4 v2, 0x0

    invoke-direct {p2, v1, v2, v0}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-direct {p0, p2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lorg/apache/xml/serialize/OutputFormat;)V

    iput-boolean v0, p0, Lorg/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    iget-object p2, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {p2, v1}, Lorg/apache/xml/serialize/OutputFormat;->setMethod(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lorg/apache/xml/serialize/OutputFormat;)V
    .locals 3

    .line 3
    const/4 v0, 0x0

    const-string v1, "xml"

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/apache/xml/serialize/OutputFormat;

    const/4 v2, 0x0

    invoke-direct {p2, v1, v2, v0}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-direct {p0, p2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lorg/apache/xml/serialize/OutputFormat;)V

    iput-boolean v0, p0, Lorg/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    iget-object p2, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {p2, v1}, Lorg/apache/xml/serialize/OutputFormat;->setMethod(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->setOutputCharStream(Ljava/io/Writer;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/serialize/OutputFormat;)V
    .locals 3

    .line 4
    const/4 v0, 0x0

    const-string v1, "xml"

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/xml/serialize/OutputFormat;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2, v0}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lorg/apache/xml/serialize/OutputFormat;)V

    iput-boolean v0, p0, Lorg/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    iget-object p0, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {p0, v1}, Lorg/apache/xml/serialize/OutputFormat;->setMethod(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final c(Lorg/xml/sax/Attributes;)Lorg/xml/sax/Attributes;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    new-instance v1, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v1, p1}, Lorg/xml/sax/helpers/AttributesImpl;-><init>(Lorg/xml/sax/Attributes;)V

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v1, v0}, Lorg/xml/sax/helpers/AttributesImpl;->getQName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "xmlns"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    const-string v2, ""

    :goto_1
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/xml/sax/helpers/AttributesImpl;->removeAttribute(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_3

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public checkUnboundNamespacePrefixedNode(Lorg/w3c/dom/Node;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    if-eqz v0, :cond_a

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v2}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v2, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_2
    iget-object v3, p0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v3, v2}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'."

    const-string v5, "\' contains an element node \'"

    const-string v6, "The replacement text of the entity node \'"

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "\' with an undeclared prefix \'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    :cond_3
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const/4 v3, 0x0

    :goto_3
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v7

    if-lt v3, v7, :cond_4

    goto :goto_6

    :cond_4
    invoke-interface {v2, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    goto :goto_4

    :cond_5
    iget-object v8, p0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v8, v7}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_6
    :goto_4
    sget-object v7, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_5
    iget-object v8, p0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v8, v7}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_7

    if-eqz v7, :cond_7

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "\' with an attribute \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "\' an undeclared prefix \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    :goto_6
    invoke-interface {v0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0, v0}, Lorg/apache/xml/serialize/XMLSerializer;->checkUnboundNamespacePrefixedNode(Lorg/w3c/dom/Node;)V

    :cond_9
    move-object v0, v1

    goto/16 :goto_0

    :cond_a
    :goto_7
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;ZLorg/w3c/dom/Attr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    iget-short p3, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->features:S

    and-int/lit8 p3, p3, 0x40

    if-nez p3, :cond_3

    :cond_0
    iget-object p3, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    if-eqz p3, :cond_2

    invoke-interface {p3}, Lorg/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result p3

    const/4 v0, 0x2

    and-int/2addr p3, v0

    if-eqz p3, :cond_2

    iget-object p3, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {p3, p4}, Lorg/w3c/dom/traversal/NodeFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result p3

    if-eq p3, v0, :cond_1

    const/4 p4, 0x3

    if-eq p3, p4, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object p3, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {p3}, Lorg/apache/xml/serialize/Printer;->printSpace()V

    iget-object p3, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {p3, p1}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p3, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string p4, "=\""

    invoke-virtual {p3, p4}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object p3, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 p4, 0x22

    invoke-virtual {p3, p4}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    :cond_3
    const-string p3, "xml:space"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "preserve"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {p1}, Lorg/apache/xml/serialize/OutputFormat;->getPreserveSpace()Z

    move-result p1

    :goto_1
    iput-boolean p1, p0, Lorg/apache/xml/serialize/XMLSerializer;->l:Z

    :cond_5
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lorg/apache/xml/serialize/Printer;->printSpace()V

    sget-object v0, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    sget-object v0, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "xmlns:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string v0, "=\""

    invoke-virtual {p1, v0}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 p1, 0x22

    invoke-virtual {p0, p1}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lorg/apache/xml/serialize/XMLSerializer;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/serialize/XMLSerializer;->endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lorg/apache/xml/serialize/Printer;->unindent()V

    invoke-virtual {p0}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object p1

    iget-boolean p2, p1, Lorg/apache/xml/serialize/ElementState;->empty:Z

    if-eqz p2, :cond_0

    iget-object p1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string p2, "/>"

    invoke-virtual {p1, p2}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean p2, p1, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string p3, "]]>"

    invoke-virtual {p2, p3}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :cond_1
    iget-boolean p2, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz p2, :cond_3

    iget-boolean p2, p1, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez p2, :cond_3

    iget-boolean p2, p1, Lorg/apache/xml/serialize/ElementState;->afterElement:Z

    if-nez p2, :cond_2

    iget-boolean p2, p1, Lorg/apache/xml/serialize/ElementState;->afterComment:Z

    if-eqz p2, :cond_3

    :cond_2
    iget-object p2, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {p2}, Lorg/apache/xml/serialize/Printer;->breakLine()V

    :cond_3
    iget-object p2, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string p3, "</"

    invoke-virtual {p2, p3}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    iget-object p1, p1, Lorg/apache/xml/serialize/ElementState;->rawName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 p2, 0x3e

    invoke-virtual {p1, p2}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->leaveElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/apache/xml/serialize/ElementState;->afterElement:Z

    const/4 p2, 0x0

    iput-boolean p2, p1, Lorg/apache/xml/serialize/ElementState;->afterComment:Z

    iput-boolean p2, p1, Lorg/apache/xml/serialize/ElementState;->empty:Z

    invoke-virtual {p0}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {p0}, Lorg/apache/xml/serialize/Printer;->flush()V

    :cond_4
    return-void
.end method

.method public getEntityRef(I)Ljava/lang/String;
    .locals 0

    const/16 p0, 0x22

    if-eq p1, p0, :cond_4

    const/16 p0, 0x3c

    if-eq p1, p0, :cond_3

    const/16 p0, 0x3e

    if-eq p1, p0, :cond_2

    const/16 p0, 0x26

    if-eq p1, p0, :cond_1

    const/16 p0, 0x27

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "apos"

    return-object p0

    :cond_1
    const-string p0, "amp"

    return-object p0

    :cond_2
    const-string p0, "gt"

    return-object p0

    :cond_3
    const-string p0, "lt"

    return-object p0

    :cond_4
    const-string p0, "quot"

    return-object p0
.end method

.method public printEscaped(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v3, v4, v1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->surrogates(IIZ)V

    goto :goto_3

    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "The character \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    int-to-char v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v3, "\' is an invalid XML character"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    const/16 v4, 0xa

    if-eq v3, v4, :cond_7

    const/16 v4, 0xd

    if-eq v3, v4, :cond_7

    const/16 v4, 0x9

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    const/16 v4, 0x3c

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string v4, "&lt;"

    :goto_1
    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const/16 v4, 0x26

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string v4, "&amp;"

    goto :goto_1

    :cond_5
    const/16 v4, 0x22

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string v4, "&quot;"

    goto :goto_1

    :cond_6
    const/16 v4, 0x20

    if-lt v3, v4, :cond_7

    iget-object v4, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_encodingInfo:Lorg/apache/xml/serialize/EncodingInfo;

    int-to-char v5, v3

    invoke-virtual {v4, v5}, Lorg/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v3, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v3, v5}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_3

    :cond_7
    :goto_2
    invoke-virtual {p0, v3}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->b(I)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public printText(Ljava/lang/String;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "\' is an invalid XML character"

    const-string v2, "The character \'"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_4

    :goto_0
    if-lt v3, v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Lorg/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v0, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p0, p2, v5, v4}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->surrogates(IIZ)V

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    iget-object v5, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v5, p2}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2}, Lorg/apache/xml/serialize/XMLSerializer;->printXMLChar(I)V

    :goto_1
    add-int/2addr v3, v4

    goto :goto_0

    :cond_4
    :goto_2
    if-lt v3, v0, :cond_5

    :goto_3
    return-void

    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Lorg/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v5

    if-nez v5, :cond_7

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v0, :cond_6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p0, p2, v5, v4}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->surrogates(IIZ)V

    goto :goto_4

    :cond_6
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    if-eqz p3, :cond_8

    iget-object v5, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v5, p2}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0, p2}, Lorg/apache/xml/serialize/XMLSerializer;->printXMLChar(I)V

    :goto_4
    add-int/2addr v3, v4

    goto :goto_2
.end method

.method public printText([CIIZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    const-string v0, "\' is an invalid XML character"

    const-string v1, "The character \'"

    const/4 v2, 0x1

    if-eqz p4, :cond_4

    :goto_0
    add-int/lit8 p4, p3, -0x1

    if-gtz p3, :cond_0

    goto :goto_4

    :cond_0
    add-int/lit8 p3, p2, 0x1

    aget-char p2, p1, p2

    invoke-static {p2}, Lorg/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v3, p4, -0x1

    if-lez p4, :cond_1

    add-int/lit8 p4, p3, 0x1

    aget-char p3, p1, p3

    invoke-virtual {p0, p2, p3, v2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->surrogates(IIZ)V

    move p2, p4

    goto :goto_1

    :cond_1
    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    move p2, p3

    :goto_1
    move p3, v3

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    iget-object v3, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v3, p2}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p2}, Lorg/apache/xml/serialize/XMLSerializer;->printXMLChar(I)V

    :goto_2
    move p2, p3

    move p3, p4

    goto :goto_0

    :cond_4
    :goto_3
    add-int/lit8 p4, p3, -0x1

    if-gtz p3, :cond_5

    :goto_4
    return-void

    :cond_5
    add-int/lit8 p3, p2, 0x1

    aget-char p2, p1, p2

    invoke-static {p2}, Lorg/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v3

    if-nez v3, :cond_7

    add-int/lit8 v3, p4, -0x1

    if-lez p4, :cond_6

    add-int/lit8 p4, p3, 0x1

    aget-char p3, p1, p3

    invoke-virtual {p0, p2, p3, v2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->surrogates(IIZ)V

    move p2, p4

    goto :goto_5

    :cond_6
    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    move p2, p3

    :goto_5
    move p3, v3

    goto :goto_3

    :cond_7
    if-eqz p5, :cond_8

    iget-object v3, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v3, p2}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_6

    :cond_8
    invoke-virtual {p0, p2}, Lorg/apache/xml/serialize/XMLSerializer;->printXMLChar(I)V

    :goto_6
    move p2, p3

    move p3, p4

    goto :goto_3
.end method

.method public printXMLChar(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->b(I)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x3c

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string p1, "&lt;"

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/16 v0, 0x26

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string p1, "&amp;"

    goto :goto_0

    :cond_3
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string p1, "&gt;"

    goto :goto_0

    :cond_4
    const/16 v0, 0xa

    if-eq p1, v0, :cond_5

    const/16 v0, 0x9

    if-eq p1, v0, :cond_5

    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_encodingInfo:Lorg/apache/xml/serialize/EncodingInfo;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    iget-object p0, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    :goto_1
    return-void
.end method

.method public reset()Z
    .locals 1

    invoke-super {p0}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    iget-object v0, p0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xerces/util/NamespaceSupport;->reset()V

    iget-object p0, p0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    sget-object v0, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {p0, v0, v0}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public serializeElement(Lorg/w3c/dom/Element;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v1}, Lorg/apache/xerces/util/NamespaceSupport;->reset()V

    iget-object v1, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v1}, Lorg/apache/xerces/util/NamespaceSupport;->pushContext()V

    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_started:Z

    if-nez v3, :cond_5

    invoke-virtual {v0, v1}, Lorg/apache/xml/serialize/XMLSerializer;->startDocument(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-boolean v3, v2, Lorg/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v5, 0x3e

    invoke-virtual {v3, v5}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    :cond_2
    iget-boolean v3, v2, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v3, :cond_3

    iget-object v3, v0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string v5, "]]>"

    invoke-virtual {v3, v5}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iput-boolean v4, v2, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    :cond_3
    iget-boolean v3, v0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v3, :cond_5

    iget-boolean v3, v2, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v3, :cond_5

    iget-boolean v3, v2, Lorg/apache/xml/serialize/ElementState;->empty:Z

    if-nez v3, :cond_4

    iget-boolean v3, v2, Lorg/apache/xml/serialize/ElementState;->afterElement:Z

    if-nez v3, :cond_4

    iget-boolean v3, v2, Lorg/apache/xml/serialize/ElementState;->afterComment:Z

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, v0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v3}, Lorg/apache/xml/serialize/Printer;->breakLine()V

    :cond_5
    :goto_0
    iget-boolean v3, v2, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    iput-boolean v3, v0, Lorg/apache/xml/serialize/XMLSerializer;->l:Z

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    goto :goto_1

    :cond_6
    move v6, v4

    move-object v3, v5

    :goto_1
    iget-boolean v7, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    const/16 v8, 0x3c

    const/4 v9, 0x1

    if-nez v7, :cond_9

    iget-object v7, v0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    iget-object v7, v0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v7, v1}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v7, v0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v7}, Lorg/apache/xml/serialize/Printer;->indent()V

    move v7, v4

    :goto_2
    if-lt v7, v6, :cond_7

    move-object/from16 v13, p1

    goto/16 :goto_a

    :cond_7
    invoke-interface {v3, v7}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Attr;

    invoke-interface {v8}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_8

    const-string v11, ""

    :cond_8
    invoke-interface {v8}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result v12

    invoke-virtual {v0, v10, v11, v12, v8}, Lorg/apache/xml/serialize/XMLSerializer;->d(Ljava/lang/String;Ljava/lang/String;ZLorg/w3c/dom/Attr;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_9
    move v7, v4

    :goto_3
    const-string v10, "SerializationStopped"

    const-string v11, "http://apache.org/xml/serializer"

    const/4 v12, 0x2

    if-lt v7, v6, :cond_2d

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v13

    if-eqz v7, :cond_a

    if-eqz v13, :cond_a

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_a

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_a

    iget-object v13, v0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v13, v8}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    iget-object v8, v0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v8, v0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v8}, Lorg/apache/xml/serialize/Printer;->indent()V

    move-object v13, v5

    goto :goto_4

    :cond_a
    iget-object v14, v0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v14, v8}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    iget-object v8, v0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v8, v1}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v8, v0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v8}, Lorg/apache/xml/serialize/Printer;->indent()V

    :goto_4
    const-string v14, "http://www.w3.org/dom/DOMTR"

    if-eqz v7, :cond_f

    iget-object v8, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v8, v7}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v13, :cond_c

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_b

    goto :goto_5

    :cond_b
    iget-object v8, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v8, v13}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_c
    :goto_5
    sget-object v8, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_6
    iget-object v13, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v13, v8}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-ne v13, v7, :cond_d

    goto :goto_7

    :cond_d
    iget-boolean v13, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    if-eqz v13, :cond_e

    invoke-virtual {v0, v8, v7}, Lorg/apache/xml/serialize/XMLSerializer;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    iget-object v13, v0, Lorg/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v13, v8, v7}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v13, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v13, v8, v7}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_7

    :cond_f
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_12

    iget-object v7, v0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v7, :cond_11

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "NullLocalElementName"

    invoke-static {v14, v8, v7}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v13, p1

    invoke-virtual {v0, v7, v12, v5, v13}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/DOMError;

    iget-object v7, v0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v8, v0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v7, v8}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_8

    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {v11, v10, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_7
    move-object/from16 v13, p1

    goto :goto_8

    :cond_12
    move-object/from16 v13, p1

    iget-object v7, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    sget-object v8, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_14

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_14

    iget-boolean v7, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    if-eqz v7, :cond_13

    invoke-virtual {v0, v8, v8}, Lorg/apache/xml/serialize/XMLSerializer;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    iget-object v7, v0, Lorg/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v7, v8, v8}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v7, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v7, v8, v8}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_14
    :goto_8
    move v7, v4

    :goto_9
    if-lt v7, v6, :cond_1a

    :goto_a
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v3

    if-eqz v3, :cond_17

    iget-boolean v2, v0, Lorg/apache/xml/serialize/XMLSerializer;->l:Z

    invoke-virtual {v0, v5, v5, v1, v2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/xml/serialize/ElementState;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v3, v1}, Lorg/apache/xml/serialize/OutputFormat;->isCDataElement(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lorg/apache/xml/serialize/ElementState;->doCData:Z

    iget-object v3, v0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v3, v1}, Lorg/apache/xml/serialize/OutputFormat;->isNonEscapingElement(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lorg/apache/xml/serialize/ElementState;->unescaped:Z

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    :goto_b
    if-nez v2, :cond_16

    iget-boolean v2, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    if-eqz v2, :cond_15

    iget-object v2, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v2}, Lorg/apache/xerces/util/NamespaceSupport;->popContext()V

    :cond_15
    invoke-virtual {v0, v5, v5, v1}, Lorg/apache/xml/serialize/XMLSerializer;->endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_16
    invoke-virtual {v0, v2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lorg/w3c/dom/Node;)V

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_b

    :cond_17
    iget-boolean v1, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    if-eqz v1, :cond_18

    iget-object v1, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v1}, Lorg/apache/xerces/util/NamespaceSupport;->popContext()V

    :cond_18
    iget-object v1, v0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lorg/apache/xml/serialize/Printer;->unindent()V

    iget-object v1, v0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string v3, "/>"

    invoke-virtual {v1, v3}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iput-boolean v9, v2, Lorg/apache/xml/serialize/ElementState;->afterElement:Z

    iput-boolean v4, v2, Lorg/apache/xml/serialize/ElementState;->afterComment:Z

    iput-boolean v4, v2, Lorg/apache/xml/serialize/ElementState;->empty:Z

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v0, v0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lorg/apache/xml/serialize/Printer;->flush()V

    :cond_19
    :goto_c
    return-void

    :cond_1a
    invoke-interface {v3, v7}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Attr;

    invoke-interface {v8}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1b

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_1b

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v4, v16

    goto :goto_d

    :cond_1b
    move-object/from16 v4, v16

    move-object/from16 v5, v17

    :goto_d
    if-nez v15, :cond_1c

    sget-object v15, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_1c
    if-eqz v5, :cond_2a

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_1d

    sget-object v12, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_e

    :cond_1d
    iget-object v9, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v9, v12}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_e
    iget-object v9, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object/from16 v19, v1

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v9, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1e

    goto :goto_f

    :cond_1e
    iget-object v4, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v1}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_1f
    :goto_f
    sget-object v1, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_10
    iget-object v4, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v1, v5, :cond_21

    iget-object v1, v0, Lorg/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v1, v4}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v5, v15}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_22

    if-nez v1, :cond_22

    iget-boolean v1, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    if-eqz v1, :cond_20

    invoke-virtual {v0, v4, v5}, Lorg/apache/xml/serialize/XMLSerializer;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    iget-object v1, v0, Lorg/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v1, v4, v5}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_11

    :cond_21
    iget-object v1, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    sget-object v4, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, v0, Lorg/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v1, v4}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v5, v15}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v1, :cond_22

    iget-boolean v1, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    if-eqz v1, :cond_22

    invoke-virtual {v0, v4, v5}, Lorg/apache/xml/serialize/XMLSerializer;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    :goto_11
    move-object/from16 v20, v2

    move/from16 v21, v6

    goto/16 :goto_17

    :cond_23
    iget-object v9, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v9, v5}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v9, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v9, v12}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v20, v2

    sget-object v2, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v12, v2, :cond_25

    if-eq v9, v5, :cond_24

    goto :goto_12

    :cond_24
    move/from16 v21, v6

    goto/16 :goto_15

    :cond_25
    :goto_12
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    iget-object v9, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v9, v5}, Lorg/apache/xerces/util/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move/from16 v21, v6

    const-string v6, ":"

    if-eqz v9, :cond_26

    if-eq v9, v2, :cond_26

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_15

    :cond_26
    if-eq v12, v2, :cond_27

    iget-object v2, v0, Lorg/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v2, v12}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_27

    goto :goto_14

    :cond_27
    iget-object v2, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "NS"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    :goto_13
    iget-object v12, v0, Lorg/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v12, v2}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_29

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    move-object v12, v2

    :goto_14
    iget-boolean v1, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    if-eqz v1, :cond_28

    invoke-virtual {v0, v12, v5}, Lorg/apache/xml/serialize/XMLSerializer;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    iget-object v1, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, v15}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v1, v0, Lorg/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v1, v12, v15}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v1, v12, v5}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_15
    if-nez v15, :cond_2c

    sget-object v15, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_16

    :cond_29
    iget-object v2, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v22, v4, 0x1

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v4, v22

    goto :goto_13

    :cond_2a
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move/from16 v21, v6

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2c

    iget-object v1, v0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v1, :cond_2c

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "NullLocalAttrName"

    invoke-static {v14, v2, v1}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v5, v8}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/DOMError;

    iget-object v1, v0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v2, v0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v1, v2}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_16

    :cond_2b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {v11, v10, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    :goto_16
    invoke-interface {v8}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result v1

    invoke-virtual {v0, v4, v15, v1, v8}, Lorg/apache/xml/serialize/XMLSerializer;->d(Ljava/lang/String;Ljava/lang/String;ZLorg/w3c/dom/Attr;)V

    :goto_17
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v6, v21

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x2

    goto/16 :goto_9

    :cond_2d
    move-object/from16 v13, p1

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move/from16 v21, v6

    invoke-interface {v3, v7}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Attr;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_34

    sget-object v4, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2e

    sget-object v2, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_2e
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    iget-object v2, v0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v2, :cond_34

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "CantBindXMLNS"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4, v5, v1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/DOMError;

    iget-object v1, v0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v2, v0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v1, v2}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_1a

    :cond_2f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {v11, v10, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    const/4 v5, 0x0

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_32

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_31

    goto :goto_18

    :cond_31
    iget-object v6, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v6, v4}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_19

    :cond_32
    :goto_18
    sget-object v4, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_19
    iget-object v6, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v4, v6, :cond_33

    iget-object v4, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v2}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_35

    iget-object v4, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v4, v1, v2}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1a

    :cond_33
    iget-object v1, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    sget-object v4, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1a

    :cond_34
    const/4 v5, 0x0

    :cond_35
    :goto_1a
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v6, v21

    const/4 v4, 0x0

    const/4 v9, 0x1

    goto/16 :goto_3
.end method

.method public setNamespaces(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    iget-object p1, p0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    if-nez p1, :cond_0

    new-instance p1, Lorg/apache/xerces/util/NamespaceSupport;

    invoke-direct {p1}, Lorg/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    new-instance p1, Lorg/apache/xerces/util/NamespaceSupport;

    invoke-direct {p1}, Lorg/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    new-instance p1, Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {p1}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    :cond_0
    return-void
.end method

.method public setOutputFormat(Lorg/apache/xml/serialize/OutputFormat;)V
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/xml/serialize/OutputFormat;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "xml"

    invoke-direct {p1, v2, v0, v1}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-super {p0, p1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->setOutputFormat(Lorg/apache/xml/serialize/OutputFormat;)V

    return-void
.end method

.method public startDocument(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lorg/apache/xml/serialize/Printer;->leaveDTD()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_started:Z

    const/4 v2, 0x1

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1}, Lorg/apache/xml/serialize/OutputFormat;->getOmitXMLDeclaration()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "<?xml version=\""

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v3}, Lorg/apache/xml/serialize/OutputFormat;->getVersion()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v3}, Lorg/apache/xml/serialize/OutputFormat;->getVersion()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "1.0"

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x22

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v4}, Lorg/apache/xml/serialize/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, " encoding=\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v3, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v3}, Lorg/apache/xml/serialize/OutputFormat;->getStandalone()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v3, " standalone=\"yes\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v3, "?>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v3, v1}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/StringBuffer;)V

    iget-object v1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lorg/apache/xml/serialize/Printer;->breakLine()V

    :cond_3
    iget-object v1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1}, Lorg/apache/xml/serialize/OutputFormat;->getOmitDocumentType()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    const-string v3, " ["

    const-string v4, "<!DOCTYPE "

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v1, v4}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v1, p1}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string v4, " PUBLIC "

    invoke-virtual {v1, v4}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    const-string v4, " "

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lorg/apache/xml/serialize/Printer;->breakLine()V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x12

    if-lt v1, v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v5, v4}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {p1, v4}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string v1, " SYSTEM "

    invoke-virtual {p1, v1}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_2
    iget-object p1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_7

    iget-object p1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {p1, v3}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2, v2}, Lorg/apache/xml/serialize/XMLSerializer;->printText(Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    :cond_7
    iget-object p1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string v0, ">"

    goto :goto_3

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    iget-object v1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v1, v4}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v1, p1}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {p1, v3}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2, v2}, Lorg/apache/xml/serialize/XMLSerializer;->printText(Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string v0, "]>"

    :goto_3
    invoke-virtual {p1, v0}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lorg/apache/xml/serialize/Printer;->breakLine()V

    :cond_9
    iput-boolean v2, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_started:Z

    invoke-virtual {p0}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->serializePreRoot()V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    const-string v2, "http://apache.org/xml/serializer"

    if-eqz v0, :cond_17

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_started:Z

    if-nez v3, :cond_6

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, p2

    goto :goto_1

    :cond_1
    :goto_0
    move-object v3, p3

    :goto_1
    invoke-virtual {p0, v3}, Lorg/apache/xml/serialize/XMLSerializer;->startDocument(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-boolean v3, v0, Lorg/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v5, 0x3e

    invoke-virtual {v3, v5}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    :cond_3
    iget-boolean v3, v0, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string v5, "]]>"

    invoke-virtual {v3, v5}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iput-boolean v4, v0, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    :cond_4
    iget-boolean v3, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v3, :cond_6

    iget-boolean v3, v0, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v3, :cond_6

    iget-boolean v3, v0, Lorg/apache/xml/serialize/ElementState;->empty:Z

    if-nez v3, :cond_5

    iget-boolean v3, v0, Lorg/apache/xml/serialize/ElementState;->afterElement:Z

    if-nez v3, :cond_5

    iget-boolean v3, v0, Lorg/apache/xml/serialize/ElementState;->afterComment:Z

    if-eqz v3, :cond_6

    :cond_5
    iget-object v3, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v3}, Lorg/apache/xml/serialize/Printer;->breakLine()V

    :cond_6
    :goto_2
    iget-boolean v0, v0, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    invoke-virtual {p0, p4}, Lorg/apache/xml/serialize/XMLSerializer;->c(Lorg/xml/sax/Attributes;)Lorg/xml/sax/Attributes;

    move-result-object p4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, ":"

    const-string v5, ""

    if-eqz p3, :cond_7

    :try_start_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_9

    :cond_7
    if-eqz p2, :cond_16

    if-eqz p1, :cond_8

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    invoke-virtual {p0, p1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_8
    move-object p3, p2

    :cond_9
    :goto_3
    iget-object v1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    iget-object v1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v1, p3}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lorg/apache/xml/serialize/Printer;->indent()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "=\""

    const/16 v2, 0x22

    if-eqz p4, :cond_10

    :goto_4
    :try_start_3
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    if-lt v4, v6, :cond_a

    goto/16 :goto_6

    :cond_a
    iget-object v6, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v6}, Lorg/apache/xml/serialize/Printer;->printSpace()V

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_c

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_c

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    :cond_b
    invoke-virtual {p0, v7}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_c

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_c
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_d

    move-object v7, v5

    :cond_d
    iget-object v8, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v8, v6}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v8, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v8, v1}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lorg/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v8, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v8, v2}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    const-string v8, "xml:space"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v0, "preserve"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lorg/apache/xml/serialize/OutputFormat;->getPreserveSpace()Z

    move-result v0

    :cond_f
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :cond_10
    :goto_6
    iget-object p4, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    if-eqz p4, :cond_13

    invoke-virtual {p4}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_7
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_9

    :cond_11
    iget-object v3, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v3}, Lorg/apache/xml/serialize/Printer;->printSpace()V

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_12

    iget-object v3, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string v5, "xmlns=\""

    invoke-virtual {v3, v5}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lorg/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    :goto_8
    invoke-virtual {v3, v2}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_7

    :cond_12
    iget-object v5, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string v6, "xmlns:"

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v5, v3}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v3, v1}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lorg/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    goto :goto_8

    :cond_13
    :goto_9
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/xml/serialize/ElementState;

    move-result-object p4

    if-eqz p2, :cond_15

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    goto :goto_a

    :cond_14
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "^"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_15
    :goto_a
    iget-object p1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {p1, p3}, Lorg/apache/xml/serialize/OutputFormat;->isCDataElement(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p4, Lorg/apache/xml/serialize/ElementState;->doCData:Z

    iget-object p0, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {p0, p3}, Lorg/apache/xml/serialize/OutputFormat;->isNonEscapingElement(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, p4, Lorg/apache/xml/serialize/ElementState;->unescaped:Z

    return-void

    :cond_16
    const-string p0, "NoName"

    invoke-static {v2, p0, v1}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    const-string p0, "NoWriterSupplied"

    invoke-static {v2, p0, v1}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_started:Z

    if-nez v2, :cond_4

    invoke-virtual {p0, p1}, Lorg/apache/xml/serialize/XMLSerializer;->startDocument(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean v2, v0, Lorg/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v4, 0x3e

    invoke-virtual {v2, v4}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    :cond_1
    iget-boolean v2, v0, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string v4, "]]>"

    invoke-virtual {v2, v4}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iput-boolean v3, v0, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    :cond_2
    iget-boolean v2, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v2, :cond_4

    iget-boolean v2, v0, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v2, :cond_4

    iget-boolean v2, v0, Lorg/apache/xml/serialize/ElementState;->empty:Z

    if-nez v2, :cond_3

    iget-boolean v2, v0, Lorg/apache/xml/serialize/ElementState;->afterElement:Z

    if-nez v2, :cond_3

    iget-boolean v2, v0, Lorg/apache/xml/serialize/ElementState;->afterComment:Z

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lorg/apache/xml/serialize/Printer;->breakLine()V

    :cond_4
    :goto_0
    iget-boolean v0, v0, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    iget-object v2, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v4, 0x3c

    invoke-virtual {v2, v4}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    iget-object v2, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v2, p1}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lorg/apache/xml/serialize/Printer;->indent()V

    if-eqz p2, :cond_9

    :goto_1
    invoke-interface {p2}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v2

    if-lt v3, v2, :cond_5

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lorg/apache/xml/serialize/Printer;->printSpace()V

    invoke-interface {p2, v3}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v3}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v5, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v5, v2}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string v6, "=\""

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lorg/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    :cond_6
    const-string v5, "xml:space"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, "preserve"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lorg/apache/xml/serialize/OutputFormat;->getPreserveSpace()Z

    move-result v0

    :cond_8
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    :goto_3
    invoke-virtual {p0, v1, v1, p1, v0}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/xml/serialize/ElementState;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0, p1}, Lorg/apache/xml/serialize/OutputFormat;->isCDataElement(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p2, Lorg/apache/xml/serialize/ElementState;->doCData:Z

    iget-object p0, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {p0, p1}, Lorg/apache/xml/serialize/OutputFormat;->isNonEscapingElement(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, p2, Lorg/apache/xml/serialize/ElementState;->unescaped:Z

    return-void

    :cond_a
    const-string p0, "http://apache.org/xml/serializer"

    const-string p1, "NoWriterSupplied"

    invoke-static {p0, p1, v1}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method
