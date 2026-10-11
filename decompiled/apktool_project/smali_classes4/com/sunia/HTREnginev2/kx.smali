.class public final synthetic Lcom/sunia/HTREnginev2/kx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/couchbase/lite/internal/sockets/MessageFraming;

.field public final synthetic h:Lcom/couchbase/lite/ReplicatorType;

.field public final synthetic i:Z

.field public final synthetic j:Ljava/util/Map;

.field public final synthetic k:Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;

.field public final synthetic l:Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;

.field public final synthetic m:Lcom/couchbase/lite/AbstractReplicator;

.field public final synthetic n:Lcom/couchbase/lite/internal/SocketFactory;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/internal/sockets/MessageFraming;Lcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/AbstractReplicator;Lcom/couchbase/lite/internal/SocketFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kx;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/kx;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/kx;->c:Ljava/lang/String;

    iput p4, p0, Lcom/sunia/HTREnginev2/kx;->d:I

    iput-object p5, p0, Lcom/sunia/HTREnginev2/kx;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/sunia/HTREnginev2/kx;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/sunia/HTREnginev2/kx;->g:Lcom/couchbase/lite/internal/sockets/MessageFraming;

    iput-object p8, p0, Lcom/sunia/HTREnginev2/kx;->h:Lcom/couchbase/lite/ReplicatorType;

    iput-boolean p9, p0, Lcom/sunia/HTREnginev2/kx;->i:Z

    iput-object p10, p0, Lcom/sunia/HTREnginev2/kx;->j:Ljava/util/Map;

    iput-object p11, p0, Lcom/sunia/HTREnginev2/kx;->k:Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;

    iput-object p12, p0, Lcom/sunia/HTREnginev2/kx;->l:Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;

    iput-object p13, p0, Lcom/sunia/HTREnginev2/kx;->m:Lcom/couchbase/lite/AbstractReplicator;

    iput-object p14, p0, Lcom/sunia/HTREnginev2/kx;->n:Lcom/couchbase/lite/internal/SocketFactory;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sunia/HTREnginev2/kx;->a:Ljava/util/Map;

    iget-object v2, v0, Lcom/sunia/HTREnginev2/kx;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/sunia/HTREnginev2/kx;->c:Ljava/lang/String;

    iget v4, v0, Lcom/sunia/HTREnginev2/kx;->d:I

    iget-object v5, v0, Lcom/sunia/HTREnginev2/kx;->e:Ljava/lang/String;

    iget-object v6, v0, Lcom/sunia/HTREnginev2/kx;->f:Ljava/lang/String;

    iget-object v7, v0, Lcom/sunia/HTREnginev2/kx;->g:Lcom/couchbase/lite/internal/sockets/MessageFraming;

    iget-object v8, v0, Lcom/sunia/HTREnginev2/kx;->h:Lcom/couchbase/lite/ReplicatorType;

    iget-boolean v9, v0, Lcom/sunia/HTREnginev2/kx;->i:Z

    iget-object v10, v0, Lcom/sunia/HTREnginev2/kx;->j:Ljava/util/Map;

    iget-object v11, v0, Lcom/sunia/HTREnginev2/kx;->k:Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;

    iget-object v12, v0, Lcom/sunia/HTREnginev2/kx;->l:Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;

    iget-object v13, v0, Lcom/sunia/HTREnginev2/kx;->m:Lcom/couchbase/lite/AbstractReplicator;

    iget-object v14, v0, Lcom/sunia/HTREnginev2/kx;->n:Lcom/couchbase/lite/internal/SocketFactory;

    move-object/from16 v15, p1

    check-cast v15, Ljava/lang/Long;

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    invoke-static/range {v0 .. v14}, Lcom/couchbase/lite/internal/core/C4Database;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/internal/sockets/MessageFraming;Lcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/AbstractReplicator;Lcom/couchbase/lite/internal/SocketFactory;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object v0

    return-object v0
.end method
