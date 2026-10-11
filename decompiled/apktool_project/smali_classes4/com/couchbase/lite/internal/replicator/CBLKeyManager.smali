.class public Lcom/couchbase/lite/internal/replicator/CBLKeyManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509KeyManager;


# instance fields
.field private final identity:Lcom/couchbase/lite/TLSIdentity;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/TLSIdentity;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/TLSIdentity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/replicator/CBLKeyManager;->identity:Lcom/couchbase/lite/TLSIdentity;

    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 0
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/security/Principal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/CBLKeyManager;->identity:Lcom/couchbase/lite/TLSIdentity;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/BaseTLSIdentity;->getKeyPair()Lcom/couchbase/lite/internal/core/C4KeyPair;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4KeyPair;->getKeyAlias()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/security/Principal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "chooseServerAlias(String, Principal[]) not supported for client"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/CBLKeyManager;->identity:Lcom/couchbase/lite/TLSIdentity;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/BaseTLSIdentity;->getCerts()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/security/cert/X509Certificate;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/security/Principal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/CBLKeyManager;->identity:Lcom/couchbase/lite/TLSIdentity;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/BaseTLSIdentity;->getKeyPair()Lcom/couchbase/lite/internal/core/C4KeyPair;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4KeyPair;->getKeyAlias()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/CBLKeyManager;->identity:Lcom/couchbase/lite/TLSIdentity;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/BaseTLSIdentity;->getKeyPair()Lcom/couchbase/lite/internal/core/C4KeyPair;

    move-result-object p0

    invoke-static {}, Lcom/couchbase/lite/internal/KeyStoreManager;->getInstance()Lcom/couchbase/lite/internal/KeyStoreManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4KeyPair;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4KeyPair;->getKeyAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4KeyPair;->getKeyPassword()[C

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/couchbase/lite/internal/KeyStoreManager;->getKey(Ljava/security/KeyStore;Ljava/lang/String;[C)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/security/Principal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getServerAliases(String, Principal[]) not supported for client"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
