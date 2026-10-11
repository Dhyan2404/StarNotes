.class public final synthetic Lcom/sunia/HTREnginev2/a00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;

.field public final synthetic b:J

.field public final synthetic c:[Lcom/couchbase/lite/internal/ReplicationCollection;

.field public final synthetic d:J

.field public final synthetic e:Lcom/couchbase/lite/ReplicatorType;

.field public final synthetic f:Z

.field public final synthetic g:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;J[Lcom/couchbase/lite/internal/ReplicationCollection;JLcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/a00;->a:Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;

    iput-wide p2, p0, Lcom/sunia/HTREnginev2/a00;->b:J

    iput-object p4, p0, Lcom/sunia/HTREnginev2/a00;->c:[Lcom/couchbase/lite/internal/ReplicationCollection;

    iput-wide p5, p0, Lcom/sunia/HTREnginev2/a00;->d:J

    iput-object p7, p0, Lcom/sunia/HTREnginev2/a00;->e:Lcom/couchbase/lite/ReplicatorType;

    iput-boolean p8, p0, Lcom/sunia/HTREnginev2/a00;->f:Z

    iput-object p9, p0, Lcom/sunia/HTREnginev2/a00;->g:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/sunia/HTREnginev2/a00;->a:Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/a00;->b:J

    iget-object v3, p0, Lcom/sunia/HTREnginev2/a00;->c:[Lcom/couchbase/lite/internal/ReplicationCollection;

    iget-wide v4, p0, Lcom/sunia/HTREnginev2/a00;->d:J

    iget-object v6, p0, Lcom/sunia/HTREnginev2/a00;->e:Lcom/couchbase/lite/ReplicatorType;

    iget-boolean v7, p0, Lcom/sunia/HTREnginev2/a00;->f:Z

    iget-object v8, p0, Lcom/sunia/HTREnginev2/a00;->g:Ljava/util/Map;

    move-object v9, p1

    check-cast v9, Ljava/lang/Long;

    invoke-static/range {v0 .. v9}, Lcom/couchbase/lite/internal/core/C4Replicator;->I(Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;J[Lcom/couchbase/lite/internal/ReplicationCollection;JLcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
