.class public Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/liulishuo/okdownload/core/connection/DownloadConnection;
.implements Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$a;,
        Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;,
        Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Factory;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "DownloadUrlConnection"


# instance fields
.field public a:Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;

.field public b:Ljava/net/URL;

.field public c:Lcom/liulishuo/okdownload/IRedirectHandler;

.field protected connection:Ljava/net/URLConnection;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;-><init>(Ljava/lang/String;Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;-><init>(Ljava/net/URL;Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$a;

    invoke-direct {v0}, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$a;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;-><init>(Ljava/net/URL;Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;Lcom/liulishuo/okdownload/IRedirectHandler;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;Lcom/liulishuo/okdownload/IRedirectHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->a:Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;

    .line 10
    iput-object p1, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->b:Ljava/net/URL;

    .line 11
    iput-object p3, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->c:Lcom/liulishuo/okdownload/IRedirectHandler;

    .line 12
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->b()V

    return-void
.end method

.method public constructor <init>(Ljava/net/URLConnection;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$a;

    invoke-direct {v0}, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$a;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;-><init>(Ljava/net/URLConnection;Lcom/liulishuo/okdownload/IRedirectHandler;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URLConnection;Lcom/liulishuo/okdownload/IRedirectHandler;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->connection:Ljava/net/URLConnection;

    .line 4
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->b:Ljava/net/URL;

    .line 5
    iput-object p2, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->c:Lcom/liulishuo/okdownload/IRedirectHandler;

    return-void
.end method

.method public static synthetic a(Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;Ljava/net/URL;)Ljava/net/URL;
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->b:Ljava/net/URL;

    return-object p1
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->connection:Ljava/net/URLConnection;

    invoke-virtual {p0, p1, p2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config connection for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->b:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadUrlConnection"

    invoke-static {v1, v0}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->a:Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;->a(Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;)Ljava/net/Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->b:Ljava/net/URL;

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->a:Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;

    invoke-static {v1}, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;->a(Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;)Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->connection:Ljava/net/URLConnection;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->b:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->connection:Ljava/net/URLConnection;

    :goto_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->connection:Ljava/net/URLConnection;

    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->a:Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;->b(Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->connection:Ljava/net/URLConnection;

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->a:Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;

    invoke-static {v1}, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;->b(Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    :cond_2
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->a:Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;

    invoke-static {v0}, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;->c(Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->connection:Ljava/net/URLConnection;

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->a:Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;

    invoke-static {p0}, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;->c(Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    :cond_3
    return-void
.end method

.method public execute()Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->connection:Ljava/net/URLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->c:Lcom/liulishuo/okdownload/IRedirectHandler;

    invoke-interface {v1, p0, p0, v0}, Lcom/liulishuo/okdownload/IRedirectHandler;->handleRedirect(Lcom/liulishuo/okdownload/core/connection/DownloadConnection;Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;Ljava/util/Map;)V

    return-object p0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->connection:Ljava/net/URLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public getRedirectLocation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->c:Lcom/liulishuo/okdownload/IRedirectHandler;

    invoke-interface {p0}, Lcom/liulishuo/okdownload/IRedirectHandler;->getRedirectLocation()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->connection:Ljava/net/URLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->connection:Ljava/net/URLConnection;

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->connection:Ljava/net/URLConnection;

    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getResponseHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->connection:Ljava/net/URLConnection;

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResponseHeaderFields()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->connection:Ljava/net/URLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->connection:Ljava/net/URLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->connection:Ljava/net/URLConnection;

    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
