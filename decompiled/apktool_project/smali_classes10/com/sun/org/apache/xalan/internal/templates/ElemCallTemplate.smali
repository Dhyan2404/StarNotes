.class public Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x4585cc23655c8c7fL


# instance fields
.field protected m_paramElems:[Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;

.field private m_template:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

.field public m_templateName:Lcom/sun/org/apache/xml/internal/utils/QName;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->m_templateName:Lcom/sun/org/apache/xml/internal/utils/QName;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->m_template:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->m_paramElems:[Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;

    return-void
.end method


# virtual methods
.method public appendChild(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->setParamElem(Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->appendChild(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p0

    return-object p0
.end method

.method public callChildVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->callChildVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;Z)V

    return-void
.end method

.method public compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->getParamElemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->getParamElem(I)Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;->compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->m_templateName:Lcom/sun/org/apache/xml/internal/utils/QName;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->m_template:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getStylesheetRoot()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->m_templateName:Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getTemplateComposed(Lcom/sun/org/apache/xml/internal/utils/QName;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->m_template:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->getParamElemCount()I

    move-result p1

    move v0, v1

    :goto_1
    if-ge v0, p1, :cond_4

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->getParamElem(I)Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;

    move-result-object v2

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;->m_index:I

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->m_template:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getFirstChildElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v3

    move v4, v1

    :goto_2
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getXSLToken()I

    move-result v5

    const/16 v6, 0x29

    if-ne v5, v6, :cond_2

    move-object v5, v3

    check-cast v5, Lcom/sun/org/apache/xalan/internal/templates/ElemParam;

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xml/internal/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iput v4, v2, Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;->m_index:I

    :cond_1
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNextSiblingElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v3

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->m_templateName:Lcom/sun/org/apache/xml/internal/utils/QName;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ER_ELEMTEMPLATEELEM_ERR"

    invoke-static {v0, p1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-direct {v0, p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw v0

    :cond_4
    return-void
.end method

.method public endCompose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->getParamElemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->getParamElem(I)Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->endCompose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->endCompose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    return-void
.end method

.method public execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->m_template:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getVarStack()Lcom/sun/org/apache/xpath/internal/VariableStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/VariableStack;->getStackFrame()I

    move-result v2

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->m_template:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    iget v3, v3, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_frameSize:I

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xpath/internal/VariableStack;->link(I)I

    move-result v3

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->m_template:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    iget v4, v4, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_inArgsSize:I

    if-lez v4, :cond_5

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Lcom/sun/org/apache/xpath/internal/VariableStack;->clearLocalSlots(II)V

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->m_paramElems:[Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v4

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setStackFrame(I)V

    iget-object v6, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->m_paramElems:[Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;

    array-length v6, v6

    :goto_0
    if-ge v5, v6, :cond_4

    iget-object v7, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->m_paramElems:[Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;

    aget-object v7, v7, v5

    iget v8, v7, Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;->m_index:I

    if-ltz v8, :cond_3

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_1
    invoke-virtual {v7, p1, v4}, Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;->getValue(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;I)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v8

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_2
    iget v7, v7, Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;->m_index:I

    invoke-virtual {v1, v7, v8, v3}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setLocalVariable(ILcom/sun/org/apache/xpath/internal/objects/XObject;I)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setStackFrame(I)V

    :cond_5
    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v3

    :try_start_0
    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->m_template:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    invoke-virtual {v0, v4}, Lcom/sun/org/apache/xpath/internal/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->m_template:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->pushElemTemplateElement(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->m_template:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    invoke-virtual {v4, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->popElemTemplateElement()V

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xpath/internal/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xpath/internal/VariableStack;->unlink(I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->popElemTemplateElement()V

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xpath/internal/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xpath/internal/VariableStack;->unlink(I)V

    throw p0

    :cond_6
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getMsgMgr()Lcom/sun/org/apache/xalan/internal/transformer/MsgMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->m_templateName:Lcom/sun/org/apache/xml/internal/utils/QName;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ER_TEMPLATE_NOT_FOUND"

    invoke-virtual {v0, p0, v2, v1}, Lcom/sun/org/apache/xalan/internal/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_7
    return-void
.end method

.method public getName()Lcom/sun/org/apache/xml/internal/utils/QName;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->m_templateName:Lcom/sun/org/apache/xml/internal/utils/QName;

    return-object p0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "call-template"

    return-object p0
.end method

.method public getParamElem(I)Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->m_paramElems:[Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getParamElemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->m_paramElems:[Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    array-length p0, p0

    :goto_0
    return p0
.end method

.method public getXSLToken()I
    .locals 0

    const/16 p0, 0x11

    return p0
.end method

.method public setName(Lcom/sun/org/apache/xml/internal/utils/QName;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->m_templateName:Lcom/sun/org/apache/xml/internal/utils/QName;

    return-void
.end method

.method public setParamElem(Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;)V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->m_paramElems:[Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->m_paramElems:[Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;

    aput-object p1, v0, v1

    goto :goto_0

    :cond_0
    array-length v2, v0

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->m_paramElems:[Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;

    aput-object p1, v3, v2

    :goto_0
    return-void
.end method
