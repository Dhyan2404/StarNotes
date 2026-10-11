.class public final Lcom/couchbase/lite/TLSIdentity;
.super Lcom/couchbase/lite/internal/BaseTLSIdentity;
.source "SourceFile"


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/couchbase/lite/internal/core/C4KeyPair;Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/core/C4KeyPair;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/couchbase/lite/internal/core/C4KeyPair;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/BaseTLSIdentity;-><init>(Ljava/lang/String;Lcom/couchbase/lite/internal/core/C4KeyPair;Ljava/util/List;)V

    return-void
.end method

.method public static createIdentity(ZLjava/util/Map;Ljava/util/Date;Ljava/lang/String;)Lcom/couchbase/lite/TLSIdentity;
    .locals 8
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ")",
            "Lcom/couchbase/lite/TLSIdentity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    const-string v0, "attributes"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "alias"

    invoke-static {p3, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/couchbase/lite/internal/KeyStoreManager;->checkAlias(Ljava/lang/String;)V

    invoke-static {}, Lcom/couchbase/lite/internal/BaseTLSIdentity;->getManager()Lcom/couchbase/lite/internal/KeyStoreManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, p3

    move v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/couchbase/lite/internal/KeyStoreManager;->createSelfSignedCertEntry(Ljava/security/KeyStore;Ljava/lang/String;[CZLjava/util/Map;Ljava/util/Date;)V

    invoke-static {p3}, Lcom/couchbase/lite/TLSIdentity;->getIdentity(Ljava/lang/String;)Lcom/couchbase/lite/TLSIdentity;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteException;

    const-string p1, "CouchbaseLite"

    const/16 p2, 0x16

    const-string p3, "Could not find new identity in the KeyStore"

    invoke-direct {p0, p3, p1, p2}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p0
.end method

.method public static deleteIdentity(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-static {}, Lcom/couchbase/lite/internal/BaseTLSIdentity;->getManager()Lcom/couchbase/lite/internal/KeyStoreManager;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/e7n;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/e7n;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/couchbase/lite/internal/KeyStoreManager;->deleteEntries(Ljava/security/KeyStore;Lcom/couchbase/lite/internal/utils/Fn$Predicate;)I

    return-void
.end method

.method public static getAnonymousIdentity(Ljava/lang/String;)Lcom/couchbase/lite/TLSIdentity;
    .locals 9
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CBL-ANON-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/couchbase/lite/internal/KeyStoreManager;->getInstance()Lcom/couchbase/lite/internal/KeyStoreManager;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2, v0, p0}, Lcom/couchbase/lite/internal/KeyStoreManager;->findAlias(Ljava/security/KeyStore;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/couchbase/lite/TLSIdentity;->getIdentity(Ljava/lang/String;)Lcom/couchbase/lite/TLSIdentity;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v0, "CN"

    const-string v1, "CBLAnonymousCertificate"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v4, p0

    invoke-virtual/range {v2 .. v8}, Lcom/couchbase/lite/internal/KeyStoreManager;->createSelfSignedCertEntry(Ljava/security/KeyStore;Ljava/lang/String;[CZLjava/util/Map;Ljava/util/Date;)V

    invoke-static {p0}, Lcom/couchbase/lite/TLSIdentity;->getIdentity(Ljava/lang/String;)Lcom/couchbase/lite/TLSIdentity;

    move-result-object p0

    return-object p0
.end method

.method public static getIdentity(Ljava/lang/String;)Lcom/couchbase/lite/TLSIdentity;
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    const-string v0, "alias"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/couchbase/lite/internal/BaseTLSIdentity;->getManager()Lcom/couchbase/lite/internal/KeyStoreManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/couchbase/lite/internal/KeyStoreManager;->getCertificateChain(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/couchbase/lite/LogDomain;->LISTENER:Lcom/couchbase/lite/LogDomain;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No cert chain for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {}, Lcom/couchbase/lite/internal/BaseTLSIdentity;->getManager()Lcom/couchbase/lite/internal/KeyStoreManager;

    move-result-object v2

    invoke-virtual {v2, v1, p0, v1}, Lcom/couchbase/lite/internal/KeyStoreManager;->getKey(Ljava/security/KeyStore;Ljava/lang/String;[C)Ljava/security/PrivateKey;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v0, Lcom/couchbase/lite/LogDomain;->LISTENER:Lcom/couchbase/lite/LogDomain;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No private key for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;->RSA:Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;

    check-cast v2, Ljava/security/interfaces/RSAKey;

    invoke-interface {v2}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    invoke-static {v2}, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;->getKeySize(I)Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    invoke-static/range {v2 .. v7}, Lcom/couchbase/lite/internal/core/C4KeyPair;->createKeyPair(Ljava/security/KeyStore;Ljava/lang/String;[CLcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;Ljava/security/KeyPair;)Lcom/couchbase/lite/internal/core/C4KeyPair;

    move-result-object v1

    new-instance v2, Lcom/couchbase/lite/TLSIdentity;

    invoke-direct {v2, p0, v1, v0}, Lcom/couchbase/lite/TLSIdentity;-><init>(Ljava/lang/String;Lcom/couchbase/lite/internal/core/C4KeyPair;Ljava/util/List;)V

    return-object v2
.end method
