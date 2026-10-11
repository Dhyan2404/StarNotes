.class Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshot;


# instance fields
.field private m_attrSetStack:Ljava/util/Stack;

.field private m_axesIteratorStack:Ljava/util/Stack;

.field private m_contextNodeList:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

.field private m_contextNodeLists:Ljava/util/Stack;

.field private m_countersTable:Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;

.field private m_currentExpressionNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

.field private m_currentMatchNodes:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

.field private m_currentMatchTemplates:Ljava/util/Stack;

.field private m_currentNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

.field private m_currentTemplateElements:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

.field private m_currentTemplateRuleIsNull:Lcom/sun/org/apache/xml/internal/utils/BoolStack;

.field m_nsContextPushed:Z

.field private m_nsSupport:Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

.field private m_variableStacks:Lcom/sun/org/apache/xpath/internal/VariableStack;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getResultTreeHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->getNamespaceMappings()Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;->m_nsSupport:Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getVarStack()Lcom/sun/org/apache/xpath/internal/VariableStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/VariableStack;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xpath/internal/VariableStack;

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;->m_variableStacks:Lcom/sun/org/apache/xpath/internal/VariableStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNodeStack()Lcom/sun/org/apache/xml/internal/utils/IntStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xml/internal/utils/IntStack;

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;->m_currentNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentExpressionNodeStack()Lcom/sun/org/apache/xml/internal/utils/IntStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xml/internal/utils/IntStack;

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;->m_currentExpressionNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getContextNodeListsStack()Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;->m_contextNodeLists:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getContextNodeList()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;->m_contextNodeList:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    :cond_0
    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getAxesIteratorStackStacks()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;->m_axesIteratorStack:Ljava/util/Stack;

    iget-object v0, p1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lcom/sun/org/apache/xml/internal/utils/BoolStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;->m_currentTemplateRuleIsNull:Lcom/sun/org/apache/xml/internal/utils/BoolStack;

    iget-object v0, p1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentTemplateElements:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;->m_currentTemplateElements:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    iget-object v0, p1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    iget-object v0, p1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentMatchedNodes:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;->m_currentMatchNodes:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getCountersTable()Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;->m_countersTable:Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;

    iget-object p1, p1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Stack;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;->m_attrSetStack:Ljava/util/Stack;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method


# virtual methods
.method public apply(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getResultTreeHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;->m_nsSupport:Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setNamespaceMappings(Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;)V

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;->m_variableStacks:Lcom/sun/org/apache/xpath/internal/VariableStack;

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/VariableStack;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xpath/internal/VariableStack;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->setVarStack(Lcom/sun/org/apache/xpath/internal/VariableStack;)V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;->m_currentNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->setCurrentNodeStack(Lcom/sun/org/apache/xml/internal/utils/IntStack;)V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;->m_currentExpressionNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->setCurrentExpressionNodeStack(Lcom/sun/org/apache/xml/internal/utils/IntStack;)V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;->m_contextNodeLists:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->setContextNodeListsStack(Ljava/util/Stack;)V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;->m_contextNodeList:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushContextNodeList(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;->m_axesIteratorStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->setAxesIteratorStackStacks(Ljava/util/Stack;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;->m_currentTemplateRuleIsNull:Lcom/sun/org/apache/xml/internal/utils/BoolStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;

    iput-object v0, p1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lcom/sun/org/apache/xml/internal/utils/BoolStack;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;->m_currentTemplateElements:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    iput-object v0, p1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentTemplateElements:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    iput-object v0, p1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;->m_currentMatchNodes:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    iput-object v0, p1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentMatchedNodes:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;->m_countersTable:Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;

    iput-object v0, p1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_countersTable:Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;->m_attrSetStack:Ljava/util/Stack;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Stack;

    iput-object p0, p1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method
