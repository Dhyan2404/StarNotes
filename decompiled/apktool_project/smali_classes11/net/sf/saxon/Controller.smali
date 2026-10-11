.class public Lnet/sf/saxon/Controller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ContextOriginator;


# static fields
.field public static final ANONYMOUS_PRINCIPAL_OUTPUT_URI:Ljava/lang/String; = "dummy:/anonymous/principal/result"


# instance fields
.field public J:Lnet/sf/saxon/lib/CollectionFinder;

.field public O:Lnet/sf/saxon/trans/StylesheetCache;

.field public Q:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lnet/sf/saxon/om/SequenceIterator;",
            "Lnet/sf/saxon/om/FocusTrackingIterator;",
            ">;"
        }
    .end annotation
.end field

.field public Z:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lnet/sf/saxon/om/SequenceIterator;",
            "Lnet/sf/saxon/om/FocusTrackingIterator;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lnet/sf/saxon/Configuration;

.field protected executable:Lnet/sf/saxon/expr/instruct/Executable;

.field public f:Z

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/expr/PackageData;",
            "Lnet/sf/saxon/expr/instruct/Bindery;",
            ">;"
        }
    .end annotation
.end field

.field protected globalContextItem:Lnet/sf/saxon/om/Item;

.field public h:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

.field public i:Z

.field protected inUse:Z

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/expr/instruct/GlobalVariable;",
            "Ljava/util/Set<",
            "Lnet/sf/saxon/expr/instruct/GlobalVariable;",
            ">;>;"
        }
    .end annotation
.end field

.field public k:Z

.field public l:Lnet/sf/saxon/lib/Logger;

.field public m:Lnet/sf/saxon/lib/ResourceResolver;

.field public n:Lnet/sf/saxon/lib/UnparsedTextURIResolver;

.field public o:Ljava/lang/String;

.field public p:Lnet/sf/saxon/lib/ErrorReporter;

.field protected principalResult:Lnet/sf/saxon/event/Receiver;

.field protected principalResultURI:Ljava/lang/String;

.field public q:Lnet/sf/saxon/om/TreeModel;

.field public r:Lnet/sf/saxon/om/DocumentPool;

.field public s:Lnet/sf/saxon/z/IntHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/z/IntHashMap<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lnet/sf/saxon/trans/KeyIndex;",
            ">;>;"
        }
    .end annotation
.end field

.field public t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected traceListener:Lnet/sf/saxon/lib/TraceListener;

.field public u:Lnet/sf/saxon/om/NodeInfo;

.field public v:I

.field protected validationMode:I

.field public w:Lnet/sf/saxon/value/DateTimeValue;

.field public x:Z

.field public y:Lnet/sf/saxon/expr/parser/PathMap;

.field public z:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lnet/sf/saxon/Controller;->i:Z

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/Controller;->j:Ljava/util/Map;

    .line 4
    sget-object v1, Lnet/sf/saxon/om/TreeModel;->TINY_TREE:Lnet/sf/saxon/om/TreeModel;

    iput-object v1, p0, Lnet/sf/saxon/Controller;->q:Lnet/sf/saxon/om/TreeModel;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lnet/sf/saxon/Controller;->u:Lnet/sf/saxon/om/NodeInfo;

    const/4 v2, -0x1

    .line 6
    iput v2, p0, Lnet/sf/saxon/Controller;->v:I

    const/4 v2, 0x0

    .line 7
    iput-boolean v2, p0, Lnet/sf/saxon/Controller;->x:Z

    .line 8
    iput-object v1, p0, Lnet/sf/saxon/Controller;->y:Lnet/sf/saxon/expr/parser/PathMap;

    .line 9
    iput v2, p0, Lnet/sf/saxon/Controller;->validationMode:I

    .line 10
    iput-boolean v2, p0, Lnet/sf/saxon/Controller;->inUse:Z

    .line 11
    iput-boolean v0, p0, Lnet/sf/saxon/Controller;->z:Z

    .line 12
    iput-object v1, p0, Lnet/sf/saxon/Controller;->J:Lnet/sf/saxon/lib/CollectionFinder;

    .line 13
    iput-object v1, p0, Lnet/sf/saxon/Controller;->O:Lnet/sf/saxon/trans/StylesheetCache;

    .line 14
    new-instance v0, Lcom/sunia/HTREnginev2/ace;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ace;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/Controller;->Q:Ljava/util/function/Function;

    .line 15
    iput-object p1, p0, Lnet/sf/saxon/Controller;->e:Lnet/sf/saxon/Configuration;

    .line 16
    new-instance v0, Lnet/sf/saxon/expr/instruct/Executable;

    invoke-direct {v0, p1}, Lnet/sf/saxon/expr/instruct/Executable;-><init>(Lnet/sf/saxon/Configuration;)V

    iput-object v0, p0, Lnet/sf/saxon/Controller;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    .line 17
    new-instance p1, Lnet/sf/saxon/om/DocumentPool;

    invoke-direct {p1}, Lnet/sf/saxon/om/DocumentPool;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/Controller;->r:Lnet/sf/saxon/om/DocumentPool;

    .line 18
    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->reset()V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/expr/instruct/Executable;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lnet/sf/saxon/Controller;->i:Z

    .line 21
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/Controller;->j:Ljava/util/Map;

    .line 22
    sget-object v1, Lnet/sf/saxon/om/TreeModel;->TINY_TREE:Lnet/sf/saxon/om/TreeModel;

    iput-object v1, p0, Lnet/sf/saxon/Controller;->q:Lnet/sf/saxon/om/TreeModel;

    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Lnet/sf/saxon/Controller;->u:Lnet/sf/saxon/om/NodeInfo;

    const/4 v2, -0x1

    .line 24
    iput v2, p0, Lnet/sf/saxon/Controller;->v:I

    const/4 v2, 0x0

    .line 25
    iput-boolean v2, p0, Lnet/sf/saxon/Controller;->x:Z

    .line 26
    iput-object v1, p0, Lnet/sf/saxon/Controller;->y:Lnet/sf/saxon/expr/parser/PathMap;

    .line 27
    iput v2, p0, Lnet/sf/saxon/Controller;->validationMode:I

    .line 28
    iput-boolean v2, p0, Lnet/sf/saxon/Controller;->inUse:Z

    .line 29
    iput-boolean v0, p0, Lnet/sf/saxon/Controller;->z:Z

    .line 30
    iput-object v1, p0, Lnet/sf/saxon/Controller;->J:Lnet/sf/saxon/lib/CollectionFinder;

    .line 31
    iput-object v1, p0, Lnet/sf/saxon/Controller;->O:Lnet/sf/saxon/trans/StylesheetCache;

    .line 32
    new-instance v0, Lcom/sunia/HTREnginev2/ace;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ace;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/Controller;->Q:Ljava/util/function/Function;

    .line 33
    iput-object p1, p0, Lnet/sf/saxon/Controller;->e:Lnet/sf/saxon/Configuration;

    .line 34
    iput-object p2, p0, Lnet/sf/saxon/Controller;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    .line 35
    new-instance p1, Lnet/sf/saxon/om/DocumentPool;

    invoke-direct {p1}, Lnet/sf/saxon/om/DocumentPool;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/Controller;->r:Lnet/sf/saxon/om/DocumentPool;

    .line 36
    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->reset()V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusTrackingIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/Controller;->c(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusTrackingIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusTrackingIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/Controller;->d(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusTrackingIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusTrackingIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/om/FocusTrackingIterator;

    invoke-direct {v0, p0}, Lnet/sf/saxon/om/FocusTrackingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    return-object v0
.end method

.method public static synthetic d(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusTrackingIterator;
    .locals 1

    instance-of v0, p0, Lnet/sf/saxon/tree/iter/GroundedIterator;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/tree/iter/GroundedIterator;

    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/GroundedIterator;->isActuallyGrounded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/expr/sort/GroupIterator;

    if-nez v0, :cond_1

    instance-of v0, p0, Lnet/sf/saxon/regex/RegexIterator;

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Lnet/sf/saxon/om/MemoSequence;

    invoke-direct {v0, p0}, Lnet/sf/saxon/om/MemoSequence;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    invoke-virtual {v0}, Lnet/sf/saxon/om/MemoSequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/om/FocusTrackingIterator;->track(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusTrackingIterator;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p0}, Lnet/sf/saxon/om/FocusTrackingIterator;->track(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusTrackingIterator;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lnet/sf/saxon/om/FocusTrackingIterator;->track(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusTrackingIterator;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public addTraceListener(Lnet/sf/saxon/lib/TraceListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/Controller;->traceListener:Lnet/sf/saxon/lib/TraceListener;

    invoke-static {v0, p1}, Lnet/sf/saxon/trace/TraceEventMulticaster;->add(Lnet/sf/saxon/lib/TraceListener;Lnet/sf/saxon/lib/TraceListener;)Lnet/sf/saxon/lib/TraceListener;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/Controller;->traceListener:Lnet/sf/saxon/lib/TraceListener;

    :cond_0
    return-void
.end method

.method public allocateSequenceOutputter()Lnet/sf/saxon/event/SequenceCollector;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p0

    .line 2
    new-instance v0, Lnet/sf/saxon/event/SequenceCollector;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/event/SequenceCollector;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;I)V

    return-object v0
.end method

.method public allocateSequenceOutputter(I)Lnet/sf/saxon/event/SequenceCollector;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p0

    .line 4
    new-instance v0, Lnet/sf/saxon/event/SequenceCollector;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/event/SequenceCollector;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;I)V

    return-object v0
.end method

.method public checkReadiness()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/Controller;->inUse:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/Controller;->g:Ljava/util/Map;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/Controller;->inUse:Z

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->clearPerTransformationData()V

    iget-object v0, p0, Lnet/sf/saxon/Controller;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnet/sf/saxon/Controller;->x:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/Controller;->w:Lnet/sf/saxon/value/DateTimeValue;

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Stylesheet has not been prepared"

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The Controller has not been initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The Controller is being used recursively or concurrently. This is not permitted."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearDocumentPool()V
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Executable;->getPackages()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/PackageData;

    iget-object v2, p0, Lnet/sf/saxon/Controller;->r:Lnet/sf/saxon/om/DocumentPool;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/PackageData;->getKeyManager()Lnet/sf/saxon/trans/KeyManager;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnet/sf/saxon/om/DocumentPool;->discardIndexes(Lnet/sf/saxon/trans/KeyManager;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/om/DocumentPool;

    invoke-direct {v0}, Lnet/sf/saxon/om/DocumentPool;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/Controller;->r:Lnet/sf/saxon/om/DocumentPool;

    return-void
.end method

.method public clearGlobalContextItem()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/Controller;->globalContextItem:Lnet/sf/saxon/om/Item;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/Controller;->f:Z

    return-void
.end method

.method public declared-synchronized clearPerTransformationData()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/Controller;->t:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/Controller;->principalResult:Lnet/sf/saxon/event/Receiver;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/sf/saxon/Controller;->k:Z

    iput-object v0, p0, Lnet/sf/saxon/Controller;->u:Lnet/sf/saxon/om/NodeInfo;

    const/4 v1, -0x1

    iput v1, p0, Lnet/sf/saxon/Controller;->v:I

    iput-object v0, p0, Lnet/sf/saxon/Controller;->O:Lnet/sf/saxon/trans/StylesheetCache;

    iput-object v0, p0, Lnet/sf/saxon/Controller;->s:Lnet/sf/saxon/z/IntHashMap;

    iget-boolean v1, p0, Lnet/sf/saxon/Controller;->f:Z

    if-nez v1, :cond_0

    iput-object v0, p0, Lnet/sf/saxon/Controller;->globalContextItem:Lnet/sf/saxon/om/Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBaseOutputURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Controller;->principalResultURI:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized getBindery(Lnet/sf/saxon/expr/PackageData;)Lnet/sf/saxon/expr/instruct/Bindery;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/Controller;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/instruct/Bindery;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/instruct/Bindery;

    invoke-direct {v0, p1}, Lnet/sf/saxon/expr/instruct/Bindery;-><init>(Lnet/sf/saxon/expr/PackageData;)V

    iget-object v1, p0, Lnet/sf/saxon/Controller;->g:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCollectionFinder()Lnet/sf/saxon/lib/CollectionFinder;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/Controller;->J:Lnet/sf/saxon/lib/CollectionFinder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/Controller;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getCollectionFinder()Lnet/sf/saxon/lib/CollectionFinder;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/Controller;->J:Lnet/sf/saxon/lib/CollectionFinder;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/Controller;->J:Lnet/sf/saxon/lib/CollectionFinder;

    return-object p0
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Controller;->e:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getConvertedParameter(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/Controller;->h:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    iget-boolean v1, p0, Lnet/sf/saxon/Controller;->i:Z

    invoke-virtual {v0, p1, p2, v1, p3}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;->convertParameterValue(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/value/SequenceType;ZLnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/Configuration;->isCompatible(Lnet/sf/saxon/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "A node supplied in a global parameter must be built using the same Configuration that was used to compile the stylesheet or query"

    const-string p2, "SXXP0004"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    instance-of p2, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p3

    const/16 v0, 0x9

    if-ne p3, v0, :cond_3

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getSystemId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    :try_start_0
    new-instance p3, Ljava/net/URI;

    invoke-direct {p3, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/net/URI;->isAbsolute()Z

    move-result p3

    if-eqz p3, :cond_3

    new-instance p3, Lnet/sf/saxon/om/DocumentKey;

    invoke-direct {p3, p2}, Lnet/sf/saxon/om/DocumentKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getDocumentPool()Lnet/sf/saxon/om/DocumentPool;

    move-result-object p0

    invoke-virtual {p0, p3}, Lnet/sf/saxon/om/DocumentPool;->find(Lnet/sf/saxon/om/DocumentKey;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object p2

    if-nez p2, :cond_3

    move-object p2, p1

    check-cast p2, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Lnet/sf/saxon/om/DocumentPool;->add(Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/om/DocumentKey;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method public getCurrentDateTime()Lnet/sf/saxon/value/DateTimeValue;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/Controller;->w:Lnet/sf/saxon/value/DateTimeValue;

    if-nez v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/value/DateTimeValue;->now()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/Controller;->w:Lnet/sf/saxon/value/DateTimeValue;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/Controller;->w:Lnet/sf/saxon/value/DateTimeValue;

    return-object p0
.end method

.method public getDefaultCollection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/Controller;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getDefaultCollection()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDocumentPool()Lnet/sf/saxon/om/DocumentPool;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Controller;->r:Lnet/sf/saxon/om/DocumentPool;

    return-object p0
.end method

.method public getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Controller;->p:Lnet/sf/saxon/lib/ErrorReporter;

    return-object p0
.end method

.method public getExecutable()Lnet/sf/saxon/expr/instruct/Executable;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Controller;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    return-object p0
.end method

.method public getFocusTrackerFactory(Z)Ljava/util/function/Function;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/function/Function<",
            "Lnet/sf/saxon/om/SequenceIterator;",
            "Lnet/sf/saxon/om/FocusTrackingIterator;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sf/saxon/Controller;->Z:Ljava/util/function/Function;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/sf/saxon/Controller;->Q:Ljava/util/function/Function;

    :goto_0
    return-object p1
.end method

.method public getGlobalContextItem()Lnet/sf/saxon/om/Item;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Controller;->globalContextItem:Lnet/sf/saxon/om/Item;

    return-object p0
.end method

.method public getImplicitTimezone()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getCurrentDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result p0

    return p0
.end method

.method public declared-synchronized getLocalIndexes()Lnet/sf/saxon/z/IntHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/z/IntHashMap<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lnet/sf/saxon/trans/KeyIndex;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/Controller;->s:Lnet/sf/saxon/z/IntHashMap;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/z/IntHashMap;

    invoke-direct {v0}, Lnet/sf/saxon/z/IntHashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/Controller;->s:Lnet/sf/saxon/z/IntHashMap;

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/Controller;->s:Lnet/sf/saxon/z/IntHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getModel()Lnet/sf/saxon/om/TreeModel;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Controller;->q:Lnet/sf/saxon/om/TreeModel;

    return-object p0
.end method

.method public getParameter(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/om/Sequence;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Controller;->h:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;->get(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public getPathMapForDocumentProjection()Lnet/sf/saxon/expr/parser/PathMap;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Controller;->y:Lnet/sf/saxon/expr/parser/PathMap;

    return-object p0
.end method

.method public getPrincipalResult()Lnet/sf/saxon/event/Receiver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Controller;->principalResult:Lnet/sf/saxon/event/Receiver;

    return-object p0
.end method

.method public declared-synchronized getRememberedNumber(Lnet/sf/saxon/om/NodeInfo;)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/Controller;->u:Lnet/sf/saxon/om/NodeInfo;

    if-ne v0, p1, :cond_0

    iget p1, p0, Lnet/sf/saxon/Controller;->v:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    monitor-exit p0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Controller;->m:Lnet/sf/saxon/lib/ResourceResolver;

    return-object p0
.end method

.method public getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/PreparedStylesheet;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/PreparedStylesheet;

    invoke-virtual {p0}, Lnet/sf/saxon/PreparedStylesheet;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSchemaValidationMode()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/Controller;->validationMode:I

    return p0
.end method

.method public getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/Controller;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/lib/ParseOptions;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/Controller;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    instance-of v0, p0, Lnet/sf/saxon/PreparedStylesheet;

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/PreparedStylesheet;

    invoke-virtual {p0}, Lnet/sf/saxon/PreparedStylesheet;->getTopLevelPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetPackage;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    invoke-static {}, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getStylesheetCache()Lnet/sf/saxon/trans/StylesheetCache;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/Controller;->O:Lnet/sf/saxon/trans/StylesheetCache;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/trans/StylesheetCache;

    invoke-direct {v0}, Lnet/sf/saxon/trans/StylesheetCache;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/Controller;->O:Lnet/sf/saxon/trans/StylesheetCache;

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/Controller;->O:Lnet/sf/saxon/trans/StylesheetCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTraceFunctionDestination()Lnet/sf/saxon/lib/Logger;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Controller;->l:Lnet/sf/saxon/lib/Logger;

    return-object p0
.end method

.method public getTraceListener()Lnet/sf/saxon/lib/TraceListener;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Controller;->traceListener:Lnet/sf/saxon/lib/TraceListener;

    return-object p0
.end method

.method public getUnparsedTextURIResolver()Lnet/sf/saxon/lib/UnparsedTextURIResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Controller;->n:Lnet/sf/saxon/lib/UnparsedTextURIResolver;

    return-object p0
.end method

.method public declared-synchronized getUserData(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/Controller;->t:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public handleXPathException(Lnet/sf/saxon/trans/XPathException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Lorg/xml/sax/SAXParseException;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Controller;->reportFatalError(Lnet/sf/saxon/trans/XPathException;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/Controller;->reportFatalError(Lnet/sf/saxon/trans/XPathException;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method public initializeController(Lnet/sf/saxon/expr/instruct/GlobalParameterSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/Controller;->g:Ljava/util/Map;

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/Controller;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/instruct/Executable;->checkSuppliedParameters(Lnet/sf/saxon/expr/instruct/GlobalParameterSet;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->hasBeenReported()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    iput-object p1, p0, Lnet/sf/saxon/Controller;->h:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    iget-object p1, p0, Lnet/sf/saxon/Controller;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    iget-object v0, p0, Lnet/sf/saxon/Controller;->globalContextItem:Lnet/sf/saxon/om/Item;

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->newXPathContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/expr/instruct/Executable;->checkInitialContextItem(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/Controller;->globalContextItem:Lnet/sf/saxon/om/Item;

    iget-object p1, p0, Lnet/sf/saxon/Controller;->traceListener:Lnet/sf/saxon/lib/TraceListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lnet/sf/saxon/lib/TraceListener;->open(Lnet/sf/saxon/Controller;)V

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->newXPathContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Controller;->preEvaluateGlobals(Lnet/sf/saxon/expr/XPathContext;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {p1, v0}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-interface {p0, p1}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    throw v0
.end method

.method public isStripSourceTree()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/Controller;->z:Z

    return p0
.end method

.method public isStylesheetContainingStripSpace()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/Controller;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    instance-of v0, p0, Lnet/sf/saxon/PreparedStylesheet;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/PreparedStylesheet;

    invoke-virtual {p0}, Lnet/sf/saxon/PreparedStylesheet;->getTopLevelPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetPackage;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStylesheetStrippingTypeAnnotations()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/Controller;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    instance-of v0, p0, Lnet/sf/saxon/PreparedStylesheet;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/PreparedStylesheet;

    invoke-virtual {p0}, Lnet/sf/saxon/PreparedStylesheet;->getTopLevelPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetPackage;->isStripsTypeAnnotations()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isTracing()Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/Controller;->traceListener:Lnet/sf/saxon/lib/TraceListener;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lnet/sf/saxon/Controller;->k:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public makeBuilder()Lnet/sf/saxon/event/Builder;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/Controller;->q:Lnet/sf/saxon/om/TreeModel;

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/om/TreeModel;->makeBuilder(Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/Builder;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/Controller;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->isTiming()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/event/Builder;->setTiming(Z)V

    iget-object p0, p0, Lnet/sf/saxon/Controller;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->isLineNumbering()Z

    move-result p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/event/Builder;->setLineNumbering(Z)V

    return-object v0
.end method

.method public makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;
    .locals 3

    new-instance v0, Lnet/sf/saxon/event/PipelineConfiguration;

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/event/PipelineConfiguration;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/event/PipelineConfiguration;->setController(Lnet/sf/saxon/Controller;)V

    new-instance v1, Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/saxon/lib/ParseOptions;-><init>(Lnet/sf/saxon/lib/ParseOptions;)V

    iget v2, p0, Lnet/sf/saxon/Controller;->validationMode:I

    invoke-virtual {v1, v2}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    iget-object p0, p0, Lnet/sf/saxon/Controller;->p:Lnet/sf/saxon/lib/ErrorReporter;

    invoke-virtual {v1, p0}, Lnet/sf/saxon/lib/ParseOptions;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/event/PipelineConfiguration;->setParseOptions(Lnet/sf/saxon/lib/ParseOptions;)V

    return-object v0
.end method

.method public makeSourceTree(Ljavax/xml/transform/Source;I)Lnet/sf/saxon/om/NodeInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/om/NodeSource;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/om/NodeSource;

    invoke-virtual {p1}, Lnet/sf/saxon/om/NodeSource;->getNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_1

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    return-object p1

    :cond_1
    instance-of v0, p1, Ljavax/xml/transform/sax/SAXSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/Controller;->e:Lnet/sf/saxon/Configuration;

    sget-object v2, Lnet/sf/saxon/lib/Feature;->IGNORE_SAX_SOURCE_PARSER:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {v0, v1}, Ljavax/xml/transform/sax/SAXSource;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljavax/xml/transform/stream/StreamSource;

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {v0}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lnet/sf/saxon/om/DocumentKey;

    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/sf/saxon/om/DocumentKey;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/sf/saxon/Controller;->r:Lnet/sf/saxon/om/DocumentPool;

    invoke-virtual {v2, v0}, Lnet/sf/saxon/om/DocumentPool;->find(Lnet/sf/saxon/om/DocumentKey;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->makeBuilder()Lnet/sf/saxon/event/Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lnet/sf/saxon/event/Builder;->setUseEventLocation(Z)V

    instance-of v3, v0, Lnet/sf/saxon/tree/tiny/TinyBuilder;

    if-eqz v3, :cond_4

    move-object v3, v0

    check-cast v3, Lnet/sf/saxon/tree/tiny/TinyBuilder;

    iget-object v4, p0, Lnet/sf/saxon/Controller;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {v4}, Lnet/sf/saxon/Configuration;->getTreeStatistics()Lnet/sf/saxon/tree/tiny/TreeStatistics;

    move-result-object v4

    iget-object v4, v4, Lnet/sf/saxon/tree/tiny/TreeStatistics;->SOURCE_DOCUMENT_STATISTICS:Lnet/sf/saxon/tree/tiny/Statistics;

    invoke-virtual {v3, v4}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->setStatistics(Lnet/sf/saxon/tree/tiny/Statistics;)V

    :cond_4
    invoke-static {}, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;

    move-result-object v3

    iget-object v4, p0, Lnet/sf/saxon/Controller;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {v4}, Lnet/sf/saxon/Configuration;->isStripsAllWhiteSpace()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->isStylesheetContainingStripSpace()Z

    move-result v4

    if-nez v4, :cond_6

    if-eq p2, v2, :cond_6

    const/4 v2, 0x2

    if-ne p2, v2, :cond_5

    goto :goto_1

    :cond_5
    move-object v2, v0

    goto :goto_2

    :cond_6
    :goto_1
    invoke-virtual {p0, v0}, Lnet/sf/saxon/Controller;->makeStripper(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Stripper;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object v3

    :goto_2
    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->isStylesheetStrippingTypeAnnotations()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lnet/sf/saxon/Controller;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {v4, v2}, Lnet/sf/saxon/Configuration;->getAnnotationStripper(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object v2

    :cond_7
    invoke-virtual {v0}, Lnet/sf/saxon/event/Builder;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/event/PipelineConfiguration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v5

    invoke-virtual {v5, p2}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    invoke-interface {v2, v4}, Lnet/sf/saxon/event/Receiver;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    invoke-static {p1, v2, v1}, Lnet/sf/saxon/event/Sender;->send(Ljavax/xml/transform/Source;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V

    instance-of p2, p1, Lnet/sf/saxon/lib/AugmentedSource;

    if-eqz p2, :cond_8

    move-object p2, p1

    check-cast p2, Lnet/sf/saxon/lib/AugmentedSource;

    invoke-virtual {p2}, Lnet/sf/saxon/lib/AugmentedSource;->isPleaseCloseAfterUse()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Lnet/sf/saxon/lib/AugmentedSource;->close()V

    :cond_8
    invoke-virtual {v0}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p2

    invoke-virtual {v0}, Lnet/sf/saxon/event/Builder;->reset()V

    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/om/DocumentKey;

    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lnet/sf/saxon/om/DocumentKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/Controller;->registerDocument(Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/om/DocumentKey;)V

    :cond_9
    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object p0

    invoke-interface {p0, v3}, Lnet/sf/saxon/om/TreeInfo;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    return-object p2
.end method

.method public makeStripper(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Stripper;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lnet/sf/saxon/event/Sink;

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/sf/saxon/event/Sink;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    :cond_0
    new-instance v0, Lnet/sf/saxon/event/Stripper;

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/event/Stripper;-><init>(Lnet/sf/saxon/om/SpaceStrippingRule;Lnet/sf/saxon/event/Receiver;)V

    return-object v0
.end method

.method public newXPathContext()Lnet/sf/saxon/expr/XPathContextMajor;
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/XPathContextMajor;-><init>(Lnet/sf/saxon/Controller;)V

    iget-object p0, p0, Lnet/sf/saxon/Controller;->principalResultURI:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/XPathContextMinor;->setCurrentOutputUri(Ljava/lang/String;)V

    return-object v0
.end method

.method public final pauseTracing(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/Controller;->k:Z

    return-void
.end method

.method public preEvaluateGlobals(Lnet/sf/saxon/expr/XPathContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Executable;->getPackages()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/PackageData;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/PackageData;->getGlobalVariableList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->isUnused()Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->evaluateVariable(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/Component;)Lnet/sf/saxon/om/GroundedValue;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/Actor;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v4

    invoke-virtual {p0, v4}, Lnet/sf/saxon/Controller;->getBindery(Lnet/sf/saxon/expr/PackageData;)Lnet/sf/saxon/expr/instruct/Bindery;

    move-result-object v4

    new-instance v5, Lnet/sf/saxon/expr/instruct/Bindery$FailureValue;

    invoke-direct {v5, v3}, Lnet/sf/saxon/expr/instruct/Bindery$FailureValue;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-virtual {v4, v2, v5}, Lnet/sf/saxon/expr/instruct/Bindery;->setGlobalVariable(Lnet/sf/saxon/expr/instruct/GlobalVariable;Lnet/sf/saxon/om/GroundedValue;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public prepareInputTree(Ljavax/xml/transform/Source;)Lnet/sf/saxon/om/NodeInfo;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/Configuration;->unravel(Ljavax/xml/transform/Source;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->isStylesheetStrippingTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/TreeInfo;->isTyped()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lnet/sf/saxon/tree/wrapper/TypeStrippedDocument;

    invoke-direct {v1, v0}, Lnet/sf/saxon/tree/wrapper/TypeStrippedDocument;-><init>(Lnet/sf/saxon/om/TreeInfo;)V

    invoke-virtual {v1, p1}, Lnet/sf/saxon/tree/wrapper/TypeStrippedDocument;->wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/TypeStrippedNode;

    move-result-object p1

    :cond_0
    iget-boolean v0, p0, Lnet/sf/saxon/Controller;->z:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->isStylesheetContainingStripSpace()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object p0

    invoke-interface {v0}, Lnet/sf/saxon/om/TreeInfo;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object v1

    if-eq v1, p0, :cond_2

    new-instance v1, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;

    invoke-direct {v1, v0, p0}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;-><init>(Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/om/SpaceStrippingRule;)V

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;->isPreservedNode(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {v1, p1}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;->wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public registerDocument(Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/om/DocumentKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Executable;->isSchemaAware()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Executable;->getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const-string p0, "The source document has been schema-validated, but the stylesheet is not schema-aware. A stylesheet is schema-aware if either (a) it contains an xsl:import-schema declaration, or (b) the stylesheet compiler was configured to be schema-aware."

    goto :goto_1

    :cond_1
    const-string p0, "The source document has been schema-validated, but the query is not schema-aware. A query is schema-aware if either (a) it contains an \'import schema\' declaration, or (b) the query compiler was configured to be schema-aware."

    :goto_1
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz p2, :cond_3

    iget-object p0, p0, Lnet/sf/saxon/Controller;->r:Lnet/sf/saxon/om/DocumentPool;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/om/DocumentPool;->add(Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/om/DocumentKey;)V

    :cond_3
    return-void
.end method

.method public declared-synchronized registerGlobalVariableDependency(Lnet/sf/saxon/expr/instruct/GlobalVariable;Lnet/sf/saxon/expr/instruct/GlobalVariable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    monitor-enter p0

    if-eq p1, p2, :cond_3

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/Controller;->j:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/Controller;->registerGlobalVariableDependency(Lnet/sf/saxon/expr/instruct/GlobalVariable;Lnet/sf/saxon/expr/instruct/GlobalVariable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/trans/XPathException$Circularity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Circular dependency among variables: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " depends on the value of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", which depends directly or indirectly on the value of "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/XPathException$Circularity;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/Controller;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/Controller;->j:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    :try_start_1
    new-instance p2, Lnet/sf/saxon/trans/XPathException$Circularity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Circular dependency among global variables: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " depends on its own value"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnet/sf/saxon/trans/XPathException$Circularity;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public removeTraceListener(Lnet/sf/saxon/lib/TraceListener;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/Controller;->traceListener:Lnet/sf/saxon/lib/TraceListener;

    invoke-static {v0, p1}, Lnet/sf/saxon/trace/TraceEventMulticaster;->remove(Lnet/sf/saxon/lib/TraceListener;Lnet/sf/saxon/lib/TraceListener;)Lnet/sf/saxon/lib/TraceListener;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/Controller;->traceListener:Lnet/sf/saxon/lib/TraceListener;

    return-void
.end method

.method public reportFatalError(Lnet/sf/saxon/trans/XPathException;)V
    .locals 2

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->hasBeenReported()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getHostLanguage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/Controller;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Executable;->getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    if-ne v0, v1, :cond_0

    const-string v0, "XSLT"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/XPathException;->setHostLanguage(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/Controller;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Executable;->getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/s9api/HostLanguage;->XQUERY:Lnet/sf/saxon/s9api/HostLanguage;

    if-ne v0, v1, :cond_1

    const-string v0, "XQuery"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/XPathException;->setHostLanguage(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-interface {p0, v0}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setHasBeenReported(Z)V

    :cond_2
    return-void
.end method

.method public reset()V
    .locals 4

    new-instance v0, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-direct {v0}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/Controller;->h:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    iget-object v0, p0, Lnet/sf/saxon/Controller;->e:Lnet/sf/saxon/Configuration;

    iget-object v1, p0, Lnet/sf/saxon/Controller;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/Configuration;->getFocusTrackerFactory(Lnet/sf/saxon/expr/instruct/Executable;Z)Ljava/util/function/Function;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/Controller;->Q:Ljava/util/function/Function;

    iget-object v0, p0, Lnet/sf/saxon/Controller;->e:Lnet/sf/saxon/Configuration;

    iget-object v1, p0, Lnet/sf/saxon/Controller;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lnet/sf/saxon/Configuration;->getFocusTrackerFactory(Lnet/sf/saxon/expr/instruct/Executable;Z)Ljava/util/function/Function;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/Controller;->Z:Ljava/util/function/Function;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/Controller;->m:Lnet/sf/saxon/lib/ResourceResolver;

    iget-object v1, p0, Lnet/sf/saxon/Controller;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getUnparsedTextURIResolver()Lnet/sf/saxon/lib/UnparsedTextURIResolver;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/Controller;->n:Lnet/sf/saxon/lib/UnparsedTextURIResolver;

    iget-object v1, p0, Lnet/sf/saxon/Controller;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getSchemaValidationMode()I

    move-result v1

    iput v1, p0, Lnet/sf/saxon/Controller;->validationMode:I

    iget-object v1, p0, Lnet/sf/saxon/Controller;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->makeErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/Controller;->p:Lnet/sf/saxon/lib/ErrorReporter;

    iput-object v0, p0, Lnet/sf/saxon/Controller;->traceListener:Lnet/sf/saxon/lib/TraceListener;

    iget-object v1, p0, Lnet/sf/saxon/Controller;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/Controller;->l:Lnet/sf/saxon/lib/Logger;

    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/Controller;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->makeTraceListener()Lnet/sf/saxon/lib/TraceListener;

    move-result-object v1
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/Controller;->addTraceListener(Lnet/sf/saxon/lib/TraceListener;)V

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/Controller;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/lib/ParseOptions;->getModel()Lnet/sf/saxon/om/TreeModel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/Controller;->setModel(Lnet/sf/saxon/om/TreeModel;)V

    iput-object v0, p0, Lnet/sf/saxon/Controller;->globalContextItem:Lnet/sf/saxon/om/Item;

    iput-object v0, p0, Lnet/sf/saxon/Controller;->w:Lnet/sf/saxon/value/DateTimeValue;

    iput-boolean v2, p0, Lnet/sf/saxon/Controller;->x:Z

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->clearPerTransformationData()V

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setApplyFunctionConversionRulesToExternalVariables(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/Controller;->i:Z

    return-void
.end method

.method public setBaseOutputURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Controller;->principalResultURI:Ljava/lang/String;

    return-void
.end method

.method public setCollectionFinder(Lnet/sf/saxon/lib/CollectionFinder;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Controller;->J:Lnet/sf/saxon/lib/CollectionFinder;

    return-void
.end method

.method public setCurrentDateTime(Lnet/sf/saxon/value/DateTimeValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/Controller;->w:Lnet/sf/saxon/value/DateTimeValue;

    if-nez v0, :cond_1

    sget-object v0, Lnet/sf/saxon/functions/AccessorFn$Component;->TIMEZONE:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/DateTimeValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/Controller;->w:Lnet/sf/saxon/value/DateTimeValue;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/saxon/Controller;->x:Z

    return-void

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "No timezone is present in supplied value of current date/time"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Current date and time can only be set once, and cannot subsequently be changed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDefaultCollection(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Controller;->o:Ljava/lang/String;

    return-void
.end method

.method public setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Controller;->p:Lnet/sf/saxon/lib/ErrorReporter;

    return-void
.end method

.method public setFocusTrackerFactory(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lnet/sf/saxon/om/SequenceIterator;",
            "Lnet/sf/saxon/om/FocusTrackingIterator;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/Controller;->Q:Ljava/util/function/Function;

    return-void
.end method

.method public setGlobalContextItem(Lnet/sf/saxon/om/Item;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/Controller;->setGlobalContextItem(Lnet/sf/saxon/om/Item;Z)V

    return-void
.end method

.method public setGlobalContextItem(Lnet/sf/saxon/om/Item;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-nez p2, :cond_2

    .line 2
    iget-object p2, p0, Lnet/sf/saxon/Controller;->globalContextItem:Lnet/sf/saxon/om/Item;

    instance-of v0, p2, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;

    if-eqz v0, :cond_0

    check-cast p2, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;

    invoke-virtual {p2}, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p2

    if-ne p2, p1, :cond_0

    return-void

    .line 3
    :cond_0
    instance-of p2, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz p2, :cond_2

    .line 4
    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    .line 5
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->asActiveSource()Lnet/sf/saxon/lib/ActiveSource;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/Controller;->prepareInputTree(Ljavax/xml/transform/Source;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p2

    .line 6
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Lnet/sf/saxon/om/DocumentKey;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/om/DocumentKey;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getDocumentPool()Lnet/sf/saxon/om/DocumentPool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/sf/saxon/om/DocumentPool;->find(Lnet/sf/saxon/om/DocumentKey;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 9
    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getDocumentPool()Lnet/sf/saxon/om/DocumentPool;

    move-result-object v1

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lnet/sf/saxon/om/DocumentPool;->add(Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/om/DocumentKey;)V

    :cond_1
    move-object p1, p2

    .line 10
    :cond_2
    instance-of p2, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz p2, :cond_6

    .line 11
    move-object p2, p1

    check-cast p2, Lnet/sf/saxon/om/NodeInfo;

    .line 12
    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 13
    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/Controller;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Executable;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->isCompatible(Lnet/sf/saxon/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/om/TreeInfo;->isTyped()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lnet/sf/saxon/Controller;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/instruct/Executable;->isSchemaAware()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 15
    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot use a schema-validated source document unless the stylesheet is schema-aware"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Source document and stylesheet must use the same or compatible Configurations"

    const-string p2, "SXXP0004"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_5
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "The supplied source document must be associated with a Configuration"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_6
    :goto_0
    iput-object p1, p0, Lnet/sf/saxon/Controller;->globalContextItem:Lnet/sf/saxon/om/Item;

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lnet/sf/saxon/Controller;->f:Z

    return-void
.end method

.method public setMemoizingFocusTrackerFactory()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/bce;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/bce;-><init>()V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Controller;->setFocusTrackerFactory(Ljava/util/function/Function;)V

    return-void
.end method

.method public setModel(Lnet/sf/saxon/om/TreeModel;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Controller;->q:Lnet/sf/saxon/om/TreeModel;

    return-void
.end method

.method public setMultithreadedFocusTrackerFactory(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lnet/sf/saxon/om/SequenceIterator;",
            "Lnet/sf/saxon/om/FocusTrackingIterator;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/Controller;->Z:Ljava/util/function/Function;

    return-void
.end method

.method public declared-synchronized setRememberedNumber(Lnet/sf/saxon/om/NodeInfo;I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lnet/sf/saxon/Controller;->u:Lnet/sf/saxon/om/NodeInfo;

    iput p2, p0, Lnet/sf/saxon/Controller;->v:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Controller;->m:Lnet/sf/saxon/lib/ResourceResolver;

    return-void
.end method

.method public setSchemaValidationMode(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/Controller;->validationMode:I

    return-void
.end method

.method public setStripSourceTrees(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/Controller;->z:Z

    return-void
.end method

.method public setTraceFunctionDestination(Lnet/sf/saxon/lib/Logger;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Controller;->l:Lnet/sf/saxon/lib/Logger;

    return-void
.end method

.method public setTraceListener(Lnet/sf/saxon/lib/TraceListener;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Controller;->traceListener:Lnet/sf/saxon/lib/TraceListener;

    return-void
.end method

.method public setUnparsedTextURIResolver(Lnet/sf/saxon/lib/UnparsedTextURIResolver;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Controller;->n:Lnet/sf/saxon/lib/UnparsedTextURIResolver;

    return-void
.end method

.method public setUseDocumentProjection(Lnet/sf/saxon/expr/parser/PathMap;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Controller;->y:Lnet/sf/saxon/expr/parser/PathMap;

    return-void
.end method

.method public declared-synchronized setUserData(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p3, :cond_0

    iget-object p2, p0, Lnet/sf/saxon/Controller;->t:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lnet/sf/saxon/Controller;->t:Ljava/util/HashMap;

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V
    .locals 1

    if-nez p3, :cond_0

    sget-object p3, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    :cond_0
    if-nez p2, :cond_1

    const-string p2, "SXWN9000"

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "Unspecified warning"

    :cond_2
    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingIncident;

    invoke-direct {v0, p1, p2, p3}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XmlProcessingIncident;->asWarning()Lnet/sf/saxon/trans/XmlProcessingIncident;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/Controller;->p:Lnet/sf/saxon/lib/ErrorReporter;

    invoke-interface {p0, p1}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    return-void
.end method
