.class public final Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;
.implements Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceAttributeIterator;,
        Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceChildrenIterator;,
        Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceWildcardIterator;,
        Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NodeValueIterator;,
        Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$TypedNamespaceIterator;
    }
.end annotation


# static fields
.field private static final EMPTYITERATOR:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

.field private static final EMPTYSTRING:Ljava/lang/String; = ""

.field private static final PRESERVE_STRING:Ljava/lang/String; = "preserve"

.field private static final XMLNS_PREFIX:Ljava/lang/String; = "xmlns"

.field private static final XMLSPACE_STRING:Ljava/lang/String; = "xml:space"

.field private static final XML_LANG_ATTRIBUTE:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace:@lang"

.field private static final XML_PREFIX:Ljava/lang/String; = "xml"

.field private static final XML_STRING:Ljava/lang/String; = "xml:"

.field private static final XML_URI:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"

.field private static _documentURIIndex:I


# instance fields
.field private _disableEscaping:Z

.field private _document:Lorg/w3c/dom/Document;

.field private _documentURI:Ljava/lang/String;

.field private _dontEscape:Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;

.field private _dtmManager:Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

.field private _escaping:Z

.field private _hasDOMSource:Z

.field private _idx:I

.field private _namesSize:I

.field private _node2Ids:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

.field private _nodeLists:[Lorg/w3c/dom/NodeList;

.field private _nodes:[Lorg/w3c/dom/Node;

.field private _nsIndex:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

.field private _prefixCount:I

.field private _preserve:Z

.field private _size:I

.field private _textNodeToProcess:I

.field private _uriCount:I

.field private _xmlSpaceStack:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/sun/org/apache/xml/internal/dtm/ref/EmptyIterator;->getInstance()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->EMPTYITERATOR:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    const/4 v0, 0x0

    sput v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_documentURIIndex:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;ZIZZ)V
    .locals 14

    move-object v11, p0

    move-object/from16 v12, p2

    move/from16 v13, p7

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    move/from16 v10, p9

    .line 2
    invoke-direct/range {v0 .. v10}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;ZIZZZ)V

    const/4 v0, 0x0

    .line 3
    iput v0, v11, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_uriCount:I

    .line 4
    iput v0, v11, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_prefixCount:I

    const/4 v1, 0x1

    .line 5
    iput v1, v11, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_idx:I

    .line 6
    iput-boolean v0, v11, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_preserve:Z

    .line 7
    iput-boolean v1, v11, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_escaping:Z

    .line 8
    iput-boolean v0, v11, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_disableEscaping:Z

    const/4 v2, -0x1

    .line 9
    iput v2, v11, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_textNodeToProcess:I

    .line 10
    iput v2, v11, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_namesSize:I

    .line 11
    new-instance v2, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-direct {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;-><init>()V

    iput-object v2, v11, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_nsIndex:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    const/4 v2, 0x0

    .line 12
    iput-object v2, v11, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_dontEscape:Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;

    .line 13
    iput-object v2, v11, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_documentURI:Ljava/lang/String;

    .line 14
    iput-object v2, v11, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_node2Ids:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    .line 15
    iput-boolean v0, v11, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_hasDOMSource:Z

    move-object v2, p1

    .line 16
    iput-object v2, v11, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_dtmManager:Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    .line 17
    iput v13, v11, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_size:I

    const/16 v2, 0x40

    if-gt v13, v2, :cond_0

    const/4 v2, 0x4

    .line 18
    :cond_0
    new-array v2, v2, [I

    iput-object v2, v11, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_xmlSpaceStack:[I

    .line 19
    aput v0, v2, v0

    .line 20
    instance-of v0, v12, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v0, :cond_2

    .line 21
    iput-boolean v1, v11, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_hasDOMSource:Z

    .line 22
    move-object v0, v12

    check-cast v0, Ljavax/xml/transform/dom/DOMSource;

    .line 23
    invoke-virtual {v0}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 24
    instance-of v1, v0, Lorg/w3c/dom/Document;

    if-eqz v1, :cond_1

    .line 25
    check-cast v0, Lorg/w3c/dom/Document;

    iput-object v0, v11, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_document:Lorg/w3c/dom/Document;

    goto :goto_0

    .line 26
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, v11, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_document:Lorg/w3c/dom/Document;

    .line 27
    :goto_0
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;-><init>()V

    iput-object v0, v11, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_node2Ids:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;ZZ)V
    .locals 10

    const/16 v7, 0x200

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;ZIZZ)V

    return-void
.end method

.method public static synthetic access$000(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;)Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;)Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result p0

    return p0
.end method

.method private final copy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v1

    .line 7
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2Type(I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v2, :cond_b

    const/16 v5, 0xd

    if-eq v2, v5, :cond_a

    const/4 v5, 0x2

    if-eq v2, v5, :cond_9

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eq v2, v5, :cond_6

    const/4 v5, 0x7

    if-eq v2, v5, :cond_5

    const/16 v5, 0x8

    if-eq v2, v5, :cond_4

    const/16 v5, 0x9

    if-eq v2, v5, :cond_b

    if-ne v2, v4, :cond_2

    .line 8
    :try_start_0
    invoke-virtual {p0, v0, v1, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->copyElement(IILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)Ljava/lang/String;

    move-result-object p1

    if-nez p3, :cond_0

    move v6, v4

    .line 9
    :cond_0
    invoke-virtual {p0, v0, p2, v6}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->copyNS(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;Z)V

    .line 10
    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->copyAttributes(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    move-result p3

    :goto_0
    if-eq p3, v3, :cond_1

    .line 12
    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v0

    invoke-direct {p0, v0, p2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->copy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;Z)V

    .line 13
    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result p3

    goto :goto_0

    .line 14
    :cond_1
    invoke-interface {p2, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->endElement(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 15
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getNamespaceName(I)Ljava/lang/String;

    move-result-object p3

    .line 16
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getPrefix(I)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-interface {p2, v0, p3}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getNodeValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p3, p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 20
    :cond_4
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getStringValueX(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->comment(Ljava/lang/String;)V

    goto :goto_3

    .line 21
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->copyPI(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    goto :goto_3

    .line 22
    :cond_6
    iget-object p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_dontEscape:Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;

    if-eqz p3, :cond_8

    .line 23
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNodeIdent(I)I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->getBit(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 24
    invoke-interface {p2, v6}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setEscaping(Z)Z

    move-result v6

    :cond_7
    move v7, v6

    move v6, p1

    move p1, v7

    goto :goto_1

    :cond_8
    move p1, v6

    .line 25
    :goto_1
    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->copyTextNode(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    if-eqz v6, :cond_c

    .line 26
    invoke-interface {p2, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setEscaping(Z)Z

    goto :goto_3

    .line 27
    :cond_9
    invoke-virtual {p0, v0, v1, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->copyAttribute(IILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    goto :goto_3

    .line 28
    :cond_a
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getNodeNameX(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getNodeValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p3, p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 29
    :cond_b
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    move-result p1

    :goto_2
    if-eq p1, v3, :cond_c

    .line 30
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p3

    invoke-direct {p0, p3, p2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->copy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;Z)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_c
    :goto_3
    return-void

    :catch_0
    move-exception p0

    .line 32
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method private copyPI(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getStringValueX(I)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-interface {p2, v0, p0}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method private definePrefixAndUri(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance p1, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getIdForNamespace(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/lang/Integer;-><init>(I)V

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_nsIndex:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_nsIndex:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_uriCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_uriCount:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private getMapping2([Ljava/lang/String;[Ljava/lang/String;[I)[S
    .locals 10

    array-length v0, p1

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getSize()I

    move-result v1

    if-lez v0, :cond_0

    new-array v2, v0, [I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    move v5, v1

    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_2

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    aget-object v7, p2, v4

    aget-object v8, p1, v4

    aget v9, p3, v4

    invoke-virtual {v6, v7, v8, v9, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v6

    aput v6, v2, v4

    iget v7, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_namesSize:I

    if-gez v7, :cond_1

    if-lt v6, v5, :cond_1

    add-int/lit8 v5, v6, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-array p1, v5, [S

    move p2, v3

    :goto_2
    const/16 p3, 0xe

    if-ge p2, p3, :cond_3

    int-to-short p3, p2

    aput-short p3, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-ge p3, v1, :cond_4

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {p2, p3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result p2

    aput-short p2, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    if-ge v3, v0, :cond_6

    aget p0, v2, v3

    if-ltz p0, :cond_5

    if-ge p0, v5, :cond_5

    add-int/lit8 p2, v3, 0xe

    int-to-short p2, p2

    aput-short p2, p1, p0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    return-object p1
.end method

.method private handleTextEscaping()V
    .locals 3

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_disableEscaping:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_textNodeToProcess:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_dontEscape:Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_size:I

    invoke-direct {v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_dontEscape:Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_textNodeToProcess:I

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_dontEscape:Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_dontEscape:Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->resize(I)V

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_dontEscape:Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_textNodeToProcess:I

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->setBit(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_disableEscaping:Z

    :cond_2
    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_textNodeToProcess:I

    return-void
.end method

.method private setupMapping([Ljava/lang/String;[Ljava/lang/String;[II)[I
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getSize()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p4, :cond_0

    .line 3
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    aget-object v4, p2, v2

    aget-object v5, p1, v2

    aget v6, p3, v2

    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v3

    .line 4
    aput v3, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private xmlSpaceDefine(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "preserve"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_preserve:Z

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_xmlSpaceStack:[I

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_idx:I

    aput p2, v0, v1

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_preserve:Z

    :cond_0
    return-void
.end method

.method private xmlSpaceRevert(I)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_xmlSpaceStack:[I

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_idx:I

    add-int/lit8 v2, v1, -0x1

    aget v0, v0, v2

    if-ne p1, v0, :cond_0

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_idx:I

    iget-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_preserve:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_preserve:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public characters(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public characters([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->characters([CII)V

    .line 2
    iget-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_escaping:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_disableEscaping:Z

    .line 3
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getNumberOfNodes()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_textNodeToProcess:I

    return-void
.end method

.method public comment([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->comment([CII)V

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->handleTextEscaping()V

    return-void
.end method

.method public copy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->copy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;Z)V

    return-void
.end method

.method public copy(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    .line 1
    :goto_0
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->copy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public copy(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->copy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->endDocument()V

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->handleTextEscaping()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getSize()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_namesSize:I

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->handleTextEscaping()V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_wsfilter:Lcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->xmlSpaceRevert(I)V

    :cond_0
    return-void
.end method

.method public getAttributeNode(II)I
    .locals 1

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getFirstAttribute(I)I

    move-result p2

    :goto_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getExpandedTypeID(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNextAttribute(I)I

    move-result p2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getAttributeValue(II)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getAttributeNode(II)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getStringValueX(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getAttributeValue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getGeneralizedType(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getAttributeValue(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAxisIterator(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string p0, "AXIS_SUPPORT_ERR"

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/dtm/Axis;->getNames(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;)V

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$FollowingSiblingIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$FollowingSiblingIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;)V

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;)V

    return-object p1

    :pswitch_8
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->includeSelf()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_9
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;)V

    return-object p1

    :pswitch_a
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;)V

    return-object p1

    :pswitch_b
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AttributeIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AttributeIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;)V

    return-object p1

    :pswitch_c
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->includeSelf()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_d
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getBuilder()Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMBuilder;
    .locals 0

    return-object p0
.end method

.method public getChildren(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;)V

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;->setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public getDocumentURI()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getDocumentBaseURI()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "rtf"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_documentURIIndex:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_documentURIIndex:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getDocumentURI(I)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getDocumentURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getElementById(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_document:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_node2Ids:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getElementsWithIDs()Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_idAttributes:Ljava/util/Hashtable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-direct {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;-><init>()V

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_idAttributes:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getGeneralizedType(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getGeneralizedType(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public getGeneralizedType(Ljava/lang/String;Z)I
    .locals 5

    const-string v0, ":"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x40

    if-ne v3, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x2

    :cond_1
    if-nez v0, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    :goto_1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, v1, p1, v2, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public getIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;I)V

    return-object v0
.end method

.method public getLanguage(I)Ljava/lang/String;
    .locals 3

    :goto_0
    const/4 v0, -0x1

    if-eq v0, p1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v2

    if-ne v1, v2, :cond_0

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    const-string v2, "lang"

    invoke-virtual {p0, p1, v1, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getNodeValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getParent(I)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMapping([Ljava/lang/String;[Ljava/lang/String;[I)[S
    .locals 9

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_namesSize:I

    if-gez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getMapping2([Ljava/lang/String;[Ljava/lang/String;[I)[S

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p1

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getSize()I

    move-result v1

    new-array v2, v1, [S

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0xe

    if-ge v4, v5, :cond_1

    int-to-short v5, v4

    aput-short v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v5, v1, :cond_2

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v4

    aput-short v4, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v3, v0, :cond_4

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    aget-object v5, p2, v3

    aget-object v6, p1, v3

    aget v7, p3, v3

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v4

    if-ltz v4, :cond_3

    if-ge v4, v1, :cond_3

    add-int/lit8 v5, v3, 0xe

    int-to-short v5, v5

    aput-short v5, v2, v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-object v2
.end method

.method public getNSType(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getIdForNamespace(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_nsIndex:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getNamespaceAxisIterator(II)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->EMPTYITERATOR:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceWildcardIterator;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceWildcardIterator;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;II)V

    return-object v0

    :cond_1
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceChildrenIterator;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceChildrenIterator;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;I)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceAttributeIterator;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceAttributeIterator;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;I)V

    return-object p1
.end method

.method public getNamespaceMapping([Ljava/lang/String;)[S
    .locals 6

    array-length v0, p1

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_uriCount:I

    new-array v2, v1, [S

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    const/4 v5, -0x1

    aput-short v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v3, v0, :cond_2

    aget-object v1, p1, v3

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getIdForNamespace(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_nsIndex:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-short v4, v3

    aput-short v4, v2, v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public getNamespaceName(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    const-string v1, ""

    if-ne p1, v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    return-object v1
.end method

.method public getNamespaceType(I)I
    .locals 0

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNamespaceType(I)I

    move-result p0

    return p0
.end method

.method public getNodeName(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getNodeName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public getNodeValueIterator(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;ILjava/lang/String;Z)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 7

    new-instance v6, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NodeValueIterator;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NodeValueIterator;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;ILjava/lang/String;Z)V

    return-object v6
.end method

.method public getNthDescendant(IIZ)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 0

    new-instance p3, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;

    invoke-direct {p3, p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;I)V

    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;I)V

    return-object p1
.end method

.method public getOutputDomBuilder()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ToXMLSAXHandler;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xml/internal/serializer/ToXMLSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V

    return-object v0
.end method

.method public getResultTreeFrag(II)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getResultTreeFrag(IIZ)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    move-result-object p0

    return-object p0
.end method

.method public getResultTreeFrag(IIZ)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x0

    if-nez v1, :cond_1

    if-eqz p3, :cond_0

    .line 2
    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_dtmManager:Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->getFirstFreeDTMID()I

    move-result v1

    .line 3
    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;

    iget-object v4, v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_dtmManager:Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    shl-int/lit8 v5, v1, 0x10

    invoke-direct {v3, v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;I)V

    .line 4
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_dtmManager:Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    invoke-virtual {v0, v3, v1, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->addDTM(Lcom/sun/org/apache/xml/internal/dtm/DTM;II)V

    return-object v3

    .line 5
    :cond_0
    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_dtmManager:Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    invoke-direct {v1, v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;I)V

    return-object v1

    :cond_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    if-eqz p3, :cond_2

    .line 6
    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_dtmManager:Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->getFirstFreeDTMID()I

    move-result v1

    .line 7
    new-instance v9, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;

    iget-object v4, v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_dtmManager:Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    shl-int/lit8 v5, v1, 0x10

    iget-object v6, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_wsfilter:Lcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;

    iget-boolean v8, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_buildIdIndex:Z

    move-object v3, v9

    move/from16 v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;IZ)V

    .line 8
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_dtmManager:Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    invoke-virtual {v0, v9, v1, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->addDTM(Lcom/sun/org/apache/xml/internal/dtm/DTM;II)V

    return-object v9

    .line 9
    :cond_2
    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;

    iget-object v4, v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_dtmManager:Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_wsfilter:Lcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;

    iget-boolean v8, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_buildIdIndex:Z

    move-object v3, v1

    move/from16 v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;IZ)V

    return-object v1

    .line 10
    :cond_3
    iget-object v9, v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_dtmManager:Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    const/4 v10, 0x0

    const/4 v11, 0x1

    iget-object v12, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_wsfilter:Lcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-boolean v0, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_buildIdIndex:Z

    move/from16 v16, p1

    move/from16 v17, v0

    invoke-virtual/range {v9 .. v17}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;->getDTM(Ljavax/xml/transform/Source;ZLcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;ZZZIZ)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    return-object v0
.end method

.method public getReverseMapping([Ljava/lang/String;[Ljava/lang/String;[I)[I
    .locals 7

    array-length v0, p1

    const/16 v1, 0xe

    add-int/2addr v0, v1

    new-array v0, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aput v3, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    array-length v1, p1

    if-ge v2, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    aget-object v3, p2, v2

    aget-object v4, p1, v2

    aget v5, p3, v2

    const/4 v6, 0x1

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v1

    add-int/lit8 v3, v2, 0xe

    aput v1, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public getReverseNamespaceMapping([Ljava/lang/String;)[S
    .locals 6

    array-length v0, p1

    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getIdForNamespace(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_nsIndex:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_0

    const/4 v3, -0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->shortValue()S

    move-result v3

    :goto_1
    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getShouldStripWhitespace()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_preserve:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getShouldStripWhitespace()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public getSize()I
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getNumberOfNodes()I

    move-result p0

    return p0
.end method

.method public getTypedAxisIterator(II)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;I)V

    return-object p1

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->EMPTYITERATOR:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    return-object p0

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string p0, "TYPED_AXIS_SUPPORT_ERR"

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/dtm/Axis;->getNames(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedSingletonIterator;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedSingletonIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;I)V

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;I)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;I)V

    return-object p1

    :pswitch_4
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;)V

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->setNodeType(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$TypedNamespaceIterator;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$TypedNamespaceIterator;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;I)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingSiblingIterator;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingSiblingIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;I)V

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;I)V

    return-object p1

    :pswitch_8
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;I)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->includeSelf()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_9
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;I)V

    return-object p1

    :pswitch_a
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;I)V

    return-object p1

    :pswitch_b
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedAttributeIterator;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedAttributeIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;I)V

    return-object p1

    :pswitch_c
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;I)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->includeSelf()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_d
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getTypedChildren(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;I)V

    return-object v0
.end method

.method public getTypedDescendantIterator(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;I)V

    return-object v0
.end method

.method public getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_document:Lorg/w3c/dom/Document;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object p0

    const-string v0, ""

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Entity;

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lorg/w3c/dom/Entity;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Lorg/w3c/dom/Entity;->getPublicId()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasDOMSource()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_hasDOMSource:Z

    return p0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->ignorableWhitespace([CII)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getNumberOfNodes()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_textNodeToProcess:I

    return-void
.end method

.method public isAttribute(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isElement(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public lessThan(II)Z
    .locals 2

    const/4 p0, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return p0

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v0, :cond_1

    return v1

    :cond_1
    if-ge p1, p2, :cond_2

    move p0, v1

    :cond_2
    return p0
.end method

.method public lookupNamespace(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->isElement(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->includeSelf()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    :cond_1
    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->next()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    new-instance v2, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;

    invoke-direct {v2, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;->setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    :cond_2
    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;->next()I

    move-result p1

    if-eq p1, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getNodeValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "NAMESPACE_PREFIX_ERR"

    invoke-static {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public makeNode(I)Lorg/w3c/dom/Node;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_nodes:[Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_namesSize:I

    new-array v0, v0, [Lorg/w3c/dom/Node;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_nodes:[Lorg/w3c/dom/Node;

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    if-gez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_nodes:[Lorg/w3c/dom/Node;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 5
    aget-object v2, v1, v0

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;

    invoke-direct {v2, p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTM;I)V

    aput-object v2, v1, v0

    :goto_0
    return-object v2

    .line 6
    :cond_3
    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTM;I)V

    return-object v0
.end method

.method public makeNode(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Lorg/w3c/dom/Node;
    .locals 0

    .line 7
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->makeNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public makeNodeList(I)Lorg/w3c/dom/NodeList;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_nodeLists:[Lorg/w3c/dom/NodeList;

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_namesSize:I

    new-array v0, v0, [Lorg/w3c/dom/NodeList;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_nodeLists:[Lorg/w3c/dom/NodeList;

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    if-gez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_nodeLists:[Lorg/w3c/dom/NodeList;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 5
    aget-object v2, v1, v0

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIterNodeList;

    new-instance v3, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;

    invoke-direct {v3, p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;I)V

    invoke-direct {v2, p0, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIterNodeList;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V

    aput-object v2, v1, v0

    :goto_0
    return-object v2

    .line 6
    :cond_3
    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIterNodeList;

    new-instance v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;

    invoke-direct {v1, p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;I)V

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIterNodeList;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V

    return-object v0
.end method

.method public makeNodeList(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Lorg/w3c/dom/NodeList;
    .locals 1

    .line 7
    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIterNodeList;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIterNodeList;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V

    return-object v0
.end method

.method public migrateTo(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->migrateTo(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V

    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_dtmManager:Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    :cond_0
    return-void
.end method

.method public orderNodes(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V

    return-object p0
.end method

.method public print(II)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getFirstAttribute(I)I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getStringValueX(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNextAttribute(I)I

    move-result v1

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v3, 0x3e

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(C)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getFirstChild(I)I

    move-result p1

    :goto_1
    if-eq p1, v2, :cond_1

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->print(II)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNextSibling(I)I

    move-result p1

    goto :goto_1

    :cond_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "</"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getStringValueX(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getFirstChild(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->print(II)V

    :goto_2
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->handleTextEscaping()V

    return-void
.end method

.method public setDocumentURI(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->setDocumentBaseURI(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setEscaping(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_escaping:Z

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_escaping:Z

    return v0
.end method

.method public setFilter(Lcom/sun/org/apache/xalan/internal/xsltc/StripFilter;)V
    .locals 0

    return-void
.end method

.method public setupMapping([Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public shallowCopy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2Type(I)I

    move-result v2

    if-eqz v2, :cond_7

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_5

    const/4 v1, 0x3

    if-eq v2, v1, :cond_4

    const/4 v0, 0x7

    if-eq v2, v0, :cond_3

    const/16 v0, 0x8

    if-eq v2, v0, :cond_2

    const/16 v0, 0x9

    if-eq v2, v0, :cond_7

    const/16 v0, 0xd

    if-eq v2, v0, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getNamespaceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getPrefix(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getNodeValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getNodeValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getStringValueX(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->comment(Ljava/lang/String;)V

    return-object v4

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->copyPI(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    return-object v4

    :cond_4
    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->copyTextNode(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    return-object v4

    :cond_5
    invoke-virtual {p0, v0, v1, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->copyAttribute(IILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    return-object v4

    :cond_6
    invoke-virtual {p0, v0, v1, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->copyElement(IILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->copyNS(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;Z)V

    return-object p1

    :cond_7
    const-string p0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public startDocument()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->startDocument()V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_nsIndex:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_uriCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_uriCount:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "xml"

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->definePrefixAndUri(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 5
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->handleTextEscaping()V

    .line 6
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_wsfilter:Lcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;

    if-eqz p1, :cond_0

    const-string p1, "xml:space"

    .line 7
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getIndex(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 8
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {p2}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->peek()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->xmlSpaceDefine(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/w3c/dom/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 2
    iget-boolean p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_buildIdIndex:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->_node2Ids:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    new-instance p2, Ljava/lang/Integer;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->peek()I

    move-result p0

    invoke-direct {p2, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, p5, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->handleTextEscaping()V

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->definePrefixAndUri(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
