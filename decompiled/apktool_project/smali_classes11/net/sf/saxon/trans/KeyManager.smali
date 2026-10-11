.class public Lnet/sf/saxon/trans/KeyManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnet/sf/saxon/expr/PackageData;

.field public final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/trans/KeyDefinitionSet;",
            ">;"
        }
    .end annotation
.end field

.field public transient c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lnet/sf/saxon/om/TreeInfo;",
            "Ljava/lang/ref/WeakReference<",
            "Lnet/sf/saxon/z/IntHashMap<",
            "Lnet/sf/saxon/trans/KeyIndex;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/expr/PackageData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/sf/saxon/trans/KeyManager;->a:Lnet/sf/saxon/expr/PackageData;

    new-instance p2, Ljava/util/HashMap;

    const/16 v0, 0xa

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p2, p0, Lnet/sf/saxon/trans/KeyManager;->b:Ljava/util/HashMap;

    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2, v0}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object p2, p0, Lnet/sf/saxon/trans/KeyManager;->c:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/KeyManager;->i(Lnet/sf/saxon/Configuration;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lnet/sf/saxon/trans/KeyDefinitionSet;Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/KeyIndex;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lnet/sf/saxon/trans/KeyIndex;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/KeyDefinitionSet;->isRangeKey()Z

    move-result v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/KeyIndex;-><init>(Z)V

    invoke-virtual {v0, p1, p2, p3}, Lnet/sf/saxon/trans/KeyIndex;->buildIndex(Lnet/sf/saxon/trans/KeyDefinitionSet;Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/expr/XPathContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addKeyDefinition(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/trans/KeyDefinition;ZLnet/sf/saxon/Configuration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/trans/KeyManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trans/KeyDefinitionSet;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/trans/KeyDefinitionSet;

    iget-object v1, p0, Lnet/sf/saxon/trans/KeyManager;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lnet/sf/saxon/trans/KeyDefinitionSet;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    iget-object v1, p0, Lnet/sf/saxon/trans/KeyManager;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Lnet/sf/saxon/trans/KeyDefinitionSet;->addKeyDefinition(Lnet/sf/saxon/trans/KeyDefinition;)V

    const/4 p1, 0x0

    if-nez p3, :cond_1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/KeyDefinitionSet;->setReusable(Z)V

    :cond_1
    invoke-virtual {v0}, Lnet/sf/saxon/trans/KeyDefinitionSet;->isBackwardsCompatible()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {v0}, Lnet/sf/saxon/trans/KeyDefinitionSet;->getKeyDefinitions()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/sf/saxon/trans/KeyDefinition;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lnet/sf/saxon/trans/KeyDefinition;->setBackwardsCompatible(Z)V

    invoke-virtual {p3}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lnet/sf/saxon/expr/AtomicSequenceConverter;

    invoke-virtual {p3}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lnet/sf/saxon/expr/AtomicSequenceConverter;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)V

    invoke-virtual {v0, p4, p1}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->allocateConverterStatically(Lnet/sf/saxon/Configuration;Z)V

    invoke-virtual {p3, v0}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Lnet/sf/saxon/trans/KeyIndex;Lnet/sf/saxon/trans/KeyDefinitionSet;Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1, p2, p3, p4}, Lnet/sf/saxon/trans/KeyIndex;->buildIndex(Lnet/sf/saxon/trans/KeyDefinitionSet;Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/expr/XPathContext;)V

    return-void
.end method

.method public final declared-synchronized c(Lnet/sf/saxon/om/TreeInfo;ILnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/KeyIndex;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p3

    invoke-virtual {p3}, Lnet/sf/saxon/Controller;->getLocalIndexes()Lnet/sf/saxon/z/IntHashMap;

    move-result-object p3

    invoke-virtual {p3, p2}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_1
    invoke-interface {p1}, Lnet/sf/saxon/om/TreeInfo;->getDocumentNumber()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/trans/KeyIndex;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearDocumentIndexes(Lnet/sf/saxon/om/TreeInfo;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/trans/KeyManager;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Lnet/sf/saxon/om/TreeInfo;I)Lnet/sf/saxon/trans/KeyIndex;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/trans/KeyManager;->c:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/trans/KeyManager;->c:Ljava/util/WeakHashMap;

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/trans/KeyManager;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p1, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/z/IntHashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_2

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_2
    invoke-virtual {p1, p2}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/trans/KeyIndex;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e(Lnet/sf/saxon/trans/KeyDefinitionSet;Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/KeyIndex;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/trans/KeyDefinitionSet;->getKeySetNumber()I

    move-result v0

    invoke-virtual {p0, p2, v0, p3}, Lnet/sf/saxon/trans/KeyManager;->c(Lnet/sf/saxon/om/TreeInfo;ILnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/KeyIndex;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lnet/sf/saxon/trans/KeyIndex;->getStatus()Lnet/sf/saxon/trans/KeyIndex$Status;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/trans/KeyIndex$Status;->UNDER_CONSTRUCTION:Lnet/sf/saxon/trans/KeyIndex$Status;

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lnet/sf/saxon/trans/KeyIndex;->isCreatedInThisThread()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Key definition "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/KeyDefinitionSet;->getKeyName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is circular"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    const-string p1, "XTDE0640"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object v3, Lnet/sf/saxon/trans/KeyIndex$Status;->FAILED:Lnet/sf/saxon/trans/KeyIndex$Status;

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Construction of index for key "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/KeyDefinitionSet;->getKeyName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was unsuccessful"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    if-nez v1, :cond_5

    new-instance v1, Lnet/sf/saxon/trans/KeyIndex;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/KeyDefinitionSet;->isRangeKey()Z

    move-result v2

    invoke-direct {v1, v2}, Lnet/sf/saxon/trans/KeyIndex;-><init>(Z)V

    monitor-enter p0

    :try_start_0
    sget-object v2, Lnet/sf/saxon/trans/KeyIndex$Status;->UNDER_CONSTRUCTION:Lnet/sf/saxon/trans/KeyIndex$Status;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/trans/KeyIndex;->setStatus(Lnet/sf/saxon/trans/KeyIndex$Status;)V

    invoke-virtual {p0, p2, v0, v1, p3}, Lnet/sf/saxon/trans/KeyManager;->g(Lnet/sf/saxon/om/TreeInfo;ILnet/sf/saxon/trans/KeyIndex;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/KeyIndex;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/trans/KeyIndex;->getStatus()Lnet/sf/saxon/trans/KeyIndex$Status;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/trans/KeyIndex$Status;->BUILT:Lnet/sf/saxon/trans/KeyIndex$Status;

    if-ne v2, v3, :cond_4

    monitor-exit p0

    return-object v1

    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p0, v1, p1, p2, p3}, Lnet/sf/saxon/trans/KeyManager;->b(Lnet/sf/saxon/trans/KeyIndex;Lnet/sf/saxon/trans/KeyDefinitionSet;Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/expr/XPathContext;)V

    monitor-enter p0

    :try_start_1
    invoke-virtual {v1, v3}, Lnet/sf/saxon/trans/KeyIndex;->setStatus(Lnet/sf/saxon/trans/KeyIndex$Status;)V

    invoke-virtual {p0, p2, v0, v1, p3}, Lnet/sf/saxon/trans/KeyManager;->g(Lnet/sf/saxon/om/TreeInfo;ILnet/sf/saxon/trans/KeyIndex;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/KeyIndex;

    move-result-object v1

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_5
    :goto_1
    return-object v1
.end method

.method public exportKeys(Lnet/sf/saxon/trace/ExpressionPresenter;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/trace/ExpressionPresenter;",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/expr/Component;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/trans/KeyManager;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/trans/KeyDefinitionSet;

    invoke-virtual {v1}, Lnet/sf/saxon/trans/KeyDefinitionSet;->isReusable()Z

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trans/KeyDefinitionSet;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/KeyDefinitionSet;->getKeyDefinitions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/trans/KeyDefinition;

    invoke-virtual {v2}, Lnet/sf/saxon/trans/KeyDefinition;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    const/16 v4, 0x232

    invoke-static {v4}, Lnet/sf/saxon/om/StandardNames;->getStructuredQName(I)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, p1, v1, p2}, Lnet/sf/saxon/trans/KeyDefinition;->export(Lnet/sf/saxon/trace/ExpressionPresenter;ZLjava/util/Map;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final f(Lnet/sf/saxon/trans/KeyDefinitionSet;Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/KeyIndex;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/trans/KeyDefinitionSet;->getKeySetNumber()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lnet/sf/saxon/trans/KeyManager;->d(Lnet/sf/saxon/om/TreeInfo;I)Lnet/sf/saxon/trans/KeyIndex;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lnet/sf/saxon/trans/KeyIndex;->getStatus()Lnet/sf/saxon/trans/KeyIndex$Status;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/trans/KeyIndex$Status;->UNDER_CONSTRUCTION:Lnet/sf/saxon/trans/KeyIndex$Status;

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lnet/sf/saxon/trans/KeyIndex;->isCreatedInThisThread()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Key definition "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/KeyDefinitionSet;->getKeyName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is circular"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    const-string p1, "XTDE0640"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object v3, Lnet/sf/saxon/trans/KeyIndex$Status;->FAILED:Lnet/sf/saxon/trans/KeyIndex$Status;

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Construction of index for key "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/KeyDefinitionSet;->getKeyName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was unsuccessful"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    if-nez v1, :cond_5

    new-instance v1, Lnet/sf/saxon/trans/KeyIndex;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/KeyDefinitionSet;->isRangeKey()Z

    move-result v2

    invoke-direct {v1, v2}, Lnet/sf/saxon/trans/KeyIndex;-><init>(Z)V

    monitor-enter p0

    :try_start_0
    sget-object v2, Lnet/sf/saxon/trans/KeyIndex$Status;->UNDER_CONSTRUCTION:Lnet/sf/saxon/trans/KeyIndex$Status;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/trans/KeyIndex;->setStatus(Lnet/sf/saxon/trans/KeyIndex$Status;)V

    invoke-virtual {p0, p2, v0, v1, p3}, Lnet/sf/saxon/trans/KeyManager;->h(Lnet/sf/saxon/om/TreeInfo;ILnet/sf/saxon/trans/KeyIndex;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/KeyIndex;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/trans/KeyIndex;->getStatus()Lnet/sf/saxon/trans/KeyIndex$Status;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/trans/KeyIndex$Status;->BUILT:Lnet/sf/saxon/trans/KeyIndex$Status;

    if-ne v2, v3, :cond_4

    monitor-exit p0

    return-object v1

    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p0, v1, p1, p2, p3}, Lnet/sf/saxon/trans/KeyManager;->b(Lnet/sf/saxon/trans/KeyIndex;Lnet/sf/saxon/trans/KeyDefinitionSet;Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/expr/XPathContext;)V

    monitor-enter p0

    :try_start_1
    invoke-virtual {v1, v3}, Lnet/sf/saxon/trans/KeyIndex;->setStatus(Lnet/sf/saxon/trans/KeyIndex$Status;)V

    invoke-virtual {p0, p2, v0, v1, p3}, Lnet/sf/saxon/trans/KeyManager;->h(Lnet/sf/saxon/om/TreeInfo;ILnet/sf/saxon/trans/KeyIndex;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/KeyIndex;

    move-result-object v1

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_5
    :goto_1
    return-object v1
.end method

.method public findKeyDefinition(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/Expression;Ljava/lang/String;)Lnet/sf/saxon/trans/KeyDefinitionSet;
    .locals 4

    iget-object p0, p0, Lnet/sf/saxon/trans/KeyManager;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trans/KeyDefinitionSet;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/KeyDefinitionSet;->getKeyDefinitions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/KeyDefinitionSet;->getKeyDefinitions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/trans/KeyDefinition;

    invoke-virtual {v2}, Lnet/sf/saxon/trans/KeyDefinition;->getMatch()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/Expression;->isEqual(Lnet/sf/saxon/expr/Expression;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lnet/sf/saxon/trans/KeyDefinition;->getUse()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, p2}, Lnet/sf/saxon/expr/Expression;->isEqual(Lnet/sf/saxon/expr/Expression;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lnet/sf/saxon/trans/KeyDefinition;->getCollationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final declared-synchronized g(Lnet/sf/saxon/om/TreeInfo;ILnet/sf/saxon/trans/KeyIndex;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/KeyIndex;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-interface {p4}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p4

    invoke-virtual {p4}, Lnet/sf/saxon/Controller;->getLocalIndexes()Lnet/sf/saxon/z/IntHashMap;

    move-result-object p4

    invoke-virtual {p4, p2}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p4, p2, v0}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/om/TreeInfo;->getDocumentNumber()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/trans/KeyIndex;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lnet/sf/saxon/trans/KeyIndex;->getStatus()Lnet/sf/saxon/trans/KeyIndex$Status;

    move-result-object p4

    sget-object v1, Lnet/sf/saxon/trans/KeyIndex$Status;->BUILT:Lnet/sf/saxon/trans/KeyIndex$Status;

    if-eq p4, v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p3, p2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/om/TreeInfo;->getDocumentNumber()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object p3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAllKeyDefinitionSets()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lnet/sf/saxon/trans/KeyDefinitionSet;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/trans/KeyManager;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getKeyDefinitionSet(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/trans/KeyDefinitionSet;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/KeyManager;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/trans/KeyDefinitionSet;

    return-object p0
.end method

.method public getNumberOfKeyDefinitions()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/KeyManager;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    return p0
.end method

.method public final declared-synchronized h(Lnet/sf/saxon/om/TreeInfo;ILnet/sf/saxon/trans/KeyIndex;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/KeyIndex;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/trans/KeyManager;->c:Ljava/util/WeakHashMap;

    const/16 v1, 0xa

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/trans/KeyManager;->c:Ljava/util/WeakHashMap;

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/trans/KeyManager;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/z/IntHashMap;

    goto :goto_2

    :cond_2
    :goto_0
    new-instance v0, Lnet/sf/saxon/z/IntHashMap;

    invoke-direct {v0, v1}, Lnet/sf/saxon/z/IntHashMap;-><init>(I)V

    invoke-interface {p4}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Controller;->getDocumentPool()Lnet/sf/saxon/om/DocumentPool;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/om/DocumentPool;->contains(Lnet/sf/saxon/om/TreeInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p4}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p4

    const-string v1, "saxon:key-index-list"

    invoke-virtual {p4, p1, v1, v0}, Lnet/sf/saxon/Controller;->setUserData(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string p4, "saxon:key-index-list"

    invoke-interface {p1, p4, v0}, Lnet/sf/saxon/om/TreeInfo;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    iget-object p4, p0, Lnet/sf/saxon/trans/KeyManager;->c:Ljava/util/WeakHashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p4, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    :goto_2
    invoke-virtual {p1, p2}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lnet/sf/saxon/trans/KeyIndex;

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Lnet/sf/saxon/trans/KeyIndex;->getStatus()Lnet/sf/saxon/trans/KeyIndex$Status;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/trans/KeyIndex$Status;->BUILT:Lnet/sf/saxon/trans/KeyIndex$Status;

    if-eq v0, v1, :cond_4

    goto :goto_3

    :cond_4
    move-object p3, p4

    goto :goto_4

    :cond_5
    :goto_3
    invoke-virtual {p1, p2, p3}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    monitor-exit p0

    return-object p3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized i(Lnet/sf/saxon/Configuration;)V
    .locals 9

    monitor-enter p0

    const/16 v0, 0x232

    :try_start_0
    invoke-static {v0}, Lnet/sf/saxon/om/StandardNames;->getStructuredQName(I)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/trans/KeyManager;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v4, Lnet/sf/saxon/pattern/BasePatternWithPredicate;

    new-instance v1, Lnet/sf/saxon/pattern/NodeTestPattern;

    new-instance v2, Lnet/sf/saxon/pattern/MultipleNodeKindTest;

    sget-object v3, Lnet/sf/saxon/type/UType;->ELEMENT_OR_ATTRIBUTE:Lnet/sf/saxon/type/UType;

    invoke-direct {v2, v3}, Lnet/sf/saxon/pattern/MultipleNodeKindTest;-><init>(Lnet/sf/saxon/type/UType;)V

    invoke-direct {v1, v2}, Lnet/sf/saxon/pattern/NodeTestPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    new-instance v2, Lnet/sf/saxon/functions/IsIdRef;

    invoke-direct {v2}, Lnet/sf/saxon/functions/IsIdRef;-><init>()V

    const/4 v3, 0x0

    new-array v5, v3, [Lnet/sf/saxon/expr/Expression;

    invoke-static {v2, v5}, Lnet/sf/saxon/functions/IntegratedFunctionLibrary;->makeFunctionCall(Lnet/sf/saxon/lib/ExtensionFunctionDefinition;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-direct {v4, v1, v2}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;-><init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/Expression;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-direct {v1, p1}, Lnet/sf/saxon/sxpath/IndependentContext;-><init>(Lnet/sf/saxon/Configuration;)V

    iget-object v2, p0, Lnet/sf/saxon/trans/KeyManager;->a:Lnet/sf/saxon/expr/PackageData;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setXPathLanguageLevel(I)V

    new-instance v2, Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    invoke-direct {v2, v1}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;-><init>(Lnet/sf/saxon/expr/StaticContext;)V

    const-string v1, "string"

    const/4 v8, 0x1

    new-array v5, v8, [Lnet/sf/saxon/expr/Expression;

    new-instance v6, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {v6}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    aput-object v6, v5, v3

    invoke-static {v1, v2, v5}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    const-string v5, "tokenize"

    new-array v6, v8, [Lnet/sf/saxon/expr/Expression;

    aput-object v1, v6, v3

    invoke-static {v5, v2, v6}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    new-instance v3, Lnet/sf/saxon/trans/SymbolicName;

    const/16 v1, 0xa9

    invoke-direct {v3, v1, v0}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    new-instance v1, Lnet/sf/saxon/trans/KeyDefinition;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lnet/sf/saxon/trans/KeyDefinition;-><init>(Lnet/sf/saxon/trans/SymbolicName;Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/Expression;Ljava/lang/String;Lnet/sf/saxon/lib/StringCollator;)V

    iget-object v2, p0, Lnet/sf/saxon/trans/KeyManager;->a:Lnet/sf/saxon/expr/PackageData;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/instruct/Actor;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/trans/KeyDefinition;->setIndexedItemType(Lnet/sf/saxon/type/BuiltInAtomicType;)V

    invoke-virtual {p0, v0, v1, v8, p1}, Lnet/sf/saxon/trans/KeyManager;->addKeyDefinition(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/trans/KeyDefinition;ZLnet/sf/saxon/Configuration;)V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public obtainIndex(Lnet/sf/saxon/trans/KeyDefinitionSet;Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/KeyIndex;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/trans/KeyDefinitionSet;->isReusable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/trans/KeyManager;->f(Lnet/sf/saxon/trans/KeyDefinitionSet;Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/KeyIndex;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/trans/KeyManager;->e(Lnet/sf/saxon/trans/KeyDefinitionSet;Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/KeyIndex;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized preRegisterKeyDefinition(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/trans/KeyManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trans/KeyDefinitionSet;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/trans/KeyDefinitionSet;

    iget-object v1, p0, Lnet/sf/saxon/trans/KeyManager;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lnet/sf/saxon/trans/KeyDefinitionSet;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    iget-object v1, p0, Lnet/sf/saxon/trans/KeyManager;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public selectByCompositeKey(Lnet/sf/saxon/trans/KeyDefinitionSet;Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p4}, Lnet/sf/saxon/trans/KeyManager;->obtainIndex(Lnet/sf/saxon/trans/KeyDefinitionSet;Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/KeyIndex;

    move-result-object p0

    invoke-virtual {p0, p3}, Lnet/sf/saxon/trans/KeyIndex;->getComposite(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public selectByKey(Lnet/sf/saxon/trans/KeyDefinitionSet;Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-nez p3, :cond_0

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/trans/KeyDefinitionSet;->isBackwardsCompatible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {p3, v1, v0}, Lnet/sf/saxon/type/Converter;->convert(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p3

    invoke-virtual {p3}, Lnet/sf/saxon/value/AtomicValue;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p3

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->DECIMAL:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->FLOAT:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Lnet/sf/saxon/value/DoubleValue;

    check-cast p3, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p3}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    move-object p3, v0

    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2, p4}, Lnet/sf/saxon/trans/KeyManager;->obtainIndex(Lnet/sf/saxon/trans/KeyDefinitionSet;Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/KeyIndex;

    move-result-object p0

    invoke-virtual {p0, p3}, Lnet/sf/saxon/trans/KeyIndex;->getNodes(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method
