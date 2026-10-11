.class public final synthetic Lcom/sunia/HTREnginev2/d4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/couchbase/lite/Database;

.field public final synthetic f:Lcom/couchbase/lite/ConflictResolver;

.field public final synthetic g:Lcom/couchbase/lite/ReplicatedDocument;

.field public final synthetic h:Lcom/couchbase/lite/internal/utils/Fn$NullableConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/Database;Lcom/couchbase/lite/ConflictResolver;Lcom/couchbase/lite/ReplicatedDocument;Lcom/couchbase/lite/internal/utils/Fn$NullableConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/d4;->e:Lcom/couchbase/lite/Database;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/d4;->f:Lcom/couchbase/lite/ConflictResolver;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/d4;->g:Lcom/couchbase/lite/ReplicatedDocument;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/d4;->h:Lcom/couchbase/lite/internal/utils/Fn$NullableConsumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/d4;->e:Lcom/couchbase/lite/Database;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/d4;->f:Lcom/couchbase/lite/ConflictResolver;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/d4;->g:Lcom/couchbase/lite/ReplicatedDocument;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/d4;->h:Lcom/couchbase/lite/internal/utils/Fn$NullableConsumer;

    invoke-static {v0, v1, v2, p0}, Lcom/couchbase/lite/AbstractReplicator;->j(Lcom/couchbase/lite/Database;Lcom/couchbase/lite/ConflictResolver;Lcom/couchbase/lite/ReplicatedDocument;Lcom/couchbase/lite/internal/utils/Fn$NullableConsumer;)V

    return-void
.end method
