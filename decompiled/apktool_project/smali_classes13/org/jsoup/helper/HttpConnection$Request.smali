.class public Lorg/jsoup/helper/HttpConnection$Request;
.super Lorg/jsoup/helper/HttpConnection$a;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/Connection$Request;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jsoup/helper/HttpConnection$a<",
        "Lorg/jsoup/Connection$Request;",
        ">;",
        "Lorg/jsoup/Connection$Request;"
    }
.end annotation


# instance fields
.field public e:Ljava/net/Proxy;

.field public f:I

.field public g:I

.field public h:Z

.field public i:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/jsoup/Connection$KeyVal;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:Z

.field public m:Lorg/jsoup/parser/Parser;

.field public n:Z

.field public o:Ljava/lang/String;

.field public p:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/helper/HttpConnection$a;-><init>(Lorg/jsoup/helper/a;)V

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->k:Z

    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->l:Z

    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->n:Z

    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->o:Ljava/lang/String;

    const/16 v0, 0x7530

    iput v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->f:I

    const/high16 v0, 0x200000

    iput v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->h:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->i:Ljava/util/Collection;

    sget-object v0, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$a;->b:Lorg/jsoup/Connection$Method;

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/helper/HttpConnection$a;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    const-string v0, "User-Agent"

    const-string v1, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36"

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/helper/HttpConnection$a;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    invoke-static {}, Lorg/jsoup/parser/Parser;->htmlParser()Lorg/jsoup/parser/Parser;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->m:Lorg/jsoup/parser/Parser;

    return-void
.end method

.method public static synthetic e(Lorg/jsoup/helper/HttpConnection$Request;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/jsoup/helper/HttpConnection$Request;->n:Z

    return p0
.end method


# virtual methods
.method public bridge synthetic cookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$a;->cookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic cookies()Ljava/util/Map;
    .locals 0

    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$a;->cookies()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public data()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/jsoup/Connection$KeyVal;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/jsoup/helper/HttpConnection$Request;->i:Ljava/util/Collection;

    return-object p0
.end method

.method public bridge synthetic data(Lorg/jsoup/Connection$KeyVal;)Lorg/jsoup/Connection$Request;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Request;->data(Lorg/jsoup/Connection$KeyVal;)Lorg/jsoup/helper/HttpConnection$Request;

    move-result-object p0

    return-object p0
.end method

.method public data(Lorg/jsoup/Connection$KeyVal;)Lorg/jsoup/helper/HttpConnection$Request;
    .locals 1

    .line 3
    const-string v0, "Key val must not be null"

    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->i:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public followRedirects(Z)Lorg/jsoup/Connection$Request;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/jsoup/helper/HttpConnection$Request;->h:Z

    return-object p0
.end method

.method public followRedirects()Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lorg/jsoup/helper/HttpConnection$Request;->h:Z

    return p0
.end method

.method public bridge synthetic hasCookie(Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$a;->hasCookie(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hasHeader(Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$a;->hasHeader(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection$a;->hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic header(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$a;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic headers(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$a;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic headers()Ljava/util/Map;
    .locals 0

    .line 2
    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$a;->headers()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public ignoreContentType(Z)Lorg/jsoup/Connection$Request;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/jsoup/helper/HttpConnection$Request;->l:Z

    return-object p0
.end method

.method public ignoreContentType()Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lorg/jsoup/helper/HttpConnection$Request;->l:Z

    return p0
.end method

.method public ignoreHttpErrors(Z)Lorg/jsoup/Connection$Request;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/jsoup/helper/HttpConnection$Request;->k:Z

    return-object p0
.end method

.method public ignoreHttpErrors()Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lorg/jsoup/helper/HttpConnection$Request;->k:Z

    return p0
.end method

.method public maxBodySize()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/jsoup/helper/HttpConnection$Request;->g:I

    return p0
.end method

.method public maxBodySize(I)Lorg/jsoup/Connection$Request;
    .locals 2

    .line 2
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxSize must be 0 (unlimited) or larger"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    iput p1, p0, Lorg/jsoup/helper/HttpConnection$Request;->g:I

    return-object p0
.end method

.method public bridge synthetic method()Lorg/jsoup/Connection$Method;
    .locals 0

    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$a;->method()Lorg/jsoup/Connection$Method;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic multiHeaders()Ljava/util/Map;
    .locals 0

    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$a;->multiHeaders()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parser(Lorg/jsoup/parser/Parser;)Lorg/jsoup/Connection$Request;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Request;->parser(Lorg/jsoup/parser/Parser;)Lorg/jsoup/helper/HttpConnection$Request;

    move-result-object p0

    return-object p0
.end method

.method public parser(Lorg/jsoup/parser/Parser;)Lorg/jsoup/helper/HttpConnection$Request;
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$Request;->m:Lorg/jsoup/parser/Parser;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/jsoup/helper/HttpConnection$Request;->n:Z

    return-object p0
.end method

.method public parser()Lorg/jsoup/parser/Parser;
    .locals 0

    .line 3
    iget-object p0, p0, Lorg/jsoup/helper/HttpConnection$Request;->m:Lorg/jsoup/parser/Parser;

    return-object p0
.end method

.method public postDataCharset()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jsoup/helper/HttpConnection$Request;->o:Ljava/lang/String;

    return-object p0
.end method

.method public postDataCharset(Ljava/lang/String;)Lorg/jsoup/Connection$Request;
    .locals 1

    .line 2
    const-string v0, "Charset must not be null"

    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$Request;->o:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/nio/charset/IllegalCharsetNameException;

    invoke-direct {p0, p1}, Ljava/nio/charset/IllegalCharsetNameException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public proxy()Ljava/net/Proxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jsoup/helper/HttpConnection$Request;->e:Ljava/net/Proxy;

    return-object p0
.end method

.method public bridge synthetic proxy(Ljava/lang/String;I)Lorg/jsoup/Connection$Request;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Request;->proxy(Ljava/lang/String;I)Lorg/jsoup/helper/HttpConnection$Request;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic proxy(Ljava/net/Proxy;)Lorg/jsoup/Connection$Request;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Request;->proxy(Ljava/net/Proxy;)Lorg/jsoup/helper/HttpConnection$Request;

    move-result-object p0

    return-object p0
.end method

.method public proxy(Ljava/lang/String;I)Lorg/jsoup/helper/HttpConnection$Request;
    .locals 2

    .line 4
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-static {p1, p2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->e:Ljava/net/Proxy;

    return-object p0
.end method

.method public proxy(Ljava/net/Proxy;)Lorg/jsoup/helper/HttpConnection$Request;
    .locals 0

    .line 5
    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$Request;->e:Ljava/net/Proxy;

    return-object p0
.end method

.method public requestBody()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jsoup/helper/HttpConnection$Request;->j:Ljava/lang/String;

    return-object p0
.end method

.method public requestBody(Ljava/lang/String;)Lorg/jsoup/Connection$Request;
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$Request;->j:Ljava/lang/String;

    return-object p0
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jsoup/helper/HttpConnection$Request;->p:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$Request;->p:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public timeout()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/jsoup/helper/HttpConnection$Request;->f:I

    return p0
.end method

.method public bridge synthetic timeout(I)Lorg/jsoup/Connection$Request;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Request;->timeout(I)Lorg/jsoup/helper/HttpConnection$Request;

    move-result-object p0

    return-object p0
.end method

.method public timeout(I)Lorg/jsoup/helper/HttpConnection$Request;
    .locals 2

    .line 3
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Timeout milliseconds must be 0 (infinite) or greater"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    iput p1, p0, Lorg/jsoup/helper/HttpConnection$Request;->f:I

    return-object p0
.end method

.method public bridge synthetic url()Ljava/net/URL;
    .locals 0

    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$a;->url()Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method
