.class public abstract Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;
.super Lcom/sun/org/apache/xerces/internal/parsers/AbstractXMLDocumentParser;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xs/PSVIProvider;
.implements Lorg/xml/sax/Parser;
.implements Lorg/xml/sax/XMLReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;,
        Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$LocatorProxy;
    }
.end annotation


# static fields
.field protected static final ALLOW_UE_AND_NOTATION_EVENTS:Ljava/lang/String; = "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

.field private static final BUFFER_SIZE:I = 0x14

.field protected static final DECLARATION_HANDLER:Ljava/lang/String; = "http://xml.org/sax/properties/declaration-handler"

.field protected static final DOM_NODE:Ljava/lang/String; = "http://xml.org/sax/properties/dom-node"

.field protected static final LEXICAL_HANDLER:Ljava/lang/String; = "http://xml.org/sax/properties/lexical-handler"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final NAMESPACE_PREFIXES:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final STRING_INTERNING:Ljava/lang/String; = "http://xml.org/sax/features/string-interning"


# instance fields
.field private final fAttributesProxy:Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;

.field private fAugmentations:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

.field private fCharBuffer:[C

.field protected fContentHandler:Lorg/xml/sax/ContentHandler;

.field protected fDTDHandler:Lorg/xml/sax/DTDHandler;

.field protected fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

.field protected fDeclaredAttrs:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

.field protected fDocumentHandler:Lorg/xml/sax/DocumentHandler;

.field protected fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field protected fLexicalHandlerParameterEntities:Z

.field protected fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

.field protected fNamespacePrefixes:Z

.field protected fNamespaces:Z

.field protected fParseInProgress:Z

.field protected fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field protected fResolveDTDURIs:Z

.field protected fStandalone:Z

.field protected fUseEntityResolver2:Z

.field protected fVersion:Ljava/lang/String;

.field protected fXMLNSURIs:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    const-string v1, "http://xml.org/sax/features/string-interning"

    const-string v2, "http://xml.org/sax/features/namespaces"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    const-string v0, "http://xml.org/sax/properties/declaration-handler"

    const-string v1, "http://xml.org/sax/properties/dom-node"

    const-string v2, "http://xml.org/sax/properties/lexical-handler"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractXMLDocumentParser;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fNamespacePrefixes:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fLexicalHandlerParameterEntities:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fResolveDTDURIs:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fUseEntityResolver2:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fXMLNSURIs:Z

    new-instance v1, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fParseInProgress:Z

    new-instance v1, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fAttributesProxy:Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fAugmentations:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    const/16 v2, 0x14

    new-array v2, v2, [C

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fCharBuffer:[C

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDeclaredAttrs:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    :try_start_0
    const-string p0, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    invoke-interface {p1, p0, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const-string p7, "NOTATION"

    :try_start_0
    iget-object p8, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz p8, :cond_7

    new-instance p8, Ljava/lang/StringBuffer;

    invoke-direct {p8, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, "<"

    invoke-virtual {p8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p8

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDeclaredAttrs:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-virtual {v0, p8}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDeclaredAttrs:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p8, v1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p8

    if-nez p8, :cond_2

    const-string p8, "ENUMERATION"

    invoke-virtual {p3, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p8

    if-eqz p8, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v3, p3

    goto :goto_4

    :cond_2
    :goto_1
    new-instance p8, Ljava/lang/StringBuffer;

    invoke-direct {p8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p3, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_3

    invoke-virtual {p8, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, " ("

    invoke-virtual {p8, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    const-string p3, "("

    invoke-virtual {p8, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    const/4 p3, 0x0

    :goto_3
    array-length p7, p4

    if-ge p3, p7, :cond_5

    aget-object p7, p4, p3

    invoke-virtual {p8, p7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length p7, p4

    add-int/lit8 p7, p7, -0x1

    if-ge p3, p7, :cond_4

    const/16 p7, 0x7c

    invoke-virtual {p8, p7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_5
    const/16 p3, 0x29

    invoke-virtual {p8, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :goto_4
    if-nez p6, :cond_6

    const/4 p3, 0x0

    goto :goto_5

    :cond_6
    invoke-virtual {p6}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_5
    move-object v5, p3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    invoke-interface/range {v0 .. v5}, Lorg/xml/sax/ext/DeclHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget p2, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    iget v2, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    invoke-interface {v0, v1, v2, p2}, Lorg/xml/sax/DocumentHandler;->characters([CII)V

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_2

    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    iget v0, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    iget p1, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    invoke-interface {p0, p2, v0, p1}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public comment(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_0

    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    iget p1, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    const/4 v0, 0x0

    invoke-interface {p0, p2, v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractXMLDocumentParser;->fInDTD:Z

    :try_start_0
    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p4, :cond_0

    invoke-interface {p4, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz p1, :cond_1

    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDeclaredAttrs:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    :cond_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public endCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public endDTD(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractXMLDocumentParser;->fInDTD:Z

    :try_start_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDeclaredAttrs:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->clear()V

    :cond_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public endDocument(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/xml/sax/DocumentHandler;->endDocument()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xml/sax/DocumentHandler;->endElement(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_3

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fAugmentations:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    :try_start_1
    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fNamespaces:Z

    if-eqz v2, :cond_2

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    :cond_2
    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v0, p2, v1, p1}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fNamespaces:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->endNamespaceMapping()V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public endExternalSubset(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const-string v0, "[dtd]"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->endParameterEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    return-void
.end method

.method public endGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    if-eqz p2, :cond_0

    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "ENTITY_SKIPPED"

    invoke-interface {p2, v1}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public final endNamespaceMapping()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getDeclaredPrefixCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v3, v1}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public endParameterEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    if-eqz p2, :cond_0

    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "ENTITY_SKIPPED"

    invoke-interface {p2, v1}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p2, :cond_1

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fLexicalHandlerParameterEntities:Z

    if-eqz p0, :cond_1

    invoke-interface {p2, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public externalEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz p3, :cond_1

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object p3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fResolveDTDURIs:Z

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    invoke-interface {p0, p1, p3, p2}, Lorg/xml/sax/ext/DeclHandler;->externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public getAttributePSVI(I)Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fAttributesProxy:Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getAugmentations(I)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p0

    const-string p1, "ATTRIBUTE_PSVI"

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;

    return-object p0
.end method

.method public getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fAttributesProxy:Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getAugmentations(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p0

    const-string p1, "ATTRIBUTE_PSVI"

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;

    return-object p0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    return-object p0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDTDHandler:Lorg/xml/sax/DTDHandler;

    return-object p0
.end method

.method public getDeclHandler()Lorg/xml/sax/ext/DeclHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    return-object p0
.end method

.method public getElementPSVI()Lcom/sun/org/apache/xerces/internal/xs/ElementPSVI;
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fAugmentations:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    if-eqz p0, :cond_0

    const-string v0, "ELEMENT_PSVI"

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/xs/ElementPSVI;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {p0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    if-eqz p0, :cond_1

    instance-of v1, p0, Lcom/sun/org/apache/xerces/internal/util/EntityResolverWrapper;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/util/EntityResolverWrapper;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/EntityResolverWrapper;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object p0

    :goto_0
    move-object v0, p0

    goto :goto_1

    :cond_0
    instance-of v1, p0, Lcom/sun/org/apache/xerces/internal/util/EntityResolver2Wrapper;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/sun/org/apache/xerces/internal/util/EntityResolver2Wrapper;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/EntityResolver2Wrapper;->getEntityResolver()Lorg/xml/sax/ext/EntityResolver2;

    move-result-object p0
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-interface {p0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    if-eqz p0, :cond_0

    instance-of v1, p0, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object p0
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    :try_start_0
    const-string v0, "http://xml.org/sax/features/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1c

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    const-string v1, "namespace-prefixes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x1

    const/16 v2, 0x10

    if-ne v0, v2, :cond_1

    const-string v3, "string-interning"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    const/16 v3, 0xd

    if-ne v0, v3, :cond_2

    const-string v3, "is-standalone"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fStandalone:Z

    return p0

    :cond_2
    const/4 v3, 0x7

    if-ne v0, v3, :cond_3

    const-string v3, "xml-1.1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    instance-of p0, p1, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configurable;

    return p0

    :cond_3
    const/16 v3, 0x22

    if-ne v0, v3, :cond_4

    const-string v3, "lexical-handler/parameter-entities"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fLexicalHandlerParameterEntities:Z

    return p0

    :cond_4
    if-ne v0, v2, :cond_5

    const-string v2, "resolve-dtd-uris"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fResolveDTDURIs:Z

    return p0

    :cond_5
    const/16 v2, 0xa

    if-ne v0, v2, :cond_6

    const-string v2, "xmlns-uris"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fXMLNSURIs:Z

    return p0

    :cond_6
    const/16 v2, 0x1e

    if-ne v0, v2, :cond_7

    const-string v2, "unicode-normalization-checking"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 p0, 0x0

    return p0

    :cond_7
    const/16 v2, 0x14

    if-ne v0, v2, :cond_8

    const-string v2, "use-entity-resolver2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fUseEntityResolver2:Z

    return p0

    :cond_8
    const/16 v2, 0xf

    if-ne v0, v2, :cond_9

    const-string v2, "use-attributes2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    const/16 v2, 0xc

    if-ne v0, v2, :cond_b

    const-string v0, "use-locator2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    return v1

    :cond_b
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getType()S

    move-result p1

    if-nez p1, :cond_c

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v1, "feature-not-recognized"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v1, "feature-not-supported"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    :try_start_0
    const-string v0, "http://xml.org/sax/properties/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1e

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const-string v1, "document-xml-version"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fVersion:Ljava/lang/String;

    return-object p0

    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    const-string v1, "lexical-handler"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v1, 0x13

    if-ne v0, v1, :cond_2

    const-string v1, "declaration-handler"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->getDeclHandler()Lorg/xml/sax/ext/DeclHandler;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    const-string v0, "dom-node"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "dom-node-read-not-supported"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getType()S

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v1, "property-not-recognized"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v1, "property-not-supported"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ignorableWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    iget v1, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    iget v2, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    invoke-interface {p2, v0, v1, v2}, Lorg/xml/sax/DocumentHandler;->ignorableWhitespace([CII)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_1

    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    iget v0, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    iget p1, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    invoke-interface {p0, p2, v0, p1}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public internalEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public notationDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDTDHandler:Lorg/xml/sax/DTDHandler;

    if-eqz p3, :cond_1

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object p3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fResolveDTDURIs:Z

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDTDHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {p0, p1, p3, p2}, Lorg/xml/sax/DTDHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public parse(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->parse(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    instance-of p0, p1, Lorg/xml/sax/SAXException;

    if-nez p0, :cond_1

    .line 5
    instance-of p0, p1, Ljava/io/IOException;

    if-eqz p0, :cond_0

    .line 6
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 7
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p0

    .line 8
    :cond_1
    check-cast p1, Lorg/xml/sax/SAXException;

    throw p1

    .line 9
    :cond_2
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 10
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 11
    instance-of p0, v0, Lorg/xml/sax/SAXException;

    if-nez p0, :cond_4

    .line 12
    instance-of p0, v0, Ljava/io/IOException;

    if-eqz p0, :cond_3

    .line 13
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 14
    :cond_3
    new-instance p0, Lorg/xml/sax/SAXException;

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p0

    .line 15
    :cond_4
    check-cast v0, Lorg/xml/sax/SAXException;

    throw v0

    .line 16
    :cond_5
    new-instance v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$1;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$1;-><init>(Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;)V

    .line 17
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getPublicId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getLineNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 20
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getColumnNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 21
    new-instance p0, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p0
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    :try_start_0
    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 24
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 25
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->setEncoding(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->parse(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 27
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 28
    instance-of p0, p1, Lorg/xml/sax/SAXException;

    if-nez p0, :cond_1

    .line 29
    instance-of p0, p1, Ljava/io/IOException;

    if-eqz p0, :cond_0

    .line 30
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 31
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p0

    .line 32
    :cond_1
    check-cast p1, Lorg/xml/sax/SAXException;

    throw p1

    .line 33
    :cond_2
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 34
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 35
    instance-of p0, v0, Lorg/xml/sax/SAXException;

    if-nez p0, :cond_4

    .line 36
    instance-of p0, v0, Ljava/io/IOException;

    if-eqz p0, :cond_3

    .line 37
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 38
    :cond_3
    new-instance p0, Lorg/xml/sax/SAXException;

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p0

    .line 39
    :cond_4
    check-cast v0, Lorg/xml/sax/SAXException;

    throw v0

    .line 40
    :cond_5
    new-instance v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$2;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$2;-><init>(Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;)V

    .line 41
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getPublicId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getLineNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 44
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getColumnNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 45
    new-instance p0, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p0
.end method

.method public processingInstruction(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, v0}, Lorg/xml/sax/DocumentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractXMLDocumentParser;->reset()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractXMLDocumentParser;->fInDTD:Z

    const-string v1, "1.0"

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fVersion:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fStandalone:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fNamespaces:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v1, "http://xml.org/sax/features/namespace-prefixes"

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fNamespacePrefixes:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fAugmentations:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDeclaredAttrs:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDTDHandler:Lorg/xml/sax/DTDHandler;

    return-void
.end method

.method public setDeclHandler(Lorg/xml/sax/ext/DeclHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fParseInProgress:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    return-void

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "http://xml.org/sax/properties/declaration-handler"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "property-not-parsing-supported"

    invoke-static {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 3

    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fUseEntityResolver2:Z

    if-eqz v2, :cond_1

    instance-of v2, p1, Lorg/xml/sax/ext/EntityResolver2;

    if-eqz v2, :cond_1

    instance-of v2, v1, Lcom/sun/org/apache/xerces/internal/util/EntityResolver2Wrapper;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/sun/org/apache/xerces/internal/util/EntityResolver2Wrapper;

    check-cast p1, Lorg/xml/sax/ext/EntityResolver2;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xerces/internal/util/EntityResolver2Wrapper;->setEntityResolver(Lorg/xml/sax/ext/EntityResolver2;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/EntityResolver2Wrapper;

    check-cast p1, Lorg/xml/sax/ext/EntityResolver2;

    invoke-direct {v1, p1}, Lcom/sun/org/apache/xerces/internal/util/EntityResolver2Wrapper;-><init>(Lorg/xml/sax/ext/EntityResolver2;)V

    invoke-interface {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/sun/org/apache/xerces/internal/util/EntityResolverWrapper;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/sun/org/apache/xerces/internal/util/EntityResolverWrapper;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xerces/internal/util/EntityResolverWrapper;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/EntityResolverWrapper;

    invoke-direct {v1, p1}, Lcom/sun/org/apache/xerces/internal/util/EntityResolverWrapper;-><init>(Lorg/xml/sax/EntityResolver;)V

    invoke-interface {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 3

    const-string v0, "http://apache.org/xml/properties/internal/error-handler"

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    instance-of v2, v1, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;

    invoke-direct {v1, p1}, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;-><init>(Lorg/xml/sax/ErrorHandler;)V

    invoke-interface {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    :try_start_0
    const-string v0, "http://xml.org/sax/features/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1c

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const-string v2, "namespaces"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fNamespaces:Z

    return-void

    :cond_0
    const/16 v2, 0x12

    if-ne v0, v2, :cond_1

    const-string v2, "namespace-prefixes"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fNamespacePrefixes:Z

    return-void

    :cond_1
    const/16 v2, 0x10

    if-ne v0, v2, :cond_3

    const-string v3, "string-interning"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_2

    return-void

    :cond_2
    new-instance p2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "false-not-supported"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    const/16 v3, 0x22

    if-ne v0, v3, :cond_4

    const-string v3, "lexical-handler/parameter-entities"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fLexicalHandlerParameterEntities:Z

    return-void

    :cond_4
    if-ne v0, v2, :cond_5

    const-string v2, "resolve-dtd-uris"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fResolveDTDURIs:Z

    return-void

    :cond_5
    const/16 v2, 0x1e

    if-ne v0, v2, :cond_7

    const-string v2, "unicode-normalization-checking"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez p2, :cond_6

    return-void

    :cond_6
    new-instance p2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "true-not-supported"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    if-ne v0, v1, :cond_8

    const-string v1, "xmlns-uris"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fXMLNSURIs:Z

    return-void

    :cond_8
    const/16 v1, 0x14

    if-ne v0, v1, :cond_a

    const-string v1, "use-entity-resolver2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fUseEntityResolver2:Z

    if-eq p2, p1, :cond_9

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fUseEntityResolver2:Z

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    :cond_9
    return-void

    :cond_a
    const/16 v1, 0xd

    if-ne v0, v1, :cond_b

    const-string v1, "is-standalone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    :cond_b
    const/16 v1, 0xf

    if-ne v0, v1, :cond_c

    const-string v1, "use-attributes2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    :cond_c
    const/16 v1, 0xc

    if-ne v0, v1, :cond_d

    const-string v1, "use-locator2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    const/4 v1, 0x7

    if-ne v0, v1, :cond_f

    const-string v0, "xml-1.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    new-instance p2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "feature-read-only"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_f
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getType()S

    move-result p1

    if-nez p1, :cond_10

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "feature-not-recognized"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "feature-not-supported"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fParseInProgress:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-void

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "property-not-parsing-supported"

    invoke-static {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    :try_start_0
    const-string v0, "http://xml.org/sax/properties/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v0, v0, -0x1e

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "incompatible-class"

    const/16 v5, 0xf

    if-ne v0, v5, :cond_0

    :try_start_1
    const-string v5, "lexical-handler"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v5, :cond_0

    :try_start_2
    check-cast p2, Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_0
    :try_start_3
    new-instance p2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const-string p1, "org.xml.sax.ext.LexicalHandler"

    aput-object p1, v3, v1

    invoke-static {v0, v4, v3}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    const/16 v5, 0x13

    if-ne v0, v5, :cond_1

    const-string v5, "declaration-handler"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_3
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v5, :cond_1

    :try_start_4
    check-cast p2, Lorg/xml/sax/ext/DeclHandler;

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->setDeclHandler(Lorg/xml/sax/ext/DeclHandler;)V
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_1
    :try_start_5
    new-instance p2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const-string p1, "org.xml.sax.ext.DeclHandler"

    aput-object p1, v3, v1

    invoke-static {v0, v4, v3}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const-string v1, "dom-node"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/16 v1, 0x14

    if-ne v0, v1, :cond_4

    const-string v0, "document-xml-version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "property-read-only"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_2

    return-void

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getType()S

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "property-not-recognized"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "property-not-supported"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public startDocument(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    :try_start_0
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    new-instance p3, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$LocatorProxy;

    invoke-direct {p3, p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$LocatorProxy;-><init>(Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;)V

    invoke-interface {p2, p3}, Lorg/xml/sax/DocumentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    :cond_0
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {p2}, Lorg/xml/sax/DocumentHandler;->startDocument()V

    :cond_1
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    new-instance p3, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$LocatorProxy;

    invoke-direct {p3, p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$LocatorProxy;-><init>(Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;)V

    invoke-interface {p2, p3}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->startDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fAttributesProxy:Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;->setAttributes(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fAttributesProxy:Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/DocumentHandler;->startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fNamespaces:Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eqz v0, :cond_6

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->startNamespaceMapping()V

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getLength()I

    move-result v0

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fNamespacePrefixes:Z

    if-nez v2, :cond_3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_6

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-interface {p2, v0, v2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getName(ILcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    sget-object v4, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v3, v4, :cond_1

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    if-ne v2, v4, :cond_2

    :cond_1
    invoke-interface {p2, v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->removeAttributeAt(I)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fXMLNSURIs:Z

    if-nez v2, :cond_6

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_6

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-interface {p2, v0, v2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getName(ILcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    sget-object v4, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    iget-object v3, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    if-ne v3, v4, :cond_5

    :cond_4
    iput-object v1, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    iput-object v1, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iput-object v1, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-interface {p2, v0, v2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->setName(ILcom/sun/org/apache/xerces/internal/xni/QName;)V

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_6
    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fAugmentations:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    iget-object p3, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-eqz p3, :cond_7

    goto :goto_2

    :cond_7
    move-object p3, v1

    :goto_2
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fNamespaces:Z

    if-eqz v0, :cond_8

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    :cond_8
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fAttributesProxy:Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;->setAttributes(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fAttributesProxy:Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;

    invoke-interface {p2, p3, v1, p1, p0}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_9
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public startExternalSubset(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const-string p1, "[dtd]"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->startParameterEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    return-void
.end method

.method public startGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    if-eqz p4, :cond_0

    :try_start_0
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string p3, "ENTITY_SKIPPED"

    invoke-interface {p4, p3}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public final startNamespaceMapping()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getDeclaredPrefixCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v2, v1}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v3, v2}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-nez v3, :cond_0

    const-string v3, ""

    :cond_0
    invoke-interface {v4, v2, v3}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public startParameterEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    if-eqz p4, :cond_0

    :try_start_0
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string p3, "ENTITY_SKIPPED"

    invoke-interface {p4, p3}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p2, :cond_1

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fLexicalHandlerParameterEntities:Z

    if-eqz p0, :cond_1

    invoke-interface {p2, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDTDHandler:Lorg/xml/sax/DTDHandler;

    if-eqz p4, :cond_1

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object p4

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fResolveDTDURIs:Z

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fDTDHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {p0, p1, p4, p2, p3}, Lorg/xml/sax/DTDHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fVersion:Ljava/lang/String;

    const-string p1, "yes"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fStandalone:Z

    return-void
.end method
