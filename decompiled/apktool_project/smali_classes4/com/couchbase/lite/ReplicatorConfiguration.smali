.class public final Lcom/couchbase/lite/ReplicatorConfiguration;
.super Lcom/couchbase/lite/AbstractReplicatorConfiguration;
.source "SourceFile"


# instance fields
.field private selfSignedOnly:Z


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/Database;Lcom/couchbase/lite/Endpoint;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Endpoint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "database"

    .line 1
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/Database;

    .line 2
    invoke-static {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->configureDefaultCollection(Lcom/couchbase/lite/Database;)Ljava/util/Map;

    move-result-object p1

    .line 3
    invoke-direct {p0, v0, p1, p2}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;-><init>(Lcom/couchbase/lite/Database;Ljava/util/Map;Lcom/couchbase/lite/Endpoint;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/couchbase/lite/ReplicatorConfiguration;->selfSignedOnly:Z

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/Endpoint;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/Endpoint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0, v0, p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;-><init>(Lcom/couchbase/lite/Database;Ljava/util/Map;Lcom/couchbase/lite/Endpoint;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/couchbase/lite/ReplicatorConfiguration;->selfSignedOnly:Z

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/Endpoint;Ljava/util/Map;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/Endpoint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/Endpoint;",
            "Ljava/util/Map<",
            "Lcom/couchbase/lite/Collection;",
            "Lcom/couchbase/lite/CollectionConfiguration;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/couchbase/lite/AbstractDatabase;->getDbForCollections(Ljava/util/Set;)Lcom/couchbase/lite/Database;

    move-result-object v0

    .line 14
    :goto_0
    invoke-direct {p0, v0, p2, p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;-><init>(Lcom/couchbase/lite/Database;Ljava/util/Map;Lcom/couchbase/lite/Endpoint;)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/couchbase/lite/ReplicatorConfiguration;->selfSignedOnly:Z

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/ReplicatorConfiguration;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/ReplicatorConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;-><init>(Lcom/couchbase/lite/AbstractReplicatorConfiguration;)V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/couchbase/lite/ReplicatorConfiguration;->selfSignedOnly:Z

    .line 9
    invoke-virtual {p1}, Lcom/couchbase/lite/ReplicatorConfiguration;->isAcceptOnlySelfSignedServerCertificate()Z

    move-result p1

    iput-boolean p1, p0, Lcom/couchbase/lite/ReplicatorConfiguration;->selfSignedOnly:Z

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10
    invoke-direct {p0, p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;-><init>(Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;)V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/couchbase/lite/ReplicatorConfiguration;->selfSignedOnly:Z

    .line 12
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;->isAcceptOnlySelfSignedServerCertificate()Z

    move-result p1

    iput-boolean p1, p0, Lcom/couchbase/lite/ReplicatorConfiguration;->selfSignedOnly:Z

    return-void
.end method


# virtual methods
.method public getReplicatorConfiguration()Lcom/couchbase/lite/ReplicatorConfiguration;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    return-object p0
.end method

.method public isAcceptOnlySelfSignedServerCertificate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/ReplicatorConfiguration;->selfSignedOnly:Z

    return p0
.end method

.method public setAcceptOnlySelfSignedServerCertificate(Z)Lcom/couchbase/lite/ReplicatorConfiguration;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/couchbase/lite/ReplicatorConfiguration;->selfSignedOnly:Z

    invoke-virtual {p0}, Lcom/couchbase/lite/ReplicatorConfiguration;->getReplicatorConfiguration()Lcom/couchbase/lite/ReplicatorConfiguration;

    move-result-object p0

    return-object p0
.end method
