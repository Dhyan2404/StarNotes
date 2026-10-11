.class public final Lcom/squareup/okhttp/Address;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/net/Proxy;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljavax/net/SocketFactory;

.field public final e:Ljavax/net/ssl/SSLSocketFactory;

.field public final f:Ljavax/net/ssl/HostnameVerifier;

.field public final g:Lcom/squareup/okhttp/CertificatePinner;

.field public final h:Lcom/squareup/okhttp/Authenticator;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/net/ProxySelector;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/squareup/okhttp/CertificatePinner;Lcom/squareup/okhttp/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lcom/squareup/okhttp/CertificatePinner;",
            "Lcom/squareup/okhttp/Authenticator;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/ConnectionSpec;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    if-lez p2, :cond_3

    if-eqz p7, :cond_2

    if-eqz p9, :cond_1

    if-eqz p11, :cond_0

    iput-object p8, p0, Lcom/squareup/okhttp/Address;->a:Ljava/net/Proxy;

    iput-object p1, p0, Lcom/squareup/okhttp/Address;->b:Ljava/lang/String;

    iput p2, p0, Lcom/squareup/okhttp/Address;->c:I

    iput-object p3, p0, Lcom/squareup/okhttp/Address;->d:Ljavax/net/SocketFactory;

    iput-object p4, p0, Lcom/squareup/okhttp/Address;->e:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p5, p0, Lcom/squareup/okhttp/Address;->f:Ljavax/net/ssl/HostnameVerifier;

    iput-object p6, p0, Lcom/squareup/okhttp/Address;->g:Lcom/squareup/okhttp/CertificatePinner;

    iput-object p7, p0, Lcom/squareup/okhttp/Address;->h:Lcom/squareup/okhttp/Authenticator;

    invoke-static {p9}, Lcom/squareup/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/Address;->i:Ljava/util/List;

    invoke-static {p10}, Lcom/squareup/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/Address;->j:Ljava/util/List;

    iput-object p11, p0, Lcom/squareup/okhttp/Address;->k:Ljava/net/ProxySelector;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "proxySelector == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "protocols == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "authenticator == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "uriPort <= 0: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "uriHost == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/squareup/okhttp/Address;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/squareup/okhttp/Address;

    iget-object v0, p0, Lcom/squareup/okhttp/Address;->a:Ljava/net/Proxy;

    iget-object v2, p1, Lcom/squareup/okhttp/Address;->a:Ljava/net/Proxy;

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Address;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/squareup/okhttp/Address;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/squareup/okhttp/Address;->c:I

    iget v2, p1, Lcom/squareup/okhttp/Address;->c:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Address;->e:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, p1, Lcom/squareup/okhttp/Address;->e:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Address;->f:Ljavax/net/ssl/HostnameVerifier;

    iget-object v2, p1, Lcom/squareup/okhttp/Address;->f:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Address;->g:Lcom/squareup/okhttp/CertificatePinner;

    iget-object v2, p1, Lcom/squareup/okhttp/Address;->g:Lcom/squareup/okhttp/CertificatePinner;

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Address;->h:Lcom/squareup/okhttp/Authenticator;

    iget-object v2, p1, Lcom/squareup/okhttp/Address;->h:Lcom/squareup/okhttp/Authenticator;

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Address;->i:Ljava/util/List;

    iget-object v2, p1, Lcom/squareup/okhttp/Address;->i:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Address;->j:Ljava/util/List;

    iget-object v2, p1, Lcom/squareup/okhttp/Address;->j:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/squareup/okhttp/Address;->k:Ljava/net/ProxySelector;

    iget-object p1, p1, Lcom/squareup/okhttp/Address;->k:Ljava/net/ProxySelector;

    invoke-static {p0, p1}, Lcom/squareup/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getAuthenticator()Lcom/squareup/okhttp/Authenticator;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Address;->h:Lcom/squareup/okhttp/Authenticator;

    return-object p0
.end method

.method public getCertificatePinner()Lcom/squareup/okhttp/CertificatePinner;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Address;->g:Lcom/squareup/okhttp/CertificatePinner;

    return-object p0
.end method

.method public getConnectionSpecs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/squareup/okhttp/Address;->j:Ljava/util/List;

    return-object p0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Address;->f:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public getProtocols()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/squareup/okhttp/Address;->i:Ljava/util/List;

    return-object p0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Address;->a:Ljava/net/Proxy;

    return-object p0
.end method

.method public getProxySelector()Ljava/net/ProxySelector;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Address;->k:Ljava/net/ProxySelector;

    return-object p0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Address;->d:Ljavax/net/SocketFactory;

    return-object p0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Address;->e:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public getUriHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Address;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getUriPort()I
    .locals 0

    iget p0, p0, Lcom/squareup/okhttp/Address;->c:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/squareup/okhttp/Address;->a:Ljava/net/Proxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x20f

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/squareup/okhttp/Address;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/squareup/okhttp/Address;->c:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/squareup/okhttp/Address;->e:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/squareup/okhttp/Address;->f:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/squareup/okhttp/Address;->g:Lcom/squareup/okhttp/CertificatePinner;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/squareup/okhttp/Address;->h:Lcom/squareup/okhttp/Authenticator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/squareup/okhttp/Address;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/squareup/okhttp/Address;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object p0, p0, Lcom/squareup/okhttp/Address;->k:Ljava/net/ProxySelector;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v2, p0

    return v2
.end method
