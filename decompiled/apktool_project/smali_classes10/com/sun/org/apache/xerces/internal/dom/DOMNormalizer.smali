.class public Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field protected static final DEBUG_EVENTS:Z = false

.field protected static final DEBUG_ND:Z = false

.field protected static final PREFIX:Ljava/lang/String; = "NS"

.field public static final abort:Ljava/lang/RuntimeException;


# instance fields
.field private allWhitespace:Z

.field protected final fAttrProxy:Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;

.field private fAttrQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field protected final fAttributeList:Ljava/util/Vector;

.field protected fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

.field protected fCurrentNode:Lorg/w3c/dom/Node;

.field private fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

.field protected fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

.field private final fError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

.field protected fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

.field protected final fLocalNSBinder:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

.field protected final fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

.field protected final fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

.field protected fNamespaceValidation:Z

.field final fNormalizedValue:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

.field protected fPSVI:Z

.field protected final fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field protected fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

.field protected fValidationHandler:Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;

    invoke-direct {v1, p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;-><init>(Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fAttrProxy:Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fNamespaceValidation:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fPSVI:Z

    new-instance v2, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fLocalNSBinder:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    new-instance v2, Ljava/util/Vector;

    const/4 v3, 0x5

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Ljava/util/Vector;-><init>(II)V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fAttributeList:Ljava/util/Vector;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fCurrentNode:Lorg/w3c/dom/Node;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fAttrQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    const/16 v2, 0x10

    new-array v2, v2, [C

    invoke-direct {v0, v2, v1, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;-><init>([CII)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fNormalizedValue:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->allWhitespace:Z

    return-void
.end method

.method private createGrammarPool(Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;)Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;
    .locals 7

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;-><init>()V

    new-instance v1, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarPreparser;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {v1, p0}, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarPreparser;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V

    const-string p0, "http://www.w3.org/TR/REC-xml"

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarPreparser;->registerPreparser(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarLoader;)Z

    const-string v3, "http://apache.org/xml/features/namespaces"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarPreparser;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "http://apache.org/xml/features/validation"

    invoke-virtual {v1, v3, v4}, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarPreparser;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {v1, v3, v0}, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarPreparser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    :cond_0
    :try_start_0
    invoke-virtual {v1, p0, v4}, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarPreparser;->preparseGrammar(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getGrammarDescription()Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;->setRootName(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    invoke-virtual {v1, p0, v4}, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarPreparser;->preparseGrammar(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getGrammarDescription()Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;->setRootName(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static final isAttrValueWF(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Lorg/w3c/dom/NamedNodeMap;Lorg/w3c/dom/Attr;Ljava/lang/String;Z)V
    .locals 9

    instance-of p3, p4, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    if-eqz p3, :cond_0

    move-object p3, p4

    check-cast p3, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->hasStringValue()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p0, p1, p2, p5, p6}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->isXMLCharWF(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_0
    invoke-interface {p4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p3

    const/4 p5, 0x0

    :goto_0
    invoke-interface {p3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge p5, v0, :cond_4

    invoke-interface {p3, p5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    invoke-interface {p4}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "*"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Entity;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    invoke-interface {p4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "UndeclaredEntRefInAttrValue"

    invoke-static {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const-string v8, "UndeclaredEntRefInAttrValue"

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0, p6}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->isXMLCharWF(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    :cond_3
    :goto_2
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method public static final isCDataWF(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;Z)V
    .locals 17

    if-eqz p3, :cond_c

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const-string v3, "CDEndInContent"

    const/16 v4, 0x3e

    const/16 v5, 0x10

    const-string v6, "InvalidCharInCDSect"

    const/4 v7, 0x0

    const-string v8, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const/16 v9, 0x5d

    if-eqz p4, :cond_6

    :goto_0
    if-ge v7, v1, :cond_c

    add-int/lit8 v10, v7, 0x1

    aget-char v7, v0, v7

    invoke-static {v7}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11Invalid(I)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {v7}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isHighSurrogate(I)Z

    move-result v11

    if-eqz v11, :cond_2

    if-ge v10, v1, :cond_2

    add-int/lit8 v11, v10, 0x1

    aget-char v10, v0, v10

    invoke-static {v10}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isLowSurrogate(I)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {v7, v10}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->supplemental(CC)I

    move-result v10

    invoke-static {v10}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isSupplemental(I)Z

    move-result v10

    if-eqz v10, :cond_1

    move v7, v11

    goto :goto_0

    :cond_1
    move v10, v11

    :cond_2
    invoke-static {v7, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    const-string v16, "wf-invalid-character"

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-static/range {v11 .. v16}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_2

    :cond_3
    if-ne v7, v9, :cond_5

    if-ge v10, v1, :cond_5

    aget-char v7, v0, v10

    if-ne v7, v9, :cond_5

    move v7, v10

    :goto_1
    add-int/lit8 v7, v7, 0x1

    if-ge v7, v1, :cond_4

    aget-char v11, v0, v7

    if-ne v11, v9, :cond_4

    goto :goto_1

    :cond_4
    if-ge v7, v1, :cond_5

    aget-char v7, v0, v7

    if-ne v7, v4, :cond_5

    invoke-static {v8, v3, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    const-string v16, "wf-invalid-character"

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-static/range {v11 .. v16}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_5
    :goto_2
    move v7, v10

    goto :goto_0

    :cond_6
    :goto_3
    if-ge v7, v1, :cond_c

    add-int/lit8 v10, v7, 0x1

    aget-char v7, v0, v7

    invoke-static {v7}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isInvalid(I)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-static {v7}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isHighSurrogate(I)Z

    move-result v11

    if-eqz v11, :cond_8

    if-ge v10, v1, :cond_8

    add-int/lit8 v11, v10, 0x1

    aget-char v10, v0, v10

    invoke-static {v10}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isLowSurrogate(I)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-static {v7, v10}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->supplemental(CC)I

    move-result v10

    invoke-static {v10}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isSupplemental(I)Z

    move-result v10

    if-eqz v10, :cond_7

    move v7, v11

    goto :goto_3

    :cond_7
    move v10, v11

    :cond_8
    invoke-static {v7, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    const-string v16, "wf-invalid-character"

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-static/range {v11 .. v16}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_5

    :cond_9
    if-ne v7, v9, :cond_b

    if-ge v10, v1, :cond_b

    aget-char v7, v0, v10

    if-ne v7, v9, :cond_b

    move v7, v10

    :goto_4
    add-int/lit8 v7, v7, 0x1

    if-ge v7, v1, :cond_a

    aget-char v11, v0, v7

    if-ne v11, v9, :cond_a

    goto :goto_4

    :cond_a
    if-ge v7, v1, :cond_b

    aget-char v7, v0, v7

    if-ne v7, v4, :cond_b

    invoke-static {v8, v3, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    const-string v16, "wf-invalid-character"

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-static/range {v11 .. v16}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_b
    :goto_5
    move v7, v10

    goto :goto_3

    :cond_c
    :goto_6
    return-void
.end method

.method public static final isCommentWF(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;Z)V
    .locals 16

    if-eqz p3, :cond_a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const-string v3, "DashDashInComment"

    const/16 v4, 0x10

    const-string v5, "InvalidCharInComment"

    const/4 v6, 0x0

    const-string v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const/16 v8, 0x2d

    if-eqz p4, :cond_5

    :goto_0
    if-ge v6, v1, :cond_a

    add-int/lit8 v9, v6, 0x1

    aget-char v6, v0, v6

    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11Invalid(I)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isHighSurrogate(I)Z

    move-result v10

    if-eqz v10, :cond_2

    if-ge v9, v1, :cond_2

    add-int/lit8 v10, v9, 0x1

    aget-char v9, v0, v9

    invoke-static {v9}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isLowSurrogate(I)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {v6, v9}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->supplemental(CC)I

    move-result v6

    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isSupplemental(I)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v10

    goto :goto_0

    :cond_1
    move v9, v10

    :cond_2
    add-int/lit8 v6, v9, -0x1

    aget-char v6, v0, v6

    invoke-static {v6, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v5, v6}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    const-string v15, "wf-invalid-character"

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-static/range {v10 .. v15}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_1

    :cond_3
    if-ne v6, v8, :cond_4

    if-ge v9, v1, :cond_4

    aget-char v6, v0, v9

    if-ne v6, v8, :cond_4

    invoke-static {v7, v3, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    const-string v15, "wf-invalid-character"

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-static/range {v10 .. v15}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_4
    :goto_1
    move v6, v9

    goto :goto_0

    :cond_5
    :goto_2
    if-ge v6, v1, :cond_a

    add-int/lit8 v9, v6, 0x1

    aget-char v6, v0, v6

    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isInvalid(I)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isHighSurrogate(I)Z

    move-result v10

    if-eqz v10, :cond_7

    if-ge v9, v1, :cond_7

    add-int/lit8 v10, v9, 0x1

    aget-char v9, v0, v9

    invoke-static {v9}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isLowSurrogate(I)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {v6, v9}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->supplemental(CC)I

    move-result v6

    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isSupplemental(I)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v10

    goto :goto_2

    :cond_6
    move v9, v10

    :cond_7
    add-int/lit8 v6, v9, -0x1

    aget-char v6, v0, v6

    invoke-static {v6, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v5, v6}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    const-string v15, "wf-invalid-character"

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-static/range {v10 .. v15}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_3

    :cond_8
    if-ne v6, v8, :cond_9

    if-ge v9, v1, :cond_9

    aget-char v6, v0, v9

    if-ne v6, v8, :cond_9

    invoke-static {v7, v3, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    const-string v15, "wf-invalid-character"

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-static/range {v10 .. v15}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_9
    :goto_3
    move v6, v9

    goto :goto_2

    :cond_a
    :goto_4
    return-void
.end method

.method public static final isXMLCharWF(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;Z)V
    .locals 11

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    array-length v0, p3

    const/16 v1, 0x10

    const-string v2, "InvalidXMLCharInDOM"

    const-string v3, "http://www.w3.org/dom/DOMTR"

    const/4 v4, 0x0

    if-eqz p4, :cond_4

    :goto_0
    if-ge v4, v0, :cond_8

    add-int/lit8 p4, v4, 0x1

    aget-char v4, p3, v4

    invoke-static {v4}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11Invalid(I)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v4, p4, -0x1

    aget-char v4, p3, v4

    invoke-static {v4}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isHighSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_2

    if-ge p4, v0, :cond_2

    add-int/lit8 v5, p4, 0x1

    aget-char p4, p3, p4

    invoke-static {p4}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isLowSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v4, p4}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->supplemental(CC)I

    move-result p4

    invoke-static {p4}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isSupplemental(I)Z

    move-result p4

    if-eqz p4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    :cond_2
    move v4, p4

    :goto_1
    add-int/lit8 p4, v4, -0x1

    aget-char p4, p3, p4

    invoke-static {p4, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-static {v3, v2, p4}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    const-string v10, "wf-invalid-character"

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v5 .. v10}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_0

    :cond_3
    move v4, p4

    goto :goto_0

    :cond_4
    :goto_2
    if-ge v4, v0, :cond_8

    add-int/lit8 p4, v4, 0x1

    aget-char v4, p3, v4

    invoke-static {v4}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isInvalid(I)Z

    move-result v4

    if-eqz v4, :cond_7

    add-int/lit8 v4, p4, -0x1

    aget-char v4, p3, v4

    invoke-static {v4}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isHighSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_6

    if-ge p4, v0, :cond_6

    add-int/lit8 v5, p4, 0x1

    aget-char p4, p3, p4

    invoke-static {p4}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isLowSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v4, p4}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->supplemental(CC)I

    move-result p4

    invoke-static {p4}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isSupplemental(I)Z

    move-result p4

    if-eqz p4, :cond_5

    move v4, v5

    goto :goto_2

    :cond_5
    move v4, v5

    goto :goto_3

    :cond_6
    move v4, p4

    :goto_3
    add-int/lit8 p4, v4, -0x1

    aget-char p4, p3, p4

    invoke-static {p4, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-static {v3, v2, p4}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    const-string v10, "wf-invalid-character"

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v5 .. v10}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_2

    :cond_7
    move v4, p4

    goto :goto_2

    :cond_8
    :goto_4
    return-void
.end method

.method public static final reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->reset()V

    iput-object p3, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-short p4, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fSeverity:S

    iput-object p2, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    iput-object p5, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    iget-object p2, p2, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    iput-object p2, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    invoke-interface {p0, p1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x3

    if-eq p4, p0, :cond_2

    return-void

    :cond_2
    sget-object p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method


# virtual methods
.method public final addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;)V
    .locals 2

    sget-object p0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne p1, p0, :cond_0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    sget-object p1, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-virtual {p3, p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public comment(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public emptyElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    invoke-virtual {p0, p1, p3}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    return-void
.end method

.method public endCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endDocument(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    if-eqz p2, :cond_2

    const-string p1, "ELEMENT_PSVI"

    invoke-interface {p2, p1}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/xs/ElementPSVI;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v0, p2

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fPSVI:Z

    if-eqz v1, :cond_0

    check-cast p2, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->setPSVI(Lcom/sun/org/apache/xerces/internal/xs/ElementPSVI;)V

    :cond_0
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getSchemaNormalizedValue()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->setTextContent(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getTextContent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->setTextContent(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public endGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public final expandEntityRef(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .locals 1

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {p1, p0, p2}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object p0, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getDocumentSource()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public ignorableWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->allWhitespace:Z

    return-void
.end method

.method public final namespaceFixUp(Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    const/4 v10, 0x0

    if-eqz v9, :cond_7

    move v2, v10

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-virtual {v9, v2}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Attr;

    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iget-boolean v5, v4, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    iget-short v5, v5, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXMLVersionChanged()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->checkQName(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    sget-object v5, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_1
    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iget-boolean v6, v6, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v6, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    iput-object v3, v4, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    const-string v3, "CantBindXMLNS"

    const/4 v4, 0x0

    const-string v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-static {v5, v3, v4}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iget-object v11, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v12, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    iget-object v13, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    const/4 v15, 0x2

    const-string v16, "CantBindXMLNS"

    invoke-static/range {v11 .. v16}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_3

    :cond_2
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v6, v5}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v5, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_2
    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v5, v6, :cond_5

    iget-object v5, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v5, v4}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v5, v3, v4}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    :cond_5
    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    sget-object v5, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v3

    const-string v11, "http://www.w3.org/dom/DOMTR"

    if-eqz v2, :cond_b

    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v4, v2}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_8

    goto :goto_4

    :cond_8
    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v4, v3}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_9
    :goto_4
    sget-object v3, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_5
    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v4, v3}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-ne v4, v2, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v0, v3, v2, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;)V

    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fLocalNSBinder:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v4, v3, v2}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v4, v3, v2}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getLocalName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    iget-boolean v2, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fNamespaceValidation:Z

    const-string v3, "NullLocalElementName"

    if-eqz v2, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->getNodeName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v11, v3, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    iget-object v12, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v13, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    iget-object v14, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    const/16 v16, 0x3

    const-string v17, "NullLocalElementName"

    invoke-static/range {v12 .. v17}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_6

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->getNodeName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v11, v3, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    iget-object v12, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v13, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    iget-object v14, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    const/16 v16, 0x2

    const-string v17, "NullLocalElementName"

    invoke-static/range {v12 .. v17}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_6

    :cond_d
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    sget-object v3, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e

    invoke-virtual {v0, v3, v3, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;)V

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fLocalNSBinder:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v2, v3, v3}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v2, v3, v3}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_e
    :goto_6
    if-eqz v9, :cond_1c

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fAttributeList:Ljava/util/Vector;

    invoke-virtual {v9, v2}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->cloneMap(Ljava/util/Vector;)Ljava/util/Vector;

    move v12, v10

    :goto_7
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fAttributeList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v12, v2, :cond_1c

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fAttributeList:Ljava/util/Vector;

    invoke-virtual {v2, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lorg/w3c/dom/Attr;

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    iput-object v13, v2, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    invoke-interface {v13}, Lorg/w3c/dom/Node;->normalize()V

    invoke-interface {v13}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v14

    if-nez v2, :cond_f

    sget-object v2, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_f
    move-object v15, v2

    if-eqz v14, :cond_19

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_10

    goto :goto_8

    :cond_10
    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_11
    :goto_8
    sget-object v2, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_9
    move-object v8, v2

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    sget-object v2, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto/16 :goto_e

    :cond_12
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iget-boolean v2, v2, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v2, :cond_13

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    iget-short v2, v2, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_13

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    move-object v6, v13

    check-cast v6, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    invoke-interface {v13}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v7

    iget-object v5, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {v5}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v16

    move-object/from16 v5, p2

    move-object/from16 v18, v8

    move/from16 v8, v16

    invoke-static/range {v2 .. v8}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->isAttrValueWF(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Lorg/w3c/dom/NamedNodeMap;Lorg/w3c/dom/Attr;Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXMLVersionChanged()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "Attribute"

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "wf-invalid-character-in-node-name"

    invoke-static {v11, v3, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    const/16 v23, 0x2

    const-string v24, "wf-invalid-character-in-node-name"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    invoke-static/range {v19 .. v24}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_a

    :cond_13
    move-object/from16 v18, v8

    :cond_14
    :goto_a
    move-object v2, v13

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    invoke-virtual {v2, v10}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->setIdAttribute(Z)V

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v2, v14}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    move-object/from16 v4, v18

    invoke-interface {v3, v4}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v4, v5, :cond_15

    if-eq v3, v2, :cond_1b

    :cond_15
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v3, v2}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    if-eq v3, v5, :cond_16

    goto :goto_d

    :cond_16
    if-eq v4, v5, :cond_17

    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fLocalNSBinder:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v3, v4}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_17

    move-object v8, v4

    goto :goto_c

    :cond_17
    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move-object v8, v3

    :goto_b
    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fLocalNSBinder:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v3, v8}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_18

    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move v4, v7

    goto :goto_b

    :cond_18
    :goto_c
    invoke-virtual {v0, v8, v2, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;)V

    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v3, v15}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fLocalNSBinder:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v4, v8, v3}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v3, v8, v2}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-object v3, v8

    :goto_d
    invoke-interface {v13, v3}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    goto :goto_e

    :cond_19
    move-object v2, v13

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    invoke-virtual {v2, v10}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->setIdAttribute(Z)V

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b

    iget-boolean v2, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fNamespaceValidation:Z

    const-string v3, "NullLocalAttrName"

    if-eqz v2, :cond_1a

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v11, v3, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    iget-object v13, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v14, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    iget-object v15, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    const/16 v17, 0x3

    const-string v18, "NullLocalAttrName"

    invoke-static/range {v13 .. v18}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_e

    :cond_1a
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v11, v3, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    iget-object v13, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v14, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    iget-object v15, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    const/16 v17, 0x2

    const-string v18, "NullLocalAttrName"

    invoke-static/range {v13 .. v18}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_1b
    :goto_e
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_7

    :cond_1c
    return-void
.end method

.method public final normalizeAttributeValue(Ljava/lang/String;Lorg/w3c/dom/Attr;)Ljava/lang/String;
    .locals 9

    invoke-interface {p2}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fNormalizedValue:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    array-length v2, v2

    if-ge v2, v0, :cond_1

    new-array v2, v0, [C

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    :cond_1
    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    move v1, v2

    :goto_0
    if-ge v2, v0, :cond_6

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x9

    const/16 v5, 0x20

    const/4 v6, 0x1

    if-eq v3, v4, :cond_4

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v7, 0xd

    if-ne v3, v7, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fNormalizedValue:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iget-object v3, v1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    iget v7, v1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    aput-char v5, v3, v7

    add-int/lit8 v1, v2, 0x1

    if-ge v1, v0, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_5

    move v2, v1

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fNormalizedValue:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iget-object v5, v4, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    iget v7, v4, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v4, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    aput-char v3, v5, v7

    goto :goto_3

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fNormalizedValue:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iget-object v3, v1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    iget v4, v1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    add-int/lit8 v7, v4, 0x1

    iput v7, v1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    aput-char v5, v3, v4

    :cond_5
    :goto_2
    move v1, v6

    :goto_3
    add-int/2addr v2, v6

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fNormalizedValue:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    :cond_7
    return-object p1
.end method

.method public normalizeDocument(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;)V
    .locals 4

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    const-string p1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->reset()V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    sget-object p2, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-interface {p1, p2, p2}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    iget-short p2, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 p2, p2, 0x40

    const-string v0, "http://www.w3.org/2001/XMLSchema"

    if-eqz p2, :cond_2

    const-string p2, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->singleton:Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->getValidator(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fValidationHandler:Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    const-string v1, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {p1, v1, p2}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    const-string v1, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-virtual {p1, v1, p2}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fNamespaceValidation:Z

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    iget-short p1, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fPSVI:Z

    :cond_1
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    const-string v1, "http://xml.org/sax/features/validation"

    invoke-virtual {p1, v1, p2}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->clearIdentifiers()V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fValidationHandler:Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

    if-eqz p1, :cond_2

    check-cast p1, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    invoke-interface {p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;->reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    const-string p2, "error-handler"

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/DOMErrorHandler;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fValidationHandler:Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fValidationHandler:Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-direct {v1, v2, v2, v3, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->encoding:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {p1, v1, v2, v3, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startDocument(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_5

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->normalizeNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move-object p1, v1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fValidationHandler:Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

    if-eqz p1, :cond_6

    invoke-interface {p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endDocument(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    sget-object p1, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->singleton:Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fValidationHandler:Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

    invoke-virtual {p1, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->releaseValidator(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;)V

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fValidationHandler:Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;

    if-ne p0, p1, :cond_7

    return-void

    :cond_7
    throw p0
.end method

.method public normalizeNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 14

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    iput-object p1, v1, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    const-string v1, "Element"

    const-string v2, "wf-invalid-character-in-node-name"

    const-string v3, "http://www.w3.org/dom/DOMTR"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v0, v5, :cond_1a

    const/16 v7, 0xa

    const/4 v8, -0x1

    if-eq v0, v7, :cond_19

    const/16 v7, 0x8

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-eq v0, v10, :cond_10

    if-eq v0, v9, :cond_9

    const/4 v8, 0x5

    if-eq v0, v8, :cond_5

    const/4 v5, 0x7

    if-eq v0, v5, :cond_2

    if-eq v0, v7, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    iget-short v0, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    if-eqz p0, :cond_2a

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    if-ne p1, v10, :cond_2a

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_2a

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v1, v10, :cond_2a

    move-object v1, p1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/dom/TextImpl;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/sun/org/apache/xerces/internal/dom/CharacterDataImpl;->insertData(ILjava/lang/String;)V

    invoke-interface {v0, p0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iget-boolean v1, v1, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_2a

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2a

    check-cast p1, Lorg/w3c/dom/Comment;

    invoke-interface {p1}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result p0

    invoke-static {v0, v1, v2, p1, p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->isCommentWF(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto/16 :goto_9

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iget-boolean v0, v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    iget-short v0, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2a

    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v0}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {v5}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v4}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11ValidName(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    :cond_3
    invoke-static {v4}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result v4

    :goto_0
    if-nez v4, :cond_4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, v2, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    iget-object v9, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    const/4 v11, 0x2

    const-string v12, "wf-invalid-character-in-node-name"

    invoke-static/range {v7 .. v12}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    invoke-interface {v0}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result p0

    invoke-static {p1, v1, v2, v0, p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->isXMLCharWF(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto/16 :goto_9

    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    iget-short v0, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_8

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/EntityReferenceImpl;

    invoke-virtual {v2, v4, v5}, Lcom/sun/org/apache/xerces/internal/dom/EntityReferenceImpl;->setReadOnly(ZZ)V

    invoke-virtual {p0, v1, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->expandEntityRef(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    invoke-interface {v1, p1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_1

    :cond_6
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_1
    if-eqz v0, :cond_7

    if-eqz p0, :cond_7

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    if-ne p1, v10, :cond_7

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    if-ne p1, v10, :cond_7

    return-object v0

    :cond_7
    return-object p0

    :cond_8
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iget-boolean v2, v1, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v2, :cond_2a

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2a

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXMLVersionChanged()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result p0

    invoke-static {p1, p0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    goto/16 :goto_9

    :cond_9
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    iget-short v1, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/2addr v1, v7

    if-nez v1, :cond_b

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v1, v10, :cond_a

    move-object p0, v0

    check-cast p0, Lorg/w3c/dom/Text;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/w3c/dom/CharacterData;->appendData(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0

    :cond_a
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/w3c/dom/Node;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p0

    :cond_b
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fValidationHandler:Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

    if-eqz v1, :cond_c

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    iput-object p1, v0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fCurrentNode:Lorg/w3c/dom/Node;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v1, v6}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fValidationHandler:Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;->characterData(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fValidationHandler:Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

    invoke-interface {v0, v6}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_c
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    iput-object p1, v1, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fCurrentNode:Lorg/w3c/dom/Node;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-virtual {v0, v6}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->startCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->characterData(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    invoke-virtual {v0, v6}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->endCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_d
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    iget-short v1, v1, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_f

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iget-boolean v2, v2, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {v9}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v9

    invoke-static {v2, v5, v7, v8, v9}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->isXMLCharWF(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    :cond_e
    :goto_2
    const-string v2, "]]>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2a

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    iput-object p1, v5, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    const-string p1, "cdata-sections-splitted"

    invoke-static {v3, p1, v6}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    iget-object v9, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    const/4 v11, 0x1

    const-string v12, "cdata-sections-splitted"

    invoke-static/range {v7 .. v12}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    move-object p1, v2

    goto :goto_2

    :cond_f
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iget-boolean v1, p1, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result p1

    invoke-static {v1, v2, p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->isCDataWF(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto/16 :goto_9

    :cond_10
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v1, v10, :cond_11

    move-object p0, p1

    check-cast p0, Lorg/w3c/dom/Text;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/w3c/dom/CharacterData;->appendData(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p1

    :cond_11
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_9

    :cond_12
    if-eqz v0, :cond_13

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    goto :goto_3

    :cond_13
    move v0, v8

    :goto_3
    if-eq v0, v8, :cond_16

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    iget-short v1, v1, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_14

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2a

    :cond_14
    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_15

    if-eq v0, v7, :cond_2a

    :cond_15
    and-int/2addr v1, v7

    if-nez v1, :cond_16

    if-eq v0, v9, :cond_2a

    :cond_16
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iget-boolean v0, v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    iget-short v0, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {v7}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v7

    invoke-static {v0, v1, v2, v3, v7}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->isXMLCharWF(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    :cond_17
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fValidationHandler:Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    iput-object p1, v1, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fCurrentNode:Lorg/w3c/dom/Node;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;->characterData(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Z

    :cond_18
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    iput-object p1, v1, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fCurrentNode:Lorg/w3c/dom/Node;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->characterData(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Z

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->allWhitespace:Z

    if-eqz v0, :cond_2a

    iput-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->allWhitespace:Z

    check-cast p1, Lcom/sun/org/apache/xerces/internal/dom/TextImpl;

    invoke-virtual {p1, v5}, Lcom/sun/org/apache/xerces/internal/dom/TextImpl;->setIgnorableWhitespace(Z)V

    goto/16 :goto_9

    :cond_19
    check-cast p1, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;

    sget-object v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->singleton:Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;

    const-string v1, "http://www.w3.org/TR/REC-xml"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->getValidator(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    const-string v1, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->createGrammarPool(Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;)Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    invoke-direct {v1, v2, v2, v8, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->encoding:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->startDocument(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1, v6}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    goto/16 :goto_9

    :cond_1a
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iget-boolean v7, v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v7, :cond_1c

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    iget-short v7, v7, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_1c

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXMLVersionChanged()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fNamespaceValidation:Z

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {v8}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v8

    invoke-static {v0, v7, v8}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_4

    :cond_1b
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {v7}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v7

    invoke-static {v0, v7}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v0

    :goto_4
    if-nez v0, :cond_1c

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    iget-object v9, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    const/4 v11, 0x2

    const-string v12, "wf-invalid-character-in-node-name"

    invoke-static/range {v7 .. v12}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_1c
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->pushContext()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fLocalNSBinder:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->reset()V

    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->synchronizeChildren()V

    :cond_1d
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->hasAttributes()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    goto :goto_5

    :cond_1e
    move-object v1, v6

    :goto_5
    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    iget-short v7, v7, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/2addr v7, v5

    if-eqz v7, :cond_21

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->namespaceFixUp(Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    iget-short v2, v2, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_23

    if-eqz v1, :cond_23

    :goto_6
    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->getLength()I

    move-result v2

    if-ge v4, v2, :cond_23

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Attr;

    sget-object v3, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1f

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    :cond_1f
    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    add-int/lit8 v4, v4, -0x1

    :cond_20
    add-int/2addr v4, v5

    goto :goto_6

    :cond_21
    if-eqz v1, :cond_23

    :goto_7
    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_23

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Attr;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->normalize()V

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iget-boolean v7, v7, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v7, :cond_22

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    iget-short v7, v7, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_22

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    iget-object v9, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    move-object v11, v5

    check-cast v11, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v12

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {v5}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v13

    move-object v10, v1

    invoke-static/range {v7 .. v13}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->isAttrValueWF(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Lorg/w3c/dom/NamedNodeMap;Lorg/w3c/dom/Attr;Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {v5}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXMLVersionChanged()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {v7}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v7

    invoke-static {v5, v7}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_22

    const-string v5, "Attr"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v5, v7}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v2, v5}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    iget-object v9, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    const/4 v11, 0x2

    const-string v12, "wf-invalid-character-in-node-name"

    invoke-static/range {v7 .. v12}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_23
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fValidationHandler:Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fAttrProxy:Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {v2, v1, v3, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;->setAttributes(Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {p0, v0, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->updateQName(Lorg/w3c/dom/Node;Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    iput-object p1, v2, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fCurrentNode:Lorg/w3c/dom/Node;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fCurrentNode:Lorg/w3c/dom/Node;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fValidationHandler:Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fAttrProxy:Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;

    invoke-interface {v2, v3, v4, v6}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_24
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fAttrProxy:Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {v2, v1, v3, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;->setAttributes(Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->updateQName(Lorg/w3c/dom/Node;Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    iput-object p1, v1, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fCurrentNode:Lorg/w3c/dom/Node;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fCurrentNode:Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fAttrProxy:Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;

    invoke-virtual {v1, v2, v3, v6}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_25
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_8
    if-eqz v1, :cond_27

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->normalizeNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_26

    goto :goto_8

    :cond_26
    move-object v1, v2

    goto :goto_8

    :cond_27
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fValidationHandler:Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->updateQName(Lorg/w3c/dom/Node;Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    iput-object p1, v1, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fCurrentNode:Lorg/w3c/dom/Node;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fCurrentNode:Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fValidationHandler:Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-interface {v1, v2, v6}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_28
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->updateQName(Lorg/w3c/dom/Node;Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    iput-object p1, v0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fCurrentNode:Lorg/w3c/dom/Node;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fCurrentNode:Lorg/w3c/dom/Node;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {p1, v0, v6}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_29
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->popContext()V

    :cond_2a
    :goto_9
    return-object v6
.end method

.method public processingInstruction(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V
    .locals 0

    return-void
.end method

.method public startCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startDocument(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fCurrentNode:Lorg/w3c/dom/Node;

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getLength()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_5

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fAttrQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-interface {p2, v1, v2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getName(ILcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fAttrQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v2

    invoke-interface {p2, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getAugmentations(I)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object v3

    const-string v4, "ATTRIBUTE_PSVI"

    invoke-interface {v3, v4}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getMemberTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    move-result-object v4

    if-eqz v4, :cond_0

    check-cast v4, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-interface {v4}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->isIDType()Z

    move-result v4

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object v4

    if-eqz v4, :cond_1

    check-cast v4, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-interface {v4}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->isIDType()Z

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    if-eqz v4, :cond_2

    move-object v4, p1

    check-cast v4, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V

    :cond_2
    iget-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fPSVI:Z

    if-eqz v4, :cond_3

    move-object v4, v2

    check-cast v4, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;

    invoke-virtual {v4, v3}, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->setPSVI(Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;)V

    :cond_3
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    iget-short v4, v4, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result v4

    invoke-interface {v3}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getSchemaNormalizedValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    if-nez v4, :cond_4

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->setSpecified(Z)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public startGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public final updateQName(Lorg/w3c/dom/Node;Lcom/sun/org/apache/xerces/internal/xni/QName;)V
    .locals 5

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v4, v0}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    iput-object v0, p2, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    iput-object v0, p2, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    iput-object v3, p2, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    return-void
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method
