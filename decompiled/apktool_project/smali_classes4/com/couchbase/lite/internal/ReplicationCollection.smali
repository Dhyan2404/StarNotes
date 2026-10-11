.class public final Lcom/couchbase/lite/internal/ReplicationCollection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/ReplicationCollection$C4Filter;,
        Lcom/couchbase/lite/internal/ReplicationCollection$CollectionFilter;
    }
.end annotation


# static fields
.field static final BOUND_COLLECTIONS:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding<",
            "Lcom/couchbase/lite/internal/ReplicationCollection;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;


# instance fields
.field public final c4PullFilter:Lcom/couchbase/lite/internal/ReplicationCollection$C4Filter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c4PushFilter:Lcom/couchbase/lite/internal/ReplicationCollection$C4Filter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final options:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public final resolver:Lcom/couchbase/lite/ConflictResolver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final scope:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final token:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/couchbase/lite/LogDomain;->REPLICATOR:Lcom/couchbase/lite/LogDomain;

    sput-object v0, Lcom/couchbase/lite/internal/ReplicationCollection;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    new-instance v0, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/ReplicationCollection;->BOUND_COLLECTIONS:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    return-void
.end method

.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;[BLcom/couchbase/lite/internal/ReplicationCollection$C4Filter;Lcom/couchbase/lite/internal/ReplicationCollection$C4Filter;Lcom/couchbase/lite/ConflictResolver;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/couchbase/lite/internal/ReplicationCollection$C4Filter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/couchbase/lite/internal/ReplicationCollection$C4Filter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/couchbase/lite/ConflictResolver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/couchbase/lite/internal/ReplicationCollection;->token:J

    iput-object p3, p0, Lcom/couchbase/lite/internal/ReplicationCollection;->scope:Ljava/lang/String;

    iput-object p4, p0, Lcom/couchbase/lite/internal/ReplicationCollection;->name:Ljava/lang/String;

    iput-object p5, p0, Lcom/couchbase/lite/internal/ReplicationCollection;->options:[B

    iput-object p6, p0, Lcom/couchbase/lite/internal/ReplicationCollection;->c4PushFilter:Lcom/couchbase/lite/internal/ReplicationCollection$C4Filter;

    iput-object p7, p0, Lcom/couchbase/lite/internal/ReplicationCollection;->c4PullFilter:Lcom/couchbase/lite/internal/ReplicationCollection$C4Filter;

    iput-object p8, p0, Lcom/couchbase/lite/internal/ReplicationCollection;->resolver:Lcom/couchbase/lite/ConflictResolver;

    return-void
.end method

.method public static create(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/CollectionConfiguration;)Lcom/couchbase/lite/internal/ReplicationCollection;
    .locals 3
    .param p0    # Lcom/couchbase/lite/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/CollectionConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/couchbase/lite/CollectionConfiguration;->getDocumentIDs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "docIDs"

    .line 4
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/couchbase/lite/CollectionConfiguration;->getChannels()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "channels"

    .line 7
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/couchbase/lite/CollectionConfiguration;->getPushFilter()Lcom/couchbase/lite/ReplicationFilter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/couchbase/lite/CollectionConfiguration;->getPullFilter()Lcom/couchbase/lite/ReplicationFilter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/couchbase/lite/CollectionConfiguration;->getConflictResolver()Lcom/couchbase/lite/ConflictResolver;

    move-result-object p1

    invoke-static {p0, v0, v1, v2, p1}, Lcom/couchbase/lite/internal/ReplicationCollection;->create(Lcom/couchbase/lite/Collection;Ljava/util/Map;Lcom/couchbase/lite/ReplicationFilter;Lcom/couchbase/lite/ReplicationFilter;Lcom/couchbase/lite/ConflictResolver;)Lcom/couchbase/lite/internal/ReplicationCollection;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/couchbase/lite/Collection;Ljava/util/Map;Lcom/couchbase/lite/ReplicationFilter;Lcom/couchbase/lite/ReplicationFilter;Lcom/couchbase/lite/ConflictResolver;)Lcom/couchbase/lite/internal/ReplicationCollection;
    .locals 16
    .param p0    # Lcom/couchbase/lite/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/ReplicationFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/ReplicationFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/couchbase/lite/ConflictResolver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/Collection;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/couchbase/lite/ReplicationFilter;",
            "Lcom/couchbase/lite/ReplicationFilter;",
            "Lcom/couchbase/lite/ConflictResolver;",
            ")",
            "Lcom/couchbase/lite/internal/ReplicationCollection;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 9
    sget-object v3, Lcom/couchbase/lite/internal/ReplicationCollection;->BOUND_COLLECTIONS:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-virtual {v3}, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;->reserveKey()J

    move-result-wide v13

    .line 10
    new-instance v15, Lcom/couchbase/lite/internal/ReplicationCollection;

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/couchbase/lite/Collection;->getScope()Lcom/couchbase/lite/Scope;

    move-result-object v4

    invoke-virtual {v4}, Lcom/couchbase/lite/Scope;->getName()Ljava/lang/String;

    move-result-object v7

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/couchbase/lite/Collection;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    .line 13
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->encodeMap(Ljava/util/Map;)[B

    move-result-object v5

    move-object v9, v5

    goto :goto_1

    :cond_1
    :goto_0
    move-object v9, v4

    :goto_1
    if-nez v1, :cond_2

    move-object v10, v4

    goto :goto_2

    .line 14
    :cond_2
    new-instance v5, Lcom/couchbase/lite/internal/ReplicationCollection$CollectionFilter;

    invoke-direct {v5, v0, v1}, Lcom/couchbase/lite/internal/ReplicationCollection$CollectionFilter;-><init>(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/ReplicationFilter;)V

    move-object v10, v5

    :goto_2
    if-nez v2, :cond_3

    move-object v11, v4

    goto :goto_3

    .line 15
    :cond_3
    new-instance v1, Lcom/couchbase/lite/internal/ReplicationCollection$CollectionFilter;

    invoke-direct {v1, v0, v2}, Lcom/couchbase/lite/internal/ReplicationCollection$CollectionFilter;-><init>(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/ReplicationFilter;)V

    move-object v11, v1

    :goto_3
    move-object v4, v15

    move-wide v5, v13

    move-object/from16 v12, p4

    invoke-direct/range {v4 .. v12}, Lcom/couchbase/lite/internal/ReplicationCollection;-><init>(JLjava/lang/String;Ljava/lang/String;[BLcom/couchbase/lite/internal/ReplicationCollection$C4Filter;Lcom/couchbase/lite/internal/ReplicationCollection$C4Filter;Lcom/couchbase/lite/ConflictResolver;)V

    .line 16
    invoke-virtual {v3, v13, v14, v15}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->bind(JLjava/lang/Object;)V

    return-object v15
.end method

.method public static createAll(Ljava/util/Map;)[Lcom/couchbase/lite/internal/ReplicationCollection;
    .locals 5
    .param p0    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/couchbase/lite/Collection;",
            "Lcom/couchbase/lite/CollectionConfiguration;",
            ">;)[",
            "Lcom/couchbase/lite/internal/ReplicationCollection;"
        }
    .end annotation

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lcom/couchbase/lite/internal/ReplicationCollection;

    .line 4
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    add-int/lit8 v3, v1, 0x1

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/couchbase/lite/Collection;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/couchbase/lite/CollectionConfiguration;

    invoke-static {v4, v2}, Lcom/couchbase/lite/internal/ReplicationCollection;->create(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/CollectionConfiguration;)Lcom/couchbase/lite/internal/ReplicationCollection;

    move-result-object v2

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static createAll(Ljava/util/Set;)[Lcom/couchbase/lite/internal/ReplicationCollection;
    .locals 5
    .param p0    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/Collection;",
            ">;)[",
            "Lcom/couchbase/lite/internal/ReplicationCollection;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lcom/couchbase/lite/internal/ReplicationCollection;

    .line 2
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/couchbase/lite/Collection;

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v4, v4, v4, v4}, Lcom/couchbase/lite/internal/ReplicationCollection;->create(Lcom/couchbase/lite/Collection;Ljava/util/Map;Lcom/couchbase/lite/ReplicationFilter;Lcom/couchbase/lite/ReplicationFilter;Lcom/couchbase/lite/ConflictResolver;)Lcom/couchbase/lite/internal/ReplicationCollection;

    move-result-object v2

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static synthetic f(Lcom/couchbase/lite/internal/ReplicationCollection$C4Filter;Ljava/lang/String;Ljava/lang/String;JI)Ljava/lang/Boolean;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/couchbase/lite/internal/ReplicationCollection;->lambda$filterCallback$0(Lcom/couchbase/lite/internal/ReplicationCollection$C4Filter;Ljava/lang/String;Ljava/lang/String;JI)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static filterCallback(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZ)Z
    .locals 12
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/ReplicationCollection;->BOUND_COLLECTIONS:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    move-wide v1, p0

    invoke-virtual {v0, p0, p1}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->getBinding(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/ReplicationCollection;

    sget-object v7, Lcom/couchbase/lite/internal/ReplicationCollection;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    if-eqz p9, :cond_0

    const-string v4, "push"

    goto :goto_0

    :cond_0
    const-string v4, "pull"

    :goto_0
    const/4 v8, 0x0

    aput-object v4, v3, v8

    const/4 v9, 0x1

    aput-object p4, v3, v9

    const/4 v4, 0x2

    aput-object p5, v3, v4

    const/4 v4, 0x3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x4

    aput-object v0, v3, v1

    const-string v1, "Running %s filter for doc %s@%s, %s@%s"

    invoke-static {v7, v1, v3}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request to filter unrecognized collection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    return v9

    :cond_1
    if-eqz p9, :cond_2

    iget-object v0, v0, Lcom/couchbase/lite/internal/ReplicationCollection;->c4PushFilter:Lcom/couchbase/lite/internal/ReplicationCollection$C4Filter;

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lcom/couchbase/lite/internal/ReplicationCollection;->c4PullFilter:Lcom/couchbase/lite/internal/ReplicationCollection$C4Filter;

    :goto_1
    move-object v1, v0

    if-nez v1, :cond_3

    return v9

    :cond_3
    if-eqz p4, :cond_7

    if-nez p5, :cond_4

    goto :goto_2

    :cond_4
    new-instance v10, Lcom/couchbase/lite/internal/exec/ClientTask;

    new-instance v11, Lcom/couchbase/lite/internal/a;

    move-object v0, v11

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-wide/from16 v4, p7

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/couchbase/lite/internal/a;-><init>(Lcom/couchbase/lite/internal/ReplicationCollection$C4Filter;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {v10, v11}, Lcom/couchbase/lite/internal/exec/ClientTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {v10}, Lcom/couchbase/lite/internal/exec/ClientTask;->execute()V

    invoke-virtual {v10}, Lcom/couchbase/lite/internal/exec/ClientTask;->getFailure()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "Replication filter failed"

    invoke-static {v7, v1, v0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v8

    :cond_5
    invoke-virtual {v10}, Lcom/couchbase/lite/internal/exec/ClientTask;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    move v8, v9

    :cond_6
    return v8

    :cond_7
    :goto_2
    const-string v0, "Ignoring filter request for null %s/%s"

    filled-new-array/range {p4 .. p5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    return v9
.end method

.method public static getBinding(J)Lcom/couchbase/lite/internal/ReplicationCollection;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/ReplicationCollection;->BOUND_COLLECTIONS:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-virtual {v0, p0, p1}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->getBinding(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/ReplicationCollection;

    return-object p0
.end method

.method private static synthetic lambda$filterCallback$0(Lcom/couchbase/lite/internal/ReplicationCollection$C4Filter;Ljava/lang/String;Ljava/lang/String;JI)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface/range {p0 .. p5}, Lcom/couchbase/lite/internal/ReplicationCollection$C4Filter;->test(Ljava/lang/String;Ljava/lang/String;JI)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 3

    sget-object v0, Lcom/couchbase/lite/internal/ReplicationCollection;->BOUND_COLLECTIONS:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/ReplicationCollection;->token:J

    invoke-virtual {v0, v1, v2}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->unbind(J)V

    return-void
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/ReplicationCollection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getConflictResolver()Lcom/couchbase/lite/ConflictResolver;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/ReplicationCollection;->resolver:Lcom/couchbase/lite/ConflictResolver;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReplicationCollection{@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/ReplicationCollection;->token:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/internal/ReplicationCollection;->scope:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/internal/ReplicationCollection;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/internal/ReplicationCollection;->c4PullFilter:Lcom/couchbase/lite/internal/ReplicationCollection$C4Filter;

    const-string v2, ""

    if-eqz v1, :cond_0

    const-string v1, "<"

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/internal/ReplicationCollection;->resolver:Lcom/couchbase/lite/ConflictResolver;

    if-eqz v1, :cond_1

    const-string v1, "!"

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/internal/ReplicationCollection;->c4PushFilter:Lcom/couchbase/lite/internal/ReplicationCollection$C4Filter;

    if-eqz p0, :cond_2

    const-string v2, ">"

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
