.class public Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final authenticator:Lcom/couchbase/lite/ListenerAuthenticator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final collections:Ljava/util/Set;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/Collection;",
            ">;"
        }
    .end annotation
.end field

.field private final db:Lcom/couchbase/lite/Database;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final disableTls:Z

.field private final enableDeltaSync:Z

.field private final identity:Lcom/couchbase/lite/TLSIdentity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final networkInterface:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final port:I

.field private final readOnly:Z


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/URLEndpointListenerConfiguration;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/URLEndpointListenerConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->getCollections()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->collections:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/Collection;

    iget-object v0, v0, Lcom/couchbase/lite/internal/BaseCollection;->db:Lcom/couchbase/lite/Database;

    iput-object v0, p0, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->db:Lcom/couchbase/lite/Database;

    invoke-virtual {p1}, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->getNetworkInterface()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->networkInterface:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->getPort()I

    move-result v0

    iput v0, p0, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->port:I

    invoke-virtual {p1}, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->isTlsDisabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->disableTls:Z

    invoke-virtual {p1}, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->getTlsIdentity()Lcom/couchbase/lite/TLSIdentity;

    move-result-object v0

    iput-object v0, p0, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->identity:Lcom/couchbase/lite/TLSIdentity;

    invoke-virtual {p1}, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->getAuthenticator()Lcom/couchbase/lite/ListenerAuthenticator;

    move-result-object v0

    iput-object v0, p0, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->authenticator:Lcom/couchbase/lite/ListenerAuthenticator;

    invoke-virtual {p1}, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->isReadOnly()Z

    move-result v0

    iput-boolean v0, p0, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->readOnly:Z

    invoke-virtual {p1}, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->isDeltaSyncEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->enableDeltaSync:Z

    return-void
.end method


# virtual methods
.method public getAuthenticator()Lcom/couchbase/lite/ListenerAuthenticator;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->authenticator:Lcom/couchbase/lite/ListenerAuthenticator;

    return-object p0
.end method

.method public getCollections()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/Collection;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->collections:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDatabase()Lcom/couchbase/lite/Database;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->db:Lcom/couchbase/lite/Database;

    return-object p0
.end method

.method public getNetworkInterface()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->networkInterface:Ljava/lang/String;

    return-object p0
.end method

.method public getPort()I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->port:I

    return p0
.end method

.method public getTlsIdentity()Lcom/couchbase/lite/TLSIdentity;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->identity:Lcom/couchbase/lite/TLSIdentity;

    return-object p0
.end method

.method public isDeltaSyncEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->enableDeltaSync:Z

    return p0
.end method

.method public isReadOnly()Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->readOnly:Z

    return p0
.end method

.method public isTlsDisabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->disableTls:Z

    return p0
.end method
