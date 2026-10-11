.class public final Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/liulishuo/okdownload/IRedirectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRedirectLocation()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public handleRedirect(Lcom/liulishuo/okdownload/core/connection/DownloadConnection;Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liulishuo/okdownload/core/connection/DownloadConnection;",
            "Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;->getResponseCode()I

    move-result v0

    check-cast p1, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0}, Lcom/liulishuo/okdownload/RedirectUtil;->isRedirect(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->release()V

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    invoke-static {p2, v0}, Lcom/liulishuo/okdownload/RedirectUtil;->getRedirectedUrl(Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$a;->a:Ljava/lang/String;

    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$a;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->a(Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;Ljava/net/URL;)Ljava/net/URL;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->b()V

    invoke-static {p3, p1}, Lcom/liulishuo/okdownload/core/Util;->addRequestHeaderFields(Ljava/util/Map;Lcom/liulishuo/okdownload/core/connection/DownloadConnection;)V

    iget-object v0, p1, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->connection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;->getResponseCode()I

    move-result v0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/net/ProtocolException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Too many redirect requests: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method
