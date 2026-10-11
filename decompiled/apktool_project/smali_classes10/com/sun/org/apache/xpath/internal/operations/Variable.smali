.class public Lcom/sun/org/apache/xpath/internal/operations/Variable;
.super Lcom/sun/org/apache/xpath/internal/Expression;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xpath/internal/axes/PathComponent;


# static fields
.field static final PSUEDOVARNAMESPACE:Ljava/lang/String; = "http://xml.apache.org/xalan/psuedovar"

.field static final serialVersionUID:J = -0x3c28ed22ed41f899L


# instance fields
.field private m_fixUpWasCalled:Z

.field protected m_index:I

.field protected m_isGlobal:Z

.field protected m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/Expression;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/operations/Variable;->m_fixUpWasCalled:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/operations/Variable;->m_isGlobal:Z

    return-void
.end method


# virtual methods
.method public callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V
    .locals 0

    invoke-virtual {p2, p1, p0}, Lcom/sun/org/apache/xpath/internal/XPathVisitor;->visitVariableRef(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/operations/Variable;)Z

    return-void
.end method

.method public deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->isSameClass(Lcom/sun/org/apache/xpath/internal/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/operations/Variable;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    check-cast p1, Lcom/sun/org/apache/xpath/internal/operations/Variable;

    iget-object p1, p1, Lcom/sun/org/apache/xpath/internal/operations/Variable;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/operations/Variable;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;Z)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    return-object p0
.end method

.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;Z)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    .line 3
    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/operations/Variable;->m_fixUpWasCalled:Z

    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/operations/Variable;->m_isGlobal:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getVarStack()Lcom/sun/org/apache/xpath/internal/VariableStack;

    move-result-object v0

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/operations/Variable;->m_index:I

    invoke-virtual {v0, p1, v1, p2}, Lcom/sun/org/apache/xpath/internal/VariableStack;->getGlobalVariable(Lcom/sun/org/apache/xpath/internal/XPathContext;IZ)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p2

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getVarStack()Lcom/sun/org/apache/xpath/internal/VariableStack;

    move-result-object v0

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/operations/Variable;->m_index:I

    invoke-virtual {v0, p1, v1, p2}, Lcom/sun/org/apache/xpath/internal/VariableStack;->getLocalVariable(Lcom/sun/org/apache/xpath/internal/XPathContext;IZ)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p2

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getVarStack()Lcom/sun/org/apache/xpath/internal/VariableStack;

    move-result-object p2

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/operations/Variable;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-virtual {p2, p1, v0}, Lcom/sun/org/apache/xpath/internal/VariableStack;->getVariableOrParam(Lcom/sun/org/apache/xpath/internal/XPathContext;Lcom/sun/org/apache/xml/internal/utils/QName;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_2

    .line 8
    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/operations/Variable;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-virtual {p2}, Lcom/sun/org/apache/xml/internal/utils/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "WG_ILLEGAL_VARIABLE_REFERENCE"

    invoke-virtual {p0, p1, v0, p2}, Lcom/sun/org/apache/xpath/internal/Expression;->warn(Lcom/sun/org/apache/xpath/internal/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    new-instance p2, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V

    :cond_2
    return-object p2
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/operations/Variable;->m_fixUpWasCalled:Z

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xml/internal/utils/QName;

    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/operations/Variable;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xml/internal/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-ge v1, p2, :cond_0

    iput-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/operations/Variable;->m_isGlobal:Z

    iput v1, p0, Lcom/sun/org/apache/xpath/internal/operations/Variable;->m_index:I

    goto :goto_1

    :cond_0
    sub-int/2addr v1, p2

    iput v1, p0, Lcom/sun/org/apache/xpath/internal/operations/Variable;->m_index:I

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/operations/Variable;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/QName;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ER_COULD_NOT_FIND_VAR"

    invoke-static {p2, p1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljavax/xml/transform/TransformerException;

    invoke-direct {p2, p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    new-instance p0, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p0
.end method

.method public getAnalysisBits()I
    .locals 0

    const/high16 p0, 0x4000000

    return p0
.end method

.method public getGlobal()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xpath/internal/operations/Variable;->m_isGlobal:Z

    return p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/operations/Variable;->m_index:I

    return p0
.end method

.method public getQName()Lcom/sun/org/apache/xml/internal/utils/QName;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/operations/Variable;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    return-object p0
.end method

.method public isPsuedoVarRef()Z
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/operations/Variable;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "http://xml.apache.org/xalan/psuedovar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/operations/Variable;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isStableNumber()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/operations/Variable;->m_index:I

    return-void
.end method

.method public setIsGlobal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/operations/Variable;->m_isGlobal:Z

    return-void
.end method

.method public setQName(Lcom/sun/org/apache/xml/internal/utils/QName;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/operations/Variable;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    return-void
.end method
