.class public Lcom/sun/org/apache/xalan/internal/templates/ElemApplyTemplates;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x2849f924dd38cb4cL


# instance fields
.field private m_isDefaultTemplate:Z

.field private m_mode:Lcom/sun/org/apache/xml/internal/utils/QName;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemApplyTemplates;->m_mode:Lcom/sun/org/apache/xml/internal/utils/QName;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemApplyTemplates;->m_isDefaultTemplate:Z

    return-void
.end method


# virtual methods
.method public compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    return-void
.end method

.method public execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->pushCurrentTemplateRuleIsNull(Z)V

    :try_start_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getMode()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemApplyTemplates;->m_isDefaultTemplate:Z

    if-nez v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemApplyTemplates;->m_mode:Lcom/sun/org/apache/xml/internal/utils/QName;

    if-nez v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemApplyTemplates;->m_mode:Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemApplyTemplates;->m_mode:Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->pushMode(Lcom/sun/org/apache/xml/internal/utils/QName;)V

    :cond_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemApplyTemplates;->transformSelectedNodes(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->popMode()V

    :cond_5
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->popCurrentTemplateRuleIsNull()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->popMode()V

    :cond_7
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->popCurrentTemplateRuleIsNull()V

    throw v1
.end method

.method public getMode()Lcom/sun/org/apache/xml/internal/utils/QName;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemApplyTemplates;->m_mode:Lcom/sun/org/apache/xml/internal/utils/QName;

    return-object p0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "apply-templates"

    return-object p0
.end method

.method public getXSLToken()I
    .locals 0

    const/16 p0, 0x32

    return p0
.end method

.method public setIsDefaultTemplate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemApplyTemplates;->m_isDefaultTemplate:Z

    return-void
.end method

.method public setMode(Lcom/sun/org/apache/xml/internal/utils/QName;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemApplyTemplates;->m_mode:Lcom/sun/org/apache/xml/internal/utils/QName;

    return-void
.end method

.method public transformSelectedNodes(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v14

    iget-object v0, v7, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {v0, v15, v14}, Lcom/sun/org/apache/xpath/internal/Expression;->asIterator(Lcom/sun/org/apache/xpath/internal/XPathContext;I)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v1

    invoke-virtual {v15}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getVarStack()Lcom/sun/org/apache/xpath/internal/VariableStack;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->getParamElemCount()I

    move-result v12

    invoke-virtual {v13}, Lcom/sun/org/apache/xpath/internal/VariableStack;->getStackFrame()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getStackGuard()Lcom/sun/org/apache/xalan/internal/transformer/StackGuard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/transformer/StackGuard;->getRecursionLimit()I

    move-result v2

    const/4 v6, -0x1

    if-le v2, v6, :cond_0

    const/16 v17, 0x1

    goto :goto_0

    :cond_0
    const/16 v17, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v15, v6}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNode(I)V

    invoke-virtual {v15, v6}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentExpressionNode(I)V

    invoke-virtual {v15}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushSAXLocatorNull()V

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->pushElemTemplateElement(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    iget-object v2, v7, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    if-nez v2, :cond_1

    move-object v2, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v8, v7, v14}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->processSortKeys(Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;I)Ljava/util/Vector;

    move-result-object v2
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_11
    .catchall {:try_start_0 .. :try_end_0} :catchall_12

    :goto_1
    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v7, v15, v2, v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->sortNodes(Lcom/sun/org/apache/xpath/internal/XPathContext;Ljava/util/Vector;Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v1
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v9, v1

    :goto_2
    move v10, v11

    move v11, v12

    move/from16 v18, v14

    :goto_3
    const/16 v27, 0x0

    :goto_4
    move-object/from16 v31, v15

    move-object v15, v13

    move-object/from16 v13, v31

    goto/16 :goto_2f

    :catch_0
    move-exception v0

    move-object v9, v1

    :goto_5
    move v10, v11

    move v11, v12

    move/from16 v18, v14

    :goto_6
    const/16 v27, 0x0

    :goto_7
    move-object/from16 v31, v15

    move-object v15, v13

    move-object/from16 v13, v31

    goto/16 :goto_2d

    :cond_2
    :goto_8
    move-object v4, v1

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v1
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_11

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v1

    const-string v16, "select"

    new-instance v3, Lcom/sun/org/apache/xpath/internal/XPath;

    iget-object v2, v7, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-direct {v3, v2}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Lcom/sun/org/apache/xpath/internal/Expression;)V

    new-instance v2, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-direct {v2, v4}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v18, v2

    move v2, v14

    move-object/from16 v19, v3

    move-object/from16 v3, p0

    move-object v10, v4

    move-object/from16 v4, v16

    move-object/from16 v5, v19

    move-object/from16 v19, v0

    move v0, v6

    move-object/from16 v6, v18

    :try_start_4
    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireSelectedEvent(ILcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Ljava/lang/String;Lcom/sun/org/apache/xpath/internal/XPath;Lcom/sun/org/apache/xpath/internal/objects/XObject;)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_b

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v10, v4

    :goto_9
    move-object v9, v10

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v10, v4

    :goto_a
    move-object v9, v10

    goto :goto_5

    :cond_3
    move-object/from16 v19, v0

    move-object v10, v4

    move v0, v6

    :goto_b
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getSerializationHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getTemplateListComposed()Lcom/sun/org/apache/xalan/internal/templates/TemplateList;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getQuietConflictWarnings()Z

    move-result v4

    invoke-virtual {v15, v14}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v5
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_f
    .catchall {:try_start_5 .. :try_end_5} :catchall_10

    if-lez v12, :cond_7

    :try_start_6
    invoke-virtual {v13, v12}, Lcom/sun/org/apache/xpath/internal/VariableStack;->link(I)I

    move-result v6

    invoke-virtual {v13, v11}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setStackFrame(I)V

    const/4 v9, 0x0

    :goto_c
    if-ge v9, v12, :cond_6

    iget-object v0, v7, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->m_paramElems:[Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;

    aget-object v0, v0, v9

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v21
    :try_end_6
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v21, :cond_4

    move-object/from16 v21, v5

    :try_start_7
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_d

    :cond_4
    move-object/from16 v21, v5

    :goto_d
    :try_start_8
    invoke-virtual {v0, v8, v14}, Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;->getValue(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;I)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v22
    :try_end_8
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v22, :cond_5

    move/from16 v22, v11

    :try_start_9
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    goto :goto_e

    :cond_5
    move/from16 v22, v11

    :goto_e
    invoke-virtual {v13, v9, v5, v6}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setLocalVariable(ILcom/sun/org/apache/xpath/internal/objects/XObject;I)V

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v21

    move/from16 v11, v22

    const/4 v0, -0x1

    goto :goto_c

    :cond_6
    move-object/from16 v21, v5

    move/from16 v22, v11

    invoke-virtual {v13, v6}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setStackFrame(I)V
    :try_end_9
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_11

    :catchall_3
    move-exception v0

    goto :goto_f

    :catch_3
    move-exception v0

    goto :goto_10

    :catchall_4
    move-exception v0

    move/from16 v22, v11

    :goto_f
    move-object v9, v10

    move v11, v12

    move/from16 v18, v14

    move/from16 v10, v22

    goto/16 :goto_3

    :catch_4
    move-exception v0

    move/from16 v22, v11

    :goto_10
    move-object v9, v10

    move v11, v12

    move/from16 v18, v14

    move/from16 v10, v22

    goto/16 :goto_6

    :cond_7
    move-object/from16 v21, v5

    move/from16 v22, v11

    const/4 v6, -0x1

    :goto_11
    :try_start_a
    invoke-virtual {v15, v10}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushContextNodeList(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V
    :try_end_a
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_a} :catch_e
    .catchall {:try_start_a .. :try_end_a} :catchall_f

    :try_start_b
    invoke-virtual {v15}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNodeStack()Lcom/sun/org/apache/xml/internal/utils/IntStack;

    move-result-object v0

    invoke-virtual {v15}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentExpressionNodeStack()Lcom/sun/org/apache/xml/internal/utils/IntStack;

    move-result-object v5

    move-object/from16 v9, v21

    :goto_12
    invoke-interface {v10}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result v11
    :try_end_b
    .catch Lorg/xml/sax/SAXException; {:try_start_b .. :try_end_b} :catch_d
    .catchall {:try_start_b .. :try_end_b} :catchall_e

    move/from16 v21, v14

    const/4 v14, -0x1

    if-eq v14, v11, :cond_17

    :try_start_c
    invoke-virtual {v0, v11}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->setTop(I)V

    invoke-virtual {v5, v11}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->setTop(I)V

    invoke-virtual {v15, v11}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v14
    :try_end_c
    .catch Lorg/xml/sax/SAXException; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_d

    if-eq v14, v9, :cond_8

    :try_start_d
    invoke-virtual {v15, v11}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v9
    :try_end_d
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_13

    :catchall_5
    move-exception v0

    move-object v9, v10

    move v11, v12

    move/from16 v18, v21

    move/from16 v10, v22

    const/16 v27, 0x1

    goto/16 :goto_4

    :catch_5
    move-exception v0

    move-object v9, v10

    move v11, v12

    move/from16 v18, v21

    move/from16 v10, v22

    const/16 v27, 0x1

    goto/16 :goto_7

    :cond_8
    :goto_13
    move-object v14, v9

    :try_start_e
    invoke-interface {v14, v11}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getExpandedTypeID(I)I

    move-result v23

    invoke-interface {v14, v11}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeType(I)S

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getMode()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v24
    :try_end_e
    .catch Lorg/xml/sax/SAXException; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_d

    const/16 v25, -0x1

    move/from16 v26, v9

    move-object v9, v3

    move-object/from16 v28, v10

    move-object v10, v15

    move/from16 v20, v11

    move/from16 v29, v22

    move/from16 v30, v12

    move/from16 v12, v23

    move-object/from16 v22, v13

    move-object/from16 v13, v24

    move/from16 v18, v21

    const/16 v23, -0x1

    move-object/from16 v21, v14

    move/from16 v14, v25

    move-object/from16 v24, v15

    move v15, v4

    move-object/from16 v16, v21

    :try_start_f
    invoke-virtual/range {v9 .. v16}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->getTemplateFast(Lcom/sun/org/apache/xpath/internal/XPathContext;IILcom/sun/org/apache/xml/internal/utils/QName;IZLcom/sun/org/apache/xml/internal/dtm/DTM;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object v9
    :try_end_f
    .catch Lorg/xml/sax/SAXException; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    if-nez v9, :cond_c

    move/from16 v9, v26

    const/4 v10, 0x1

    if-eq v9, v10, :cond_9

    const/4 v11, 0x2

    if-eq v9, v11, :cond_b

    const/4 v11, 0x3

    if-eq v9, v11, :cond_b

    const/4 v11, 0x4

    if-eq v9, v11, :cond_b

    const/16 v11, 0x9

    if-eq v9, v11, :cond_a

    const/16 v11, 0xb

    if-eq v9, v11, :cond_9

    move-object/from16 v12, v21

    move-object/from16 v15, v22

    move-object/from16 v13, v24

    move/from16 v11, v30

    move-object/from16 v21, v0

    move-object/from16 v22, v1

    const/4 v0, 0x0

    goto/16 :goto_20

    :cond_9
    move/from16 v11, v20

    move-object/from16 v12, v21

    const/4 v13, 0x0

    goto :goto_14

    :cond_a
    :try_start_10
    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getDefaultRootRule()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object v9

    move/from16 v11, v20

    move-object/from16 v12, v21

    const/4 v13, 0x0

    goto :goto_15

    :cond_b
    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getDefaultTextRule()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object v9

    move/from16 v11, v20

    invoke-virtual {v8, v9, v11}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->pushPairCurrentMatched(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;I)V

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getDefaultTextRule()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->setCurrentElement(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    move-object/from16 v12, v21

    const/4 v13, 0x0

    invoke-interface {v12, v11, v1, v13}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->popCurrentMatched()V

    move-object/from16 v21, v0

    move-object/from16 v15, v22

    move-object/from16 v13, v24

    move/from16 v11, v30

    const/4 v0, 0x0

    move-object/from16 v22, v1

    goto/16 :goto_20

    :goto_14
    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getDefaultRule()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object v9
    :try_end_10
    .catch Lorg/xml/sax/SAXException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    goto :goto_15

    :catchall_6
    move-exception v0

    move/from16 v27, v10

    move-object/from16 v15, v22

    move-object/from16 v13, v24

    move-object/from16 v9, v28

    move/from16 v10, v29

    move/from16 v11, v30

    goto/16 :goto_2f

    :catch_6
    move-exception v0

    move/from16 v27, v10

    move-object/from16 v15, v22

    move-object/from16 v13, v24

    move-object/from16 v9, v28

    move/from16 v10, v29

    move/from16 v11, v30

    goto/16 :goto_2d

    :cond_c
    move/from16 v11, v20

    move-object/from16 v12, v21

    const/4 v10, 0x1

    const/4 v13, 0x0

    :try_start_11
    invoke-virtual {v8, v9}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->setCurrentElement(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :goto_15
    invoke-virtual {v8, v9, v11}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->pushPairCurrentMatched(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;I)V
    :try_end_11
    .catch Lorg/xml/sax/SAXException; {:try_start_11 .. :try_end_11} :catch_b
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    if-eqz v17, :cond_d

    :try_start_12
    invoke-virtual/range {v19 .. v19}, Lcom/sun/org/apache/xalan/internal/transformer/StackGuard;->checkForInfinateLoop()V
    :try_end_12
    .catch Lorg/xml/sax/SAXException; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :cond_d
    :try_start_13
    iget v11, v9, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_frameSize:I
    :try_end_13
    .catch Lorg/xml/sax/SAXException; {:try_start_13 .. :try_end_13} :catch_b
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    if-lez v11, :cond_12

    :try_start_14
    invoke-virtual/range {v24 .. v24}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushRTFContext()V

    invoke-virtual/range {v22 .. v22}, Lcom/sun/org/apache/xpath/internal/VariableStack;->getStackFrame()I

    move-result v11

    iget v14, v9, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_frameSize:I
    :try_end_14
    .catch Lorg/xml/sax/SAXException; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    move-object/from16 v15, v22

    :try_start_15
    invoke-virtual {v15, v14}, Lcom/sun/org/apache/xpath/internal/VariableStack;->link(I)I

    iget v14, v9, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_inArgsSize:I

    if-lez v14, :cond_11

    invoke-virtual {v9}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getFirstChildElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v14

    move-object/from16 v16, v14

    move v14, v13

    :goto_16
    if-eqz v16, :cond_11

    invoke-virtual/range {v16 .. v16}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getXSLToken()I

    move-result v10

    const/16 v13, 0x29

    if-ne v13, v10, :cond_11

    move-object/from16 v10, v16

    check-cast v10, Lcom/sun/org/apache/xalan/internal/templates/ElemParam;
    :try_end_15
    .catch Lorg/xml/sax/SAXException; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    move/from16 v20, v11

    move/from16 v11, v30

    const/4 v13, 0x0

    :goto_17
    if-ge v13, v11, :cond_f

    move-object/from16 v21, v0

    :try_start_16
    iget-object v0, v7, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;->m_paramElems:[Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;

    aget-object v0, v0, v13

    iget v0, v0, Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;->m_qnameID:I

    move-object/from16 v22, v1

    iget v1, v10, Lcom/sun/org/apache/xalan/internal/templates/ElemParam;->m_qnameID:I

    if-ne v0, v1, :cond_e

    invoke-virtual {v15, v13, v6}, Lcom/sun/org/apache/xpath/internal/VariableStack;->getLocalVariable(II)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v0

    invoke-virtual {v15, v14, v0}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setLocalVariable(ILcom/sun/org/apache/xpath/internal/objects/XObject;)V

    goto :goto_18

    :cond_e
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    goto :goto_17

    :cond_f
    move-object/from16 v21, v0

    move-object/from16 v22, v1

    :goto_18
    if-ne v13, v11, :cond_10

    const/4 v0, 0x0

    invoke-virtual {v15, v14, v0}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setLocalVariable(ILcom/sun/org/apache/xpath/internal/objects/XObject;)V

    goto :goto_19

    :cond_10
    const/4 v0, 0x0

    :goto_19
    add-int/lit8 v14, v14, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNextSiblingElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v16

    move/from16 v30, v11

    move/from16 v11, v20

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    const/4 v10, 0x1

    const/4 v13, 0x0

    goto :goto_16

    :cond_11
    move-object/from16 v21, v0

    move-object/from16 v22, v1

    move/from16 v20, v11

    move/from16 v11, v30

    const/4 v0, 0x0

    move/from16 v1, v20

    goto :goto_1e

    :catchall_7
    move-exception v0

    goto :goto_1a

    :catch_7
    move-exception v0

    goto :goto_1c

    :catchall_8
    move-exception v0

    move-object/from16 v15, v22

    :goto_1a
    move/from16 v11, v30

    :goto_1b
    move-object/from16 v13, v24

    goto/16 :goto_21

    :catch_8
    move-exception v0

    move-object/from16 v15, v22

    :goto_1c
    move/from16 v11, v30

    :goto_1d
    move-object/from16 v13, v24

    goto/16 :goto_22

    :cond_12
    move-object/from16 v21, v0

    move-object/from16 v15, v22

    move/from16 v11, v30

    const/4 v0, 0x0

    move-object/from16 v22, v1

    const/4 v1, 0x0

    :goto_1e
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_13
    iget-object v10, v9, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_firstChild:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
    :try_end_16
    .catch Lorg/xml/sax/SAXException; {:try_start_16 .. :try_end_16} :catch_a
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    :goto_1f
    if-eqz v10, :cond_14

    move-object/from16 v13, v24

    :try_start_17
    invoke-virtual {v13, v10}, Lcom/sun/org/apache/xpath/internal/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V
    :try_end_17
    .catch Lorg/xml/sax/SAXException; {:try_start_17 .. :try_end_17} :catch_9
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    :try_start_18
    invoke-virtual {v8, v10}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->pushElemTemplateElement(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    invoke-virtual {v10, v8}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    :try_start_19
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->popElemTemplateElement()V

    iget-object v10, v10, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_nextSibling:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-object/from16 v24, v13

    goto :goto_1f

    :catchall_9
    move-exception v0

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->popElemTemplateElement()V

    throw v0

    :cond_14
    move-object/from16 v13, v24

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_15
    iget v9, v9, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_frameSize:I

    if-lez v9, :cond_16

    invoke-virtual {v15, v1}, Lcom/sun/org/apache/xpath/internal/VariableStack;->unlink(I)V

    invoke-virtual {v13}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popRTFContext()V

    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->popCurrentMatched()V
    :try_end_19
    .catch Lorg/xml/sax/SAXException; {:try_start_19 .. :try_end_19} :catch_9
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    :goto_20
    move-object v9, v12

    move/from16 v14, v18

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v10, v28

    move/from16 v22, v29

    move v12, v11

    move-object/from16 v31, v15

    move-object v15, v13

    move-object/from16 v13, v31

    goto/16 :goto_12

    :catchall_a
    move-exception v0

    goto :goto_21

    :catch_9
    move-exception v0

    goto :goto_22

    :catchall_b
    move-exception v0

    goto :goto_1b

    :catch_a
    move-exception v0

    goto :goto_1d

    :catchall_c
    move-exception v0

    move-object/from16 v15, v22

    move-object/from16 v13, v24

    move/from16 v11, v30

    goto :goto_21

    :catch_b
    move-exception v0

    move-object/from16 v15, v22

    move-object/from16 v13, v24

    move/from16 v11, v30

    goto :goto_22

    :catchall_d
    move-exception v0

    move-object/from16 v28, v10

    move v11, v12

    move/from16 v18, v21

    move/from16 v29, v22

    move-object/from16 v31, v15

    move-object v15, v13

    move-object/from16 v13, v31

    :goto_21
    move-object/from16 v9, v28

    move/from16 v10, v29

    goto/16 :goto_25

    :catch_c
    move-exception v0

    move-object/from16 v28, v10

    move v11, v12

    move/from16 v18, v21

    move/from16 v29, v22

    move-object/from16 v31, v15

    move-object v15, v13

    move-object/from16 v13, v31

    :goto_22
    move-object/from16 v9, v28

    move/from16 v10, v29

    goto/16 :goto_26

    :cond_17
    move-object/from16 v28, v10

    move v11, v12

    move/from16 v18, v21

    move/from16 v29, v22

    move-object/from16 v31, v15

    move-object v15, v13

    move-object/from16 v13, v31

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v1

    const-string v4, "select"

    new-instance v5, Lcom/sun/org/apache/xpath/internal/XPath;

    iget-object v0, v7, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-direct {v5, v0}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Lcom/sun/org/apache/xpath/internal/Expression;)V

    new-instance v6, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    move-object/from16 v9, v28

    invoke-direct {v6, v9}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    move/from16 v2, v18

    move-object/from16 v3, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireSelectedEndEvent(ILcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Ljava/lang/String;Lcom/sun/org/apache/xpath/internal/XPath;Lcom/sun/org/apache/xpath/internal/objects/XObject;)V

    goto :goto_23

    :cond_18
    move-object/from16 v9, v28

    :goto_23
    if-lez v11, :cond_19

    move/from16 v10, v29

    invoke-virtual {v15, v10}, Lcom/sun/org/apache/xpath/internal/VariableStack;->unlink(I)V

    :cond_19
    invoke-virtual {v13}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popSAXLocator()V

    :goto_24
    invoke-virtual {v13}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popContextNodeList()V

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->popElemTemplateElement()V

    invoke-virtual {v13}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentExpressionNode()V

    invoke-virtual {v13}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    invoke-interface {v9}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->detach()V

    goto/16 :goto_2e

    :catchall_e
    move-exception v0

    move-object v9, v10

    move v11, v12

    move/from16 v18, v14

    move/from16 v10, v22

    move-object/from16 v31, v15

    move-object v15, v13

    move-object/from16 v13, v31

    :goto_25
    const/16 v27, 0x1

    goto/16 :goto_2f

    :catch_d
    move-exception v0

    move-object v9, v10

    move v11, v12

    move/from16 v18, v14

    move/from16 v10, v22

    move-object/from16 v31, v15

    move-object v15, v13

    move-object/from16 v13, v31

    :goto_26
    const/16 v27, 0x1

    goto/16 :goto_2d

    :catchall_f
    move-exception v0

    move-object v9, v10

    move v11, v12

    move/from16 v18, v14

    move/from16 v10, v22

    goto :goto_28

    :catch_e
    move-exception v0

    move-object v9, v10

    move v11, v12

    move/from16 v18, v14

    move/from16 v10, v22

    goto :goto_2a

    :catchall_10
    move-exception v0

    move-object v9, v10

    goto :goto_27

    :catch_f
    move-exception v0

    move-object v9, v10

    goto :goto_29

    :catchall_11
    move-exception v0

    move-object v9, v4

    :goto_27
    move v10, v11

    move v11, v12

    move/from16 v18, v14

    :goto_28
    move-object/from16 v31, v15

    move-object v15, v13

    move-object/from16 v13, v31

    goto :goto_2b

    :catch_10
    move-exception v0

    move-object v9, v4

    :goto_29
    move v10, v11

    move v11, v12

    move/from16 v18, v14

    :goto_2a
    move-object/from16 v31, v15

    move-object v15, v13

    move-object/from16 v13, v31

    goto :goto_2c

    :catchall_12
    move-exception v0

    move v10, v11

    move v11, v12

    move/from16 v18, v14

    move-object/from16 v31, v15

    move-object v15, v13

    move-object/from16 v13, v31

    move-object v9, v1

    :goto_2b
    const/16 v27, 0x0

    goto :goto_2f

    :catch_11
    move-exception v0

    move v10, v11

    move v11, v12

    move/from16 v18, v14

    move-object/from16 v31, v15

    move-object v15, v13

    move-object/from16 v13, v31

    move-object v9, v1

    :goto_2c
    const/16 v27, 0x0

    :goto_2d
    :try_start_1a
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_13

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v1

    const-string v4, "select"

    new-instance v5, Lcom/sun/org/apache/xpath/internal/XPath;

    iget-object v0, v7, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-direct {v5, v0}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Lcom/sun/org/apache/xpath/internal/Expression;)V

    new-instance v6, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-direct {v6, v9}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    move/from16 v2, v18

    move-object/from16 v3, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireSelectedEndEvent(ILcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Ljava/lang/String;Lcom/sun/org/apache/xpath/internal/XPath;Lcom/sun/org/apache/xpath/internal/objects/XObject;)V

    :cond_1b
    if-lez v11, :cond_1c

    invoke-virtual {v15, v10}, Lcom/sun/org/apache/xpath/internal/VariableStack;->unlink(I)V

    :cond_1c
    invoke-virtual {v13}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popSAXLocator()V

    if-eqz v27, :cond_1a

    goto/16 :goto_24

    :goto_2e
    return-void

    :catchall_13
    move-exception v0

    :goto_2f
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v1

    const-string v4, "select"

    new-instance v5, Lcom/sun/org/apache/xpath/internal/XPath;

    iget-object v2, v7, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-direct {v5, v2}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Lcom/sun/org/apache/xpath/internal/Expression;)V

    new-instance v6, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-direct {v6, v9}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    move/from16 v2, v18

    move-object/from16 v3, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireSelectedEndEvent(ILcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Ljava/lang/String;Lcom/sun/org/apache/xpath/internal/XPath;Lcom/sun/org/apache/xpath/internal/objects/XObject;)V

    :cond_1d
    if-lez v11, :cond_1e

    invoke-virtual {v15, v10}, Lcom/sun/org/apache/xpath/internal/VariableStack;->unlink(I)V

    :cond_1e
    invoke-virtual {v13}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popSAXLocator()V

    if-eqz v27, :cond_1f

    invoke-virtual {v13}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popContextNodeList()V

    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->popElemTemplateElement()V

    invoke-virtual {v13}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentExpressionNode()V

    invoke-virtual {v13}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    invoke-interface {v9}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->detach()V

    throw v0
.end method
