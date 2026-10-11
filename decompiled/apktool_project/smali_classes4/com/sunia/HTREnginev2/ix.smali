.class public final synthetic Lcom/sunia/HTREnginev2/ix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Lcom/couchbase/lite/internal/core/C4Database;

.field public final synthetic c:Lcom/couchbase/lite/ReplicatorType;

.field public final synthetic d:Z

.field public final synthetic e:Ljava/util/Map;

.field public final synthetic f:Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;

.field public final synthetic g:Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;

.field public final synthetic h:Lcom/couchbase/lite/AbstractReplicator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Lcom/couchbase/lite/internal/core/C4Database;Lcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/AbstractReplicator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ix;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ix;->b:Lcom/couchbase/lite/internal/core/C4Database;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/ix;->c:Lcom/couchbase/lite/ReplicatorType;

    iput-boolean p4, p0, Lcom/sunia/HTREnginev2/ix;->d:Z

    iput-object p5, p0, Lcom/sunia/HTREnginev2/ix;->e:Ljava/util/Map;

    iput-object p6, p0, Lcom/sunia/HTREnginev2/ix;->f:Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;

    iput-object p7, p0, Lcom/sunia/HTREnginev2/ix;->g:Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;

    iput-object p8, p0, Lcom/sunia/HTREnginev2/ix;->h:Lcom/couchbase/lite/AbstractReplicator;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ix;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ix;->b:Lcom/couchbase/lite/internal/core/C4Database;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/ix;->c:Lcom/couchbase/lite/ReplicatorType;

    iget-boolean v3, p0, Lcom/sunia/HTREnginev2/ix;->d:Z

    iget-object v4, p0, Lcom/sunia/HTREnginev2/ix;->e:Ljava/util/Map;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/ix;->f:Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;

    iget-object v6, p0, Lcom/sunia/HTREnginev2/ix;->g:Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;

    iget-object v7, p0, Lcom/sunia/HTREnginev2/ix;->h:Lcom/couchbase/lite/AbstractReplicator;

    move-object v8, p1

    check-cast v8, Ljava/lang/Long;

    invoke-static/range {v0 .. v8}, Lcom/couchbase/lite/internal/core/C4Database;->e0(Ljava/util/Map;Lcom/couchbase/lite/internal/core/C4Database;Lcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/AbstractReplicator;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object p0

    return-object p0
.end method
