.class public Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;
.super Lcom/sun/org/apache/xpath/internal/objects/XObject;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = -0x2c6e343d20cc504fL


# instance fields
.field private m_DTMXRTreeFrag:Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;

.field protected m_allowRelease:Z

.field private m_dtmRoot:I

.field private m_xmlStr:Lcom/sun/org/apache/xml/internal/utils/XMLString;


# direct methods
.method public constructor <init>(ILcom/sun/org/apache/xpath/internal/XPathContext;)V
    .locals 2

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;-><init>(Ljava/lang/Object;)V

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->m_dtmRoot:I

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->m_allowRelease:Z

    .line 10
    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->m_xmlStr:Lcom/sun/org/apache/xml/internal/utils/XMLString;

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->initDTM(ILcom/sun/org/apache/xpath/internal/XPathContext;)V

    return-void
.end method

.method public constructor <init>(ILcom/sun/org/apache/xpath/internal/XPathContext;Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;-><init>(Ljava/lang/Object;)V

    const/4 v1, -0x1

    .line 2
    iput v1, p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->m_dtmRoot:I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->m_allowRelease:Z

    .line 4
    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->m_xmlStr:Lcom/sun/org/apache/xml/internal/utils/XMLString;

    .line 5
    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->initDTM(ILcom/sun/org/apache/xpath/internal/XPathContext;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/Expression;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;-><init>(Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->m_dtmRoot:I

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->m_allowRelease:Z

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->m_xmlStr:Lcom/sun/org/apache/xml/internal/utils/XMLString;

    return-void
.end method

.method private final initDTM(ILcom/sun/org/apache/xpath/internal/XPathContext;)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->m_dtmRoot:I

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMIdentity(Lcom/sun/org/apache/xml/internal/dtm/DTM;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMXRTreeFrag(I)Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;

    :cond_0
    return-void
.end method


# virtual methods
.method public allowDetachToRelease(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->m_allowRelease:Z

    return-void
.end method

.method public appendToFsb(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->xstr()Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/objects/XString;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->appendToFsb(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    return-void
.end method

.method public asNodeIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xpath/internal/axes/RTFIterator;

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->m_dtmRoot:I

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/sun/org/apache/xpath/internal/axes/RTFIterator;-><init>(ILcom/sun/org/apache/xml/internal/dtm/DTMManager;)V

    return-object v0
.end method

.method public bool()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public convertToNodeset()Lorg/w3c/dom/NodeList;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    instance-of v1, v0, Lorg/w3c/dom/NodeList;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/w3c/dom/NodeList;

    return-object v0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeList;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->asNodeIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeList;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    return-object v0
.end method

.method public detach()V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->m_allowRelease:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;->destruct()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public equals(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->equals(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v3, v0, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->bool()Z

    move-result p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->bool()Z

    move-result p1

    if-ne p0, p1, :cond_1

    move v2, v3

    :cond_1
    return v2

    :cond_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v0

    const/4 v4, 0x2

    if-ne v4, v0, :cond_4

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->num()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide p0

    cmpl-double p0, v0, p0

    if-nez p0, :cond_3

    move v2, v3

    :cond_3
    return v2

    :cond_4
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v0

    if-ne v1, v0, :cond_5

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->xstr()Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->xstr()Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->equals(Lcom/sun/org/apache/xml/internal/utils/XMLString;)Z

    move-result p0

    return p0

    :cond_5
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_6

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->xstr()Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->xstr()Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->equals(Lcom/sun/org/apache/xml/internal/utils/XMLString;)Z

    move-result p0

    return p0

    :cond_6
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v1, v0, :cond_7

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->xstr()Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->xstr()Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->equals(Lcom/sun/org/apache/xml/internal/utils/XMLString;)Z

    move-result p0

    return p0

    :cond_7
    invoke-super {p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->equals(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z

    move-result p0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public getType()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 0

    const-string p0, "#RTREEFRAG"

    return-object p0
.end method

.method public num()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->xstr()Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->toDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public object()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;

    new-instance v1, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    iget v2, p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->m_dtmRoot:I

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;-><init>(ILcom/sun/org/apache/xml/internal/dtm/DTMManager;)V

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->object()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public rtf()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->m_dtmRoot:I

    return p0
.end method

.method public str()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;->getDTM()Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->m_dtmRoot:I

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getStringValue(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public xstr()Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->m_xmlStr:Lcom/sun/org/apache/xml/internal/utils/XMLString;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;->getDTM()Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v0

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->m_dtmRoot:I

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getStringValue(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->m_xmlStr:Lcom/sun/org/apache/xml/internal/utils/XMLString;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->m_xmlStr:Lcom/sun/org/apache/xml/internal/utils/XMLString;

    return-object p0
.end method
