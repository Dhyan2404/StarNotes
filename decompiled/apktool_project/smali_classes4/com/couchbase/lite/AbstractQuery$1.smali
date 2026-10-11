.class Lcom/couchbase/lite/AbstractQuery$1;
.super Lcom/couchbase/lite/AbstractDatabase$ActiveProcess;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/couchbase/lite/AbstractQuery;->registerLiveQuery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/couchbase/lite/AbstractDatabase$ActiveProcess<",
        "Lcom/couchbase/lite/AbstractQuery;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/couchbase/lite/AbstractQuery;


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/AbstractQuery;Lcom/couchbase/lite/AbstractQuery;)V
    .locals 0

    iput-object p1, p0, Lcom/couchbase/lite/AbstractQuery$1;->this$0:Lcom/couchbase/lite/AbstractQuery;

    invoke-direct {p0, p2}, Lcom/couchbase/lite/AbstractDatabase$ActiveProcess;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public isActive()Z
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/AbstractQuery$1;->this$0:Lcom/couchbase/lite/AbstractQuery;

    invoke-static {p0}, Lcom/couchbase/lite/AbstractQuery;->access$000(Lcom/couchbase/lite/AbstractQuery;)Lcom/couchbase/lite/AbstractQuery$LiveQueries;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractQuery$LiveQueries;->isLive()Z

    move-result p0

    return p0
.end method

.method public stop()V
    .locals 1

    iget-object p0, p0, Lcom/couchbase/lite/AbstractQuery$1;->this$0:Lcom/couchbase/lite/AbstractQuery;

    invoke-static {p0}, Lcom/couchbase/lite/AbstractQuery;->access$000(Lcom/couchbase/lite/AbstractQuery;)Lcom/couchbase/lite/AbstractQuery$LiveQueries;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractQuery$LiveQueries;->getTokens()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/ListenerToken;

    invoke-virtual {v0}, Lcom/couchbase/lite/ListenerToken;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method
