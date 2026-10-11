.class public final Lcom/couchbase/lite/internal/replicator/CBLTrustManager;
.super Lcom/couchbase/lite/internal/replicator/AbstractCBLTrustManager;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;ZLcom/couchbase/lite/internal/utils/Fn$Consumer;)V
    .locals 0
    .param p1    # Ljava/security/cert/X509Certificate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/internal/utils/Fn$Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Z",
            "Lcom/couchbase/lite/internal/utils/Fn$Consumer<",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/replicator/AbstractCBLTrustManager;-><init>(Ljava/security/cert/X509Certificate;ZLcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    return-void
.end method


# virtual methods
.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1    # [Ljava/security/cert/X509Certificate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/replicator/AbstractCBLTrustManager;->asList([Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/replicator/AbstractCBLTrustManager;->notifyListener(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/AbstractCBLTrustManager;->useCBLTrustManagement()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/couchbase/lite/LogDomain;->NETWORK:Lcom/couchbase/lite/LogDomain;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, p2, p3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Extended trust check: %d, %s, %s"

    invoke-static {v1, v2, v0}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/net/http/X509TrustManagerExtensions;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/AbstractCBLTrustManager;->getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/net/http/X509TrustManagerExtensions;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/http/X509TrustManagerExtensions;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/couchbase/lite/internal/replicator/AbstractCBLTrustManager;->cBLServerTrustCheck(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method
