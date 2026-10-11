.class public Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;
    }
.end annotation


# static fields
.field static final JJK_DEBUG:Z = false

.field static final JJK_NEWCODE:Z = true

.field static final NAMESPACE_DECL_NS:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# instance fields
.field private m_last_kid:I

.field private m_last_parent:I

.field protected m_nodes:Ljava/util/Vector;

.field private transient m_nodesAreProcessed:Z

.field private transient m_pos:Lorg/w3c/dom/Node;

.field m_processedFirstElement:Z

.field private transient m_root:Lorg/w3c/dom/Node;

.field m_walker:Lcom/sun/org/apache/xml/internal/utils/TreeWalker;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;Ljavax/xml/transform/dom/DOMSource;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;Z)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;Z)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    const/4 p3, -0x1

    iput p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_processedFirstElement:Z

    new-instance p4, Ljava/util/Vector;

    invoke-direct {p4}, Ljava/util/Vector;-><init>()V

    iput-object p4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    new-instance p4, Lcom/sun/org/apache/xml/internal/utils/TreeWalker;

    const/4 p5, 0x0

    invoke-direct {p4, p5}, Lcom/sun/org/apache/xml/internal/utils/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;)V

    iput-object p4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_walker:Lcom/sun/org/apache/xml/internal/utils/TreeWalker;

    invoke-virtual {p2}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_pos:Lorg/w3c/dom/Node;

    iput p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    iput p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    invoke-virtual {p0, p2, p3, p3, p3}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->addNode(Lorg/w3c/dom/Node;III)I

    move-result p2

    iput p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p2

    const/4 p4, 0x1

    if-ne p4, p2, :cond_2

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p2

    if-nez p2, :cond_0

    move p4, p1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result p4

    :goto_0
    if-lez p4, :cond_2

    move p5, p1

    move p6, p3

    :goto_1
    if-ge p5, p4, :cond_1

    invoke-interface {p2, p5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p6, p3}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->addNode(Lorg/w3c/dom/Node;III)I

    move-result p6

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_firstch:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, p3, p6}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_nextsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p2, p3, p6}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    :cond_2
    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_nodesAreProcessed:Z

    return-void
.end method

.method public static dispatchNodeData(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_3

    const/16 v2, 0xb

    if-eq v0, v2, :cond_3

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p2

    instance-of v0, p1, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;->characters(Lorg/w3c/dom/Node;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-interface {p1, p0, v0, p2}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_4

    add-int/lit8 v0, p2, 0x1

    invoke-static {p0, p1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->dispatchNodeData(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;I)V

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private getHandleFromNode(Lorg/w3c/dom/Node;)I
    .locals 3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->nextNode()Z

    move-result v0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v0, :cond_2

    if-lt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getNodeData(Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V
    .locals 2

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    invoke-static {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->getNodeData(Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private static isSpace(C)Z
    .locals 0

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result p0

    return p0
.end method

.method private logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    const/4 v0, 0x5

    if-nez p0, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p0, :cond_3

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    if-ne v0, p1, :cond_3

    invoke-interface {p0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_1

    :cond_3
    if-eqz p0, :cond_4

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/4 v0, 0x3

    if-eq v0, p1, :cond_4

    const/4 v0, 0x4

    if-eq v0, p1, :cond_4

    const/4 p0, 0x0

    :cond_4
    return-object p0
.end method


# virtual methods
.method public addNode(Lorg/w3c/dom/Node;III)I
    .locals 7

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->size()I

    move-result v1

    ushr-int/lit8 v2, v0, 0x10

    if-ne v1, v2, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_mgr:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    if-eqz v1, :cond_0

    check-cast v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->getFirstFreeDTMID()I

    move-result v2

    invoke-virtual {v1, p0, v2, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->addDTM(Lcom/sun/org/apache/xml/internal/dtm/DTM;II)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    shl-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v1, "ER_NO_DTMIDS_AVAIL"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    const/4 v1, -0x1

    if-ne v1, p4, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p4

    :cond_2
    const/16 v3, 0xd

    const/4 v4, 0x2

    if-ne v4, p4, :cond_4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "xmlns:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "xmlns"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move p4, v3

    :cond_4
    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_firstch:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    const/4 v6, -0x2

    invoke-virtual {v5, v6, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_nextsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v5, v6, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_prevsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v5, p3, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_parent:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v5, p2, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    if-eq v1, p2, :cond_5

    if-eq p4, v4, :cond_5

    if-eq p4, v3, :cond_5

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_firstch:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v5, p2}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v5

    if-ne v6, v5, :cond_5

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_firstch:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v5, v0, p2}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    :cond_5
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    if-ne p4, v6, :cond_6

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_6
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v6

    :goto_1
    if-eq p4, v2, :cond_7

    if-ne p4, v4, :cond_8

    :cond_7
    if-nez v6, :cond_8

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    :cond_8
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object p1

    if-eqz v6, :cond_9

    invoke-virtual {v2, v5, v6, p4}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    goto :goto_2

    :cond_9
    invoke-virtual {v2, p4}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(I)I

    move-result p1

    :goto_2
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_exptype:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v2, p1, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->indexNode(II)V

    if-eq v1, p3, :cond_a

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_nextsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p1, v0, p3}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    :cond_a
    if-ne p4, v3, :cond_b

    invoke-virtual {p0, p2, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->declareNamespaceInContext(II)V

    :cond_b
    return v0
.end method

.method public dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->getStringValue(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1, p1, v0}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->fixWhiteSpace(ZZZ)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result p3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-static {p1, p2, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->dispatchNodeData(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;I)V

    const/4 v1, 0x3

    if-eq v1, p3, :cond_1

    const/4 v1, 0x4

    if-ne v1, p3, :cond_2

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1, p2, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->dispatchNodeData(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public dispatchToEvents(ILorg/xml/sax/ContentHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_walker:Lcom/sun/org/apache/xml/internal/utils/TreeWalker;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/TreeWalker;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/TreeWalker;

    invoke-direct {v0, v2}, Lcom/sun/org/apache/xml/internal/utils/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;)V

    :cond_0
    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xml/internal/utils/TreeWalker;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/TreeWalker;->traverse(Lorg/w3c/dom/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xml/internal/utils/TreeWalker;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xml/internal/utils/TreeWalker;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    throw p0
.end method

.method public getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I
    .locals 4

    const-string v0, ""

    if-nez p2, :cond_0

    move-object p2, v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v2, v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->getNextNodeIdentity(I)I

    move-result p1

    if-eq v3, p1, :cond_4

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/16 v2, 0xd

    if-ne v1, v2, :cond_4

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->lookupNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move-object v2, v0

    :cond_3
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    :cond_4
    return v3
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeclHandler()Lorg/xml/sax/ext/DeclHandler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDocumentTypeDeclarationPublicIdentifier()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/Document;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDocumentTypeDeclarationSystemIdentifier()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/Document;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getElementById(Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/Document;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    :goto_0
    const/4 v1, -0x1

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->getHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v0

    if-ne v1, v0, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->getNextNodeIdentity(I)I

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v3

    if-ne v3, p1, :cond_1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->getHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v0

    :cond_2
    return v0

    :cond_3
    return v1
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHandleOfNode(Lorg/w3c/dom/Node;)I
    .locals 3

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    if-eq v0, p1, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    if-eq v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    if-ne v0, v1, :cond_4

    :cond_1
    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->getHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result p0

    return p0

    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_3
    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x23

    if-ne v0, p1, :cond_1

    const-string p1, ""

    goto :goto_1

    :cond_1
    const/16 p1, 0x3a

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object p1, p0

    :cond_3
    :goto_1
    return-object p1
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNextNodeIdentity(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->nextNode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1
.end method

.method public getNode(I)Lorg/w3c/dom/Node;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public getNodeName(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNodeNameX(I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    const-string v2, ""

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "xmlns:"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/utils/QName;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p1, "xmlns"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move-object v2, p0

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2
.end method

.method public getNodeValue(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v1

    :cond_0
    const/4 v0, 0x3

    if-eq v0, v1, :cond_1

    const/4 v0, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lcom/sun/org/apache/xml/internal/utils/StringBufferPool;->get()Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_4

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    const-string p0, ""

    :goto_1
    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/utils/StringBufferPool;->free(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    return-object p0
.end method

.method public getNumberOfNodes()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v0

    const/16 v1, 0x3a

    const/4 v2, 0x1

    const-string v3, ""

    if-eq v0, v2, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/16 v4, 0xd

    if-eq v0, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v3, p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :goto_1
    return-object v3
.end method

.method public getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStringValue(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p1

    const/4 v1, 0x1

    const-string v2, ""

    if-eq v1, v0, :cond_5

    const/16 v1, 0x9

    if-eq v1, v0, :cond_5

    const/16 v1, 0xb

    if-ne v1, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x3

    if-eq v1, v0, :cond_2

    const/4 v1, 0x4

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_xstrf:Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    invoke-static {}, Lcom/sun/org/apache/xml/internal/utils/StringBufferPool;->get()Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    move-result-object v0

    :goto_1
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/utils/StringBufferPool;->free(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_xstrf:Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    invoke-static {}, Lcom/sun/org/apache/xml/internal/utils/StringBufferPool;->get()Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    move-result-object v0

    :try_start_0
    invoke-static {p1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->getNodeData(Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_6

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/utils/StringBufferPool;->free(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_xstrf:Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/utils/StringBufferPool;->free(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    throw p0
.end method

.method public getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    if-ne v0, v1, :cond_0

    check-cast p0, Lorg/w3c/dom/Document;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    :goto_0
    const-string v0, ""

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Entity;

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    invoke-interface {p0}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Lorg/w3c/dom/Entity;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-interface {p0}, Lorg/w3c/dom/Entity;->getPublicId()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public isAttributeSpecified(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isWhitespace(I)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p1

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v1, v0, :cond_1

    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    invoke-static {}, Lcom/sun/org/apache/xml/internal/utils/StringBufferPool;->get()Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    move-result-object v0

    :goto_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->length()I

    move-result p0

    invoke-virtual {v0, v2, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->isWhitespace(II)Z

    move-result p0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/utils/StringBufferPool;->free(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    return p0
.end method

.method public lookupNode(I)Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public needsTwoThreads()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public nextNode()Z
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_nodesAreProcessed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_pos:Lorg/w3c/dom/Node;

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v6, v3

    move v5, v4

    :cond_1
    invoke-interface {v1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v7

    const/16 v8, 0xa

    const/4 v9, 0x5

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-eqz v7, :cond_5

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-ne v8, v7, :cond_2

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v6

    :cond_2
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-eq v9, v7, :cond_c

    iget v7, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    iput v7, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    iput v4, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    iget-object v8, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_wsfilter:Lcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;

    if-eqz v8, :cond_c

    invoke-virtual {v0, v7}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v7

    invoke-interface {v8, v7, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;->getShouldStripSpace(ILcom/sun/org/apache/xml/internal/dtm/DTM;)S

    move-result v7

    if-ne v10, v7, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getShouldStripWhitespace()Z

    move-result v7

    goto :goto_0

    :cond_3
    const/4 v8, 0x2

    if-ne v8, v7, :cond_4

    move v7, v11

    goto :goto_0

    :cond_4
    move v7, v2

    :goto_0
    invoke-virtual {v0, v7}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->pushShouldStripWhitespace(Z)V

    goto :goto_4

    :cond_5
    iget v7, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    if-eq v7, v4, :cond_6

    iget-object v12, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_firstch:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v12, v7}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v7

    const/4 v12, -0x2

    if-ne v7, v12, :cond_6

    iget-object v7, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_firstch:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    iget v12, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    invoke-virtual {v7, v4, v12}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    :cond_6
    :goto_1
    iget v7, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    if-eq v7, v4, :cond_b

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-ne v8, v7, :cond_7

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v6

    :cond_7
    if-eqz v6, :cond_8

    goto :goto_3

    :cond_8
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-ne v9, v7, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->popShouldStripWhitespace()V

    iget v7, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    if-ne v7, v4, :cond_a

    iget-object v7, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_firstch:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    iget v12, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    invoke-virtual {v7, v4, v12}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    goto :goto_2

    :cond_a
    iget-object v12, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_nextsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v12, v4, v7}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    :goto_2
    iget-object v7, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_parent:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    iget v12, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    iput v12, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    invoke-virtual {v7, v12}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v7

    iput v7, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    goto :goto_1

    :cond_b
    :goto_3
    iget v7, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    if-ne v7, v4, :cond_c

    move-object v6, v3

    :cond_c
    :goto_4
    if-eqz v6, :cond_d

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    :cond_d
    if-ne v9, v5, :cond_e

    move-object v1, v6

    :cond_e
    if-eq v9, v5, :cond_1

    if-nez v6, :cond_f

    iget-object v1, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_nextsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v1, v4, v2}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    iput-boolean v11, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_nodesAreProcessed:Z

    iput-object v3, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_pos:Lorg/w3c/dom/Node;

    return v2

    :cond_f
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const-string v7, "xml"

    const/4 v8, 0x4

    if-eq v10, v5, :cond_12

    if-ne v8, v5, :cond_10

    goto :goto_5

    :cond_10
    const/4 v9, 0x7

    if-ne v9, v5, :cond_11

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_8

    :cond_11
    move v1, v2

    goto :goto_8

    :cond_12
    :goto_5
    iget-object v1, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_wsfilter:Lcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;

    if-eqz v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getShouldStripWhitespace()Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v11

    goto :goto_6

    :cond_13
    move v1, v2

    :goto_6
    move v9, v5

    move-object v5, v3

    move-object v3, v6

    :goto_7
    if-eqz v3, :cond_15

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v10, v5, :cond_14

    move v9, v10

    :cond_14
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/org/apache/xml/internal/utils/XMLCharacterRecognizer;->isWhiteSpace(Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    invoke-direct {v0, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object/from16 v16, v5

    move-object v5, v3

    move-object/from16 v3, v16

    goto :goto_7

    :cond_15
    move-object v3, v5

    move v5, v9

    :goto_8
    if-nez v1, :cond_1b

    iget v1, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    iget v9, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    invoke-virtual {v0, v6, v1, v9, v5}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->addNode(Lorg/w3c/dom/Node;III)I

    move-result v1

    iput v1, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    if-ne v11, v5, :cond_1b

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    if-nez v9, :cond_16

    move v12, v2

    goto :goto_9

    :cond_16
    invoke-interface {v9}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v12

    :goto_9
    move v13, v4

    if-lez v12, :cond_18

    :goto_a
    if-ge v2, v12, :cond_18

    invoke-interface {v9, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-virtual {v0, v14, v1, v13, v4}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->addNode(Lorg/w3c/dom/Node;III)I

    move-result v13

    iget-object v14, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_firstch:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v14, v4, v13}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    iget-boolean v14, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_processedFirstElement:Z

    if-nez v14, :cond_17

    invoke-interface {v9, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "xmlns:xml"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    iput-boolean v11, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_processedFirstElement:Z

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_18
    iget-boolean v2, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_processedFirstElement:Z

    if-nez v2, :cond_1a

    new-instance v2, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;

    move-object v9, v6

    check-cast v9, Lorg/w3c/dom/Element;

    if-ne v13, v4, :cond_19

    move v12, v1

    goto :goto_b

    :cond_19
    move v12, v13

    :goto_b
    add-int/2addr v12, v11

    invoke-virtual {v0, v12}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v12

    const-string v14, "http://www.w3.org/XML/1998/namespace"

    invoke-direct {v2, v9, v7, v14, v12}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v1, v13, v4}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->addNode(Lorg/w3c/dom/Node;III)I

    move-result v13

    iget-object v1, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_firstch:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v1, v4, v13}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    iput-boolean v11, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_processedFirstElement:Z

    :cond_1a
    if-eq v13, v4, :cond_1b

    iget-object v1, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_nextsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v1, v4, v13}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    :cond_1b
    if-eq v10, v5, :cond_1c

    if-ne v8, v5, :cond_1d

    :cond_1c
    move-object v6, v3

    :cond_1d
    iput-object v6, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->m_pos:Lorg/w3c/dom/Node;

    return v11
.end method

.method public setIncrementalSAXSource(Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;)V
    .locals 0

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
