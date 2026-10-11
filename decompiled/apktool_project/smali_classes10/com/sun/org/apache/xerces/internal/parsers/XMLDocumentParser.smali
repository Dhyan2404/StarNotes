.class public Lcom/sun/org/apache/xerces/internal/parsers/XMLDocumentParser;
.super Lcom/sun/org/apache/xerces/internal/parsers/AbstractXMLDocumentParser;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration"

    const-string v1, "com.sun.org.apache.xerces.internal.parsers.XIncludeAwareParserConfiguration"

    .line 1
    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractXMLDocumentParser;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 2

    const-string v0, "com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration"

    const-string v1, "com.sun.org.apache.xerces.internal.parsers.XIncludeAwareParserConfiguration"

    .line 3
    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractXMLDocumentParser;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;)V

    .line 4
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V
    .locals 2

    const-string v0, "com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration"

    const-string v1, "com.sun.org.apache.xerces.internal.parsers.XIncludeAwareParserConfiguration"

    .line 5
    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractXMLDocumentParser;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;)V

    .line 6
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v0, v1, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string p1, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractXMLDocumentParser;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;)V

    return-void
.end method
