.class public Lorg/scribe/model/Request;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final n:Ljava/lang/String; = "Content-Length"

.field public static final o:Ljava/lang/String; = "Content-Type"

.field public static p:Lorg/scribe/model/RequestTuner;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lorg/scribe/model/Verb;

.field public c:Lorg/scribe/model/ParameterList;

.field public d:Lorg/scribe/model/ParameterList;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/String;

.field public g:Ljava/net/HttpURLConnection;

.field public h:Ljava/lang/String;

.field public i:[B

.field public j:Z

.field public k:Z

.field public l:Ljava/lang/Long;

.field public m:Ljava/lang/Long;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/scribe/model/Request$a;

    invoke-direct {v0}, Lorg/scribe/model/Request$a;-><init>()V

    sput-object v0, Lorg/scribe/model/Request;->p:Lorg/scribe/model/RequestTuner;

    return-void
.end method

.method public constructor <init>(Lorg/scribe/model/Verb;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/scribe/model/Request;->f:Ljava/lang/String;

    iput-object v0, p0, Lorg/scribe/model/Request;->i:[B

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/scribe/model/Request;->j:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/scribe/model/Request;->k:Z

    iput-object v0, p0, Lorg/scribe/model/Request;->l:Ljava/lang/Long;

    iput-object v0, p0, Lorg/scribe/model/Request;->m:Ljava/lang/Long;

    iput-object p1, p0, Lorg/scribe/model/Request;->b:Lorg/scribe/model/Verb;

    iput-object p2, p0, Lorg/scribe/model/Request;->a:Ljava/lang/String;

    new-instance p1, Lorg/scribe/model/ParameterList;

    invoke-direct {p1}, Lorg/scribe/model/ParameterList;-><init>()V

    iput-object p1, p0, Lorg/scribe/model/Request;->c:Lorg/scribe/model/ParameterList;

    new-instance p1, Lorg/scribe/model/ParameterList;

    invoke-direct {p1}, Lorg/scribe/model/ParameterList;-><init>()V

    iput-object p1, p0, Lorg/scribe/model/Request;->d:Lorg/scribe/model/ParameterList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/scribe/model/Request;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/net/HttpURLConnection;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length p0, p2

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Content-Length"

    invoke-virtual {p1, v0, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Content-Type"

    invoke-virtual {p1, p0}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "application/x-www-form-urlencoded"

    invoke-virtual {p1, p0, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/scribe/model/Request;->d:Lorg/scribe/model/ParameterList;

    invoke-virtual {p0, p1, p2}, Lorg/scribe/model/ParameterList;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/scribe/model/Request;->e:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addPayload(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/scribe/model/Request;->f:Ljava/lang/String;

    return-void
.end method

.method public addPayload([B)V
    .locals 0

    .line 2
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/scribe/model/Request;->i:[B

    return-void
.end method

.method public addQuerystringParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/scribe/model/Request;->c:Lorg/scribe/model/ParameterList;

    invoke-virtual {p0, p1, p2}, Lorg/scribe/model/ParameterList;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/net/HttpURLConnection;)V
    .locals 3

    iget-object v0, p0, Lorg/scribe/model/Request;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/scribe/model/Request;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/scribe/model/Request;->getCompleteUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/scribe/model/Request;->g:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/scribe/model/Request;->j:Z

    if-eqz v1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    const-string v2, "http.keepAlive"

    invoke-static {v2, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lorg/scribe/model/Request;->g:Ljava/net/HttpURLConnection;

    iget-boolean p0, p0, Lorg/scribe/model/Request;->k:Z

    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    :cond_1
    return-void
.end method

.method public d(Lorg/scribe/model/RequestTuner;)Lorg/scribe/model/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/scribe/model/Request;->g:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lorg/scribe/model/Request;->b:Lorg/scribe/model/Verb;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/scribe/model/Request;->l:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/scribe/model/Request;->g:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    :cond_0
    iget-object v0, p0, Lorg/scribe/model/Request;->m:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/scribe/model/Request;->g:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    :cond_1
    iget-object v0, p0, Lorg/scribe/model/Request;->g:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v0}, Lorg/scribe/model/Request;->b(Ljava/net/HttpURLConnection;)V

    iget-object v0, p0, Lorg/scribe/model/Request;->b:Lorg/scribe/model/Verb;

    sget-object v1, Lorg/scribe/model/Verb;->PUT:Lorg/scribe/model/Verb;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/scribe/model/Request;->b:Lorg/scribe/model/Verb;

    sget-object v1, Lorg/scribe/model/Verb;->POST:Lorg/scribe/model/Verb;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/scribe/model/Request;->g:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Lorg/scribe/model/Request;->e()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/scribe/model/Request;->a(Ljava/net/HttpURLConnection;[B)V

    :cond_3
    invoke-virtual {p1, p0}, Lorg/scribe/model/RequestTuner;->tune(Lorg/scribe/model/Request;)V

    new-instance p1, Lorg/scribe/model/Response;

    iget-object p0, p0, Lorg/scribe/model/Request;->g:Ljava/net/HttpURLConnection;

    invoke-direct {p1, p0}, Lorg/scribe/model/Response;-><init>(Ljava/net/HttpURLConnection;)V

    return-object p1
.end method

.method public e()[B
    .locals 4

    iget-object v0, p0, Lorg/scribe/model/Request;->i:[B

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/scribe/model/Request;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/scribe/model/Request;->d:Lorg/scribe/model/ParameterList;

    invoke-virtual {v0}, Lorg/scribe/model/ParameterList;->asFormUrlEncodedString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/scribe/model/Request;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/scribe/exceptions/OAuthException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported Charset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/scribe/model/Request;->getCharset()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/scribe/exceptions/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public f(Ljava/net/HttpURLConnection;)V
    .locals 0

    iput-object p1, p0, Lorg/scribe/model/Request;->g:Ljava/net/HttpURLConnection;

    return-void
.end method

.method public getBodyContents()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/scribe/model/Request;->e()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/scribe/model/Request;->getCharset()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/scribe/exceptions/OAuthException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported Charset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/scribe/model/Request;->h:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/scribe/exceptions/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getBodyParams()Lorg/scribe/model/ParameterList;
    .locals 0

    iget-object p0, p0, Lorg/scribe/model/Request;->d:Lorg/scribe/model/ParameterList;

    return-object p0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/scribe/model/Request;->h:Ljava/lang/String;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getCompleteUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/scribe/model/Request;->c:Lorg/scribe/model/ParameterList;

    iget-object p0, p0, Lorg/scribe/model/Request;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/scribe/model/ParameterList;->appendTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/scribe/model/Request;->e:Ljava/util/Map;

    return-object p0
.end method

.method public getQueryStringParams()Lorg/scribe/model/ParameterList;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/scribe/model/ParameterList;

    invoke-direct {v0}, Lorg/scribe/model/ParameterList;-><init>()V

    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lorg/scribe/model/Request;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/scribe/model/ParameterList;->addQuerystring(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/scribe/model/Request;->c:Lorg/scribe/model/ParameterList;

    invoke-virtual {v0, p0}, Lorg/scribe/model/ParameterList;->addAll(Lorg/scribe/model/ParameterList;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/scribe/exceptions/OAuthException;

    const-string v1, "Malformed URL"

    invoke-direct {v0, v1, p0}, Lorg/scribe/exceptions/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public getSanitizedUrl()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/scribe/model/Request;->a:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "\\?.*"

    const-string v2, ""

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/scribe/model/Request;->a:Ljava/lang/String;

    const-string v3, ":80"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/scribe/model/Request;->a:Ljava/lang/String;

    const-string v4, ":80/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lorg/scribe/model/Request;->a:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/scribe/model/Request;->a:Ljava/lang/String;

    const-string v3, "https://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/scribe/model/Request;->a:Ljava/lang/String;

    const-string v3, ":443"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/scribe/model/Request;->a:Ljava/lang/String;

    const-string v4, ":443/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object p0, p0, Lorg/scribe/model/Request;->a:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p0, p0, Lorg/scribe/model/Request;->a:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/scribe/model/Request;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getVerb()Lorg/scribe/model/Verb;
    .locals 0

    iget-object p0, p0, Lorg/scribe/model/Request;->b:Lorg/scribe/model/Verb;

    return-object p0
.end method

.method public send()Lorg/scribe/model/Response;
    .locals 1

    .line 4
    sget-object v0, Lorg/scribe/model/Request;->p:Lorg/scribe/model/RequestTuner;

    invoke-virtual {p0, v0}, Lorg/scribe/model/Request;->send(Lorg/scribe/model/RequestTuner;)Lorg/scribe/model/Response;

    move-result-object p0

    return-object p0
.end method

.method public send(Lorg/scribe/model/RequestTuner;)Lorg/scribe/model/Response;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/scribe/model/Request;->c()V

    .line 2
    invoke-virtual {p0, p1}, Lorg/scribe/model/Request;->d(Lorg/scribe/model/RequestTuner;)Lorg/scribe/model/Response;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Lorg/scribe/exceptions/OAuthConnectionException;

    invoke-direct {p1, p0}, Lorg/scribe/exceptions/OAuthConnectionException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/scribe/model/Request;->h:Ljava/lang/String;

    return-void
.end method

.method public setConnectTimeout(ILjava/util/concurrent/TimeUnit;)V
    .locals 2

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/scribe/model/Request;->l:Ljava/lang/Long;

    return-void
.end method

.method public setConnectionKeepAlive(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/scribe/model/Request;->j:Z

    return-void
.end method

.method public setFollowRedirects(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/scribe/model/Request;->k:Z

    return-void
.end method

.method public setReadTimeout(ILjava/util/concurrent/TimeUnit;)V
    .locals 2

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/scribe/model/Request;->m:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/scribe/model/Request;->getVerb()Lorg/scribe/model/Verb;

    move-result-object v0

    invoke-virtual {p0}, Lorg/scribe/model/Request;->getUrl()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "@Request(%s %s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
