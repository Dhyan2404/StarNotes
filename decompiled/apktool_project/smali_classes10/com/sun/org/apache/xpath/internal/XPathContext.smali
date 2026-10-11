.class public Lcom/sun/org/apache/xpath/internal/XPathContext;
.super Lcom/sun/org/apache/xml/internal/dtm/DTMManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;
    }
.end annotation


# static fields
.field public static final RECURSIONLIMIT:I = 0x1000


# instance fields
.field expressionContext:Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;

.field private m_DTMXRTreeFrags:Ljava/util/HashMap;

.field private m_axesIteratorStack:Ljava/util/Stack;

.field private m_contextNodeLists:Ljava/util/Stack;

.field private m_currentExpressionNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

.field private m_currentNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

.field private m_defaultErrorListener:Ljavax/xml/transform/ErrorListener;

.field protected m_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

.field private m_errorListener:Ljavax/xml/transform/ErrorListener;

.field private m_global_rtfdtm:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;

.field private m_isSecureProcessing:Z

.field private m_iteratorRoots:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

.field m_last_pushed_rtfdtm:Lcom/sun/org/apache/xml/internal/utils/IntStack;

.field private m_owner:Ljava/lang/Object;

.field private m_ownerGetErrorListener:Ljava/lang/reflect/Method;

.field private m_predicatePos:Lcom/sun/org/apache/xml/internal/utils/IntStack;

.field private m_predicateRoots:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

.field private m_prefixResolvers:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

.field public m_primaryReader:Lorg/xml/sax/XMLReader;

.field private m_rtfdtm_stack:Ljava/util/Vector;

.field m_saxLocations:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

.field private m_sourceTreeManager:Lcom/sun/org/apache/xpath/internal/SourceTreeManager;

.field private m_uriResolver:Ljavax/xml/transform/URIResolver;

.field private m_variableStacks:Lcom/sun/org/apache/xpath/internal/VariableStack;

.field private m_which_rtfdtm:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;-><init>()V

    .line 2
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/utils/IntStack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_last_pushed_rtfdtm:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_which_rtfdtm:I

    .line 5
    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_global_rtfdtm:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;

    .line 6
    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    const/4 v2, 0x0

    .line 7
    iput-boolean v2, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_isSecureProcessing:Z

    .line 8
    invoke-static {}, Lcom/sun/org/apache/xpath/internal/objects/XMLStringFactoryImpl;->getFactory()Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->newInstance(Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;)Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    .line 9
    new-instance v2, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    const/16 v3, 0x1000

    invoke-direct {v2, v3}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;-><init>(I)V

    iput-object v2, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_saxLocations:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    .line 10
    new-instance v2, Lcom/sun/org/apache/xpath/internal/VariableStack;

    invoke-direct {v2}, Lcom/sun/org/apache/xpath/internal/VariableStack;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_variableStacks:Lcom/sun/org/apache/xpath/internal/VariableStack;

    .line 11
    new-instance v2, Lcom/sun/org/apache/xpath/internal/SourceTreeManager;

    invoke-direct {v2}, Lcom/sun/org/apache/xpath/internal/SourceTreeManager;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_sourceTreeManager:Lcom/sun/org/apache/xpath/internal/SourceTreeManager;

    .line 12
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    .line 13
    new-instance v2, Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-direct {v2, v3}, Lcom/sun/org/apache/xml/internal/utils/IntStack;-><init>(I)V

    iput-object v2, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_currentNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    .line 14
    new-instance v2, Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-direct {v2}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_iteratorRoots:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    .line 15
    new-instance v2, Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-direct {v2}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_predicateRoots:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    .line 16
    new-instance v2, Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-direct {v2, v3}, Lcom/sun/org/apache/xml/internal/utils/IntStack;-><init>(I)V

    iput-object v2, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_currentExpressionNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    .line 17
    new-instance v2, Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-direct {v2}, Lcom/sun/org/apache/xml/internal/utils/IntStack;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_predicatePos:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    .line 18
    new-instance v2, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-direct {v2, v3}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;-><init>(I)V

    iput-object v2, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_prefixResolvers:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    .line 19
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    .line 20
    new-instance v2, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;

    invoke-direct {v2, p0}, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;-><init>(Lcom/sun/org/apache/xpath/internal/XPathContext;)V

    iput-object v2, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->expressionContext:Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;

    .line 21
    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_prefixResolvers:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_currentNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->push(I)I

    .line 23
    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_currentExpressionNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->push(I)I

    .line 24
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_saxLocations:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 5

    .line 25
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;-><init>()V

    .line 26
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/utils/IntStack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_last_pushed_rtfdtm:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    const/4 v1, -0x1

    .line 28
    iput v1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_which_rtfdtm:I

    .line 29
    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_global_rtfdtm:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;

    .line 30
    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    const/4 v2, 0x0

    .line 31
    iput-boolean v2, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_isSecureProcessing:Z

    .line 32
    invoke-static {}, Lcom/sun/org/apache/xpath/internal/objects/XMLStringFactoryImpl;->getFactory()Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->newInstance(Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;)Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    .line 33
    new-instance v3, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    const/16 v4, 0x1000

    invoke-direct {v3, v4}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;-><init>(I)V

    iput-object v3, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_saxLocations:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    .line 34
    new-instance v3, Lcom/sun/org/apache/xpath/internal/VariableStack;

    invoke-direct {v3}, Lcom/sun/org/apache/xpath/internal/VariableStack;-><init>()V

    iput-object v3, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_variableStacks:Lcom/sun/org/apache/xpath/internal/VariableStack;

    .line 35
    new-instance v3, Lcom/sun/org/apache/xpath/internal/SourceTreeManager;

    invoke-direct {v3}, Lcom/sun/org/apache/xpath/internal/SourceTreeManager;-><init>()V

    iput-object v3, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_sourceTreeManager:Lcom/sun/org/apache/xpath/internal/SourceTreeManager;

    .line 36
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v3, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    .line 37
    new-instance v3, Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-direct {v3, v4}, Lcom/sun/org/apache/xml/internal/utils/IntStack;-><init>(I)V

    iput-object v3, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_currentNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    .line 38
    new-instance v3, Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-direct {v3}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;-><init>()V

    iput-object v3, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_iteratorRoots:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    .line 39
    new-instance v3, Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-direct {v3}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;-><init>()V

    iput-object v3, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_predicateRoots:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    .line 40
    new-instance v3, Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-direct {v3, v4}, Lcom/sun/org/apache/xml/internal/utils/IntStack;-><init>(I)V

    iput-object v3, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_currentExpressionNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    .line 41
    new-instance v3, Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-direct {v3}, Lcom/sun/org/apache/xml/internal/utils/IntStack;-><init>()V

    iput-object v3, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_predicatePos:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    .line 42
    new-instance v3, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-direct {v3, v4}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;-><init>(I)V

    iput-object v3, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_prefixResolvers:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    .line 43
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v3, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    .line 44
    new-instance v3, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;

    invoke-direct {v3, p0}, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;-><init>(Lcom/sun/org/apache/xpath/internal/XPathContext;)V

    iput-object v3, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->expressionContext:Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;

    .line 45
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_owner:Ljava/lang/Object;

    .line 46
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v3, "getErrorListener"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_ownerGetErrorListener:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :catch_0
    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_prefixResolvers:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_currentNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->push(I)I

    .line 49
    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_currentExpressionNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->push(I)I

    .line 50
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_saxLocations:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$000(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/VariableStack;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_variableStacks:Lcom/sun/org/apache/xpath/internal/VariableStack;

    return-object p0
.end method

.method private assertion(ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Ljavax/xml/transform/TransformerException;

    const-string v1, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    invoke-direct {v0, p2, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {p1, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    :cond_0
    return-void
.end method

.method private final releaseDTMXRTreeFrags()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;->destruct()V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public createDTMIterator(I)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 2

    .line 4
    new-instance v0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIteratorForward;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xpath/internal/axes/OneStepIteratorForward;-><init>(I)V

    .line 5
    invoke-interface {v0, p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    return-object v0
.end method

.method public createDTMIterator(ILcom/sun/org/apache/xml/internal/dtm/DTMFilter;Z)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->createDTMIterator(ILcom/sun/org/apache/xml/internal/dtm/DTMFilter;Z)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    return-object p0
.end method

.method public createDTMIterator(Ljava/lang/Object;I)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->createDTMIterator(Ljava/lang/Object;I)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    return-object p0
.end method

.method public createDTMIterator(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->createDTMIterator(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    return-object p0
.end method

.method public createDocumentFragment()Lcom/sun/org/apache/xml/internal/dtm/DTM;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->createDocumentFragment()Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    return-object p0
.end method

.method public getAxesIteratorStackStacks()Ljava/util/Stack;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    return-object p0
.end method

.method public final getContextNode()I
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result p0

    return p0
.end method

.method public final getContextNodeList()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getContextNodeListsStack()Ljava/util/Stack;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    return-object p0
.end method

.method public final getContextNodes()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getContextNodeList()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->cloneWithReset()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public final getCurrentExpressionNode()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_currentExpressionNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->peek()I

    move-result p0

    return p0
.end method

.method public getCurrentExpressionNodeStack()Lcom/sun/org/apache/xml/internal/utils/IntStack;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_currentExpressionNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    return-object p0
.end method

.method public final getCurrentNode()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_currentNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->peek()I

    move-result p0

    return p0
.end method

.method public getCurrentNodeList()Lcom/sun/org/apache/xpath/internal/axes/SubContextList;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/axes/SubContextList;

    :goto_0
    return-object p0
.end method

.method public getCurrentNodeStack()Lcom/sun/org/apache/xml/internal/utils/IntStack;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_currentNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    return-object p0
.end method

.method public getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    return-object p0
.end method

.method public getDTM(Ljavax/xml/transform/Source;ZLcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;ZZ)Lcom/sun/org/apache/xml/internal/dtm/DTM;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->getDTM(Ljavax/xml/transform/Source;ZLcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;ZZ)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    return-object p0
.end method

.method public getDTMHandleFromNode(Lorg/w3c/dom/Node;)I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result p0

    return p0
.end method

.method public getDTMIdentity(Lcom/sun/org/apache/xml/internal/dtm/DTM;)I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->getDTMIdentity(Lcom/sun/org/apache/xml/internal/dtm/DTM;)I

    move-result p0

    return p0
.end method

.method public getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    return-object p0
.end method

.method public getDTMXRTreeFrag(I)Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;

    return-object p0

    :cond_1
    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;

    invoke-direct {v0, p1, p0}, Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;-><init>(ILcom/sun/org/apache/xpath/internal/XPathContext;)V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_ownerGetErrorListener:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_owner:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/transform/ErrorListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    :cond_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_defaultErrorListener:Ljavax/xml/transform/ErrorListener;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_defaultErrorListener:Ljavax/xml/transform/ErrorListener;

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_defaultErrorListener:Ljavax/xml/transform/ErrorListener;

    :cond_3
    return-object v0
.end method

.method public getExpressionContext()Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->expressionContext:Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;

    return-object p0
.end method

.method public getGlobalRTFDTM()Lcom/sun/org/apache/xml/internal/dtm/DTM;
    .locals 7

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_global_rtfdtm:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->isTreeIncomplete()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->getDTM(Ljavax/xml/transform/Source;ZLcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;ZZ)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_global_rtfdtm:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_global_rtfdtm:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;

    return-object p0
.end method

.method public final getIteratorRoot()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_iteratorRoots:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->peepOrNull()I

    move-result p0

    return p0
.end method

.method public final getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_prefixResolvers:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    return-object p0
.end method

.method public getOwnerObject()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_owner:Ljava/lang/Object;

    return-object p0
.end method

.method public final getPredicatePos()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_predicatePos:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->peek()I

    move-result p0

    return p0
.end method

.method public final getPredicateRoot()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_predicateRoots:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->peepOrNull()I

    move-result p0

    return p0
.end method

.method public final getPrimaryReader()Lorg/xml/sax/XMLReader;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_primaryReader:Lorg/xml/sax/XMLReader;

    return-object p0
.end method

.method public getRTFDTM()Lcom/sun/org/apache/xml/internal/dtm/DTM;
    .locals 7

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->getDTM(Ljavax/xml/transform/Source;ZLcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;ZZ)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_which_rtfdtm:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_which_rtfdtm:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_which_rtfdtm:I

    if-gez v1, :cond_1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_which_rtfdtm:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->isTreeIncomplete()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_which_rtfdtm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_which_rtfdtm:I

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_which_rtfdtm:I

    invoke-virtual {v0, p0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->getDTM(Ljavax/xml/transform/Source;ZLcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;ZZ)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-object v0
.end method

.method public getSAXLocator()Ljavax/xml/transform/SourceLocator;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_saxLocations:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/xml/transform/SourceLocator;

    return-object p0
.end method

.method public final getSourceTreeManager()Lcom/sun/org/apache/xpath/internal/SourceTreeManager;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_sourceTreeManager:Lcom/sun/org/apache/xpath/internal/SourceTreeManager;

    return-object p0
.end method

.method public getSubContextList()Lcom/sun/org/apache/xpath/internal/axes/SubContextList;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/axes/SubContextList;

    :goto_0
    return-object p0
.end method

.method public final getURIResolver()Ljavax/xml/transform/URIResolver;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    return-object p0
.end method

.method public final getVarStack()Lcom/sun/org/apache/xpath/internal/VariableStack;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_variableStacks:Lcom/sun/org/apache/xpath/internal/VariableStack;

    return-object p0
.end method

.method public isSecureProcessing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_isSecureProcessing:Z

    return p0
.end method

.method public final popContextNodeList()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "Warning: popContextNodeList when stack is empty!"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final popCurrentExpressionNode()V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_currentExpressionNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->quickPop(I)V

    return-void
.end method

.method public final popCurrentNode()V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_currentNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->quickPop(I)V

    return-void
.end method

.method public final popCurrentNodeAndExpression()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_currentNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->quickPop(I)V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_currentExpressionNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->quickPop(I)V

    return-void
.end method

.method public final popExpressionState()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_currentNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->quickPop(I)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_currentExpressionNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->quickPop(I)V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_prefixResolvers:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public final popIteratorRoot()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_iteratorRoots:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->popQuick()V

    return-void
.end method

.method public final popNamespaceContext()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_prefixResolvers:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public final popPredicatePos()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_predicatePos:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->pop()I

    return-void
.end method

.method public final popPredicateRoot()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_predicateRoots:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->popQuick()V

    return-void
.end method

.method public popRTFContext()V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_last_pushed_rtfdtm:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->pop()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_which_rtfdtm:I

    if-ne v2, v0, :cond_1

    if-ltz v0, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->popRewindMark()Z

    goto :goto_1

    :cond_1
    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_which_rtfdtm:I

    if-eq v1, v0, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->popRewindMark()Z

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_which_rtfdtm:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_which_rtfdtm:I

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public popSAXLocator()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_saxLocations:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public final popSubContextList()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public final pushContextNodeList(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final pushCurrentExpressionNode(I)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_currentExpressionNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->push(I)I

    return-void
.end method

.method public final pushCurrentNode(I)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_currentNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->push(I)I

    return-void
.end method

.method public final pushCurrentNodeAndExpression(II)V
    .locals 0

    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_currentNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->push(I)I

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_currentExpressionNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->push(I)I

    return-void
.end method

.method public final pushExpressionState(IILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V
    .locals 0

    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_currentNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->push(I)I

    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_currentExpressionNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->push(I)I

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_prefixResolvers:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final pushIteratorRoot(I)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_iteratorRoots:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->push(I)V

    return-void
.end method

.method public final pushNamespaceContext(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_prefixResolvers:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final pushNamespaceContextNull()V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_prefixResolvers:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final pushPredicatePos(I)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_predicatePos:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->push(I)I

    return-void
.end method

.method public final pushPredicateRoot(I)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_predicateRoots:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->push(I)V

    return-void
.end method

.method public pushRTFContext()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_last_pushed_rtfdtm:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_which_rtfdtm:I

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->push(I)I

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getRTFDTM()Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->pushRewindMark()V

    :cond_0
    return-void
.end method

.method public pushSAXLocator(Ljavax/xml/transform/SourceLocator;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_saxLocations:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pushSAXLocatorNull()V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_saxLocations:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final pushSubContextList(Lcom/sun/org/apache/xpath/internal/axes/SubContextList;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public release(Lcom/sun/org/apache/xml/internal/dtm/DTM;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->release(Lcom/sun/org/apache/xml/internal/dtm/DTM;Z)Z

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 5

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->releaseDTMXRTreeFrags()V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-virtual {v2, v3, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->release(Lcom/sun/org/apache/xml/internal/dtm/DTM;Z)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    const/4 v2, -0x1

    iput v2, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_which_rtfdtm:I

    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_global_rtfdtm:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    invoke-virtual {v4, v3, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->release(Lcom/sun/org/apache/xml/internal/dtm/DTM;Z)Z

    :cond_1
    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_global_rtfdtm:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;

    invoke-static {}, Lcom/sun/org/apache/xpath/internal/objects/XMLStringFactoryImpl;->getFactory()Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->newInstance(Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;)Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_saxLocations:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->removeAllElements()V

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_currentExpressionNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/IntVector;->removeAllElements()V

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_currentNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/IntVector;->removeAllElements()V

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_iteratorRoots:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->RemoveAllNoClear()V

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_predicatePos:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/IntVector;->removeAllElements()V

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_predicateRoots:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->RemoveAllNoClear()V

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_prefixResolvers:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->removeAllElements()V

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_prefixResolvers:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_currentNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->push(I)I

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_currentExpressionNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->push(I)I

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_saxLocations:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAxesIteratorStackStacks(Ljava/util/Stack;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    return-void
.end method

.method public setContextNodeListsStack(Ljava/util/Stack;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    return-void
.end method

.method public setCurrentExpressionNodeStack(Lcom/sun/org/apache/xml/internal/utils/IntStack;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_currentExpressionNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    return-void
.end method

.method public setCurrentNodeStack(Lcom/sun/org/apache/xml/internal/utils/IntStack;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_currentNodes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    return-void
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_NULL_ERROR_HANDLER"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setNamespaceContext(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_prefixResolvers:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->setTop(Ljava/lang/Object;)V

    return-void
.end method

.method public setPrimaryReader(Lorg/xml/sax/XMLReader;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_primaryReader:Lorg/xml/sax/XMLReader;

    return-void
.end method

.method public setSAXLocator(Ljavax/xml/transform/SourceLocator;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_saxLocations:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->setTop(Ljava/lang/Object;)V

    return-void
.end method

.method public setSecureProcessing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_isSecureProcessing:Z

    return-void
.end method

.method public setSourceTreeManager(Lcom/sun/org/apache/xpath/internal/SourceTreeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_sourceTreeManager:Lcom/sun/org/apache/xpath/internal/SourceTreeManager;

    return-void
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    return-void
.end method

.method public final setVarStack(Lcom/sun/org/apache/xpath/internal/VariableStack;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_variableStacks:Lcom/sun/org/apache/xpath/internal/VariableStack;

    return-void
.end method
