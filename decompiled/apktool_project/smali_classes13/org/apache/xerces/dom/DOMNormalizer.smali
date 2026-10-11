.class public Lorg/apache/xerces/dom/DOMNormalizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/XMLDocumentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field protected static final DEBUG_EVENTS:Z = false

.field protected static final DEBUG_ND:Z = false

.field public static final EMPTY_STRING:Lorg/apache/xerces/xni/XMLString;

.field protected static final PREFIX:Ljava/lang/String; = "NS"

.field public static final abort:Ljava/lang/RuntimeException;


# instance fields
.field public final e:Lorg/apache/xerces/dom/DOMErrorImpl;

.field public final f:Lorg/apache/xerces/xni/QName;

.field protected final fAttrProxy:Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;

.field protected final fAttributeList:Ljava/util/ArrayList;

.field protected fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

.field protected fCurrentNode:Lorg/w3c/dom/Node;

.field protected fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

.field protected fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

.field protected final fLocalNSBinder:Lorg/apache/xerces/xni/NamespaceContext;

.field protected final fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

.field protected final fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

.field protected fNamespaceValidation:Z

.field protected fPSVI:Z

.field protected final fQName:Lorg/apache/xerces/xni/QName;

.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

.field protected fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

.field public final g:Lorg/apache/xerces/xni/XMLString;

.field public h:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/xerces/dom/DOMNormalizer$1;

    invoke-direct {v0}, Lorg/apache/xerces/dom/DOMNormalizer$1;-><init>()V

    sput-object v0, Lorg/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;

    new-instance v0, Lorg/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    sput-object v0, Lorg/apache/xerces/dom/DOMNormalizer;->EMPTY_STRING:Lorg/apache/xerces/xni/XMLString;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iput-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    new-instance v1, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;

    invoke-direct {v1, p0}, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;-><init>(Lorg/apache/xerces/dom/DOMNormalizer;)V

    iput-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fAttrProxy:Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;

    new-instance v1, Lorg/apache/xerces/xni/QName;

    invoke-direct {v1}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fQName:Lorg/apache/xerces/xni/QName;

    new-instance v1, Lorg/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v1}, Lorg/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->e:Lorg/apache/xerces/dom/DOMErrorImpl;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    iput-boolean v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fPSVI:Z

    new-instance v2, Lorg/apache/xerces/util/NamespaceSupport;

    invoke-direct {v2}, Lorg/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v2, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    new-instance v2, Lorg/apache/xerces/util/NamespaceSupport;

    invoke-direct {v2}, Lorg/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v2, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lorg/apache/xerces/xni/NamespaceContext;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fAttributeList:Ljava/util/ArrayList;

    new-instance v2, Lorg/apache/xerces/dom/DOMLocatorImpl;

    invoke-direct {v2}, Lorg/apache/xerces/dom/DOMLocatorImpl;-><init>()V

    iput-object v2, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    iput-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lorg/w3c/dom/Node;

    new-instance v0, Lorg/apache/xerces/xni/QName;

    invoke-direct {v0}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->f:Lorg/apache/xerces/xni/QName;

    new-instance v0, Lorg/apache/xerces/xni/XMLString;

    const/16 v2, 0x10

    new-array v2, v2, [C

    invoke-direct {v0, v2, v1, v1}, Lorg/apache/xerces/xni/XMLString;-><init>([CII)V

    iput-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->g:Lorg/apache/xerces/xni/XMLString;

    iput-boolean v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->h:Z

    return-void
.end method

.method public static final isAttrValueWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Lorg/w3c/dom/NamedNodeMap;Lorg/w3c/dom/Attr;Ljava/lang/String;Z)V
    .locals 9

    instance-of p3, p4, Lorg/apache/xerces/dom/AttrImpl;

    if-eqz p3, :cond_0

    move-object p3, p4

    check-cast p3, Lorg/apache/xerces/dom/AttrImpl;

    invoke-virtual {p3}, Lorg/apache/xerces/dom/NodeImpl;->hasStringValue()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p0, p1, p2, p5, p6}, Lorg/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_0
    invoke-interface {p4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p3

    const/4 p5, 0x0

    :goto_0
    invoke-interface {p3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lt p5, v0, :cond_1

    :goto_1
    return-void

    :cond_1
    invoke-interface {p3, p5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    invoke-interface {p4}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "*"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Entity;

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_4

    invoke-interface {p4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "UndeclaredEntRefInAttrValue"

    invoke-static {v1, v2, v0}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const-string v8, "UndeclaredEntRefInAttrValue"

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0, p6}, Lorg/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    :cond_4
    :goto_3
    add-int/lit8 p5, p5, 0x1

    goto :goto_0
.end method

.method public static final isCDataWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V
    .locals 18

    if-eqz p3, :cond_10

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

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

    if-eqz p4, :cond_8

    :goto_0
    if-lt v7, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    add-int/lit8 v10, v7, 0x1

    aget-char v7, v0, v7

    invoke-static {v7}, Lorg/apache/xerces/util/XML11Char;->isXML11Invalid(I)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {v7}, Lorg/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v11

    if-eqz v11, :cond_2

    if-ge v10, v1, :cond_2

    add-int/lit8 v11, v10, 0x1

    aget-char v10, v0, v10

    invoke-static {v10}, Lorg/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v7, v10}, Lorg/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v10

    invoke-static {v10}, Lorg/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_1

    :cond_2
    move v11, v10

    :cond_3
    invoke-static {v7, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2

    const-string v17, "wf-invalid-character"

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-static/range {v12 .. v17}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :goto_1
    move v7, v11

    goto :goto_0

    :cond_4
    if-ne v7, v9, :cond_7

    if-ge v10, v1, :cond_7

    aget-char v7, v0, v10

    if-ne v7, v9, :cond_7

    move v7, v10

    :cond_5
    add-int/lit8 v7, v7, 0x1

    if-ge v7, v1, :cond_6

    aget-char v11, v0, v7

    if-eq v11, v9, :cond_5

    :cond_6
    if-ge v7, v1, :cond_7

    aget-char v7, v0, v7

    if-ne v7, v4, :cond_7

    invoke-static {v8, v3, v2}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    const-string v16, "wf-invalid-character"

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-static/range {v11 .. v16}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_7
    move v7, v10

    goto :goto_0

    :cond_8
    :goto_2
    if-lt v7, v1, :cond_9

    :goto_3
    return-void

    :cond_9
    add-int/lit8 v10, v7, 0x1

    aget-char v7, v0, v7

    invoke-static {v7}, Lorg/apache/xerces/util/XMLChar;->isInvalid(I)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-static {v7}, Lorg/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v11

    if-eqz v11, :cond_a

    if-ge v10, v1, :cond_a

    add-int/lit8 v11, v10, 0x1

    aget-char v10, v0, v10

    invoke-static {v10}, Lorg/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-static {v7, v10}, Lorg/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v10

    invoke-static {v10}, Lorg/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v10

    if-eqz v10, :cond_b

    goto :goto_4

    :cond_a
    move v11, v10

    :cond_b
    invoke-static {v7, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2

    const-string v17, "wf-invalid-character"

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-static/range {v12 .. v17}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :goto_4
    move v7, v11

    goto :goto_2

    :cond_c
    if-ne v7, v9, :cond_f

    if-ge v10, v1, :cond_f

    aget-char v7, v0, v10

    if-ne v7, v9, :cond_f

    move v7, v10

    :cond_d
    add-int/lit8 v7, v7, 0x1

    if-ge v7, v1, :cond_e

    aget-char v11, v0, v7

    if-eq v11, v9, :cond_d

    :cond_e
    if-ge v7, v1, :cond_f

    aget-char v7, v0, v7

    if-ne v7, v4, :cond_f

    invoke-static {v8, v3, v2}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    const-string v16, "wf-invalid-character"

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-static/range {v11 .. v16}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_f
    move v7, v10

    goto :goto_2

    :cond_10
    :goto_5
    return-void
.end method

.method public static final isCommentWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V
    .locals 16

    if-eqz p3, :cond_c

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

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

    if-eqz p4, :cond_6

    :goto_0
    if-lt v6, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    add-int/lit8 v9, v6, 0x1

    aget-char v6, v0, v6

    invoke-static {v6}, Lorg/apache/xerces/util/XML11Char;->isXML11Invalid(I)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {v6}, Lorg/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v10

    if-eqz v10, :cond_3

    if-ge v9, v1, :cond_3

    add-int/lit8 v10, v9, 0x1

    aget-char v9, v0, v9

    invoke-static {v9}, Lorg/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v9}, Lorg/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v6

    invoke-static {v6}, Lorg/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v10

    goto :goto_0

    :cond_2
    move v6, v10

    goto :goto_1

    :cond_3
    move v6, v9

    :goto_1
    add-int/lit8 v9, v6, -0x1

    aget-char v9, v0, v9

    invoke-static {v9, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v5, v9}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    const-string v15, "wf-invalid-character"

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-static/range {v10 .. v15}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_0

    :cond_4
    if-ne v6, v8, :cond_5

    if-ge v9, v1, :cond_5

    aget-char v6, v0, v9

    if-ne v6, v8, :cond_5

    invoke-static {v7, v3, v2}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    const-string v15, "wf-invalid-character"

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-static/range {v10 .. v15}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_5
    move v6, v9

    goto :goto_0

    :cond_6
    :goto_2
    if-lt v6, v1, :cond_7

    :goto_3
    return-void

    :cond_7
    add-int/lit8 v9, v6, 0x1

    aget-char v6, v0, v6

    invoke-static {v6}, Lorg/apache/xerces/util/XMLChar;->isInvalid(I)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-static {v6}, Lorg/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v10

    if-eqz v10, :cond_9

    if-ge v9, v1, :cond_9

    add-int/lit8 v10, v9, 0x1

    aget-char v9, v0, v9

    invoke-static {v9}, Lorg/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-static {v6, v9}, Lorg/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v6

    invoke-static {v6}, Lorg/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v6

    if-eqz v6, :cond_8

    move v6, v10

    goto :goto_2

    :cond_8
    move v6, v10

    goto :goto_4

    :cond_9
    move v6, v9

    :goto_4
    add-int/lit8 v9, v6, -0x1

    aget-char v9, v0, v9

    invoke-static {v9, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v5, v9}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    const-string v15, "wf-invalid-character"

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-static/range {v10 .. v15}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_2

    :cond_a
    if-ne v6, v8, :cond_b

    if-ge v9, v1, :cond_b

    aget-char v6, v0, v9

    if-ne v6, v8, :cond_b

    invoke-static {v7, v3, v2}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    const-string v15, "wf-invalid-character"

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-static/range {v10 .. v15}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_b
    move v6, v9

    goto :goto_2

    :cond_c
    :goto_5
    return-void
.end method

.method public static final isXMLCharWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V
    .locals 11

    if-eqz p3, :cond_a

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    array-length v0, p3

    const/16 v1, 0x10

    const-string v2, "InvalidXMLCharInDOM"

    const-string v3, "http://www.w3.org/dom/DOMTR"

    const/4 v4, 0x0

    if-eqz p4, :cond_5

    :goto_0
    if-lt v4, v0, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 p4, v4, 0x1

    aget-char v4, p3, v4

    invoke-static {v4}, Lorg/apache/xerces/util/XML11Char;->isXML11Invalid(I)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v4, p4, -0x1

    aget-char v4, p3, v4

    invoke-static {v4}, Lorg/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_3

    if-ge p4, v0, :cond_3

    add-int/lit8 v5, p4, 0x1

    aget-char p4, p3, p4

    invoke-static {p4}, Lorg/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v4, p4}, Lorg/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result p4

    invoke-static {p4}, Lorg/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result p4

    if-eqz p4, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    :cond_3
    move v4, p4

    :goto_1
    add-int/lit8 p4, v4, -0x1

    aget-char p4, p3, p4

    invoke-static {p4, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-static {v3, v2, p4}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    const-string v10, "wf-invalid-character"

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v5 .. v10}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_0

    :cond_4
    move v4, p4

    goto :goto_0

    :cond_5
    :goto_2
    if-lt v4, v0, :cond_6

    :goto_3
    return-void

    :cond_6
    add-int/lit8 p4, v4, 0x1

    aget-char v4, p3, v4

    invoke-static {v4}, Lorg/apache/xerces/util/XMLChar;->isInvalid(I)Z

    move-result v4

    if-eqz v4, :cond_9

    add-int/lit8 v4, p4, -0x1

    aget-char v4, p3, v4

    invoke-static {v4}, Lorg/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_8

    if-ge p4, v0, :cond_8

    add-int/lit8 v5, p4, 0x1

    aget-char p4, p3, p4

    invoke-static {p4}, Lorg/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v4, p4}, Lorg/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result p4

    invoke-static {p4}, Lorg/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result p4

    if-eqz p4, :cond_7

    move v4, v5

    goto :goto_2

    :cond_7
    move v4, v5

    goto :goto_4

    :cond_8
    move v4, p4

    :goto_4
    add-int/lit8 p4, v4, -0x1

    aget-char p4, p3, p4

    invoke-static {p4, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-static {v3, v2, p4}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    const-string v10, "wf-invalid-character"

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v5 .. v10}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_2

    :cond_9
    move v4, p4

    goto :goto_2

    :cond_a
    :goto_5
    return-void
.end method

.method public static final reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xerces/dom/DOMErrorImpl;->reset()V

    iput-object p3, p1, Lorg/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-short p4, p1, Lorg/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    iput-object p2, p1, Lorg/apache/xerces/dom/DOMErrorImpl;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    iput-object p5, p1, Lorg/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    iget-object p2, p2, Lorg/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    iput-object p2, p1, Lorg/apache/xerces/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    invoke-interface {p0, p1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x3

    if-eq p4, p0, :cond_2

    return-void

    :cond_2
    sget-object p0, Lorg/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method


# virtual methods
.method public final addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/dom/ElementImpl;)V
    .locals 2

    sget-object p0, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne p1, p0, :cond_0

    sget-object p0, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    sget-object p1, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p3, p0, p1, p2}, Lorg/apache/xerces/dom/ElementImpl;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public emptyElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/dom/DOMNormalizer;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    invoke-virtual {p0, p1, p3}, Lorg/apache/xerces/dom/DOMNormalizer;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endDocument(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    if-eqz p2, :cond_5

    const-string p1, "ELEMENT_PSVI"

    invoke-interface {p2, p1}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/xs/ElementPSVI;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v0, p2

    check-cast v0, Lorg/apache/xerces/dom/ElementImpl;

    iget-boolean v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fPSVI:Z

    if-eqz v1, :cond_0

    check-cast p2, Lorg/apache/xerces/dom/PSVIElementNSImpl;

    invoke-virtual {p2, p1}, Lorg/apache/xerces/dom/PSVIElementNSImpl;->setPSVI(Lorg/apache/xerces/xs/ElementPSVI;)V

    :cond_0
    instance-of p2, v0, Lorg/apache/xerces/dom/ElementNSImpl;

    if-eqz p2, :cond_2

    invoke-interface {p1}, Lorg/apache/xerces/xs/ItemPSVI;->getMemberTypeDefinition()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-interface {p1}, Lorg/apache/xerces/xs/ItemPSVI;->getTypeDefinition()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object p2

    :cond_1
    move-object v1, v0

    check-cast v1, Lorg/apache/xerces/dom/ElementNSImpl;

    invoke-virtual {v1, p2}, Lorg/apache/xerces/dom/ElementNSImpl;->setType(Lorg/apache/xerces/xs/XSTypeDefinition;)V

    :cond_2
    invoke-interface {p1}, Lorg/apache/xerces/xs/ItemPSVI;->getSchemaNormalizedValue()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short p0, p0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    if-eqz p1, :cond_4

    :goto_0
    invoke-virtual {v0, p1}, Lorg/apache/xerces/dom/ParentNode;->setTextContent(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lorg/apache/xerces/dom/ParentNode;->getTextContent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_4

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object p0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lorg/w3c/dom/Node;

    instance-of p1, p0, Lorg/apache/xerces/dom/ElementNSImpl;

    if-eqz p1, :cond_6

    check-cast p0, Lorg/apache/xerces/dom/ElementNSImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/ElementNSImpl;->setType(Lorg/apache/xerces/xs/XSTypeDefinition;)V

    :cond_6
    return-void
.end method

.method public endGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public final expandEntityRef(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .locals 1

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {p1, p0, p2}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object p0, v0

    goto :goto_0
.end method

.method public getDocumentSource()Lorg/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->h:Z

    return-void
.end method

.method public final namespaceFixUp(Lorg/apache/xerces/dom/ElementImpl;Lorg/apache/xerces/dom/AttributeMap;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    const/4 v2, 0x0

    const/4 v10, 0x0

    if-eqz v9, :cond_8

    move v3, v10

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->getLength()I

    move-result v4

    if-lt v3, v4, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v9, v3}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Attr;

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    sget-object v6, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    sget-object v5, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_1
    iget-object v7, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v7, v7, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v7, :cond_2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v5, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    iput-object v4, v5, Lorg/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v5, "CantBindXMLNS"

    invoke-static {v4, v5, v2}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iget-object v11, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v12, v0, Lorg/apache/xerces/dom/DOMNormalizer;->e:Lorg/apache/xerces/dom/DOMErrorImpl;

    iget-object v13, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    const/4 v15, 0x2

    const-string v16, "CantBindXMLNS"

    invoke-static/range {v11 .. v16}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_4

    :cond_2
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    iget-object v7, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v7, v6}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v6, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_2
    iget-object v7, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v6, v7, :cond_5

    iget-object v6, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v6, v5}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v6, v4, v5}, Lorg/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4

    :cond_5
    iget-object v4, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    sget-object v6, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_3

    :cond_6
    move-object v4, v2

    :goto_3
    invoke-interface {v5, v6, v4}, Lorg/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xerces/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v4

    const-string v11, "http://www.w3.org/dom/DOMTR"

    if-eqz v3, :cond_c

    iget-object v2, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_9

    goto :goto_6

    :cond_9
    iget-object v3, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_a
    :goto_6
    sget-object v3, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_7
    iget-object v4, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v4, v3}, Lorg/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-ne v4, v2, :cond_b

    goto :goto_9

    :cond_b
    invoke-virtual {v0, v3, v2, v1}, Lorg/apache/xerces/dom/DOMNormalizer;->addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/dom/ElementImpl;)V

    iget-object v4, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v4, v3, v2}, Lorg/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v4, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v4, v3, v2}, Lorg/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_9

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xerces/dom/NodeImpl;->getLocalName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_e

    iget-boolean v2, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    const-string v3, "NullLocalElementName"

    if-eqz v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xerces/dom/ElementImpl;->getNodeName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v11, v3, v2}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    iget-object v12, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v13, v0, Lorg/apache/xerces/dom/DOMNormalizer;->e:Lorg/apache/xerces/dom/DOMErrorImpl;

    iget-object v14, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    const/16 v16, 0x3

    goto :goto_8

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xerces/dom/ElementImpl;->getNodeName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v11, v3, v2}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    iget-object v12, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v13, v0, Lorg/apache/xerces/dom/DOMNormalizer;->e:Lorg/apache/xerces/dom/DOMErrorImpl;

    iget-object v14, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    const/16 v16, 0x2

    :goto_8
    const-string v17, "NullLocalElementName"

    invoke-static/range {v12 .. v17}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_9

    :cond_e
    iget-object v3, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    sget-object v4, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_f

    invoke-virtual {v0, v4, v4, v1}, Lorg/apache/xerces/dom/DOMNormalizer;->addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/dom/ElementImpl;)V

    iget-object v3, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v3, v4, v2}, Lorg/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v3, v4, v2}, Lorg/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_f
    :goto_9
    if-eqz v9, :cond_1e

    iget-object v2, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->cloneMap(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move v12, v10

    :goto_a
    iget-object v2, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v12, v2, :cond_10

    goto/16 :goto_13

    :cond_10
    iget-object v2, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lorg/w3c/dom/Attr;

    iget-object v2, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    iput-object v13, v2, Lorg/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    invoke-interface {v13}, Lorg/w3c/dom/Node;->normalize()V

    invoke-interface {v13}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v14

    if-nez v2, :cond_11

    sget-object v2, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_11
    move-object v15, v2

    iget-object v2, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v3, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_13

    iget-object v3, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_13

    iget-object v3, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v4, v0, Lorg/apache/xerces/dom/DOMNormalizer;->e:Lorg/apache/xerces/dom/DOMErrorImpl;

    iget-object v5, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    invoke-virtual {v2}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v8

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object/from16 v5, p2

    move-object v6, v13

    move-object v7, v15

    invoke-static/range {v2 .. v8}, Lorg/apache/xerces/dom/DOMNormalizer;->isAttrValueWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Lorg/w3c/dom/NamedNodeMap;Lorg/w3c/dom/Attr;Ljava/lang/String;Z)V

    iget-object v2, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v2}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLVersionChanged()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-boolean v2, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    if-eqz v2, :cond_12

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_b

    :cond_12
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v3}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v3

    invoke-static {v2, v3}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v2

    :goto_b
    if-nez v2, :cond_13

    const-string v2, "Attr"

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "wf-invalid-character-in-node-name"

    invoke-static {v11, v3, v2}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    iget-object v2, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v3, v0, Lorg/apache/xerces/dom/DOMNormalizer;->e:Lorg/apache/xerces/dom/DOMErrorImpl;

    iget-object v4, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    const/16 v20, 0x2

    const-string v21, "wf-invalid-character-in-node-name"

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-static/range {v16 .. v21}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_13
    if-eqz v14, :cond_1b

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_14

    goto :goto_c

    :cond_14
    iget-object v3, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v2}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :cond_15
    :goto_c
    sget-object v2, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_d
    iget-object v3, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    sget-object v3, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto/16 :goto_12

    :cond_16
    move-object v3, v13

    check-cast v3, Lorg/apache/xerces/dom/AttrImpl;

    invoke-virtual {v3, v10}, Lorg/apache/xerces/dom/AttrImpl;->setIdAttribute(Z)V

    iget-object v3, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v14}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v4, v2}, Lorg/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v2, v5, :cond_17

    if-eq v4, v3, :cond_1d

    :cond_17
    iget-object v4, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v4, v3}, Lorg/apache/xerces/xni/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_18

    if-eq v4, v5, :cond_18

    goto :goto_10

    :cond_18
    if-eq v2, v5, :cond_19

    iget-object v4, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v4, v2}, Lorg/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_19

    goto :goto_f

    :cond_19
    iget-object v2, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "NS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    :goto_e
    iget-object v6, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v6, v2}, Lorg/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1a

    :goto_f
    invoke-virtual {v0, v2, v3, v1}, Lorg/apache/xerces/dom/DOMNormalizer;->addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/dom/ElementImpl;)V

    iget-object v4, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v15}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v5, v2, v4}, Lorg/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v4, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v4, v2, v3}, Lorg/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-object v4, v2

    :goto_10
    invoke-interface {v13, v4}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    goto :goto_12

    :cond_1a
    iget-object v2, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v4, v7

    goto :goto_e

    :cond_1b
    move-object v2, v13

    check-cast v2, Lorg/apache/xerces/dom/AttrImpl;

    invoke-virtual {v2, v10}, Lorg/apache/xerces/dom/AttrImpl;->setIdAttribute(Z)V

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1d

    iget-boolean v2, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    const-string v3, "NullLocalAttrName"

    if-eqz v2, :cond_1c

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v11, v3, v2}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    iget-object v13, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v14, v0, Lorg/apache/xerces/dom/DOMNormalizer;->e:Lorg/apache/xerces/dom/DOMErrorImpl;

    iget-object v15, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    const/16 v17, 0x3

    goto :goto_11

    :cond_1c
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v11, v3, v2}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    iget-object v13, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v14, v0, Lorg/apache/xerces/dom/DOMNormalizer;->e:Lorg/apache/xerces/dom/DOMErrorImpl;

    iget-object v15, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    const/16 v17, 0x2

    :goto_11
    const-string v18, "NullLocalAttrName"

    invoke-static/range {v13 .. v18}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_1d
    :goto_12
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_a

    :cond_1e
    :goto_13
    return-void
.end method

.method public normalizeDocument(Lorg/apache/xerces/dom/CoreDocumentImpl;Lorg/apache/xerces/dom/DOMConfigurationImpl;)V
    .locals 8

    iput-object p1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iput-object p2, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/apache/xerces/dom/DOMNormalizer;->h:Z

    iput-boolean p2, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    invoke-virtual {p1}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getXmlVersion()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v0, v1}, Lorg/apache/xerces/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v0}, Lorg/apache/xerces/xni/NamespaceContext;->reset()V

    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    sget-object v1, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v1, v0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v1, v1, 0x40

    const-string v3, "http://www.w3.org/TR/REC-xml"

    if-eqz v1, :cond_3

    const-string v1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {v0, v1}, Lorg/apache/xerces/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v4, Lorg/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->r:Lorg/apache/xerces/dom/CoreDOMImplementationImpl;

    const-string v4, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v0, v4, p1}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/RevalidationHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    const-string v5, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v0, v5, v1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    const-string v5, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-virtual {v0, v5, v1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v0, v0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    iput-boolean v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fPSVI:Z

    move-object v0, v2

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    const-string v4, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {v0, v4}, Lorg/apache/xerces/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    iget-object v4, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    invoke-virtual {v4, p1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setDTDValidatorFactory(Ljava/lang/String;)V

    sget-object v4, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->r:Lorg/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {v4, v3, p1}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/RevalidationHandler;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    iput-boolean p2, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fPSVI:Z

    move-object v4, v3

    :goto_2
    iget-object v5, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    const-string v6, "http://xml.org/sax/features/validation"

    invoke-virtual {v5, v6, v1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    iget-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v1}, Lorg/apache/xerces/dom/CoreDocumentImpl;->clearIdentifiers()V

    iget-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    if-eqz v1, :cond_4

    check-cast v1, Lorg/apache/xerces/xni/parser/XMLComponent;

    iget-object v5, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    invoke-interface {v1, v5}, Lorg/apache/xerces/xni/parser/XMLComponent;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    goto :goto_3

    :cond_3
    iput-object v2, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    move-object v0, v2

    move-object v4, v0

    :cond_4
    :goto_3
    iget-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    const-string v5, "error-handler"

    invoke-virtual {v1, v5}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/DOMErrorHandler;

    iput-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    if-eqz v1, :cond_6

    invoke-interface {v1, p0}, Lorg/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    new-instance v5, Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iget-object v6, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-object v6, v6, Lorg/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-direct {v5, v6, v6, v7, v7}, Lorg/apache/xerces/impl/xs/util/SimpleLocator;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v6, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-object v6, v6, Lorg/apache/xerces/dom/CoreDocumentImpl;->encoding:Ljava/lang/String;

    iget-object v7, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1, v5, v6, v7, v2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V

    iget-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    iget-object v5, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v5}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getXmlVersion()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v6}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getXmlEncoding()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v7}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getXmlStandalone()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "yes"

    goto :goto_4

    :cond_5
    const-string v7, "no"

    :goto_4
    invoke-interface {v1, v5, v6, v7, v2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_6
    if-ne v4, v3, :cond_8

    if-eqz v0, :cond_7

    :try_start_0
    aget-object p2, v0, p2

    goto :goto_5

    :cond_7
    move-object p2, v2

    :goto_5
    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/dom/DOMNormalizer;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object p2, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {p2}, Lorg/apache/xerces/dom/ParentNode;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p2

    :goto_6
    if-nez p2, :cond_a

    iget-object p2, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    if-eqz p2, :cond_9

    invoke-interface {p2, v2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endDocument(Lorg/apache/xerces/xni/Augmentations;)V

    iget-object p2, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    invoke-interface {p2, v2}, Lorg/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    sget-object p2, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->r:Lorg/apache/xerces/dom/CoreDOMImplementationImpl;

    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    invoke-virtual {p2, v4, p1, v0}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->e(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/impl/RevalidationHandler;)V

    iput-object v2, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    :cond_9
    return-void

    :cond_a
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/apache/xerces/dom/DOMNormalizer;->normalizeNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_b

    goto :goto_6

    :cond_b
    move-object p2, v0

    goto :goto_6

    :catch_0
    move-exception p2

    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    if-eqz v0, :cond_c

    invoke-interface {v0, v2}, Lorg/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    sget-object v0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->r:Lorg/apache/xerces/dom/CoreDOMImplementationImpl;

    iget-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    invoke-virtual {v0, v4, p1, v1}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->e(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/impl/RevalidationHandler;)V

    iput-object v2, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    :cond_c
    sget-object p0, Lorg/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;

    if-ne p2, p0, :cond_d

    return-void

    :cond_d
    throw p2
.end method

.method public normalizeNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 14

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    iget-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    iput-object p1, v1, Lorg/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    const-string v1, "Element"

    const-string v2, "wf-invalid-character-in-node-name"

    const-string v3, "http://www.w3.org/dom/DOMTR"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eq v0, v4, :cond_1b

    const/16 v7, 0x8

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eq v0, v9, :cond_12

    if-eq v0, v8, :cond_b

    const/4 v8, 0x5

    if-eq v0, v8, :cond_7

    const/4 v4, 0x7

    if-eq v0, v4, :cond_3

    if-eq v0, v7, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v0, v0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    if-eqz p0, :cond_2c

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    if-ne p1, v9, :cond_2c

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_2c

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v1, v9, :cond_2c

    move-object v1, p1

    check-cast v1, Lorg/apache/xerces/dom/TextImpl;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lorg/apache/xerces/dom/CharacterDataImpl;->insertData(ILjava/lang/String;)V

    invoke-interface {v0, p0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p1

    :cond_1
    iget-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v1, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_2

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    check-cast p1, Lorg/w3c/dom/Comment;

    invoke-interface {p1}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->e:Lorg/apache/xerces/dom/DOMErrorImpl;

    iget-object v2, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    iget-object v3, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v3}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v3

    invoke-static {v0, v1, v2, p1, v3}, Lorg/apache/xerces/dom/DOMNormalizer;->isCommentWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    :cond_2
    iget-object p0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    if-eqz p0, :cond_2c

    sget-object p1, Lorg/apache/xerces/dom/DOMNormalizer;->EMPTY_STRING:Lorg/apache/xerces/xni/XMLString;

    invoke-interface {p0, p1, v6}, Lorg/apache/xerces/xni/XMLDocumentHandler;->comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_c

    :cond_3
    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v0, v0, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v0, v0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v0}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v5}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v4}, Lorg/apache/xerces/util/XML11Char;->isXML11ValidName(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    :cond_4
    invoke-static {v4}, Lorg/apache/xerces/util/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result v4

    :goto_0
    if-nez v4, :cond_5

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v7, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v8, p0, Lorg/apache/xerces/dom/DOMNormalizer;->e:Lorg/apache/xerces/dom/DOMErrorImpl;

    iget-object v9, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    const/4 v11, 0x2

    const-string v12, "wf-invalid-character-in-node-name"

    invoke-static/range {v7 .. v12}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v2, p0, Lorg/apache/xerces/dom/DOMNormalizer;->e:Lorg/apache/xerces/dom/DOMErrorImpl;

    iget-object v3, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    invoke-interface {v0}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v4

    invoke-static {v1, v2, v3, v0, v4}, Lorg/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    :cond_6
    iget-object p0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    if-eqz p0, :cond_2c

    check-cast p1, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/apache/xerces/dom/DOMNormalizer;->EMPTY_STRING:Lorg/apache/xerces/xni/XMLString;

    invoke-interface {p0, p1, v0, v6}, Lorg/apache/xerces/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_c

    :cond_7
    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v0, v0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_a

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lorg/apache/xerces/dom/EntityReferenceImpl;

    invoke-virtual {v2, v5, v4}, Lorg/apache/xerces/dom/EntityReferenceImpl;->setReadOnly(ZZ)V

    invoke-virtual {p0, v1, p1}, Lorg/apache/xerces/dom/DOMNormalizer;->expandEntityRef(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    invoke-interface {v1, p1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_1

    :cond_8
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_1
    if-eqz v0, :cond_9

    if-eqz p0, :cond_9

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    if-ne p1, v9, :cond_9

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    if-ne p1, v9, :cond_9

    return-object v0

    :cond_9
    return-object p0

    :cond_a
    iget-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v2, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v2, :cond_2c

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2c

    invoke-virtual {v1}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLVersionChanged()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {p0}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result p0

    invoke-static {p1, p0}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    goto/16 :goto_c

    :cond_b
    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v1, v0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/2addr v1, v7

    if-nez v1, :cond_d

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v1, v9, :cond_c

    move-object p0, v0

    check-cast p0, Lorg/w3c/dom/Text;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/w3c/dom/CharacterData;->appendData(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0

    :cond_c
    iget-object p0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/w3c/dom/Node;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p0

    :cond_d
    iget-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    if-eqz v1, :cond_e

    iget-object v0, v0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    iput-object p1, v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lorg/w3c/dom/Node;

    iput-object p1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v1, v6}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lorg/apache/xerces/impl/RevalidationHandler;->characterData(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)Z

    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    invoke-interface {v0, v6}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_e
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v1, v1, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_11

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v2, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v2, :cond_f

    iget-object v2, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v4, p0, Lorg/apache/xerces/dom/DOMNormalizer;->e:Lorg/apache/xerces/dom/DOMErrorImpl;

    iget-object v7, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v9}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v9

    invoke-static {v2, v4, v7, v8, v9}, Lorg/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    :cond_f
    :goto_2
    const-string v2, "]]>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_10

    goto/16 :goto_c

    :cond_10
    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v2, v0}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v4, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    iput-object p1, v4, Lorg/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    const-string p1, "cdata-sections-splitted"

    invoke-static {v3, p1, v6}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v7, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v8, p0, Lorg/apache/xerces/dom/DOMNormalizer;->e:Lorg/apache/xerces/dom/DOMErrorImpl;

    iget-object v9, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    const/4 v11, 0x1

    const-string v12, "cdata-sections-splitted"

    invoke-static/range {v7 .. v12}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    move-object p1, v2

    goto :goto_2

    :cond_11
    iget-object p1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v1, p1, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v2, p0, Lorg/apache/xerces/dom/DOMNormalizer;->e:Lorg/apache/xerces/dom/DOMErrorImpl;

    iget-object p0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    invoke-virtual {p1}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result p1

    invoke-static {v1, v2, p0, v0, p1}, Lorg/apache/xerces/dom/DOMNormalizer;->isCDataWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto/16 :goto_c

    :cond_12
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v1, v9, :cond_13

    move-object p0, p1

    check-cast p0, Lorg/w3c/dom/Text;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/w3c/dom/CharacterData;->appendData(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p1

    :cond_13
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_c

    :cond_14
    const/4 v1, -0x1

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    goto :goto_3

    :cond_15
    move v0, v1

    :goto_3
    if-eq v0, v1, :cond_18

    iget-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v1, v1, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_16

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2c

    :cond_16
    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_17

    if-eq v0, v7, :cond_2c

    :cond_17
    and-int/2addr v1, v7

    if-nez v1, :cond_18

    if-eq v0, v8, :cond_2c

    :cond_18
    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v0, v0, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v0, v0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->e:Lorg/apache/xerces/dom/DOMErrorImpl;

    iget-object v2, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v7}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v7

    invoke-static {v0, v1, v2, v3, v7}, Lorg/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    :cond_19
    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-object v1, v1, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    iput-object p1, v1, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lorg/w3c/dom/Node;

    iput-object p1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lorg/apache/xerces/impl/RevalidationHandler;->characterData(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)Z

    iget-boolean v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->h:Z

    if-eqz v0, :cond_1a

    iput-boolean v5, p0, Lorg/apache/xerces/dom/DOMNormalizer;->h:Z

    check-cast p1, Lorg/apache/xerces/dom/TextImpl;

    invoke-virtual {p1, v4}, Lorg/apache/xerces/dom/TextImpl;->setIgnorableWhitespace(Z)V

    goto/16 :goto_c

    :cond_1a
    check-cast p1, Lorg/apache/xerces/dom/TextImpl;

    invoke-virtual {p1, v5}, Lorg/apache/xerces/dom/TextImpl;->setIgnorableWhitespace(Z)V

    goto/16 :goto_c

    :cond_1b
    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v7, v0, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v7, :cond_1d

    iget-object v7, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v7, v7, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_1d

    invoke-virtual {v0}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLVersionChanged()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v8}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v8

    invoke-static {v0, v7, v8}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_4

    :cond_1c
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v7}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v7

    invoke-static {v0, v7}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v0

    :goto_4
    if-nez v0, :cond_1d

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v7, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v8, p0, Lorg/apache/xerces/dom/DOMNormalizer;->e:Lorg/apache/xerces/dom/DOMErrorImpl;

    iget-object v9, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    const/4 v11, 0x2

    const-string v12, "wf-invalid-character-in-node-name"

    invoke-static/range {v7 .. v12}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_1d
    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v0}, Lorg/apache/xerces/xni/NamespaceContext;->pushContext()V

    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v0}, Lorg/apache/xerces/xni/NamespaceContext;->reset()V

    move-object v0, p1

    check-cast v0, Lorg/apache/xerces/dom/ElementImpl;

    invoke-virtual {v0}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncChildren()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Lorg/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    :cond_1e
    invoke-virtual {v0}, Lorg/apache/xerces/dom/ElementImpl;->hasAttributes()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Lorg/apache/xerces/dom/ElementImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/dom/AttributeMap;

    goto :goto_5

    :cond_1f
    move-object v1, v6

    :goto_5
    iget-object v7, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v7, v7, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/2addr v7, v4

    if-eqz v7, :cond_25

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/dom/DOMNormalizer;->namespaceFixUp(Lorg/apache/xerces/dom/ElementImpl;Lorg/apache/xerces/dom/AttributeMap;)V

    iget-object v2, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v2, v2, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_29

    if-nez v1, :cond_21

    invoke-virtual {v0}, Lorg/apache/xerces/dom/ElementImpl;->hasAttributes()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Lorg/apache/xerces/dom/ElementImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/dom/AttributeMap;

    goto :goto_6

    :cond_20
    move-object v1, v6

    :cond_21
    :goto_6
    if-eqz v1, :cond_29

    :goto_7
    invoke-virtual {v1}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->getLength()I

    move-result v2

    if-lt v5, v2, :cond_22

    goto/16 :goto_a

    :cond_22
    invoke-virtual {v1, v5}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Attr;

    sget-object v3, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_23

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    :cond_23
    invoke-virtual {v0, v2}, Lorg/apache/xerces/dom/ElementImpl;->removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    add-int/lit8 v5, v5, -0x1

    :cond_24
    add-int/2addr v5, v4

    goto :goto_7

    :cond_25
    if-eqz v1, :cond_29

    :goto_8
    invoke-virtual {v1}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->getLength()I

    move-result v4

    if-lt v5, v4, :cond_26

    goto/16 :goto_a

    :cond_26
    invoke-virtual {v1, v5}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lorg/w3c/dom/Attr;

    invoke-interface {v11}, Lorg/w3c/dom/Node;->normalize()V

    iget-object v4, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v4, v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v4, :cond_28

    iget-object v4, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v4, v4, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_28

    iget-object v7, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v8, p0, Lorg/apache/xerces/dom/DOMNormalizer;->e:Lorg/apache/xerces/dom/DOMErrorImpl;

    iget-object v9, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    invoke-interface {v11}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v12

    iget-object v4, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v13

    move-object v10, v1

    invoke-static/range {v7 .. v13}, Lorg/apache/xerces/dom/DOMNormalizer;->isAttrValueWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Lorg/w3c/dom/NamedNodeMap;Lorg/w3c/dom/Attr;Ljava/lang/String;Z)V

    iget-object v4, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLVersionChanged()Z

    move-result v4

    if-eqz v4, :cond_28

    iget-boolean v4, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    if-eqz v4, :cond_27

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v8}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v8

    invoke-static {v4, v7, v8}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    goto :goto_9

    :cond_27
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v7}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v7

    invoke-static {v4, v7}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v4

    :goto_9
    if-nez v4, :cond_28

    const-string v4, "Attr"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v4, v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v7, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v8, p0, Lorg/apache/xerces/dom/DOMNormalizer;->e:Lorg/apache/xerces/dom/DOMErrorImpl;

    iget-object v9, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    const/4 v11, 0x2

    const-string v12, "wf-invalid-character-in-node-name"

    invoke-static/range {v7 .. v12}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_28
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_29
    :goto_a
    iget-object v2, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fAttrProxy:Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;

    iget-object v3, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v2, v1, v3, v0}, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->setAttributes(Lorg/apache/xerces/dom/AttributeMap;Lorg/apache/xerces/dom/CoreDocumentImpl;Lorg/apache/xerces/dom/ElementImpl;)V

    iget-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fQName:Lorg/apache/xerces/xni/QName;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/dom/DOMNormalizer;->updateQName(Lorg/w3c/dom/Node;Lorg/apache/xerces/xni/QName;)V

    iget-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-object v1, v1, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    iput-object p1, v1, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lorg/w3c/dom/Node;

    iput-object p1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lorg/w3c/dom/Node;

    iget-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    iget-object v2, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fQName:Lorg/apache/xerces/xni/QName;

    iget-object v3, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fAttrProxy:Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;

    invoke-interface {v1, v2, v3, v6}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_2a
    invoke-virtual {v0}, Lorg/apache/xerces/dom/ParentNode;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_b
    if-nez v1, :cond_2d

    iget-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fQName:Lorg/apache/xerces/xni/QName;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/dom/DOMNormalizer;->updateQName(Lorg/w3c/dom/Node;Lorg/apache/xerces/xni/QName;)V

    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-object v0, v0, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    iput-object p1, v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lorg/w3c/dom/Node;

    iput-object p1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lorg/w3c/dom/Node;

    iget-object p1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fQName:Lorg/apache/xerces/xni/QName;

    invoke-interface {p1, v0, v6}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_2b
    iget-object p0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {p0}, Lorg/apache/xerces/xni/NamespaceContext;->popContext()V

    :cond_2c
    :goto_c
    return-object v6

    :cond_2d
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {p0, v1}, Lorg/apache/xerces/dom/DOMNormalizer;->normalizeNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_2e

    goto :goto_b

    :cond_2e
    move-object v1, v2

    goto :goto_b
.end method

.method public final o(Ljava/lang/String;Lorg/w3c/dom/Attr;)Ljava/lang/String;
    .locals 9

    invoke-interface {p2}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->g:Lorg/apache/xerces/xni/XMLString;

    iget-object v2, v1, Lorg/apache/xerces/xni/XMLString;->ch:[C

    array-length v2, v2

    if-ge v2, v0, :cond_1

    new-array v2, v0, [C

    iput-object v2, v1, Lorg/apache/xerces/xni/XMLString;->ch:[C

    :cond_1
    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/xni/XMLString;->length:I

    move v1, v2

    :goto_0
    if-lt v2, v0, :cond_3

    if-eqz v1, :cond_2

    iget-object p0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->g:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {p0}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    :cond_2
    return-object p1

    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x9

    const/16 v5, 0x20

    const/4 v6, 0x1

    if-eq v3, v4, :cond_6

    const/16 v4, 0xa

    if-ne v3, v4, :cond_4

    goto :goto_1

    :cond_4
    const/16 v7, 0xd

    if-ne v3, v7, :cond_5

    iget-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->g:Lorg/apache/xerces/xni/XMLString;

    iget-object v3, v1, Lorg/apache/xerces/xni/XMLString;->ch:[C

    iget v7, v1, Lorg/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v1, Lorg/apache/xerces/xni/XMLString;->length:I

    aput-char v5, v3, v7

    add-int/lit8 v1, v2, 0x1

    if-ge v1, v0, :cond_7

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_7

    move v2, v1

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lorg/apache/xerces/dom/DOMNormalizer;->g:Lorg/apache/xerces/xni/XMLString;

    iget-object v5, v4, Lorg/apache/xerces/xni/XMLString;->ch:[C

    iget v7, v4, Lorg/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v4, Lorg/apache/xerces/xni/XMLString;->length:I

    aput-char v3, v5, v7

    goto :goto_3

    :cond_6
    :goto_1
    iget-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->g:Lorg/apache/xerces/xni/XMLString;

    iget-object v3, v1, Lorg/apache/xerces/xni/XMLString;->ch:[C

    iget v4, v1, Lorg/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v7, v4, 0x1

    iput v7, v1, Lorg/apache/xerces/xni/XMLString;->length:I

    aput-char v5, v3, v4

    :cond_7
    :goto_2
    move v1, v6

    :goto_3
    add-int/2addr v2, v6

    goto :goto_0
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getDocumentURI()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v0

    move-object v5, p2

    move-object v7, v0

    move-object v4, v3

    move-object v3, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    move-object v5, p2

    move-object v3, v0

    move-object v4, v1

    move-object v7, v4

    :goto_0
    :try_start_0
    iget-object p2, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    invoke-interface {p2, v3, v4, v5, v1}, Lorg/apache/xerces/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    sget-object p2, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->r:Lorg/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {p2, p1}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->b(Ljava/lang/String;)Lorg/apache/xerces/impl/dtd/XMLDTDLoader;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "http://xml.org/sax/features/validation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/xerces/impl/dtd/XMLDTDLoader;->setFeature(Ljava/lang/String;Z)V

    iget-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    invoke-virtual {v1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->getEntityResolver()Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDLoader;->setEntityResolver(Lorg/apache/xerces/xni/parser/XMLEntityResolver;)V

    iget-object v1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    invoke-virtual {v1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->getErrorHandler()Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDLoader;->setErrorHandler(Lorg/apache/xerces/xni/parser/XMLErrorHandler;)V

    iget-object p0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    move-object v2, p0

    check-cast v2, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lorg/apache/xerces/impl/dtd/XMLDTDLoader;->loadGrammarWithContext(Lorg/apache/xerces/impl/dtd/XMLDTDValidator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2, p1, v0}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->d(Ljava/lang/String;Lorg/apache/xerces/impl/dtd/XMLDTDLoader;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-object v1, v0

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v1, :cond_5

    sget-object p2, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->r:Lorg/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {p2, p1, v1}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->d(Ljava/lang/String;Lorg/apache/xerces/impl/dtd/XMLDTDLoader;)V

    :cond_5
    throw p0

    :catch_1
    :goto_2
    if-eqz v1, :cond_6

    sget-object p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->r:Lorg/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {p0, p1, v1}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->d(Ljava/lang/String;Lorg/apache/xerces/impl/dtd/XMLDTDLoader;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0

    return-void
.end method

.method public startCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p1, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lorg/w3c/dom/Node;

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-interface {p2}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p3, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/apache/xerces/dom/DOMNormalizer;->f:Lorg/apache/xerces/xni/QName;

    invoke-interface {p2, v1, v2}, Lorg/apache/xerces/xni/XMLAttributes;->getName(ILorg/apache/xerces/xni/QName;)V

    iget-object v2, p0, Lorg/apache/xerces/dom/DOMNormalizer;->f:Lorg/apache/xerces/xni/QName;

    iget-object v3, v2, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/xerces/dom/DOMNormalizer;->f:Lorg/apache/xerces/xni/QName;

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v2

    :cond_1
    invoke-interface {p2, v1}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v3

    const-string v4, "ATTRIBUTE_PSVI"

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/xs/AttributePSVI;

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lorg/apache/xerces/xs/ItemPSVI;->getMemberTypeDefinition()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v5

    if-eqz v5, :cond_2

    :goto_1
    move-object v6, v5

    check-cast v6, Lorg/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v6}, Lorg/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v6

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Lorg/apache/xerces/xs/ItemPSVI;->getTypeDefinition()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move v6, v0

    :goto_2
    if-eqz v6, :cond_4

    move-object v6, p1

    check-cast v6, Lorg/apache/xerces/dom/ElementImpl;

    invoke-virtual {v6, v2, v4}, Lorg/apache/xerces/dom/ElementImpl;->setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V

    :cond_4
    iget-boolean v4, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fPSVI:Z

    if-eqz v4, :cond_5

    move-object v4, v2

    check-cast v4, Lorg/apache/xerces/dom/PSVIAttrNSImpl;

    invoke-virtual {v4, v3}, Lorg/apache/xerces/dom/PSVIAttrNSImpl;->setPSVI(Lorg/apache/xerces/xs/AttributePSVI;)V

    :cond_5
    move-object v4, v2

    check-cast v4, Lorg/apache/xerces/dom/AttrImpl;

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    iget-object v4, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v4, v4, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_9

    invoke-interface {v3}, Lorg/apache/xerces/xs/ItemPSVI;->getSchemaNormalizedValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result v4

    invoke-interface {v2, v3}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    if-nez v4, :cond_9

    check-cast v2, Lorg/apache/xerces/dom/AttrImpl;

    invoke-virtual {v2, v4}, Lorg/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    goto :goto_4

    :cond_6
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v1}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v5

    const-string v6, "ATTRIBUTE_DECLARED"

    invoke-interface {v5, v6}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p2, v1}, Lorg/apache/xerces/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "ID"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object v5, p1

    check-cast v5, Lorg/apache/xerces/dom/ElementImpl;

    invoke-virtual {v5, v2, v4}, Lorg/apache/xerces/dom/ElementImpl;->setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :cond_8
    :goto_3
    check-cast v2, Lorg/apache/xerces/dom/AttrImpl;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    :cond_9
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public startGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public final updateQName(Lorg/w3c/dom/Node;Lorg/apache/xerces/xni/QName;)V
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

    iget-object v4, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v0}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    iput-object v0, p2, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, v2}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    iput-object v0, p2, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {p0, v1}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    iput-object v3, p2, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    return-void
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method
