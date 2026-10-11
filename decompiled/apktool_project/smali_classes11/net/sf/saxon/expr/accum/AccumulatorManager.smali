.class public Lnet/sf/saxon/expr/accum/AccumulatorManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lnet/sf/saxon/expr/accum/AccumulatorData;


# instance fields
.field public final transient a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lnet/sf/saxon/om/TreeInfo;",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/expr/accum/Accumulator;",
            "Lnet/sf/saxon/expr/accum/IAccumulatorData;",
            ">;>;"
        }
    .end annotation
.end field

.field public final transient b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lnet/sf/saxon/om/TreeInfo;",
            "Ljava/util/Set<",
            "+",
            "Lnet/sf/saxon/expr/accum/Accumulator;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/accum/AccumulatorData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/accum/AccumulatorData;-><init>(Lnet/sf/saxon/expr/accum/Accumulator;)V

    sput-object v0, Lnet/sf/saxon/expr/accum/AccumulatorManager;->c:Lnet/sf/saxon/expr/accum/AccumulatorData;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/accum/AccumulatorManager;->a:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/accum/AccumulatorManager;->b:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public declared-synchronized addAccumulatorData(Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/expr/accum/Accumulator;Lnet/sf/saxon/expr/accum/IAccumulatorData;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/expr/accum/AccumulatorManager;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/accum/IAccumulatorData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/expr/accum/AccumulatorManager;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAccumulatorData(Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/expr/accum/Accumulator;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/accum/IAccumulatorData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/expr/accum/AccumulatorManager;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/accum/IAccumulatorData;

    if-eqz v1, :cond_2

    sget-object p1, Lnet/sf/saxon/expr/accum/AccumulatorManager;->c:Lnet/sf/saxon/expr/accum/AccumulatorData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, p1, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Accumulator "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/accum/Accumulator;->getAccumulatorName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " requires access to its own value"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "XTDE3400"

    invoke-direct {p1, p2, p3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/expr/accum/AccumulatorManager;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v1, Lnet/sf/saxon/expr/accum/AccumulatorManager;->c:Lnet/sf/saxon/expr/accum/AccumulatorData;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v1, p1, Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;->isCopyAccumulators()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    invoke-virtual {p1}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getOriginalNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/expr/accum/AccumulatorManager;->getAccumulatorData(Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/expr/accum/Accumulator;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/accum/IAccumulatorData;

    move-result-object p1

    new-instance p3, Lnet/sf/saxon/expr/accum/VirtualAccumulatorData;

    invoke-direct {p3, p1}, Lnet/sf/saxon/expr/accum/VirtualAccumulatorData;-><init>(Lnet/sf/saxon/expr/accum/IAccumulatorData;)V

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p3

    :cond_3
    :try_start_2
    instance-of v1, p1, Lnet/sf/saxon/tree/tiny/TinyTree;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {v1}, Lnet/sf/saxon/tree/tiny/TinyTree;->getCopiedFrom()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getCopiedFrom()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lnet/sf/saxon/expr/accum/AccumulatorManager;->getAccumulatorData(Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/expr/accum/Accumulator;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/accum/IAccumulatorData;

    move-result-object p2

    new-instance p3, Lnet/sf/saxon/expr/accum/PathMappedAccumulatorData;

    check-cast p1, Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {p1}, Lnet/sf/saxon/tree/tiny/TinyTree;->getCopiedFrom()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lnet/sf/saxon/expr/accum/PathMappedAccumulatorData;-><init>(Lnet/sf/saxon/expr/accum/IAccumulatorData;Lnet/sf/saxon/om/NodeInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p3

    :cond_4
    :try_start_3
    new-instance v1, Lnet/sf/saxon/expr/accum/AccumulatorData;

    invoke-direct {v1, p2}, Lnet/sf/saxon/expr/accum/AccumulatorData;-><init>(Lnet/sf/saxon/expr/accum/Accumulator;)V

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->newCleanContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p3

    invoke-virtual {p2}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v2

    invoke-virtual {p3, v2}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentComponent(Lnet/sf/saxon/expr/Component;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {p1}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    invoke-virtual {v1, p1, p3}, Lnet/sf/saxon/expr/accum/AccumulatorData;->buildIndex(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v1

    :catch_0
    move-exception p1

    :try_start_5
    new-instance p3, Lnet/sf/saxon/expr/accum/FailedAccumulatorData;

    invoke-direct {p3, p2, p1}, Lnet/sf/saxon/expr/accum/FailedAccumulatorData;-><init>(Lnet/sf/saxon/expr/accum/Accumulator;Lnet/sf/saxon/trans/XPathException;)V

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object p3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getApplicableAccumulators(Lnet/sf/saxon/om/TreeInfo;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/TreeInfo;",
            ")",
            "Ljava/util/Set<",
            "+",
            "Lnet/sf/saxon/expr/accum/Accumulator;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/accum/AccumulatorManager;->b:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public isApplicable(Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/expr/accum/Accumulator;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/accum/AccumulatorManager;->b:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_1

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setApplicableAccumulators(Lnet/sf/saxon/om/TreeInfo;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/TreeInfo;",
            "Ljava/util/Set<",
            "+",
            "Lnet/sf/saxon/expr/accum/Accumulator;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/accum/AccumulatorManager;->b:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
