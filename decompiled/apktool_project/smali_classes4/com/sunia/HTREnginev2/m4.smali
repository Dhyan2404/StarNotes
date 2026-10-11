.class public final synthetic Lcom/sunia/HTREnginev2/m4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/couchbase/lite/AbstractReplicator;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/AbstractReplicator;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/m4;->e:Lcom/couchbase/lite/AbstractReplicator;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/m4;->f:Ljava/util/List;

    iput-boolean p3, p0, Lcom/sunia/HTREnginev2/m4;->g:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/m4;->e:Lcom/couchbase/lite/AbstractReplicator;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/m4;->f:Ljava/util/List;

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/m4;->g:Z

    invoke-static {v0, v1, p0}, Lcom/couchbase/lite/AbstractReplicator;->M(Lcom/couchbase/lite/AbstractReplicator;Ljava/util/List;Z)V

    return-void
.end method
