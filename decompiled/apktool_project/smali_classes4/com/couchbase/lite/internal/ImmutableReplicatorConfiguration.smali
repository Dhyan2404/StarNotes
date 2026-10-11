.class public Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;
.super Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;
.source "SourceFile"


# instance fields
.field private final acceptOnlySelfSignedServerCertificate:Z


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/ReplicatorConfiguration;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/ReplicatorConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;-><init>(Lcom/couchbase/lite/ReplicatorConfiguration;)V

    invoke-virtual {p1}, Lcom/couchbase/lite/ReplicatorConfiguration;->isAcceptOnlySelfSignedServerCertificate()Z

    move-result p1

    iput-boolean p1, p0, Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;->acceptOnlySelfSignedServerCertificate:Z

    return-void
.end method


# virtual methods
.method public getConnectionOptions()Ljava/util/Map;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->getConnectionOptions()Ljava/util/Map;

    move-result-object v0

    iget-boolean p0, p0, Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;->acceptOnlySelfSignedServerCertificate:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "onlySelfSignedServer"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final isAcceptOnlySelfSignedServerCertificate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;->acceptOnlySelfSignedServerCertificate:Z

    return p0
.end method
