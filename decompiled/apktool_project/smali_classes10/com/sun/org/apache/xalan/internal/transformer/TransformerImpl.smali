.class public Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;
.super Ljavax/xml/transform/Transformer;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;
.implements Lcom/sun/org/apache/xpath/internal/ExtensionsProvider;
.implements Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;


# instance fields
.field m_attrSetStack:Ljava/util/Stack;

.field m_countersTable:Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;

.field m_currentFuncResult:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

.field m_currentMatchTemplates:Ljava/util/Stack;

.field m_currentMatchedNodes:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

.field m_currentTemplateElements:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

.field m_currentTemplateRuleIsNull:Lcom/sun/org/apache/xml/internal/utils/BoolStack;

.field private m_debug:Z

.field private m_doc:I

.field m_docBuilder:Ljavax/xml/parsers/DocumentBuilder;

.field private m_errorHandler:Ljavax/xml/transform/ErrorListener;

.field private m_exceptionThrown:Ljava/lang/Exception;

.field private m_extensionsTable:Lcom/sun/org/apache/xalan/internal/extensions/ExtensionsTable;

.field private m_hasBeenReset:Z

.field private m_hasTransformThreadErrorCatcher:Z

.field private m_incremental:Z

.field m_inputContentHandler:Lorg/xml/sax/ContentHandler;

.field private m_isTransformDone:Z

.field private m_keyManager:Lcom/sun/org/apache/xalan/internal/transformer/KeyManager;

.field private m_modes:Ljava/util/Stack;

.field private m_msgMgr:Lcom/sun/org/apache/xalan/internal/transformer/MsgMgr;

.field private m_optimizer:Z

.field private m_outputContentHandler:Lorg/xml/sax/ContentHandler;

.field private m_outputFormat:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

.field private m_outputStream:Ljava/io/FileOutputStream;

.field private m_outputTarget:Ljavax/xml/transform/Result;

.field private m_parserEventsOnMain:Z

.field private m_quietConflictWarnings:Z

.field private m_reentryGuard:Ljava/lang/Boolean;

.field private m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

.field private m_shouldReset:Z

.field private m_source_location:Z

.field private m_stackGuard:Lcom/sun/org/apache/xalan/internal/transformer/StackGuard;

.field private m_stringWriterObjectPool:Lcom/sun/org/apache/xml/internal/utils/ObjectPool;

.field private m_stylesheetRoot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

.field private m_textResultHandlerObjectPool:Lcom/sun/org/apache/xml/internal/utils/ObjectPool;

.field private m_textformat:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

.field private m_traceManager:Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

.field private m_transformThread:Ljava/lang/Thread;

.field private m_urlOfSource:Ljava/lang/String;

.field m_userParams:Ljava/util/Vector;

.field private m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

.field private m_xmlSource:Ljavax/xml/transform/Source;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 4

    invoke-direct {p0}, Ljavax/xml/transform/Transformer;-><init>()V

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_parserEventsOnMain:Z

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_urlOfSource:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_outputTarget:Ljavax/xml/transform/Result;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_outputContentHandler:Lorg/xml/sax/ContentHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_docBuilder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v2, Lcom/sun/org/apache/xml/internal/utils/ObjectPool;

    const-class v3, Lcom/sun/org/apache/xml/internal/serializer/ToTextStream;

    invoke-direct {v2, v3}, Lcom/sun/org/apache/xml/internal/utils/ObjectPool;-><init>(Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_textResultHandlerObjectPool:Lcom/sun/org/apache/xml/internal/utils/ObjectPool;

    new-instance v2, Lcom/sun/org/apache/xml/internal/utils/ObjectPool;

    const-class v3, Ljava/io/StringWriter;

    invoke-direct {v2, v3}, Lcom/sun/org/apache/xml/internal/utils/ObjectPool;-><init>(Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_stringWriterObjectPool:Lcom/sun/org/apache/xml/internal/utils/ObjectPool;

    new-instance v2, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    const-string v3, "text"

    invoke-direct {v2, v3}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_textformat:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    new-instance v2, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    const/16 v3, 0x1000

    invoke-direct {v2, v3}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;-><init>(I)V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentTemplateElements:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    new-instance v2, Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-direct {v2}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentMatchedNodes:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_stylesheetRoot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_quietConflictWarnings:Z

    new-instance v2, Lcom/sun/org/apache/xalan/internal/transformer/KeyManager;

    invoke-direct {v2}, Lcom/sun/org/apache/xalan/internal/transformer/KeyManager;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_keyManager:Lcom/sun/org/apache/xalan/internal/transformer/KeyManager;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_countersTable:Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;

    new-instance v2, Lcom/sun/org/apache/xml/internal/utils/BoolStack;

    invoke-direct {v2}, Lcom/sun/org/apache/xml/internal/utils/BoolStack;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lcom/sun/org/apache/xml/internal/utils/BoolStack;

    new-instance v2, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-direct {v2}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentFuncResult:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_optimizer:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_incremental:Z

    iput-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_source_location:Z

    iput-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_debug:Z

    new-instance v3, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;

    invoke-direct {v3, v2}, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;-><init>(Z)V

    iput-object v3, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    new-instance v3, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    invoke-direct {v3, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V

    iput-object v3, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_traceManager:Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_exceptionThrown:Ljava/lang/Exception;

    iput-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_isTransformDone:Z

    iput-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_hasBeenReset:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_shouldReset:Z

    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v3, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_modes:Ljava/util/Stack;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_extensionsTable:Lcom/sun/org/apache/xalan/internal/extensions/ExtensionsTable;

    iput-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getOptimizer()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_optimizer:Z

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getIncremental()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_incremental:Z

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getSource_location()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_source_location:Z

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->setStylesheet(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    new-instance v0, Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;-><init>(Ljava/lang/Object;)V

    iget-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_incremental:Z

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->setIncremental(Z)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_incremental:Z

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->setIncremental(Z)V

    iget-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_source_location:Z

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->setSource_location(Z)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_source_location:Z

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->setSource_location(Z)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->isSecureProcessing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->setSecureProcessing(Z)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->setXPathContext(Lcom/sun/org/apache/xpath/internal/XPathContext;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->setNamespaceContext(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    new-instance p1, Lcom/sun/org/apache/xalan/internal/transformer/StackGuard;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xalan/internal/transformer/StackGuard;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_stackGuard:Lcom/sun/org/apache/xalan/internal/transformer/StackGuard;

    return-void
.end method

.method private fatalError(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    instance-of v0, p1, Lorg/xml/sax/SAXParseException;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    check-cast p1, Lorg/xml/sax/SAXParseException;

    invoke-direct {v2, p1}, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;-><init>(Lorg/xml/sax/SAXParseException;)V

    invoke-direct {v0, v1, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {p0, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-direct {v0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    :goto_0
    return-void
.end method

.method private replaceOrPushUserParam(Lcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xpath/internal/objects/XObject;)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xpath/internal/Arg;

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/Arg;->getQName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xml/internal/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    new-instance v2, Lcom/sun/org/apache/xpath/internal/Arg;

    invoke-direct {v2, p1, p2, v1}, Lcom/sun/org/apache/xpath/internal/Arg;-><init>(Lcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xpath/internal/objects/XObject;Z)V

    invoke-virtual {p0, v2, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    new-instance v0, Lcom/sun/org/apache/xpath/internal/Arg;

    invoke-direct {v0, p1, p2, v1}, Lcom/sun/org/apache/xpath/internal/Arg;-><init>(Lcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xpath/internal/objects/XObject;Z)V

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private resetUserParameters()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xpath/internal/Arg;

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/Arg;->getQName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/utils/QName;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/utils/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/Arg;->getVal()Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->object()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static runTransformThread(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, -0x1

    .line 4
    invoke-static {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/ThreadControllerWrapper;->runThread(Ljava/lang/Runnable;I)Ljava/lang/Thread;

    return-void
.end method

.method private transformToRTF(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Lcom/sun/org/apache/xml/internal/dtm/DTM;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 3
    invoke-interface {p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    .line 5
    new-instance v2, Lcom/sun/org/apache/xml/internal/serializer/ToXMLSAXHandler;

    invoke-direct {v2}, Lcom/sun/org/apache/xml/internal/serializer/ToXMLSAXHandler;-><init>()V

    .line 6
    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 7
    invoke-virtual {v2, p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->setTransformer(Ljavax/xml/transform/Transformer;)V

    .line 8
    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    .line 9
    :try_start_0
    invoke-interface {v2}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 10
    invoke-interface {v2}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->flushPending()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    .line 11
    :try_start_1
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->executeChildTemplates(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Z)V

    .line 12
    invoke-interface {v2}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->flushPending()V

    .line 13
    invoke-interface {p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getDocument()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    invoke-interface {v2}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    return p1

    :catchall_0
    move-exception p1

    .line 16
    :try_start_3
    invoke-interface {v2}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 17
    throw p1
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    :try_start_4
    new-instance p2, Ljavax/xml/transform/TransformerException;

    invoke-direct {p2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 19
    :goto_0
    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    .line 20
    throw p1
.end method


# virtual methods
.method public applyTemplateToNode(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;I)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v10, p3

    iget-object v2, v1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v2, v10}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v11

    invoke-interface {v11, v10}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeType(I)S

    move-result v12

    const/4 v13, 0x1

    if-nez v0, :cond_1

    :cond_0
    const/4 v15, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getXSLToken()I

    move-result v2

    const/16 v3, 0x48

    if-ne v2, v3, :cond_0

    move v15, v13

    :goto_0
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    if-eqz p2, :cond_3

    if-eqz v15, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v0, p2

    move v14, v8

    move v2, v9

    const/4 v3, 0x0

    move v8, v7

    goto/16 :goto_6

    :cond_3
    :goto_1
    const/4 v2, -0x1

    if-eqz v15, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->getStylesheetComposed()Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->getImportCountComposed()I

    move-result v3

    sub-int/2addr v3, v13

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->getStylesheetComposed()Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->getEndImportCountComposed()I

    move-result v4

    move v6, v3

    move/from16 v16, v4

    goto :goto_2

    :cond_4
    move v6, v2

    const/16 v16, 0x0

    :goto_2
    if-eqz v15, :cond_5

    if-ne v6, v2, :cond_5

    const/4 v0, 0x0

    move v14, v8

    move v8, v7

    goto :goto_4

    :cond_5
    iget-object v5, v1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    :try_start_0
    invoke-virtual {v5, v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushNamespaceContext(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getMode()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v0

    if-eqz v15, :cond_6

    iget-object v2, v1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_stylesheetRoot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    iget-boolean v4, v1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_quietConflictWarnings:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v3, v5

    move/from16 v17, v4

    move/from16 v4, p3

    move-object/from16 v18, v5

    move-object v5, v0

    move v0, v7

    move/from16 v7, v16

    move v14, v8

    move/from16 v8, v17

    move-object v9, v11

    :try_start_1
    invoke-virtual/range {v2 .. v9}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getTemplateComposed(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/QName;IIZLcom/sun/org/apache/xml/internal/dtm/DTM;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object v2

    move v8, v0

    goto :goto_3

    :cond_6
    move-object/from16 v18, v5

    move v14, v8

    move v8, v7

    iget-object v2, v1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_stylesheetRoot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    iget-boolean v6, v1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_quietConflictWarnings:Z

    move-object/from16 v3, v18

    move/from16 v4, p3

    move-object v5, v0

    move-object v7, v11

    invoke-virtual/range {v2 .. v7}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getTemplateComposed(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/QName;ZLcom/sun/org/apache/xml/internal/dtm/DTM;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_3
    invoke-virtual/range {v18 .. v18}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popNamespaceContext()V

    move-object v0, v2

    :goto_4
    if-nez v0, :cond_c

    if-eq v12, v13, :cond_a

    if-eq v12, v8, :cond_8

    if-eq v12, v14, :cond_8

    const/4 v2, 0x4

    if-eq v12, v2, :cond_9

    const/16 v0, 0x9

    if-eq v12, v0, :cond_7

    const/16 v0, 0xb

    if-eq v12, v0, :cond_b

    const/4 v0, 0x0

    return v0

    :cond_7
    iget-object v0, v1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_stylesheetRoot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getDefaultRootRule()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object v0

    goto :goto_5

    :cond_8
    const/4 v2, 0x4

    :cond_9
    iget-object v0, v1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_stylesheetRoot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getDefaultTextRule()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object v0

    move v3, v13

    goto :goto_6

    :cond_a
    const/4 v2, 0x4

    :cond_b
    iget-object v0, v1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_stylesheetRoot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getDefaultRule()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object v0

    goto :goto_5

    :cond_c
    const/4 v2, 0x4

    :goto_5
    const/4 v3, 0x0

    :goto_6
    :try_start_2
    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->pushElemTemplateElement(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    iget-object v4, v1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v4, v10}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNode(I)V

    invoke-virtual {v1, v0, v10}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->pushPairCurrentMatched(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;I)V

    if-nez v15, :cond_d

    new-instance v4, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    iget-object v5, v1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v5}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v5

    invoke-direct {v4, v10, v5}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;-><init>(ILcom/sun/org/apache/xml/internal/dtm/DTMManager;)V

    iget-object v5, v1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v5, v4}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushContextNodeList(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    :cond_d
    if-eqz v3, :cond_10

    if-eq v12, v8, :cond_f

    if-eq v12, v14, :cond_e

    if-eq v12, v2, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getResultTreeHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v10, v12, v11, v0, v2}, Lcom/sun/org/apache/xalan/internal/transformer/ClonerToResultTree;->cloneToResultTree(IILcom/sun/org/apache/xml/internal/dtm/DTM;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;Z)V

    goto :goto_7

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getResultTreeHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v11, v10, v0, v2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    goto :goto_7

    :cond_10
    iget-boolean v2, v1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_debug:Z

    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_11
    iget-object v2, v1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    iget-object v2, v1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getVarStack()Lcom/sun/org/apache/xpath/internal/VariableStack;

    move-result-object v2

    iget v4, v0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_frameSize:I

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xpath/internal/VariableStack;->link(I)I

    invoke-virtual {v1, v0, v13}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->executeChildTemplates(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Z)V

    iget-boolean v2, v1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_debug:Z

    if-eqz v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_12
    :goto_7
    if-nez v3, :cond_13

    iget-object v0, v1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getVarStack()Lcom/sun/org/apache/xpath/internal/VariableStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/VariableStack;->unlink()V

    :cond_13
    iget-object v0, v1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    if-nez v15, :cond_14

    iget-object v0, v1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popContextNodeList()V

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->popCurrentMatched()V

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->popElemTemplateElement()V

    return v13

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_8
    if-nez v3, :cond_15

    iget-object v2, v1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getVarStack()Lcom/sun/org/apache/xpath/internal/VariableStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/VariableStack;->unlink()V

    :cond_15
    iget-object v2, v1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    if-nez v15, :cond_16

    iget-object v2, v1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popContextNodeList()V

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->popCurrentMatched()V

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->popElemTemplateElement()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v18, v5

    :goto_9
    invoke-virtual/range {v18 .. v18}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popNamespaceContext()V

    throw v0
.end method

.method public clearParameters()V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/sun/org/apache/xpath/internal/VariableStack;

    invoke-direct {v1}, Lcom/sun/org/apache/xpath/internal/VariableStack;-><init>()V

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->setVarStack(Lcom/sun/org/apache/xpath/internal/VariableStack;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public createSerializationHandler(Ljavax/xml/transform/Result;)Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getOutputFormat()Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->createSerializationHandler(Ljavax/xml/transform/Result;Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;)Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object p0

    return-object p0
.end method

.method public createSerializationHandler(Ljavax/xml/transform/Result;Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;)Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 2
    instance-of v0, p1, Ljavax/xml/transform/dom/DOMResult;

    const-string v1, "encoding"

    if-eqz v0, :cond_4

    .line 3
    check-cast p1, Ljavax/xml/transform/dom/DOMResult;

    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMResult;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/16 v3, 0x9

    if-ne v3, p1, :cond_0

    .line 6
    move-object v3, v0

    check-cast v3, Lorg/w3c/dom/Document;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_stylesheetRoot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->isSecureProcessing()Z

    move-result v0

    .line 8
    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->createDocument(Z)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    .line 10
    invoke-virtual {p1, v0}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    move p1, v3

    move-object v3, v0

    :goto_0
    const/16 v4, 0xb

    if-ne v4, p1, :cond_2

    .line 11
    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;

    check-cast v0, Lorg/w3c/dom/DocumentFragment;

    invoke-direct {p1, v3, v0}, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;-><init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/DocumentFragment;)V

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;

    invoke-direct {p1, v3, v0}, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;-><init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;)V

    :goto_1
    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->setNextSibling(Lorg/w3c/dom/Node;)V

    .line 13
    :cond_3
    invoke-virtual {p2, v1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 14
    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ToXMLSAXHandler;

    invoke-direct {v0, p1, p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/ToXMLSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 15
    :cond_4
    instance-of v0, p1, Ljavax/xml/transform/sax/SAXResult;

    const/4 v2, 0x0

    const-string v3, "method"

    if-eqz v0, :cond_b

    .line 16
    check-cast p1, Ljavax/xml/transform/sax/SAXResult;

    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXResult;->getHandler()Lorg/xml/sax/ContentHandler;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 17
    instance-of v0, p1, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_5

    .line 18
    move-object v2, p1

    check-cast v2, Lorg/xml/sax/ext/LexicalHandler;

    .line 19
    :cond_5
    invoke-virtual {p2, v1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {p2, v3}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "html"

    .line 21
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 22
    new-instance v1, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;

    invoke-direct {v1, p1, v2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    :goto_2
    move-object v0, v1

    goto :goto_3

    :cond_6
    const-string v3, "text"

    .line 23
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 24
    new-instance v1, Lcom/sun/org/apache/xml/internal/serializer/ToTextSAXHandler;

    invoke-direct {v1, p1, v2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToTextSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :cond_7
    new-instance v1, Lcom/sun/org/apache/xml/internal/serializer/ToXMLSAXHandler;

    invoke-direct {v1, p1, v2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToXMLSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 26
    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->setShouldOutputNSAttr(Z)V

    goto :goto_2

    :goto_3
    const-string v1, "doctype-public"

    .line 27
    invoke-virtual {p2, v1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "doctype-system"

    .line 28
    invoke-virtual {p2, v2}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 29
    invoke-interface {v0, p2}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setDoctypeSystem(Ljava/lang/String;)V

    :cond_8
    if-eqz v1, :cond_9

    .line 30
    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setDoctypePublic(Ljava/lang/String;)V

    .line 31
    :cond_9
    instance-of p2, p1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerClient;

    if-eqz p2, :cond_12

    .line 32
    new-instance p2, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;

    invoke-direct {p2}, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;-><init>()V

    .line 33
    check-cast p1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerClient;

    invoke-interface {p1, p2}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerClient;->setTransformState(Lcom/sun/org/apache/xalan/internal/transformer/TransformState;)V

    .line 34
    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->setTransformState(Lcom/sun/org/apache/xml/internal/serializer/TransformStateSetter;)V

    goto/16 :goto_5

    .line 35
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "handler can not be null for a SAXResult"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_b
    instance-of v0, p1, Ljavax/xml/transform/stream/StreamResult;

    if-eqz v0, :cond_14

    .line 37
    check-cast p1, Ljavax/xml/transform/stream/StreamResult;

    .line 38
    invoke-virtual {p2, v3}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    :try_start_0
    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object p2

    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lcom/sun/org/apache/xml/internal/serializer/Serializer;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    .line 40
    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 41
    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->setWriter(Ljava/io/Writer;)V

    goto :goto_5

    .line 42
    :cond_c
    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 43
    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    goto :goto_5

    .line 44
    :cond_d
    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_13

    .line 45
    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "file:///"

    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ":"

    if-eqz p2, :cond_f

    const/16 p2, 0x8

    .line 47
    :try_start_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_e

    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_e
    const/4 p2, 0x7

    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_f
    const-string p2, "file:/"

    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_11

    const/4 p2, 0x6

    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_10

    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_10
    const/4 p2, 0x5

    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 54
    :cond_11
    :goto_4
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    .line 55
    invoke-interface {v0, p2}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    :cond_12
    :goto_5
    invoke-interface {v0, p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    .line 57
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object p0

    .line 58
    invoke-interface {v0, p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setSourceLocator(Ljavax/xml/transform/SourceLocator;)V

    return-object v0

    .line 59
    :cond_13
    :try_start_2
    new-instance p0, Ljavax/xml/transform/TransformerException;

    const-string p1, "ER_NO_OUTPUT_SPECIFIED"

    invoke-static {p1, v2}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 60
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 61
    :cond_14
    new-instance p0, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ER_CANNOT_TRANSFORM_TO_RESULT_TYPE"

    invoke-static {p2, p1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public currentFuncResultSeen()Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentFuncResult:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentFuncResult:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->peek()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public currentTemplateRuleIsNull()Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lcom/sun/org/apache/xml/internal/utils/BoolStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lcom/sun/org/apache/xml/internal/utils/BoolStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->peek()Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public elementAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getExtensionsTable()Lcom/sun/org/apache/xalan/internal/extensions/ExtensionsTable;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionsTable;->elementAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public executeChildTemplates(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/utils/QName;Lorg/xml/sax/ContentHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    if-eqz p3, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->pushMode(Lcom/sun/org/apache/xml/internal/utils/QName;)V

    .line 3
    :cond_0
    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNode(I)V

    .line 4
    invoke-virtual {p0, p1, p4}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->executeChildTemplates(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    if-eqz p3, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->popMode()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 7
    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    if-eqz p3, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->popMode()V

    .line 9
    :cond_2
    throw p1
.end method

.method public executeChildTemplates(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Lorg/xml/sax/ContentHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getSerializationHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object v0

    .line 37
    :try_start_0
    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->flushPending()V

    .line 38
    instance-of v1, p2, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_0

    .line 39
    move-object v1, p2

    check-cast v1, Lorg/xml/sax/ext/LexicalHandler;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 40
    :goto_0
    new-instance v2, Lcom/sun/org/apache/xml/internal/serializer/ToXMLSAXHandler;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, v1, v3}, Lcom/sun/org/apache/xml/internal/serializer/ToXMLSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    .line 41
    invoke-interface {v2, p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    const/4 p2, 0x1

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->executeChildTemplates(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Z)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 44
    :try_start_1
    new-instance p2, Ljavax/xml/transform/TransformerException;

    invoke-direct {p2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 45
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :goto_1
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    .line 47
    throw p1
.end method

.method public executeChildTemplates(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 10
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getFirstChildElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->hasTextLitOnly()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_optimizer:Z

    if-eqz p1, :cond_1

    .line 12
    move-object p1, v0

    check-cast p1, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;->getChars()[C

    move-result-object p1

    .line 13
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->pushElemTemplateElement(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    .line 14
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->popElemTemplateElement()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    :try_start_1
    new-instance p2, Ljavax/xml/transform/TransformerException;

    invoke-direct {p2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 18
    throw p1

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    .line 20
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushSAXLocatorNull()V

    .line 21
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentTemplateElements:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->size()I

    move-result v1

    .line 22
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentTemplateElements:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    .line 23
    :try_start_2
    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getXSLToken()I

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_2

    goto :goto_2

    .line 24
    :cond_2
    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 25
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentTemplateElements:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {v2, v0, v1}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    .line 26
    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V

    .line 27
    :goto_2
    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNextSiblingElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception p2

    .line 28
    :try_start_3
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, p2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    .line 29
    invoke-virtual {v1, v0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 30
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 31
    :goto_3
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentTemplateElements:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->pop()Ljava/lang/Object;

    .line 32
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popSAXLocator()V

    .line 33
    throw p2

    .line 34
    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentTemplateElements:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->pop()Ljava/lang/Object;

    .line 35
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popSAXLocator()V

    return-void
.end method

.method public executeFromSnapshot(Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshot;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getMatchedTemplate()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getMatchedNode()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->pushElemTemplateElement(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNode(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->executeChildTemplates(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Z)V

    return-void
.end method

.method public extFunction(Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;Ljava/util/Vector;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getExtensionsTable()Lcom/sun/org/apache/xalan/internal/extensions/ExtensionsTable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getExpressionContext()Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionsTable;->extFunction(Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;Ljava/util/Vector;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public extFunction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getExtensionsTable()Lcom/sun/org/apache/xalan/internal/extensions/ExtensionsTable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getExpressionContext()Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionsTable;->extFunction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public fireGenerateEvent(I)V
    .locals 1

    .line 9
    new-instance v0, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;I)V

    .line 10
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_traceManager:Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireGenerateEvent(Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;)V

    return-void
.end method

.method public fireGenerateEvent(ILjava/lang/String;)V
    .locals 1

    .line 7
    new-instance v0, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;ILjava/lang/String;)V

    .line 8
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_traceManager:Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireGenerateEvent(Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;)V

    return-void
.end method

.method public fireGenerateEvent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_traceManager:Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireGenerateEvent(Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;)V

    return-void
.end method

.method public fireGenerateEvent(ILjava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;ILjava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 4
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_traceManager:Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireGenerateEvent(Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;)V

    return-void
.end method

.method public fireGenerateEvent(I[CII)V
    .locals 7

    .line 1
    new-instance v6, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;I[CII)V

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_traceManager:Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    invoke-virtual {p0, v6}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireGenerateEvent(Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;)V

    return-void
.end method

.method public functionAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getExtensionsTable()Lcom/sun/org/apache/xalan/internal/extensions/ExtensionsTable;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionsTable;->functionAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getBaseURLOfSource()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_urlOfSource:Ljava/lang/String;

    return-object p0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_outputContentHandler:Lorg/xml/sax/ContentHandler;

    return-object p0
.end method

.method public getContextNodeList()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getContextNodeList()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->cloneWithReset()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object v0
.end method

.method public getCountersTable()Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_countersTable:Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_countersTable:Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_countersTable:Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;

    return-object p0
.end method

.method public getCurrentElement()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentTemplateElements:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentTemplateElements:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCurrentNode()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result p0

    return p0
.end method

.method public getCurrentTemplate()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getCurrentElement()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getParentElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p0

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    return-object p0
.end method

.method public getCurrentTemplateElements()Lcom/sun/org/apache/xml/internal/utils/ObjectStack;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentTemplateElements:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    return-object p0
.end method

.method public getCurrentTemplateElementsCount()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentTemplateElements:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->size()I

    move-result p0

    return p0
.end method

.method public getDebug()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_debug:Z

    return p0
.end method

.method public getElementCallstack()Ljava/util/Vector;
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentTemplateElements:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentTemplateElements:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    return-object p0
.end method

.method public getExceptionThrown()Ljava/lang/Exception;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_exceptionThrown:Ljava/lang/Exception;

    return-object p0
.end method

.method public getExtensionsTable()Lcom/sun/org/apache/xalan/internal/extensions/ExtensionsTable;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_extensionsTable:Lcom/sun/org/apache/xalan/internal/extensions/ExtensionsTable;

    return-object p0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const-string p0, "http://xml.org/trax/features/sax/input"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const-string p0, "http://xml.org/trax/features/dom/input"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    new-instance p0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getIncremental()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_incremental:Z

    return p0
.end method

.method public getInputContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getInputContentHandler(Z)Lorg/xml/sax/ContentHandler;

    move-result-object p0

    return-object p0
.end method

.method public getInputContentHandler(Z)Lorg/xml/sax/ContentHandler;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_urlOfSource:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    return-object p0
.end method

.method public getInputDeclHandler()Lorg/xml/sax/ext/DeclHandler;
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, p0, Lorg/xml/sax/ext/DeclHandler;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/xml/sax/ext/DeclHandler;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInputLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, p0, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/xml/sax/ext/LexicalHandler;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKeyManager()Lcom/sun/org/apache/xalan/internal/transformer/KeyManager;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_keyManager:Lcom/sun/org/apache/xalan/internal/transformer/KeyManager;

    return-object p0
.end method

.method public getMatchedNode()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentMatchedNodes:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->peepTail()I

    move-result p0

    return p0
.end method

.method public getMatchedTemplate()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    return-object p0
.end method

.method public getMode()Lcom/sun/org/apache/xml/internal/utils/QName;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_modes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_modes:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xml/internal/utils/QName;

    :goto_0
    return-object p0
.end method

.method public getMsgMgr()Lcom/sun/org/apache/xalan/internal/transformer/MsgMgr;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_msgMgr:Lcom/sun/org/apache/xalan/internal/transformer/MsgMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/transformer/MsgMgr;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xalan/internal/transformer/MsgMgr;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_msgMgr:Lcom/sun/org/apache/xalan/internal/transformer/MsgMgr;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_msgMgr:Lcom/sun/org/apache/xalan/internal/transformer/MsgMgr;

    return-object p0
.end method

.method public getOptimize()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_optimizer:Z

    return p0
.end method

.method public getOutputFormat()Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_outputFormat:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getOutputComposed()Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOutputProperties()Ljava/util/Properties;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getOutputFormat()Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Properties;

    return-object p0
.end method

.method public getOutputProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getOutputFormat()Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public getOutputPropertyNoDefault(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getOutputFormat()Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public getOutputTarget()Ljavax/xml/transform/Result;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_outputTarget:Ljavax/xml/transform/Result;

    return-object p0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/utils/QName;->getQNameFromString(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object p1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xpath/internal/Arg;

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/Arg;->getQName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sun/org/apache/xml/internal/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/Arg;->getVal()Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->object()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catch_0
    :cond_2
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getQuietConflictWarnings()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_quietConflictWarnings:Z

    return p0
.end method

.method public getRecursionLimit()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_stackGuard:Lcom/sun/org/apache/xalan/internal/transformer/StackGuard;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/StackGuard;->getRecursionLimit()I

    move-result p0

    return p0
.end method

.method public getResultTreeHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    return-object p0
.end method

.method public getSerializationHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    return-object p0
.end method

.method public getShouldStripSpace(ILcom/sun/org/apache/xml/internal/dtm/DTM;)S
    .locals 2

    const/4 v0, 0x3

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_stylesheetRoot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v1, p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getWhiteSpaceInfo(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/dtm/DTM;)Lcom/sun/org/apache/xalan/internal/templates/WhiteSpaceInfo;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/WhiteSpaceInfo;->getShouldStripSpace()Z

    move-result p0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0

    :catch_0
    return v0
.end method

.method public getSnapshot()Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshot;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V

    return-object v0
.end method

.method public getSource_location()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_source_location:Z

    return p0
.end method

.method public getStackGuard()Lcom/sun/org/apache/xalan/internal/transformer/StackGuard;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_stackGuard:Lcom/sun/org/apache/xalan/internal/transformer/StackGuard;

    return-object p0
.end method

.method public getStringWriterPool()Lcom/sun/org/apache/xml/internal/utils/ObjectPool;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_stringWriterObjectPool:Lcom/sun/org/apache/xml/internal/utils/ObjectPool;

    return-object p0
.end method

.method public final getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_stylesheetRoot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    return-object p0
.end method

.method public getTemplateCallstack()Ljava/util/Vector;
    .locals 6

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentTemplateElements:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentTemplateElements:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getXSLToken()I

    move-result v4

    const/16 v5, 0x13

    if-eq v4, v5, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_traceManager:Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    return-object p0
.end method

.method public getTransformThread()Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_transformThread:Ljava/lang/Thread;

    return-object p0
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .locals 0

    return-object p0
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSourceTreeManager()Lcom/sun/org/apache/xpath/internal/SourceTreeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/SourceTreeManager;->getURIResolver()Ljavax/xml/transform/URIResolver;

    move-result-object p0

    return-object p0
.end method

.method public final getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    return-object p0
.end method

.method public hasTraceListeners()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_traceManager:Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->hasTraceListeners()Z

    move-result p0

    return p0
.end method

.method public hasTransformThreadErrorCatcher()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    return p0
.end method

.method public init(Lcom/sun/org/apache/xml/internal/serializer/ToXMLSAXHandler;Ljavax/xml/transform/Transformer;Lorg/xml/sax/ContentHandler;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->setTransformer(Ljavax/xml/transform/Transformer;)V

    invoke-virtual {p1, p3}, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    return-void
.end method

.method public isParserEventsOnMain()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_parserEventsOnMain:Z

    return p0
.end method

.method public isRecursiveAttrSet(Lcom/sun/org/apache/xalan/internal/templates/ElemAttributeSet;)Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->search(Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-le p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isTransformDone()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_isTransformDone:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public popCurrentFuncResult()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentFuncResult:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->pop()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public popCurrentMatched()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentMatchedNodes:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->pop()I

    return-void
.end method

.method public popCurrentTemplateRuleIsNull()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lcom/sun/org/apache/xml/internal/utils/BoolStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->pop()Z

    return-void
.end method

.method public popElemAttributeSet()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public popElemTemplateElement()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentTemplateElements:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public popMode()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_modes:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public postExceptionFromThread(Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_isTransformDone:Z

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_exceptionThrown:Ljava/lang/Exception;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public processSortKeys(Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;I)Ljava/util/Vector;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    iget-object v11, v8, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->getSortElemCount()I

    move-result v12

    if-lez v12, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    move-object v14, v0

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v12, :cond_c

    invoke-virtual {v9, v7}, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->getSortElem(I)Lcom/sun/org/apache/xalan/internal/templates/ElemSort;

    move-result-object v6

    iget-boolean v0, v8, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_debug:Z

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_1
    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;->getLang()Lcom/sun/org/apache/xalan/internal/templates/AVT;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;->getLang()Lcom/sun/org/apache/xalan/internal/templates/AVT;

    move-result-object v0

    invoke-virtual {v0, v11, v10, v9}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->evaluate(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;->getDataType()Lcom/sun/org/apache/xalan/internal/templates/AVT;

    move-result-object v0

    invoke-virtual {v0, v11, v10, v9}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->evaluate(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "number"

    const-string v3, "ER_ILLEGAL_ATTRIBUTE_VALUE"

    if-ltz v1, :cond_3

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "TODO: Need to write the hooks for QNAME sort data type"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "data-type"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v3, v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;->getOrder()Lcom/sun/org/apache/xalan/internal/templates/AVT;

    move-result-object v0

    invoke-virtual {v0, v11, v10, v9}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->evaluate(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ascending"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v1, "descending"

    if-nez v2, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "order"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v3, v2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v17, 0x1

    goto :goto_5

    :cond_7
    const/16 v17, 0x0

    :goto_5
    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;->getCaseOrder()Lcom/sun/org/apache/xalan/internal/templates/AVT;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0, v11, v10, v9}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->evaluate(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "upper-first"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "lower-first"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "case-order"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v3, v2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    :goto_6
    move/from16 v16, v1

    goto :goto_7

    :cond_a
    const/16 v16, 0x0

    :goto_7
    new-instance v3, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;

    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;->getSelect()Lcom/sun/org/apache/xpath/internal/XPath;

    move-result-object v2

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v13, v3

    move v3, v4

    move/from16 v4, v17

    move-object v15, v6

    move/from16 v6, v16

    move/from16 v16, v7

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Lcom/sun/org/apache/xpath/internal/XPath;ZZLjava/lang/String;ZLcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    invoke-virtual {v14, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-boolean v0, v8, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_debug:Z

    if-eqz v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_b
    add-int/lit8 v7, v16, 0x1

    goto/16 :goto_1

    :cond_c
    return-object v14
.end method

.method public pushCurrentFuncResult(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentFuncResult:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pushCurrentTemplateRuleIsNull(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lcom/sun/org/apache/xml/internal/utils/BoolStack;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->push(Z)Z

    return-void
.end method

.method public pushElemAttributeSet(Lcom/sun/org/apache/xalan/internal/templates/ElemAttributeSet;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pushElemTemplateElement(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentTemplateElements:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pushGlobalVars(I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getVarStack()Lcom/sun/org/apache/xpath/internal/VariableStack;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getVariablesAndParamsComposed()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xpath/internal/VariableStack;->link(I)I

    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;

    new-instance v3, Lcom/sun/org/apache/xalan/internal/templates/XUnresolvedVariable;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/VariableStack;->getStackFrame()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, v3

    move v6, p1

    move-object v7, p0

    invoke-direct/range {v4 .. v10}, Lcom/sun/org/apache/xalan/internal/templates/XUnresolvedVariable;-><init>(Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;ILcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;IIZ)V

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xpath/internal/VariableStack;->elementAt(I)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v2, v3}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setGlobalVariable(ILcom/sun/org/apache/xpath/internal/objects/XObject;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public pushMode(Lcom/sun/org/apache/xml/internal/utils/QName;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_modes:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pushPairCurrentMatched(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentMatchedNodes:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->push(I)V

    return-void
.end method

.method public reset()V
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_hasBeenReset:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_shouldReset:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_hasBeenReset:Z

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_countersTable:Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->reset()V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getVarStack()Lcom/sun/org/apache/xpath/internal/VariableStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/VariableStack;->reset()V

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->resetUserParameters()V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentTemplateElements:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->removeAllElements()V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentMatchedNodes:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->removeAllElements()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_outputTarget:Ljavax/xml/transform/Result;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/transformer/KeyManager;

    invoke-direct {v1}, Lcom/sun/org/apache/xalan/internal/transformer/KeyManager;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_keyManager:Lcom/sun/org/apache/xalan/internal/transformer/KeyManager;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_countersTable:Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;

    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/BoolStack;

    invoke-direct {v1}, Lcom/sun/org/apache/xml/internal/utils/BoolStack;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lcom/sun/org/apache/xml/internal/utils/BoolStack;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xmlSource:Ljavax/xml/transform/Source;

    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_doc:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_isTransformDone:Z

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_transformThread:Ljava/lang/Thread;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSourceTreeManager()Lcom/sun/org/apache/xpath/internal/SourceTreeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/SourceTreeManager;->reset()V

    :cond_1
    return-void
.end method

.method public resetToStylesheet(Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshot;)V
    .locals 0

    check-cast p1, Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformSnapshotImpl;->apply(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V

    return-void
.end method

.method public run()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_hasBeenReset:Z

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_isTransformDone:Z

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_doc:I

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->transformNode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_isTransformDone:Z

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;

    :goto_0
    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->clearCoRoutine()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_transformThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->postExceptionFromThread(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_isTransformDone:Z

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :cond_0
    :try_start_4
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_isTransformDone:Z

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v2, v1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerHandlerImpl;->clearCoRoutine()V

    :cond_1
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_transformThread:Ljava/lang/Thread;

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->postExceptionFromThread(Ljava/lang/Exception;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public runTransformThread()V
    .locals 1

    const/4 v0, -0x1

    .line 3
    invoke-static {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/ThreadControllerWrapper;->runThread(Ljava/lang/Runnable;I)Ljava/lang/Thread;

    return-void
.end method

.method public runTransformThread(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/ThreadControllerWrapper;->runThread(Ljava/lang/Runnable;I)Ljava/lang/Thread;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->setTransformThread(Ljava/lang/Thread;)V

    return-void
.end method

.method public setBaseURLOfSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_urlOfSource:Ljava/lang/String;

    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 1

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_outputContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ToXMLSAXHandler;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/serializer/ToXMLSAXHandler;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->setTransformer(Ljavax/xml/transform/Transformer;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "ER_NULL_CONTENT_HANDLER"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCurrentElement(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_currentTemplateElements:Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;->setTop(Ljava/lang/Object;)V

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_debug:Z

    return-void
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_NULL_ERROR_HANDLER"

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setExceptionThrown(Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_exceptionThrown:Ljava/lang/Exception;

    return-void
.end method

.method public setExtensionsTable(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getExtensions()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionsTable;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionsTable;-><init>(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_extensionsTable:Lcom/sun/org/apache/xalan/internal/extensions/ExtensionsTable;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setIsTransformDone(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_isTransformDone:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setOutputFormat(Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_outputFormat:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    return-void
.end method

.method public setOutputProperties(Ljava/util/Properties;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    monitor-enter v0

    if-eqz p1, :cond_2

    :try_start_0
    const-string v1, "method"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    invoke-direct {v2, v1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_outputFormat:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_outputFormat:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    if-nez v1, :cond_1

    new-instance v1, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    invoke-direct {v1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_outputFormat:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_outputFormat:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->copyFrom(Ljava/util/Properties;)V

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_outputFormat:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_stylesheetRoot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getOutputProperties()Ljava/util/Properties;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->copyFrom(Ljava/util/Properties;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_outputFormat:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_outputFormat:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getOutputComposed()Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_outputFormat:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    :cond_0
    invoke-static {p1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_outputFormat:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setOutputTarget(Ljavax/xml/transform/Result;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_outputTarget:Ljavax/xml/transform/Result;

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    if-eqz p2, :cond_3

    .line 10
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "{}"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 11
    :try_start_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    if-nez v1, :cond_1

    .line 14
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    :cond_1
    if-nez v0, :cond_2

    .line 15
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->create(Ljava/lang/Object;Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->replaceOrPushUserParam(Lcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xpath/internal/objects/XObject;)V

    .line 16
    invoke-virtual {p0, p1, v2, p2}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 17
    :cond_2
    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-direct {v1, p1, v0}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->create(Ljava/lang/Object;Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->replaceOrPushUserParam(Lcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xpath/internal/objects/XObject;)V

    .line 18
    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void

    .line 19
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "ER_INVALID_SET_PARAM_VALUE"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getVarStack()Lcom/sun/org/apache/xpath/internal/VariableStack;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-direct {v1, p2, p1}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->create(Ljava/lang/Object;Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p1

    .line 4
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_stylesheetRoot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    .line 5
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getVariablesAndParamsComposed()Ljava/util/Vector;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p2

    :cond_0
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_1

    .line 7
    invoke-virtual {p0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;

    .line 8
    invoke-virtual {p3}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->getXSLToken()I

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_0

    invoke-virtual {p3}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/sun/org/apache/xml/internal/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 9
    invoke-virtual {v0, p2, p1}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setGlobalVariable(ILcom/sun/org/apache/xpath/internal/objects/XObject;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setParameters(Ljava/util/Properties;)V
    .locals 6

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->clearParameters()V

    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "{}"

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    move-object v2, v5

    :goto_1
    if-nez v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v5, v1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setQuietConflictWarnings(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_quietConflictWarnings:Z

    return-void
.end method

.method public setRecursionLimit(I)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_stackGuard:Lcom/sun/org/apache/xalan/internal/transformer/StackGuard;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/transformer/StackGuard;->setRecursionLimit(I)V

    return-void
.end method

.method public setSerializationHandler(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    return-void
.end method

.method public setShouldReset(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_shouldReset:Z

    return-void
.end method

.method public setSourceTreeDocForThread(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_doc:I

    return-void
.end method

.method public setStylesheet(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_stylesheetRoot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    return-void
.end method

.method public setTransformThread(Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_transformThread:Ljava/lang/Thread;

    return-void
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSourceTreeManager()Lcom/sun/org/apache/xpath/internal/SourceTreeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/SourceTreeManager;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setXMLSource(Ljavax/xml/transform/Source;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xmlSource:Ljavax/xml/transform/Source;

    return-void
.end method

.method public setXPathContext(Lcom/sun/org/apache/xpath/internal/XPathContext;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    return-void
.end method

.method public stopTransformation()V
    .locals 0

    return-void
.end method

.method public transform(Ljavax/xml/transform/Source;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->transform(Ljavax/xml/transform/Source;Z)V

    return-void
.end method

.method public transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 45
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;Z)V

    return-void
.end method

.method public transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    monitor-enter v0

    .line 47
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->createSerializationHandler(Ljavax/xml/transform/Result;)Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object v1

    .line 48
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->setSerializationHandler(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    .line 49
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_outputTarget:Ljavax/xml/transform/Result;

    .line 50
    invoke-virtual {p0, p1, p3}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->transform(Ljavax/xml/transform/Source;Z)V

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public transform(Ljavax/xml/transform/Source;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->setNamespaceContext(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    .line 4
    :cond_0
    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_stylesheetRoot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getBaseIdentifier()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_3

    const-string v1, ""
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "user.dir"

    .line 6
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/xml/sax/SAXParseException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :catch_0
    :try_start_2
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 9
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:///"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    :cond_3
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->setBaseURLOfSource(Ljava/lang/String;)V

    .line 12
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v2

    .line 13
    instance-of v3, p1, Ljavax/xml/transform/stream/StreamSource;

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    move-object v3, p1

    check-cast v3, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {v3}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_4

    move-object v3, p1

    check-cast v3, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {v3}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v3

    if-eqz v3, :cond_6

    :cond_4
    instance-of v3, p1, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v3, :cond_5

    move-object v3, p1

    check-cast v3, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {v3}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v3

    if-nez v3, :cond_5

    move-object v3, p1

    check-cast v3, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {v3}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    if-eqz v3, :cond_6

    :cond_5
    instance-of v3, p1, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v3, :cond_8

    move-object v3, p1

    check-cast v3, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {v3}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v3
    :try_end_2
    .catch Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/xml/sax/SAXParseException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v3, :cond_8

    .line 14
    :cond_6
    :try_start_3
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 15
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 16
    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v4

    .line 17
    new-instance v5, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    invoke-direct {v5, v3}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/xml/sax/SAXParseException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_7

    .line 18
    :try_start_4
    invoke-interface {v5, v4}, Ljavax/xml/transform/Source;->setSystemId(Ljava/lang/String;)V
    :try_end_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/xml/sax/SAXParseException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception v3

    move-object v5, p1

    move-object p1, v3

    .line 19
    :goto_1
    :try_start_5
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->fatalError(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    move-object v4, v5

    goto :goto_3

    :cond_8
    move-object v4, p1

    :goto_3
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v3, v2

    move-object v6, p0

    .line 20
    invoke-virtual/range {v3 .. v8}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->getDTM(Ljavax/xml/transform/Source;ZLcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;ZZ)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p1

    .line 21
    invoke-interface {p1, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->setDocumentBaseURI(Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lorg/xml/sax/SAXParseException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v1, 0x1

    .line 22
    :try_start_6
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getDocument()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->transformNode(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz p2, :cond_9

    .line 23
    :try_start_7
    invoke-virtual {v2, p1, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->release(Lcom/sun/org/apache/xml/internal/dtm/DTM;Z)Z

    .line 24
    :cond_9
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getExceptionThrown()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 25
    instance-of p2, p1, Ljavax/xml/transform/TransformerException;

    if-nez p2, :cond_b

    .line 26
    instance-of p2, p1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    if-eqz p2, :cond_a

    .line 27
    check-cast p1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->fatalError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 28
    :cond_a
    new-instance p2, Ljavax/xml/transform/TransformerException;

    invoke-direct {p2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 29
    :cond_b
    check-cast p1, Ljavax/xml/transform/TransformerException;

    throw p1

    .line 30
    :cond_c
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    if-eqz p1, :cond_e

    .line 31
    invoke-interface {p1}, Lorg/xml/sax/ContentHandler;->endDocument()V

    goto :goto_4

    :catchall_0
    move-exception v3

    if-eqz p2, :cond_d

    .line 32
    invoke-virtual {v2, p1, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->release(Lcom/sun/org/apache/xml/internal/dtm/DTM;Z)Z

    .line 33
    :cond_d
    throw v3
    :try_end_7
    .catch Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lorg/xml/sax/SAXParseException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_7

    :catch_3
    move-exception p1

    .line 34
    :try_start_8
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, v1}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    goto :goto_4

    :catch_4
    move-exception p1

    .line 35
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->fatalError(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 36
    :cond_e
    :goto_4
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    .line 37
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->reset()V

    goto :goto_6

    :catch_5
    move-exception p1

    .line 38
    :try_start_9
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object p1

    .line 39
    :goto_5
    instance-of p2, p1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    if-eqz p2, :cond_f

    .line 40
    check-cast p1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object p1

    goto :goto_5

    .line 41
    :cond_f
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->fatalError(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    :goto_6
    return-void

    .line 42
    :goto_7
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    .line 43
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->reset()V

    .line 44
    throw p1
.end method

.method public transformNode(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->setExtensionsTable(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    .line 6
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    monitor-enter v0

    const/4 v1, 0x0

    .line 7
    :try_start_0
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_hasBeenReset:Z

    .line 8
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v2

    .line 9
    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 10
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->pushGlobalVars(I)V

    .line 11
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object v3

    .line 12
    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getGlobalImportCount()I

    move-result v4

    :goto_0
    if-ge v1, v4, :cond_2

    .line 13
    invoke-virtual {v3, v1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getGlobalImport(I)Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    move-result-object v5

    .line 14
    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->getIncludeCountComposed()I

    move-result v6

    const/4 v7, -0x1

    :goto_1
    if-ge v7, v6, :cond_1

    .line 15
    invoke-virtual {v5, v7}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->getIncludeComposed(I)Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object v8

    .line 16
    invoke-virtual {v8, p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->runtimeInit(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V

    .line 17
    invoke-virtual {v8}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getFirstChildElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v8

    :goto_2
    if-eqz v8, :cond_0

    .line 18
    invoke-virtual {v8, p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->runtimeInit(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V

    .line 19
    invoke-virtual {v8}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNextSiblingElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v8

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_2
    new-instance v1, Lcom/sun/org/apache/xpath/internal/axes/SelfIteratorNoPredicate;

    invoke-direct {v1}, Lcom/sun/org/apache/xpath/internal/axes/SelfIteratorNoPredicate;-><init>()V

    .line 21
    invoke-interface {v1, p1, v2}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    .line 22
    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushContextNodeList(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    .line 23
    :try_start_2
    invoke-virtual {p0, v1, v1, p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->applyTemplateToNode(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    :try_start_3
    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popContextNodeList()V

    .line 25
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    if-eqz p1, :cond_3

    .line 26
    invoke-interface {p1}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 27
    :cond_3
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->reset()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_6

    :catchall_0
    move-exception p1

    .line 28
    :try_start_5
    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popContextNodeList()V

    .line 29
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    goto/16 :goto_7

    :catch_0
    move-exception p1

    .line 30
    :cond_4
    :goto_4
    :try_start_6
    instance-of v1, p1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    if-eqz v1, :cond_5

    .line 31
    move-object v1, p1

    check-cast v1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object p1, v1

    goto :goto_4

    .line 32
    :cond_5
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_8

    .line 33
    :try_start_7
    instance-of v2, p1, Lorg/xml/sax/SAXParseException;

    if-eqz v2, :cond_6

    .line 34
    move-object v2, p1

    check-cast v2, Lorg/xml/sax/SAXParseException;

    invoke-interface {v1, v2}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    goto :goto_5

    .line 35
    :cond_6
    instance-of v2, p1, Ljavax/xml/transform/TransformerException;

    if-eqz v2, :cond_7

    .line 36
    move-object v1, p1

    check-cast v1, Ljavax/xml/transform/TransformerException;

    .line 37
    new-instance v2, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;-><init>(Ljavax/xml/transform/SourceLocator;)V

    .line 38
    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    new-instance v4, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2, v1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    invoke-interface {v3, v4}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    goto :goto_5

    .line 39
    :cond_7
    new-instance v2, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    invoke-direct {v4}, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;-><init>()V

    invoke-direct {v2, v3, v4, p1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 40
    :catch_1
    :cond_8
    :goto_5
    :try_start_8
    instance-of v1, p1, Ljavax/xml/transform/TransformerException;

    if-eqz v1, :cond_9

    .line 41
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    check-cast p1, Ljavax/xml/transform/TransformerException;

    invoke-interface {v1, p1}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    goto :goto_3

    .line 42
    :cond_9
    instance-of v1, p1, Lorg/xml/sax/SAXParseException;

    if-eqz v1, :cond_a

    .line 43
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    move-object v5, p1

    check-cast v5, Lorg/xml/sax/SAXParseException;

    invoke-direct {v4, v5}, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;-><init>(Lorg/xml/sax/SAXParseException;)V

    invoke-direct {v2, v3, v4, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    goto/16 :goto_3

    .line 44
    :cond_a
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_3

    .line 45
    :goto_6
    :try_start_9
    monitor-exit v0

    return-void

    .line 46
    :goto_7
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->reset()V

    .line 47
    throw p1

    :catchall_2
    move-exception p0

    .line 48
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p0
.end method

.method public transformNode(ILjavax/xml/transform/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->createSerializationHandler(Ljavax/xml/transform/Result;)Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->setSerializationHandler(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    .line 3
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_outputTarget:Ljavax/xml/transform/Result;

    .line 4
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->transformNode(I)V

    return-void
.end method

.method public transformToGlobalRTF(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getGlobalRTFDTM()Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->transformToRTF(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Lcom/sun/org/apache/xml/internal/dtm/DTM;)I

    move-result p0

    return p0
.end method

.method public transformToRTF(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_xcontext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getRTFDTM()Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->transformToRTF(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Lcom/sun/org/apache/xml/internal/dtm/DTM;)I

    move-result p0

    return p0
.end method

.method public transformToString(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getFirstChildElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->hasTextLitOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_optimizer:Z

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_stringWriterObjectPool:Lcom/sun/org/apache/xml/internal/utils/ObjectPool;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/ObjectPool;->getInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/StringWriter;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_textResultHandlerObjectPool:Lcom/sun/org/apache/xml/internal/utils/ObjectPool;

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/utils/ObjectPool;->getInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xml/internal/serializer/ToTextStream;

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_textformat:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lcom/sun/org/apache/xml/internal/serializer/Serializer;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    :cond_2
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v2, p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v2, v1}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->setWriter(Ljava/io/Writer;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->executeChildTemplates(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Z)V

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p1}, Lorg/xml/sax/ContentHandler;->endDocument()V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    :try_start_1
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_stringWriterObjectPool:Lcom/sun/org/apache/xml/internal/utils/ObjectPool;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xml/internal/utils/ObjectPool;->freeInstance(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->reset()Z

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_textResultHandlerObjectPool:Lcom/sun/org/apache/xml/internal/utils/ObjectPool;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/ObjectPool;->freeInstance(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :try_start_2
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    :try_start_3
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_stringWriterObjectPool:Lcom/sun/org/apache/xml/internal/utils/ObjectPool;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xml/internal/utils/ObjectPool;->freeInstance(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->reset()Z

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_textResultHandlerObjectPool:Lcom/sun/org/apache/xml/internal/utils/ObjectPool;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/ObjectPool;->freeInstance(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->m_serializationHandler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    throw p1
.end method

.method public waitTransformThread()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTransformThread()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/ThreadControllerWrapper;->waitThread(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->hasTransformThreadErrorCatcher()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getExceptionThrown()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p0, Lorg/xml/sax/SAXException;

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->setTransformThread(Ljava/lang/Thread;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
