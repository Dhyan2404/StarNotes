.class public abstract Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarParser;
.super Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;
.source "SourceFile"


# instance fields
.field protected fDatatypeValidatorFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 2

    const-string v0, "com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration"

    const-string v1, "com.sun.org.apache.xerces.internal.parsers.XIncludeAwareParserConfiguration"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
