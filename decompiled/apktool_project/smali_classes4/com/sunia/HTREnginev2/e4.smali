.class public final synthetic Lcom/sunia/HTREnginev2/e4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$Consumer;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/AbstractReplicator;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/AbstractReplicator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/e4;->a:Lcom/couchbase/lite/AbstractReplicator;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/e4;->a:Lcom/couchbase/lite/AbstractReplicator;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/couchbase/lite/AbstractReplicator;->I(Lcom/couchbase/lite/AbstractReplicator;Ljava/util/List;)V

    return-void
.end method
