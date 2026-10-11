.class public Lcom/burgstaller/okhttp/basic/BasicAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/burgstaller/okhttp/digest/CachingAuthenticator;


# instance fields
.field public final a:Lcom/burgstaller/okhttp/digest/Credentials;

.field public final b:Ljava/nio/charset/Charset;

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/burgstaller/okhttp/digest/Credentials;)V
    .locals 1

    .line 4
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lcom/burgstaller/okhttp/basic/BasicAuthenticator;-><init>(Lcom/burgstaller/okhttp/digest/Credentials;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Lcom/burgstaller/okhttp/digest/Credentials;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/burgstaller/okhttp/basic/BasicAuthenticator;->a:Lcom/burgstaller/okhttp/digest/Credentials;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    :goto_0
    iput-object p2, p0, Lcom/burgstaller/okhttp/basic/BasicAuthenticator;->b:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/Request;)Lokhttp3/Request;
    .locals 3

    iget-boolean v0, p0, Lcom/burgstaller/okhttp/basic/BasicAuthenticator;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "Proxy-Authorization"

    goto :goto_0

    :cond_0
    const-string v0, "Authorization"

    :goto_0
    invoke-virtual {p1, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "Basic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object p0

    const-string p1, "Previous basic authentication failed, returning null"

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokhttp3/internal/platform/Platform;->log(Ljava/lang/String;ILjava/lang/Throwable;)V

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/burgstaller/okhttp/basic/BasicAuthenticator;->a:Lcom/burgstaller/okhttp/digest/Credentials;

    invoke-virtual {v1}, Lcom/burgstaller/okhttp/digest/Credentials;->getUserName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/burgstaller/okhttp/basic/BasicAuthenticator;->a:Lcom/burgstaller/okhttp/digest/Credentials;

    invoke-virtual {v2}, Lcom/burgstaller/okhttp/digest/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/burgstaller/okhttp/basic/BasicAuthenticator;->b:Ljava/nio/charset/Charset;

    invoke-static {v1, v2, p0}, Lokhttp3/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    const/16 v0, 0x197

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/burgstaller/okhttp/basic/BasicAuthenticator;->c:Z

    invoke-virtual {p0, p1}, Lcom/burgstaller/okhttp/basic/BasicAuthenticator;->a(Lokhttp3/Request;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public authenticateWithState(Lokhttp3/Route;Lokhttp3/Request;)Lokhttp3/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/burgstaller/okhttp/basic/BasicAuthenticator;->a(Lokhttp3/Request;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method
