.class public final synthetic Lcom/sunia/HTREnginev2/lx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;


# instance fields
.field public final synthetic a:Ljava/util/Set;

.field public final synthetic b:Lcom/couchbase/lite/internal/core/C4Socket;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Lcom/couchbase/lite/internal/core/C4Socket;Ljava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lx;->a:Ljava/util/Set;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/lx;->b:Lcom/couchbase/lite/internal/core/C4Socket;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/lx;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/lx;->d:Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lx;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/lx;->b:Lcom/couchbase/lite/internal/core/C4Socket;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/lx;->c:Ljava/util/Map;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lx;->d:Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/couchbase/lite/internal/core/C4Database;->g0(Ljava/util/Set;Lcom/couchbase/lite/internal/core/C4Socket;Ljava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object p0

    return-object p0
.end method
