.class public Lcom/sun/org/apache/xalan/internal/transformer/StackGuard;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private m_recursionLimit:I

.field m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/StackGuard;->m_recursionLimit:I

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/StackGuard;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    return-void
.end method

.method private getNextMatchOrNamedTemplate(I)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;
    .locals 3

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/StackGuard;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getCurrentTemplateElements()Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    move-result-object p0

    :goto_0
    if-ltz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getXSLToken()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    return-object v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public checkForInfinateLoop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/StackGuard;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getCurrentTemplateElementsCount()I

    move-result v0

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/StackGuard;->m_recursionLimit:I

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    if-gtz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/StackGuard;->m_recursionLimit:I

    if-lt v0, v2, :cond_6

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/transformer/StackGuard;->getNextMatchOrNamedTemplate(I)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/sun/org/apache/xalan/internal/transformer/StackGuard;->countLikeTemplates(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;I)I

    move-result v3

    iget v4, p0, Lcom/sun/org/apache/xalan/internal/transformer/StackGuard;->m_recursionLimit:I

    if-lt v3, v4, :cond_5

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string p0, "nameIs"

    goto :goto_1

    :cond_3
    const-string p0, "matchPatternIs"

    :goto_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x0

    aput-object v4, v0, v3

    aput-object p0, v0, v1

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/QName;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->getMatch()Lcom/sun/org/apache/xpath/internal/XPath;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPath;->getPatternString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string p0, "recursionTooDeep"

    invoke-static {p0, v0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-direct {v0, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method public countLikeTemplates(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;I)I
    .locals 2

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/StackGuard;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getCurrentTemplateElements()Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    move-result-object p0

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_0
    if-ltz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    if-ne v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getRecursionLimit()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/StackGuard;->m_recursionLimit:I

    return p0
.end method

.method public setRecursionLimit(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/StackGuard;->m_recursionLimit:I

    return-void
.end method
