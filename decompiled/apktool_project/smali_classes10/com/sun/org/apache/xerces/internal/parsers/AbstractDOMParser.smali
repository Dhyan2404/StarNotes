.class public Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;
.super Lcom/sun/org/apache/xerces/internal/parsers/AbstractXMLDocumentParser;
.source "SourceFile"


# static fields
.field protected static final CORE_DOCUMENT_CLASS_NAME:Ljava/lang/String; = "com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl"

.field protected static final CREATE_CDATA_NODES_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/create-cdata-nodes"

.field protected static final CREATE_ENTITY_REF_NODES:Ljava/lang/String; = "http://apache.org/xml/features/dom/create-entity-ref-nodes"

.field protected static final CURRENT_ELEMENT_NODE:Ljava/lang/String; = "http://apache.org/xml/properties/dom/current-element-node"

.field private static final DEBUG_BASEURI:Z = false

.field private static final DEBUG_EVENTS:Z = false

.field protected static final DEFAULT_DOCUMENT_CLASS_NAME:Ljava/lang/String; = "com.sun.org.apache.xerces.internal.dom.DocumentImpl"

.field protected static final DEFER_NODE_EXPANSION:Ljava/lang/String; = "http://apache.org/xml/features/dom/defer-node-expansion"

.field protected static final DOCUMENT_CLASS_NAME:Ljava/lang/String; = "http://apache.org/xml/properties/dom/document-class-name"

.field protected static final INCLUDE_COMMENTS_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/include-comments"

.field protected static final INCLUDE_IGNORABLE_WHITESPACE:Ljava/lang/String; = "http://apache.org/xml/features/dom/include-ignorable-whitespace"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final PSVI_DOCUMENT_CLASS_NAME:Ljava/lang/String; = "com.sun.org.apache.xerces.internal.dom.PSVIDocumentImpl"

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field public static final abort:Ljava/lang/RuntimeException;


# instance fields
.field private fAttrQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field protected fBaseURIStack:Ljava/util/Stack;

.field protected fCreateCDATANodes:Z

.field protected fCreateEntityRefNodes:Z

.field protected fCurrentCDATASection:Lorg/w3c/dom/CDATASection;

.field protected fCurrentCDATASectionIndex:I

.field protected fCurrentEntityDecl:Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;

.field protected fCurrentNode:Lorg/w3c/dom/Node;

.field protected fCurrentNodeIndex:I

.field protected fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

.field protected fDeferNodeExpansion:Z

.field protected fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

.field protected fDeferredEntityDecl:I

.field protected fDocument:Lorg/w3c/dom/Document;

.field protected fDocumentClassName:Ljava/lang/String;

.field protected fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

.field protected fDocumentIndex:I

.field protected fDocumentType:Lorg/w3c/dom/DocumentType;

.field protected fDocumentTypeIndex:I

.field protected fErrorHandler:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

.field protected fFilterReject:Z

.field protected fFirstChunk:Z

.field protected fInCDATASection:Z

.field protected fInDTD:Z

.field protected fInDTDExternalSubset:Z

.field protected fInEntityRef:Z

.field protected fIncludeComments:Z

.field protected fIncludeIgnorableWhitespace:Z

.field protected fInternalSubset:Ljava/lang/StringBuffer;

.field protected fNamespaceAware:Z

.field protected final fRejectedElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field protected fRoot:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field protected fSkippedElemStack:Ljava/util/Stack;

.field protected fStorePSVI:Z

.field protected final fStringBuffer:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "http://xml.org/sax/features/namespaces"

    const-string v1, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    const-string v2, "http://apache.org/xml/features/include-comments"

    const-string v3, "http://apache.org/xml/features/create-cdata-nodes"

    const-string v4, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    const-string v5, "http://apache.org/xml/features/dom/defer-node-expansion"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    const-string v0, "http://apache.org/xml/properties/dom/document-class-name"

    const-string v1, "http://apache.org/xml/properties/dom/current-element-node"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractXMLDocumentParser;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fErrorHandler:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fRoot:Lcom/sun/org/apache/xerces/internal/xni/QName;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fFirstChunk:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fFilterReject:Z

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fRejectedElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInEntityRef:Z

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fAttrQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    sget-object v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {p1, v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/dom/defer-node-expansion"

    invoke-interface {p1, v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/include-comments"

    invoke-interface {p1, v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-interface {p1, v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    sget-object v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string p1, "http://apache.org/xml/properties/dom/document-class-name"

    const-string v0, "com.sun.org.apache.xerces.internal.dom.DocumentImpl"

    invoke-interface {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p7, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/4 p8, 0x0

    if-eqz p7, :cond_7

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v0, :cond_7

    const-string v0, "<!ATTLIST "

    invoke-virtual {p7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p7, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p7, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v0, 0x20

    invoke-virtual {p7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p7, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p7, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p7, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p7, "ENUMERATION"

    invoke-virtual {p3, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_2

    iget-object p7, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-virtual {p7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p7, p8

    :goto_0
    array-length v1, p4

    if-ge p7, v1, :cond_1

    if-lez p7, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    aget-object v2, p4, p7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p7, p7, 0x1

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 p7, 0x29

    invoke-virtual {p4, p7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    if-eqz p6, :cond_6

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string p5, " \'"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p4, p8

    :goto_2
    iget p5, p6, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    const/16 p7, 0x27

    if-ge p4, p5, :cond_5

    iget-object p5, p6, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    iget v0, p6, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    add-int/2addr v0, p4

    aget-char p5, p5, v0

    if-ne p5, p7, :cond_4

    iget-object p5, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string p7, "&apos;"

    invoke-virtual {p5, p7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_4
    iget-object p7, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p7, p5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_5
    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p4, p7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string p5, ">\n"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    const-string p5, "ID"

    if-eqz p4, :cond_a

    if-eqz p6, :cond_10

    invoke-virtual {p4, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->lookupElementDefinition(Ljava/lang/String;)I

    move-result p4

    const/4 p7, -0x1

    if-ne p4, p7, :cond_8

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {p4, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createDeferredElementDefinition(Ljava/lang/String;)I

    move-result p4

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget p7, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    invoke-virtual {p1, p7, p4}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->appendChild(II)V

    :cond_8
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {p6}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p1, p2, p6, p8}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setIdAttribute(I)V

    :cond_9
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {p0, p4, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->appendChild(II)V

    goto/16 :goto_7

    :cond_a
    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    if-eqz p4, :cond_10

    if-eqz p6, :cond_10

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentType:Lorg/w3c/dom/DocumentType;

    check-cast p4, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;

    invoke-virtual {p4}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getElements()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p4

    invoke-interface {p4, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p4

    check-cast p4, Lcom/sun/org/apache/xerces/internal/dom/ElementDefinitionImpl;

    if-nez p4, :cond_b

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {p4, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createElementDefinition(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/dom/ElementDefinitionImpl;

    move-result-object p4

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentType:Lorg/w3c/dom/DocumentType;

    check-cast p1, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getElements()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    invoke-interface {p1, p4}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_b
    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz p1, :cond_e

    const-string p7, "xmlns:"

    invoke-virtual {p2, p7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p7

    if-nez p7, :cond_d

    const-string p7, "xmlns"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_c

    goto :goto_4

    :cond_c
    const/4 p7, 0x0

    goto :goto_5

    :cond_d
    :goto_4
    sget-object p7, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    :goto_5
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {p0, p7, p2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    goto :goto_6

    :cond_e
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    :goto_6
    invoke-virtual {p6}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, p8}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->setSpecified(Z)V

    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->setIdAttribute(Z)V

    if-eqz p1, :cond_f

    invoke-virtual {p4}, Lcom/sun/org/apache/xerces/internal/dom/ElementDefinitionImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/w3c/dom/NamedNodeMap;->setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_7

    :cond_f
    invoke-virtual {p4}, Lcom/sun/org/apache/xerces/internal/dom/ElementDefinitionImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_10
    :goto_7
    return-void
.end method

.method public characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    const/4 v0, 0x0

    if-nez p2, :cond_7

    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInCDATASection:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCreateCDATANodes:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentCDATASection:Lorg/w3c/dom/CDATASection;

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentCDATASection:Lorg/w3c/dom/CDATASection;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p2, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentCDATASection:Lorg/w3c/dom/CDATASection;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lorg/w3c/dom/CharacterData;->appendData(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInDTD:Z

    if-nez p2, :cond_b

    iget p2, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fFirstChunk:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    check-cast p2, Lcom/sun/org/apache/xerces/internal/dom/TextImpl;

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/dom/TextImpl;->removeData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    check-cast p2, Lorg/w3c/dom/Text;

    invoke-interface {p2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    :goto_0
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fFirstChunk:Z

    :cond_5
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fFirstChunk:Z

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    invoke-interface {p2, p1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_7
    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInCDATASection:Z

    if-eqz p2, :cond_9

    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCreateCDATANodes:Z

    if-eqz p2, :cond_9

    iget p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentCDATASectionIndex:I

    const/4 v1, -0x1

    if-ne p2, v1, :cond_8

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createDeferredCDATASection(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {p2, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->appendChild(II)V

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentCDATASectionIndex:I

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    goto :goto_1

    :cond_8
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createDeferredTextNode(Ljava/lang/String;Z)I

    move-result p1

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {p2, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->appendChild(II)V

    goto :goto_1

    :cond_9
    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInDTD:Z

    if-nez p2, :cond_b

    iget p2, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    if-nez p2, :cond_a

    return-void

    :cond_a
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {p2, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createDeferredTextNode(Ljava/lang/String;Z)I

    move-result p1

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {p2, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->appendChild(II)V

    :cond_b
    :goto_1
    return-void
.end method

.method public comment(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInDTD:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v0, :cond_0

    const-string v0, "<!-- "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string p1, " -->"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void

    :cond_1
    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fIncludeComments:Z

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->setCharacterData(Z)V

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p2, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    if-eqz p2, :cond_6

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInEntityRef:Z

    if-nez v0, :cond_6

    invoke-interface {p2}, Lorg/w3c/dom/ls/LSParserFilter;->getWhatToShow()I

    move-result p2

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    invoke-interface {p2, p1}, Lorg/w3c/dom/ls/LSParserFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_4

    const/4 p0, 0x4

    if-eq p2, p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0

    :cond_4
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p2, p1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fFirstChunk:Z

    return-void

    :cond_5
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createDeferredComment(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {p2, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->appendChild(II)V

    :cond_6
    :goto_0
    return-void
.end method

.method public createAttrNode(Lcom/sun/org/apache/xerces/internal/xni/QName;)Lorg/w3c/dom/Attr;
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    if-eqz v0, :cond_0

    iget-object p0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public createElementNode(Lcom/sun/org/apache/xerces/internal/xni/QName;)Lorg/w3c/dom/Element;
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    if-eqz v0, :cond_0

    iget-object p0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    if-eqz p4, :cond_1

    invoke-virtual {p4, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentType:Lorg/w3c/dom/DocumentType;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {p4, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createDeferredDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {p2, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->appendChild(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v0, :cond_0

    const-string v0, "<!ELEMENT "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 p3, 0x20

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string p1, ">\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public emptyElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    invoke-virtual {p0, p1, p3}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    return-void
.end method

.method public endAttlist(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInCDATASection:Z

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v0, :cond_4

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentCDATASection:Lorg/w3c/dom/CDATASection;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInEntityRef:Z

    if-nez v0, :cond_3

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSParserFilter;->getWhatToShow()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentCDATASection:Lorg/w3c/dom/CDATASection;

    invoke-interface {p1, v0}, Lorg/w3c/dom/ls/LSParserFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentCDATASection:Lorg/w3c/dom/CDATASection;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    return-void

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentCDATASection:Lorg/w3c/dom/CDATASection;

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentCDATASectionIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v0, v2, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getParentNode(IZ)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentCDATASectionIndex:I

    :cond_5
    :goto_1
    return-void
.end method

.method public endConditional(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endDTD(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInDTD:Z

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    invoke-virtual {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setInternalSubset(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentType:Lorg/w3c/dom/DocumentType;

    check-cast p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->setInternalSubset(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public endDocument(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setStrictErrorChecking(Z)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    :goto_0
    return-void
.end method

.method public endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    const/4 v1, 0x0

    if-nez v0, :cond_d

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fStorePSVI:Z

    if-eqz v0, :cond_3

    :cond_0
    const-string v0, "ELEMENT_PSVI"

    invoke-interface {p2, v0}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sun/org/apache/xerces/internal/xs/ElementPSVI;

    if-eqz p2, :cond_3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getMemberTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;->setType(Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)V

    :cond_2
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fStorePSVI:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->setPSVI(Lcom/sun/org/apache/xerces/internal/xs/ElementPSVI;)V

    :cond_3
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    if-eqz p2, :cond_c

    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fRejectedElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/QName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fFilterReject:Z

    :cond_4
    return-void

    :cond_5
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void

    :cond_6
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->setCharacterData(Z)V

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fRoot:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInEntityRef:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSParserFilter;->getWhatToShow()I

    move-result p1

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/ls/LSParserFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_8

    const/4 p2, 0x4

    if-eq p1, p2, :cond_7

    goto :goto_1

    :cond_7
    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0

    :cond_8
    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fFirstChunk:Z

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_9

    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p1, p2}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    return-void

    :cond_a
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p1, p2}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    return-void

    :cond_b
    :goto_1
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    goto :goto_2

    :cond_c
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->setCharacterData(Z)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    goto :goto_2

    :cond_d
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {p1, p2, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getParentNode(IZ)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    :goto_2
    return-void
.end method

.method public endExternalSubset(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public endGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_d

    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->setCharacterData(Z)V

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentType:Lorg/w3c/dom/DocumentType;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;

    if-eqz p1, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;

    invoke-virtual {p1, v1, v0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->setReadOnly(ZZ)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object p2

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;

    invoke-virtual {v2, p2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;

    invoke-virtual {p1, v0, v0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->setReadOnly(ZZ)V

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;

    :cond_3
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInEntityRef:Z

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCreateEntityRefNodes:Z

    const/4 p2, 0x3

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    check-cast p1, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {p1, v0, v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->setReadOnly(ZZ)V

    :cond_4
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSParserFilter;->getWhatToShow()I

    move-result p1

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p1, v2}, Lorg/w3c/dom/ls/LSParserFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result p1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_7

    if-eq p1, p2, :cond_6

    const/4 v2, 0x4

    if-eq p1, v2, :cond_5

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_5
    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0

    :cond_6
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fFirstChunk:Z

    move p1, v0

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p1, p2}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    return-void

    :cond_8
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    :cond_9
    :goto_1
    move p1, v1

    :goto_2
    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCreateEntityRefNodes:Z

    if-eqz v2, :cond_a

    if-eqz p1, :cond_14

    :cond_a
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_c

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    if-eqz v4, :cond_b

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    if-ne v6, p2, :cond_b

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    if-ne v6, p2, :cond_b

    check-cast v4, Lorg/w3c/dom/Text;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v4, p2}, Lorg/w3c/dom/CharacterData;->appendData(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p2, v5}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_3

    :cond_b
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v2, v5, p2}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->handleBaseURI(Lorg/w3c/dom/Node;)V

    :goto_3
    if-ge v0, v3, :cond_c

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p2

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v2, p2, v4}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->handleBaseURI(Lorg/w3c/dom/Node;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_c
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v2, p1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    goto/16 :goto_a

    :cond_d
    iget p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v2, -0x1

    if-eq p2, v2, :cond_f

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {v3, p2, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result p2

    :goto_4
    if-eq p2, v2, :cond_f

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {v3, p2, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_e

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {v3, p2, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    goto :goto_5

    :cond_e
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {v3, p2, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result p2

    goto :goto_4

    :cond_f
    :goto_5
    iget p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    if-eq p1, v2, :cond_10

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {p2, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result p1

    if-ne p1, v2, :cond_10

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {p1, p2, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result p1

    move p2, v2

    :goto_6
    if-eq p1, v2, :cond_10

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {v3, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->cloneNode(IZ)I

    move-result v3

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget v5, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    invoke-virtual {v4, v5, v3, p2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->insertBefore(III)I

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {p2, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result p1

    move p2, v3

    goto :goto_6

    :cond_10
    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCreateEntityRefNodes:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {p1, p2, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getParentNode(IZ)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    goto :goto_9

    :cond_11
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {p1, p2, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result p1

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {p2, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getParentNode(IZ)I

    move-result p2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    move v3, v0

    move v0, p1

    :goto_7
    if-eq v0, v2, :cond_12

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->handleBaseURI(I)V

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {v4, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v4

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {v5, p2, v0, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->insertBefore(III)I

    move v3, v0

    move v0, v4

    goto :goto_7

    :cond_12
    if-eq p1, v2, :cond_13

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {v0, p2, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setAsLastChild(II)V

    goto :goto_8

    :cond_13
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {p1, v3, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {v0, p2, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setAsLastChild(II)V

    :goto_8
    iput p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    :goto_9
    iput v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    :cond_14
    :goto_a
    return-void
.end method

.method public endParameterEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v3

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    const-string v1, "%"

    if-eqz p3, :cond_2

    iget-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v4, :cond_2

    const-string v4, "<!ENTITY "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v4, "% "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v4, 0x20

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz v2, :cond_1

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v4, "PUBLIC \'"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v4, "\' \'"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v4, "SYSTEM \'"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v4, "\'>\n"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    return-void

    :cond_3
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentType:Lorg/w3c/dom/DocumentType;

    if-eqz p3, :cond_4

    invoke-interface {p3}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p3

    invoke-interface {p3, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createEntity(Ljava/lang/String;)Lorg/w3c/dom/Entity;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;->setPublicId(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;->setSystemId(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;->setBaseURI(Ljava/lang/String;)V

    invoke-interface {p3, v1}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_4
    iget p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v1, -0x1

    if-eq p3, v1, :cond_7

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    const/4 v5, 0x0

    invoke-virtual {v4, p3, v5}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result p3

    :goto_2
    if-eq p3, v1, :cond_6

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {v4, p3, v5}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v4

    const/4 v6, 0x6

    if-ne v4, v6, :cond_5

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {v4, p3, v5}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {v4, p3, v5}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result p3

    goto :goto_2

    :cond_6
    move v0, v5

    :goto_3
    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    const/4 v4, 0x0

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createDeferredEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    invoke-virtual {p2, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->appendChild(II)V

    :cond_7
    return-void
.end method

.method public getDocument()Lorg/w3c/dom/Document;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    return-object p0
.end method

.method public getDocumentClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentClassName:Ljava/lang/String;

    return-object p0
.end method

.method public final handleBaseURI(I)V
    .locals 7

    .line 18
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 19
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeValueString(IZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getDeferredEntityBaseURI(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v5, v0

    if-eqz v5, :cond_3

    .line 21
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->getDocumentURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 22
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    const-string v3, "xml:base"

    const-string v4, "http://www.w3.org/XML/1998/namespace"

    const/4 v6, 0x1

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setDeferredAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    :cond_1
    const/4 p1, 0x7

    if-ne v0, p1, :cond_3

    .line 23
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {p1, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeValueString(IZ)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 24
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getDeferredEntityBaseURI(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    if-eqz p1, :cond_3

    .line 25
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fErrorHandler:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    if-eqz v0, :cond_3

    .line 26
    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;-><init>()V

    const-string v1, "pi-base-uri-not-preserved"

    .line 27
    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    .line 28
    iput-object p1, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    .line 29
    iput-short v2, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fSeverity:S

    .line 30
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fErrorHandler:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->getErrorHandler()Lorg/w3c/dom/DOMErrorHandler;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final handleBaseURI(Lorg/w3c/dom/Node;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    if-eqz v0, :cond_4

    .line 2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 3
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fNamespaceAware:Z

    const-string v1, "base"

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    const-string v3, "xml:base"

    if-eqz v0, :cond_0

    .line 4
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/EntityReferenceImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/EntityReferenceImpl;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 7
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->getDocumentURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 8
    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz p0, :cond_2

    .line 9
    check-cast p1, Lorg/w3c/dom/Element;

    invoke-interface {p1, v2, v1, v0}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_2
    check-cast p1, Lorg/w3c/dom/Element;

    invoke-interface {p1, v3, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x7

    if-ne v0, p1, :cond_4

    .line 11
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    check-cast p1, Lcom/sun/org/apache/xerces/internal/dom/EntityReferenceImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/EntityReferenceImpl;->getBaseURI()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 12
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fErrorHandler:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    if-eqz v0, :cond_4

    .line 13
    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;-><init>()V

    const-string v2, "pi-base-uri-not-preserved"

    .line 14
    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    .line 15
    iput-object p1, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    .line 16
    iput-short v1, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fSeverity:S

    .line 17
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fErrorHandler:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->getErrorHandler()Lorg/w3c/dom/DOMErrorHandler;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public ignorableWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fIncludeIgnorableWhitespace:Z

    if-eqz p2, :cond_4

    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    const/4 v0, 0x1

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    check-cast p2, Lorg/w3c/dom/Text;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lorg/w3c/dom/CharacterData;->appendData(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Lcom/sun/org/apache/xerces/internal/dom/TextImpl;

    invoke-virtual {p2, v0}, Lcom/sun/org/apache/xerces/internal/dom/TextImpl;->setIgnorableWhitespace(Z)V

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createDeferredTextNode(Ljava/lang/String;Z)I

    move-result p1

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {p2, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->appendChild(II)V

    :cond_4
    :goto_0
    return-void
.end method

.method public ignoredCharacters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string p4, "%"

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    iget-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v3, :cond_4

    const-string v3, "<!ENTITY "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v3, "% "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v3, 0x20

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x27

    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v5, 0x22

    if-eqz v3, :cond_2

    move v6, p3

    goto :goto_2

    :cond_2
    move v6, v5

    :goto_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move p3, v5

    :goto_3
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string p3, ">\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    return-void

    :cond_5
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentType:Lorg/w3c/dom/DocumentType;

    if-eqz p2, :cond_6

    invoke-interface {p2}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p3

    check-cast p3, Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;

    if-nez p3, :cond_6

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {p3, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createEntity(Ljava/lang/String;)Lorg/w3c/dom/Entity;

    move-result-object p3

    check-cast p3, Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p3, p4}, Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;->setBaseURI(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_6
    iget p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    if-eq p2, v1, :cond_9

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {p3, p2, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result p2

    :goto_4
    if-eq p2, v1, :cond_8

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {p3, p2, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result p3

    const/4 p4, 0x6

    if-ne p3, p4, :cond_7

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {p3, p2, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_5

    :cond_7
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {p3, p2, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result p2

    goto :goto_4

    :cond_8
    move v0, v2

    :goto_5
    if-nez v0, :cond_9

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createDeferredEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    invoke-virtual {p2, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->appendChild(II)V

    :cond_9
    return-void
.end method

.method public notationDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v2, :cond_2

    const-string v2, "<!NOTATION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v2, " PUBLIC \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v2, "\' \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v2, " SYSTEM \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v2, "\'>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentType:Lorg/w3c/dom/DocumentType;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/w3c/dom/DocumentType;->getNotations()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createNotation(Ljava/lang/String;)Lorg/w3c/dom/Notation;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/NotationImpl;

    invoke-virtual {v2, p3}, Lcom/sun/org/apache/xerces/internal/dom/NotationImpl;->setPublicId(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xerces/internal/dom/NotationImpl;->setSystemId(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/dom/NotationImpl;->setBaseURI(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_3
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v1

    :goto_1
    if-eq v1, v2, :cond_5

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {v3, v1, v4}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v3

    const/16 v5, 0xc

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {v3, v1, v4}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {v3, v1, v4}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getPrevSibling(IZ)I

    move-result v1

    goto :goto_1

    :cond_5
    :goto_2
    if-nez v4, :cond_6

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p3, v0, p2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createDeferredNotation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    invoke-virtual {p2, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->appendChild(II)V

    :cond_6
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInDTD:Z

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v0, :cond_0

    const-string v0, "<?"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 p3, 0x20

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string p1, "?>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void

    :cond_1
    iget-boolean p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez p3, :cond_5

    iget-boolean p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz p3, :cond_2

    return-void

    :cond_2
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->setCharacterData(Z)V

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p2, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    if-eqz p2, :cond_6

    iget-boolean p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInEntityRef:Z

    if-nez p3, :cond_6

    invoke-interface {p2}, Lorg/w3c/dom/ls/LSParserFilter;->getWhatToShow()I

    move-result p2

    and-int/lit8 p2, p2, 0x40

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    invoke-interface {p2, p1}, Lorg/w3c/dom/ls/LSParserFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result p2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_4

    const/4 p3, 0x3

    if-eq p2, p3, :cond_4

    const/4 p0, 0x4

    if-eq p2, p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0

    :cond_4
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p2, p1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fFirstChunk:Z

    return-void

    :cond_5
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createDeferredProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {p2, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->appendChild(II)V

    :cond_6
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractXMLDocumentParser;->reset()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCreateEntityRefNodes:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fIncludeIgnorableWhitespace:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/dom/defer-node-expansion"

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fNamespaceAware:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/include-comments"

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fIncludeComments:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCreateCDATANodes:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/dom/document-class-name"

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->setDocumentClassName(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fStorePSVI:Z

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentType:Lorg/w3c/dom/DocumentType;

    const/4 v2, -0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fRoot:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/xni/QName;->clear()V

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInDTD:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInCDATASection:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fFirstChunk:Z

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentCDATASection:Lorg/w3c/dom/CDATASection;

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentCDATASectionIndex:I

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public setCharacterData(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fFirstChunk:Z

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lez v0, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/TextImpl;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/dom/TextImpl;->replaceData(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Text;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/CharacterData;->setData(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInEntityRef:Z

    if-nez v0, :cond_5

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    invoke-interface {v0}, Lorg/w3c/dom/ls/LSParserFilter;->getWhatToShow()I

    move-result v0

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    invoke-interface {v0, p1}, Lorg/w3c/dom/ls/LSParserFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_3

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0

    :cond_4
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_5
    :goto_1
    return-void
.end method

.method public setDocumentClassName(Ljava/lang/String;)V
    .locals 4

    const-string v0, "http://www.w3.org/dom/DOMTR"

    const-string v1, "com.sun.org.apache.xerces.internal.dom.DocumentImpl"

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.sun.org.apache.xerces.internal.dom.PSVIDocumentImpl"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :try_start_0
    invoke-static {}, Lcom/sun/org/apache/xerces/internal/parsers/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/sun/org/apache/xerces/internal/parsers/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/w3c/dom/Document;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InvalidDocumentClassName"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MissingDocumentClassName"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentClassName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    :cond_3
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public startAttlist(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInCDATASection:Z

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCreateCDATANodes:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->setCharacterData(Z)V

    :cond_1
    return-void
.end method

.method public startConditional(SLcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startDTD(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInDTD:Z

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getBaseSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    if-eqz p1, :cond_2

    :cond_1
    new-instance p1, Ljava/lang/StringBuffer;

    const/16 p2, 0x400

    invoke-direct {p1, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    :cond_2
    return-void
.end method

.method public startDocument(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentClassName:Ljava/lang/String;

    const-string p4, "com.sun.org.apache.xerces.internal.dom.DocumentImpl"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    new-instance p3, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    invoke-direct {p3}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;-><init>()V

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    check-cast p3, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {p3, p4}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setStrictErrorChecking(Z)V

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {p3, p2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setInputEncoding(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setDocumentURI(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentClassName:Ljava/lang/String;

    const-string v0, "com.sun.org.apache.xerces.internal.dom.PSVIDocumentImpl"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    new-instance p3, Lcom/sun/org/apache/xerces/internal/dom/PSVIDocumentImpl;

    invoke-direct {p3}, Lcom/sun/org/apache/xerces/internal/dom/PSVIDocumentImpl;-><init>()V

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    check-cast p3, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fStorePSVI:Z

    invoke-virtual {p3, p4}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setStrictErrorChecking(Z)V

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {p3, p2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setInputEncoding(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setDocumentURI(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/sun/org/apache/xerces/internal/parsers/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentClassName:Ljava/lang/String;

    invoke-static {v2, p3, v1}, Lcom/sun/org/apache/xerces/internal/parsers/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Document;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    const-string v3, "com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl"

    invoke-static {v3, p3, v1}, Lcom/sun/org/apache/xerces/internal/parsers/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    check-cast v3, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-static {v0, p3, v1}, Lcom/sun/org/apache/xerces/internal/parsers/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_2

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fStorePSVI:Z

    :cond_2
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {p3, p4}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setStrictErrorChecking(Z)V

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {p3, p2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setInputEncoding(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setDocumentURI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentClassName:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "http://www.w3.org/dom/DOMTR"

    const-string p3, "CannotCreateDocumentClass"

    invoke-static {p2, p3, p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_4
    new-instance p3, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget-boolean p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fNamespaceAware:Z

    invoke-direct {p3, p4}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;-><init>(Z)V

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createDeferredDocument()I

    move-result p3

    iput p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentIndex:I

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {p3, p2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setInputEncoding(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setDocumentURI(Ljava/lang/String;)V

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentIndex:I

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    :goto_1
    return-void
.end method

.method public startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-boolean v4, v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    const-string v5, "ID"

    const-string v6, "ATTRIBUTE_DECLARED"

    const-string v7, "ATTRIBUTE_PSVI"

    const-string v8, "ELEMENT_PSVI"

    if-nez v4, :cond_10

    iget-boolean v4, v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz v4, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->createElementNode(Lcom/sun/org/apache/xerces/internal/xni/QName;)Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getLength()I

    move-result v11

    const/4 v12, 0x0

    :goto_0
    const/4 v13, 0x1

    if-ge v12, v11, :cond_8

    iget-object v14, v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fAttrQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-interface {v2, v12, v14}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getName(ILcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object v14, v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fAttrQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v0, v14}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->createAttrNode(Lcom/sun/org/apache/xerces/internal/xni/QName;)Lorg/w3c/dom/Attr;

    move-result-object v14

    invoke-interface {v2, v12}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v2, v12}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getAugmentations(I)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object v9

    invoke-interface {v9, v7}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;

    iget-boolean v10, v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fStorePSVI:Z

    if-eqz v10, :cond_1

    if-eqz v9, :cond_1

    move-object v10, v14

    check-cast v10, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;

    invoke-virtual {v10, v9}, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->setPSVI(Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;)V

    :cond_1
    invoke-interface {v14, v15}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    invoke-interface {v4, v14}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    iget-object v10, v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    if-eqz v10, :cond_7

    move-object v10, v14

    check-cast v10, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    if-eqz v9, :cond_4

    iget-boolean v15, v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v15, :cond_4

    invoke-interface {v9}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getMemberTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    move-result-object v15

    if-nez v15, :cond_3

    invoke-interface {v9}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object v9

    if-eqz v9, :cond_2

    move-object v15, v9

    check-cast v15, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-interface {v15}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->isIDType()Z

    move-result v15

    invoke-virtual {v10, v9}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    goto :goto_2

    :cond_3
    move-object v9, v15

    check-cast v9, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-interface {v9}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->isIDType()Z

    move-result v9

    invoke-virtual {v10, v15}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    move v15, v9

    goto :goto_2

    :cond_4
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v12}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getAugmentations(I)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object v15

    invoke-interface {v15, v6}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2, v12}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    const/4 v15, 0x0

    :goto_1
    invoke-virtual {v10, v9}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    :goto_2
    if-eqz v15, :cond_6

    move-object v9, v4

    check-cast v9, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    invoke-virtual {v9, v14, v13}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V

    :cond_6
    invoke-interface {v2, v12}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->isSpecified(I)Z

    move-result v9

    invoke-virtual {v10, v9}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->setSpecified(Z)V

    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->setCharacterData(Z)V

    if-eqz v3, :cond_a

    invoke-interface {v3, v8}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/xs/ElementPSVI;

    if-eqz v2, :cond_a

    iget-boolean v3, v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v3, :cond_a

    invoke-interface {v2}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getMemberTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    move-result-object v3

    if-nez v3, :cond_9

    invoke-interface {v2}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object v3

    :cond_9
    move-object v2, v4

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;->setType(Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)V

    :cond_a
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    if-eqz v2, :cond_f

    iget-boolean v3, v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInEntityRef:Z

    if-nez v3, :cond_f

    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fRoot:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v5, v3, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    if-nez v5, :cond_b

    invoke-virtual {v3, v1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    goto :goto_3

    :cond_b
    invoke-interface {v2, v4}, Lorg/w3c/dom/ls/LSParserFilter;->startElement(Lorg/w3c/dom/Element;)S

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_e

    const/4 v3, 0x3

    if-eq v2, v3, :cond_d

    const/4 v1, 0x4

    if-eq v2, v1, :cond_c

    goto :goto_3

    :cond_c
    sget-object v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw v0

    :cond_d
    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->clone()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_e
    iput-boolean v13, v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fFilterReject:Z

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fRejectedElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    return-void

    :cond_f
    :goto_3
    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v1, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iput-object v4, v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    goto/16 :goto_9

    :cond_10
    const/4 v9, 0x0

    if-eqz v3, :cond_11

    invoke-interface {v3, v8}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/xs/ElementPSVI;

    if-eqz v3, :cond_11

    invoke-interface {v3}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getMemberTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    move-result-object v4

    if-nez v4, :cond_12

    invoke-interface {v3}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object v4

    goto :goto_4

    :cond_11
    const/4 v4, 0x0

    :cond_12
    :goto_4
    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget-boolean v8, v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v8, :cond_13

    iget-object v8, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    goto :goto_5

    :cond_13
    const/4 v8, 0x0

    :goto_5
    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v3, v8, v1, v4}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createDeferredElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I

    move-result v1

    invoke-interface/range {p2 .. p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getLength()I

    move-result v3

    move v8, v9

    :goto_6
    if-ge v8, v3, :cond_17

    invoke-interface {v2, v8}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getAugmentations(I)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object v10

    invoke-interface {v10, v7}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;

    if-eqz v10, :cond_15

    iget-boolean v11, v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v11, :cond_15

    invoke-interface {v10}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getMemberTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    move-result-object v4

    if-nez v4, :cond_14

    invoke-interface {v10}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object v4

    if-eqz v4, :cond_16

    move-object v10, v4

    check-cast v10, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-interface {v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->isIDType()Z

    move-result v10

    goto :goto_7

    :cond_14
    move-object v10, v4

    check-cast v10, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-interface {v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->isIDType()Z

    move-result v10

    goto :goto_7

    :cond_15
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v8}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getAugmentations(I)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object v11

    invoke-interface {v11, v6}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v2, v8}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    :goto_7
    move/from16 v16, v10

    goto :goto_8

    :cond_16
    move/from16 v16, v9

    :goto_8
    iget-object v10, v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-interface {v2, v8}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v8}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v8}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v8}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->isSpecified(I)Z

    move-result v15

    move v11, v1

    move-object/from16 v17, v4

    invoke-virtual/range {v10 .. v17}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setDeferredAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Object;)I

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_17
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget v3, v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v2, v3, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->appendChild(II)V

    iput v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    :goto_9
    return-void
.end method

.method public startExternalSubset(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    return-void
.end method

.method public startGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    const/4 v0, 0x0

    if-nez p4, :cond_3

    iget-boolean p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz p4, :cond_0

    return-void

    :cond_0
    const/4 p4, 0x1

    invoke-virtual {p0, p4}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->setCharacterData(Z)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    invoke-interface {v1, p1}, Lorg/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/EntityReferenceImpl;

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/sun/org/apache/xerces/internal/dom/EntityReferenceImpl;->setBaseURI(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentType:Lorg/w3c/dom/DocumentType;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3}, Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;->setInputEncoding(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren(Z)V

    :cond_2
    iput-boolean p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInEntityRef:Z

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p1, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    goto :goto_2

    :cond_3
    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createDeferredEntityReference(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    iget p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v1, -0x1

    if-eq p4, v1, :cond_5

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {v2, p4, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result p4

    :goto_0
    if-eq p4, v1, :cond_5

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {v2, p4, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {v2, p4, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iput p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {p1, p4, p3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setInputEncoding(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {v2, p4, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result p4

    goto :goto_0

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {p1, p3, p2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->appendChild(II)V

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    :goto_2
    return-void
.end method

.method public startParameterEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInDTD:Z

    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget-boolean p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;

    if-eqz p3, :cond_2

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fFilterReject:Z

    if-nez v0, :cond_2

    invoke-virtual {p3, p2}, Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;->setXmlEncoding(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;->setXmlVersion(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {p0, p3, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setEntityInfo(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v3

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz p4, :cond_2

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v0, :cond_2

    const-string v0, "<!ENTITY "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v0, 0x20

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz v2, :cond_0

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v0, "PUBLIC \'"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v3, :cond_1

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v0, "\' \'"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v0, "SYSTEM \'"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_0
    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v0, "\' NDATA "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v0, ">\n"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentType:Lorg/w3c/dom/DocumentType;

    if-eqz p4, :cond_3

    invoke-interface {p4}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p4

    invoke-interface {p4, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createEntity(Ljava/lang/String;)Lorg/w3c/dom/Entity;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;->setPublicId(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;->setNotationName(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;->setBaseURI(Ljava/lang/String;)V

    invoke-interface {p4, v0}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_3
    iget p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v0, -0x1

    if-eq p4, v0, :cond_6

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, p4, v4}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result p4

    :goto_1
    if-eq p4, v0, :cond_5

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {v1, p4, v4}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v1

    const/4 v5, 0x6

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {v1, p4, v4}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {v1, p4, v4}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result p4

    goto :goto_1

    :cond_5
    :goto_2
    if-nez v4, :cond_6

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createDeferredEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    invoke-virtual {p2, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->appendChild(II)V

    :cond_6
    return-void
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    const-string v0, "yes"

    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    if-eqz p4, :cond_3

    if-eqz p1, :cond_0

    invoke-virtual {p4, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setXmlVersion(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setXmlEncoding(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setXmlStandalone(Z)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {p4, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setXmlVersion(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setXmlEncoding(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setXmlStandalone(Z)V

    :cond_3
    :goto_0
    return-void
.end method
