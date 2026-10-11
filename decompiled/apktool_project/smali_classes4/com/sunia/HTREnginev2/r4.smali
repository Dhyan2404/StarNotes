.class public final synthetic Lcom/sunia/HTREnginev2/r4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$Consumer;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/ReplicationFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/ReplicationFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/r4;->a:Lcom/couchbase/lite/ReplicationFilter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/r4;->a:Lcom/couchbase/lite/ReplicationFilter;

    check-cast p1, Lcom/couchbase/lite/CollectionConfiguration;

    invoke-static {p0, p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->b(Lcom/couchbase/lite/ReplicationFilter;Lcom/couchbase/lite/CollectionConfiguration;)V

    return-void
.end method
