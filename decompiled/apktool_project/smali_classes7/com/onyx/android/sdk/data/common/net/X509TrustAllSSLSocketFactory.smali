.class public final Lcom/onyx/android/sdk/data/common/net/X509TrustAllSSLSocketFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0005R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/net/X509TrustAllSSLSocketFactory;",
        "",
        "()V",
        "isValid",
        "",
        "()Z",
        "sslSocketFactory",
        "Ljavax/net/ssl/SSLSocketFactory;",
        "getSslSocketFactory",
        "()Ljavax/net/ssl/SSLSocketFactory;",
        "setSslSocketFactory",
        "(Ljavax/net/ssl/SSLSocketFactory;)V",
        "trustManager",
        "Ljavax/net/ssl/X509TrustManager;",
        "getTrustManager",
        "()Ljavax/net/ssl/X509TrustManager;",
        "setTrustManager",
        "(Ljavax/net/ssl/X509TrustManager;)V",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private trustManager:Ljavax/net/ssl/X509TrustManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Lcom/onyx/android/sdk/data/common/net/X509TrustAllCertsManager;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/net/X509TrustAllCertsManager;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/net/X509TrustAllSSLSocketFactory;->trustManager:Ljavax/net/ssl/X509TrustManager;

    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/X509TrustManager;

    iget-object v2, p0, Lcom/onyx/android/sdk/data/common/net/X509TrustAllSSLSocketFactory;->trustManager:Ljavax/net/ssl/X509TrustManager;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    check-cast v1, [Ljavax/net/ssl/TrustManager;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/net/X509TrustAllSSLSocketFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/net/X509TrustAllSSLSocketFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public final getTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/net/X509TrustAllSSLSocketFactory;->trustManager:Ljavax/net/ssl/X509TrustManager;

    return-object p0
.end method

.method public final isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/net/X509TrustAllSSLSocketFactory;->trustManager:Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/net/X509TrustAllSSLSocketFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0
    .param p1    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/net/X509TrustAllSSLSocketFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public final setTrustManager(Ljavax/net/ssl/X509TrustManager;)V
    .locals 0
    .param p1    # Ljavax/net/ssl/X509TrustManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/net/X509TrustAllSSLSocketFactory;->trustManager:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method
