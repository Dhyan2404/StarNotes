.class public final Lcom/couchbase/lite/ClientCertificateAuthenticator;
.super Lcom/couchbase/lite/internal/BaseAuthenticator;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/Authenticator;


# instance fields
.field private final identity:Lcom/couchbase/lite/TLSIdentity;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private keyManager:Lcom/couchbase/lite/internal/replicator/CBLKeyManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/TLSIdentity;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/TLSIdentity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/couchbase/lite/internal/BaseAuthenticator;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/ClientCertificateAuthenticator;->identity:Lcom/couchbase/lite/TLSIdentity;

    return-void
.end method


# virtual methods
.method public authenticate(Ljava/util/Map;)V
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/couchbase/lite/internal/replicator/CBLKeyManager;

    iget-object v1, p0, Lcom/couchbase/lite/ClientCertificateAuthenticator;->identity:Lcom/couchbase/lite/TLSIdentity;

    invoke-direct {v0, v1}, Lcom/couchbase/lite/internal/replicator/CBLKeyManager;-><init>(Lcom/couchbase/lite/TLSIdentity;)V

    iput-object v0, p0, Lcom/couchbase/lite/ClientCertificateAuthenticator;->keyManager:Lcom/couchbase/lite/internal/replicator/CBLKeyManager;

    const-string v0, "auth"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p1, "type"

    const-string v0, "Client Cert"

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/couchbase/lite/ClientCertificateAuthenticator;->keyManager:Lcom/couchbase/lite/internal/replicator/CBLKeyManager;

    invoke-static {p0}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->addKeyManager(Ljavax/net/ssl/KeyManager;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "clientCertKey"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getIdentity()Lcom/couchbase/lite/TLSIdentity;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/ClientCertificateAuthenticator;->identity:Lcom/couchbase/lite/TLSIdentity;

    return-object p0
.end method

.method public getKeyManager()Lcom/couchbase/lite/internal/replicator/CBLKeyManager;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/ClientCertificateAuthenticator;->keyManager:Lcom/couchbase/lite/internal/replicator/CBLKeyManager;

    return-object p0
.end method
