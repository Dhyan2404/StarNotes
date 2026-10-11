.class public Lcom/google/api/client/googleapis/javanet/GoogleNetHttpTransport;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newTrustedTransport()Lcom/google/api/client/http/javanet/NetHttpTransport;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/api/client/googleapis/mtls/MtlsUtils;->getDefaultMtlsProvider()Lcom/google/api/client/googleapis/mtls/MtlsProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/googleapis/javanet/GoogleNetHttpTransport;->newTrustedTransport(Lcom/google/api/client/googleapis/mtls/MtlsProvider;)Lcom/google/api/client/http/javanet/NetHttpTransport;

    move-result-object v0

    return-object v0
.end method

.method public static newTrustedTransport(Lcom/google/api/client/googleapis/mtls/MtlsProvider;)Lcom/google/api/client/http/javanet/NetHttpTransport;
    .locals 3
    .annotation build Lcom/google/api/client/util/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Lcom/google/api/client/googleapis/mtls/MtlsProvider;->useMtlsClientCertificate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/google/api/client/googleapis/mtls/MtlsProvider;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    .line 4
    invoke-interface {p0}, Lcom/google/api/client/googleapis/mtls/MtlsProvider;->getKeyStorePassword()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object p0, v0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 5
    new-instance v1, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;

    invoke-direct {v1}, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;-><init>()V

    .line 6
    invoke-static {}, Lcom/google/api/client/googleapis/GoogleUtils;->getCertificateTrustStore()Ljava/security/KeyStore;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v2, v0, p0}, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;->trustCertificates(Ljava/security/KeyStore;Ljava/security/KeyStore;Ljava/lang/String;)Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;->build()Lcom/google/api/client/http/javanet/NetHttpTransport;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    new-instance p0, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;

    invoke-direct {p0}, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;-><init>()V

    .line 10
    invoke-static {}, Lcom/google/api/client/googleapis/GoogleUtils;->getCertificateTrustStore()Ljava/security/KeyStore;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;->trustCertificates(Ljava/security/KeyStore;)Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;->build()Lcom/google/api/client/http/javanet/NetHttpTransport;

    move-result-object p0

    return-object p0
.end method
