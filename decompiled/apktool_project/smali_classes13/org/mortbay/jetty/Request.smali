.class public Lorg/mortbay/jetty/Request;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/servlet/http/HttpServletRequest;


# static fields
.field public static final T:Ljava/util/Collection;

.field public static final U:I = 0x0

.field public static final V:I = 0x1

.field public static final W:I = 0x2


# instance fields
.field public A:Lorg/mortbay/util/MultiMap;

.field public B:Z

.field public C:I

.field public D:Ljava/io/BufferedReader;

.field public E:Ljava/lang/String;

.field public F:Z

.field public G:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

.field public H:Ljavax/servlet/http/HttpSession;

.field public I:Lorg/mortbay/jetty/SessionManager;

.field public J:Z

.field public K:[Ljavax/servlet/http/Cookie;

.field public L:[Ljava/lang/String;

.field public M:J

.field public N:Lorg/mortbay/io/Buffer;

.field public O:Lorg/mortbay/util/ajax/Continuation;

.field public P:Ljava/lang/Object;

.field public Q:Ljava/lang/Object;

.field public R:Ljava/util/Map;

.field public S:Lorg/mortbay/jetty/security/UserRealm;

.field public a:Z

.field public b:Lorg/mortbay/jetty/HttpConnection;

.field public c:Lorg/mortbay/io/EndPoint;

.field public d:Ljava/util/Map;

.field public e:Lorg/mortbay/util/Attributes;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:I

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Z

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Lorg/mortbay/jetty/HttpURI;

.field public y:Ljava/security/Principal;

.field public z:Lorg/mortbay/util/MultiMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/Request;->T:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/mortbay/jetty/Request;->a:Z

    const-string v1, "HTTP/1.1"

    .line 3
    iput-object v1, p0, Lorg/mortbay/jetty/Request;->o:Ljava/lang/String;

    .line 4
    iput-boolean v0, p0, Lorg/mortbay/jetty/Request;->r:Z

    const-string v1, "http"

    .line 5
    iput-object v1, p0, Lorg/mortbay/jetty/Request;->t:Ljava/lang/String;

    .line 6
    iput v0, p0, Lorg/mortbay/jetty/Request;->C:I

    .line 7
    iput-boolean v0, p0, Lorg/mortbay/jetty/Request;->F:Z

    .line 8
    iput-boolean v0, p0, Lorg/mortbay/jetty/Request;->J:Z

    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/HttpConnection;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lorg/mortbay/jetty/Request;->a:Z

    const-string v1, "HTTP/1.1"

    .line 11
    iput-object v1, p0, Lorg/mortbay/jetty/Request;->o:Ljava/lang/String;

    .line 12
    iput-boolean v0, p0, Lorg/mortbay/jetty/Request;->r:Z

    const-string v1, "http"

    .line 13
    iput-object v1, p0, Lorg/mortbay/jetty/Request;->t:Ljava/lang/String;

    .line 14
    iput v0, p0, Lorg/mortbay/jetty/Request;->C:I

    .line 15
    iput-boolean v0, p0, Lorg/mortbay/jetty/Request;->F:Z

    .line 16
    iput-boolean v0, p0, Lorg/mortbay/jetty/Request;->J:Z

    .line 17
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->b:Lorg/mortbay/jetty/HttpConnection;

    .line 18
    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getEndPoint()Lorg/mortbay/io/EndPoint;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->c:Lorg/mortbay/io/EndPoint;

    .line 19
    iget-object p1, p0, Lorg/mortbay/jetty/Request;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResolveNames()Z

    move-result p1

    iput-boolean p1, p0, Lorg/mortbay/jetty/Request;->F:Z

    return-void
.end method

.method public static getRequest(Ljavax/servlet/http/HttpServletRequest;)Lorg/mortbay/jetty/Request;
    .locals 1

    instance-of v0, p0, Lorg/mortbay/jetty/Request;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/mortbay/jetty/Request;

    return-object p0

    :cond_0
    :goto_0
    instance-of v0, p0, Ljavax/servlet/ServletRequestWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Ljavax/servlet/ServletRequestWrapper;

    invoke-virtual {p0}, Ljavax/servlet/ServletRequestWrapper;->getRequest()Ljavax/servlet/ServletRequest;

    move-result-object p0

    check-cast p0, Ljavax/servlet/http/HttpServletRequest;

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lorg/mortbay/jetty/Request;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/mortbay/jetty/Request;

    return-object p0

    :cond_2
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->A:Lorg/mortbay/util/MultiMap;

    if-nez v0, :cond_0

    new-instance v0, Lorg/mortbay/util/MultiMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/mortbay/util/MultiMap;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->A:Lorg/mortbay/util/MultiMap;

    :cond_0
    iget-boolean v0, p0, Lorg/mortbay/jetty/Request;->B:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->z:Lorg/mortbay/util/MultiMap;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->A:Lorg/mortbay/util/MultiMap;

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->z:Lorg/mortbay/util/MultiMap;

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/Request;->B:Z

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->x:Lorg/mortbay/jetty/HttpURI;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpURI;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->h:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->x:Lorg/mortbay/jetty/HttpURI;

    iget-object v1, p0, Lorg/mortbay/jetty/Request;->A:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/HttpURI;->decodeQueryTo(Lorg/mortbay/util/MultiMap;)V

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/Request;->x:Lorg/mortbay/jetty/HttpURI;

    iget-object v2, p0, Lorg/mortbay/jetty/Request;->A:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v1, v2, v0}, Lorg/mortbay/jetty/HttpURI;->decodeQueryTo(Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getContentType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/mortbay/jetty/HttpFields;->valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget v1, p0, Lorg/mortbay/jetty/Request;->C:I

    if-nez v1, :cond_d

    const-string v1, "POST"

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "PUT"

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_6
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getContentLength()I

    move-result v1

    if-eqz v1, :cond_d

    :try_start_1
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->G:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    const/4 v3, -0x1

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/handler/ContextHandler;->getMaxFormContentSize()I

    move-result v2

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v2}, Lorg/mortbay/jetty/HttpConnection;->getConnector()Lorg/mortbay/jetty/Connector;

    move-result-object v2

    invoke-interface {v2}, Lorg/mortbay/jetty/Connector;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v2

    const-string v4, "org.mortbay.jetty.Request.maxFormContentSize"

    invoke-virtual {v2, v4}, Lorg/mortbay/jetty/Server;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_8
    move v2, v3

    :goto_1
    if-le v1, v2, :cond_a

    if-gtz v2, :cond_9

    goto :goto_2

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Form too large"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ">"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v4

    iget-object v5, p0, Lorg/mortbay/jetty/Request;->A:Lorg/mortbay/util/MultiMap;

    if-gez v1, :cond_b

    move v3, v2

    :cond_b
    invoke-static {v4, v5, v0, v3}, Lorg/mortbay/util/UrlEncoded;->decodeTo(Ljava/io/InputStream;Lorg/mortbay/util/MultiMap;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    :cond_d
    :goto_3
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->z:Lorg/mortbay/util/MultiMap;

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->A:Lorg/mortbay/util/MultiMap;

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->z:Lorg/mortbay/util/MultiMap;

    goto :goto_5

    :cond_e
    iget-object v1, p0, Lorg/mortbay/jetty/Request;->A:Lorg/mortbay/util/MultiMap;

    if-eq v0, v1, :cond_10

    invoke-virtual {v1}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    :goto_4
    invoke-static {v1}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v4

    if-ge v3, v4, :cond_f

    iget-object v4, p0, Lorg/mortbay/jetty/Request;->z:Lorg/mortbay/util/MultiMap;

    invoke-static {v1, v3}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_10
    :goto_5
    return-void
.end method

.method public addEventListener(Ljava/util/EventListener;)V
    .locals 1

    instance-of v0, p1, Ljavax/servlet/ServletRequestAttributeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->P:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->P:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public b(Lorg/mortbay/util/ajax/Continuation;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->O:Lorg/mortbay/util/ajax/Continuation;

    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "org.mortbay.jetty.ajax.Continuation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/Request;->getContinuation(Z)Lorg/mortbay/util/ajax/Continuation;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/Request;->e:Lorg/mortbay/util/Attributes;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-interface {p0, p1}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->e:Lorg/mortbay/util/Attributes;

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/mortbay/util/AttributesMap;->getAttributeNamesCopy(Lorg/mortbay/util/Attributes;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getAttributes()Lorg/mortbay/util/Attributes;
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->e:Lorg/mortbay/util/Attributes;

    if-nez v0, :cond_0

    new-instance v0, Lorg/mortbay/util/AttributesMap;

    invoke-direct {v0}, Lorg/mortbay/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->e:Lorg/mortbay/util/Attributes;

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/Request;->e:Lorg/mortbay/util/Attributes;

    return-object p0
.end method

.method public getAuthType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getConnection()Lorg/mortbay/jetty/HttpConnection;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->b:Lorg/mortbay/jetty/HttpConnection;

    return-object p0
.end method

.method public getContentLength()I
    .locals 2

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p0

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/HttpFields;->getLongField(Lorg/mortbay/io/Buffer;)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public getContentRead()J
    .locals 2

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->b:Lorg/mortbay/jetty/HttpConnection;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getParser()Lorg/mortbay/jetty/Parser;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/Request;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getParser()Lorg/mortbay/jetty/Parser;

    move-result-object p0

    check-cast p0, Lorg/mortbay/jetty/HttpParser;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpParser;->getContentRead()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p0

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/HttpFields;->getStringField(Lorg/mortbay/io/Buffer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->G:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    return-object p0
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->u:Ljava/lang/String;

    return-object p0
.end method

.method public getContinuation()Lorg/mortbay/util/ajax/Continuation;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mortbay/jetty/Request;->O:Lorg/mortbay/util/ajax/Continuation;

    return-object p0
.end method

.method public getContinuation(Z)Lorg/mortbay/util/ajax/Continuation;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->O:Lorg/mortbay/util/ajax/Continuation;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getConnector()Lorg/mortbay/jetty/Connector;

    move-result-object p1

    invoke-interface {p1}, Lorg/mortbay/jetty/Connector;->newContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->O:Lorg/mortbay/util/ajax/Continuation;

    .line 4
    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/Request;->O:Lorg/mortbay/util/ajax/Continuation;

    return-object p0
.end method

.method public getCookies()[Ljavax/servlet/http/Cookie;
    .locals 20

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lorg/mortbay/jetty/Request;->J:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/mortbay/jetty/Request;->K:[Ljavax/servlet/http/Cookie;

    return-object v0

    :cond_0
    iget-object v0, v1, Lorg/mortbay/jetty/Request;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v2, Lorg/mortbay/jetty/HttpHeaders;->COOKIE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/HttpFields;->containsKey(Lorg/mortbay/io/Buffer;)Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    iput-object v3, v1, Lorg/mortbay/jetty/Request;->K:[Ljavax/servlet/http/Cookie;

    iput-boolean v4, v1, Lorg/mortbay/jetty/Request;->J:Z

    iput-object v3, v1, Lorg/mortbay/jetty/Request;->L:[Ljava/lang/String;

    return-object v3

    :cond_1
    iget-object v0, v1, Lorg/mortbay/jetty/Request;->L:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lorg/mortbay/jetty/Request;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/HttpFields;->getValues(Lorg/mortbay/io/Buffer;)Ljava/util/Enumeration;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v1, Lorg/mortbay/jetty/Request;->L:[Ljava/lang/String;

    array-length v8, v7

    if-ge v2, v8, :cond_3

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iput-object v3, v1, Lorg/mortbay/jetty/Request;->L:[Ljava/lang/String;

    :cond_4
    iget-object v0, v1, Lorg/mortbay/jetty/Request;->L:[Ljava/lang/String;

    if-eqz v0, :cond_5

    array-length v0, v0

    if-ne v0, v2, :cond_5

    iput-boolean v4, v1, Lorg/mortbay/jetty/Request;->J:Z

    iget-object v0, v1, Lorg/mortbay/jetty/Request;->K:[Ljavax/servlet/http/Cookie;

    return-object v0

    :cond_5
    iput-object v3, v1, Lorg/mortbay/jetty/Request;->K:[Ljavax/servlet/http/Cookie;

    iget-object v0, v1, Lorg/mortbay/jetty/Request;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v2, Lorg/mortbay/jetty/HttpHeaders;->COOKIE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/HttpFields;->getValues(Lorg/mortbay/io/Buffer;)Ljava/util/Enumeration;

    move-result-object v2

    move-object v6, v3

    move-object v7, v6

    const/4 v8, 0x0

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_23

    :try_start_0
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    invoke-static {v7, v9}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v11, v10, -0x1

    move-object v12, v3

    move-object/from16 v17, v12

    move-object/from16 v18, v17

    const/4 v0, 0x0

    const/4 v5, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    :goto_3
    if-ge v13, v10, :cond_6

    invoke-virtual {v9, v13}, Ljava/lang/String;->charAt(I)C

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/16 v4, 0x22

    const-string v19, ""

    if-eqz v0, :cond_c

    if-eqz v15, :cond_7

    move-object/from16 v19, v2

    const/4 v15, 0x0

    goto/16 :goto_d

    :cond_7
    if-eq v3, v4, :cond_9

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_8

    goto/16 :goto_c

    :cond_8
    move-object/from16 v19, v2

    const/4 v15, 0x1

    goto/16 :goto_d

    :cond_9
    if-ne v13, v11, :cond_b

    if-eqz v14, :cond_a

    add-int/lit8 v0, v13, 0x1

    :try_start_1
    invoke-virtual {v9, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    goto :goto_4

    :cond_a
    add-int/lit8 v0, v13, 0x1

    invoke-virtual {v9, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move/from16 v16, v13

    move-object/from16 v18, v19

    goto :goto_5

    :cond_b
    :goto_4
    move/from16 v16, v13

    :goto_5
    const/4 v3, 0x0

    goto/16 :goto_9

    :cond_c
    const/16 v4, 0x9

    if-eqz v14, :cond_12

    if-eq v3, v4, :cond_22

    const/16 v4, 0x20

    if-eq v3, v4, :cond_22

    const/16 v4, 0x22

    if-eq v3, v4, :cond_10

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_e

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_e

    if-gez v5, :cond_d

    move v5, v13

    :cond_d
    if-ne v13, v11, :cond_21

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v9, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    goto :goto_7

    :cond_e
    if-ltz v5, :cond_f

    add-int/lit8 v3, v16, 0x1

    invoke-virtual {v9, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v3

    goto :goto_6

    :cond_f
    move-object/from16 v18, v19

    :goto_6
    move v3, v0

    const/4 v5, -0x1

    const/4 v14, 0x0

    goto/16 :goto_9

    :cond_10
    if-gez v5, :cond_11

    move v5, v13

    const/4 v0, 0x1

    :cond_11
    if-ne v13, v11, :cond_21

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v9, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    :goto_7
    move v3, v0

    move/from16 v16, v13

    goto :goto_9

    :cond_12
    if-eq v3, v4, :cond_22

    const/16 v4, 0x20

    if-eq v3, v4, :cond_22

    const/16 v4, 0x22

    if-eq v3, v4, :cond_18

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_16

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_16

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_14

    if-gez v5, :cond_13

    move v5, v13

    :cond_13
    if-ne v13, v11, :cond_21

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v9, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    goto :goto_8

    :cond_14
    if-ltz v5, :cond_15

    add-int/lit8 v3, v16, 0x1

    invoke-virtual {v9, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    :cond_15
    move-object/from16 v19, v2

    const/4 v5, -0x1

    const/4 v14, 0x1

    goto/16 :goto_d

    :cond_16
    if-ltz v5, :cond_17

    add-int/lit8 v3, v16, 0x1

    invoke-virtual {v9, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v19

    :cond_17
    move v3, v0

    const/4 v5, -0x1

    goto :goto_9

    :cond_18
    if-gez v5, :cond_19

    move v5, v13

    const/4 v0, 0x1

    :cond_19
    if-ne v13, v11, :cond_21

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v9, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    :goto_8
    move v3, v0

    move/from16 v16, v13

    move-object/from16 v18, v19

    :goto_9
    if-eqz v18, :cond_20

    if-eqz v17, :cond_20

    invoke-static/range {v17 .. v17}, Lorg/mortbay/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v18 .. v18}, Lorg/mortbay/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v19, v2

    :try_start_2
    const-string v2, "$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "$path"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    if-eqz v12, :cond_1f

    invoke-virtual {v12, v4}, Ljavax/servlet/http/Cookie;->setPath(Ljava/lang/String;)V

    goto :goto_b

    :cond_1a
    const-string v2, "$domain"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    if-eqz v12, :cond_1f

    invoke-virtual {v12, v4}, Ljavax/servlet/http/Cookie;->setDomain(Ljava/lang/String;)V

    goto :goto_b

    :cond_1b
    const-string v2, "$port"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    if-eqz v12, :cond_1f

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "port="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljavax/servlet/http/Cookie;->setComment(Ljava/lang/String;)V

    goto :goto_b

    :cond_1c
    const-string v2, "$version"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v8, v0

    goto :goto_b

    :cond_1d
    new-instance v2, Ljavax/servlet/http/Cookie;

    invoke-direct {v2, v0, v4}, Ljavax/servlet/http/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-lez v8, :cond_1e

    :try_start_3
    invoke-virtual {v2, v8}, Ljavax/servlet/http/Cookie;->setVersion(I)V

    :cond_1e
    invoke-static {v6, v2}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v6, v0

    move-object v12, v2

    goto :goto_b

    :catch_0
    move-exception v0

    move-object v12, v2

    goto :goto_a

    :catch_1
    move-exception v0

    :goto_a
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1f
    :goto_b
    move v0, v3

    const/16 v17, 0x0

    const/16 v18, 0x0

    goto :goto_d

    :catch_2
    move-exception v0

    goto :goto_e

    :cond_20
    move-object/from16 v19, v2

    move v0, v3

    goto :goto_d

    :cond_21
    move-object/from16 v19, v2

    move/from16 v16, v13

    goto :goto_d

    :cond_22
    :goto_c
    move-object/from16 v19, v2

    :goto_d
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v19

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v19, v2

    :goto_e
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    move-object/from16 v2, v19

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_23
    invoke-static {v6}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/mortbay/jetty/Request;->J:Z

    if-lez v0, :cond_28

    iget-object v2, v1, Lorg/mortbay/jetty/Request;->K:[Ljavax/servlet/http/Cookie;

    if-eqz v2, :cond_24

    array-length v2, v2

    if-eq v2, v0, :cond_25

    :cond_24
    new-array v2, v0, [Ljavax/servlet/http/Cookie;

    iput-object v2, v1, Lorg/mortbay/jetty/Request;->K:[Ljavax/servlet/http/Cookie;

    :cond_25
    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_26

    iget-object v3, v1, Lorg/mortbay/jetty/Request;->K:[Ljavax/servlet/http/Cookie;

    invoke-static {v6, v2}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/servlet/http/Cookie;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_26
    invoke-static {v7}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, v1, Lorg/mortbay/jetty/Request;->L:[Ljava/lang/String;

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v0, :cond_27

    iget-object v2, v1, Lorg/mortbay/jetty/Request;->L:[Ljava/lang/String;

    invoke-static {v7, v5}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_27
    const/4 v2, 0x0

    goto :goto_11

    :cond_28
    const/4 v2, 0x0

    iput-object v2, v1, Lorg/mortbay/jetty/Request;->K:[Ljavax/servlet/http/Cookie;

    iput-object v2, v1, Lorg/mortbay/jetty/Request;->L:[Ljava/lang/String;

    :goto_11
    iget-object v0, v1, Lorg/mortbay/jetty/Request;->K:[Ljavax/servlet/http/Cookie;

    if-eqz v0, :cond_2a

    array-length v1, v0

    if-nez v1, :cond_29

    goto :goto_12

    :cond_29
    return-object v0

    :cond_2a
    :goto_12
    return-object v2
.end method

.method public getDateHeader(Ljava/lang/String;)J
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/HttpFields;->getDateField(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/HttpFields;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHeaderNames()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpFields;->getFieldNames()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/HttpFields;->getValues(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getInputState()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/Request;->C:I

    return p0
.end method

.method public getInputStream()Ljavax/servlet/ServletInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/mortbay/jetty/Request;->C:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "READER"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput v1, p0, Lorg/mortbay/jetty/Request;->C:I

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object p0

    return-object p0
.end method

.method public getIntHeader(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/HttpFields;->getLongField(Ljava/lang/String;)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->c:Lorg/mortbay/io/EndPoint;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/mortbay/io/EndPoint;->getLocalAddr()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lorg/mortbay/jetty/Request;->F:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->c:Lorg/mortbay/io/EndPoint;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/mortbay/io/EndPoint;->getLocalHost()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    iget-object p0, p0, Lorg/mortbay/jetty/Request;->c:Lorg/mortbay/io/EndPoint;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lorg/mortbay/io/EndPoint;->getLocalAddr()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public getLocalPort()I
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->c:Lorg/mortbay/io/EndPoint;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/mortbay/io/EndPoint;->getLocalPort()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 3

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p0

    const-string v0, "Accept-Language"

    const-string v1, ", \t"

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/jetty/HttpFields;->getValues(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lorg/mortbay/jetty/HttpFields;->qualityList(Ljava/util/Enumeration;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lorg/mortbay/jetty/HttpFields;->valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v2, ""

    :goto_0
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public getLocales()Ljava/util/Enumeration;
    .locals 8

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p0

    const-string v0, "Accept-Language"

    const-string v1, ", \t"

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/jetty/HttpFields;->getValues(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p0}, Lorg/mortbay/jetty/HttpFields;->qualityList(Ljava/util/Enumeration;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lorg/mortbay/jetty/Request;->T:Ljava/util/Collection;

    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move-object v4, v2

    :goto_0
    if-ge v3, v0, :cond_3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v2}, Lorg/mortbay/jetty/HttpFields;->valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2d

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-le v6, v7, :cond_2

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    const-string v7, ""

    :goto_1
    invoke-static {v4, v0}, Lorg/mortbay/util/LazyList;->ensureSize(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    new-instance v6, Ljava/util/Locale;

    invoke-direct {v6, v5, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v6}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v4}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_4

    sget-object p0, Lorg/mortbay/jetty/Request;->T:Ljava/util/Collection;

    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {v4}, Lorg/mortbay/util/LazyList;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    sget-object p0, Lorg/mortbay/jetty/Request;->T:Ljava/util/Collection;

    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->l:Ljava/lang/String;

    return-object p0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lorg/mortbay/jetty/Request;->B:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->a()V

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/Request;->z:Lorg/mortbay/util/MultiMap;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/util/MultiMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getParameterMap()Ljava/util/Map;
    .locals 1

    iget-boolean v0, p0, Lorg/mortbay/jetty/Request;->B:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->a()V

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/Request;->z:Lorg/mortbay/util/MultiMap;

    invoke-virtual {p0}, Lorg/mortbay/util/MultiMap;->toStringArrayMap()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getParameterNames()Ljava/util/Enumeration;
    .locals 1

    iget-boolean v0, p0, Lorg/mortbay/jetty/Request;->B:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->a()V

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/Request;->z:Lorg/mortbay/util/MultiMap;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getParameterValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lorg/mortbay/jetty/Request;->B:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->a()V

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/Request;->z:Lorg/mortbay/util/MultiMap;

    invoke-virtual {p0, p1}, Lorg/mortbay/util/MultiMap;->getValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getParameters()Lorg/mortbay/util/MultiMap;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->z:Lorg/mortbay/util/MultiMap;

    return-object p0
.end method

.method public getPathInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->m:Ljava/lang/String;

    return-object p0
.end method

.method public getPathTranslated()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->G:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->o:Ljava/lang/String;

    return-object p0
.end method

.method public getQueryEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->h:Ljava/lang/String;

    return-object p0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->p:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->x:Lorg/mortbay/jetty/HttpURI;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/mortbay/jetty/Request;->h:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpURI;->getQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->p:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/HttpURI;->getQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->p:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/mortbay/jetty/Request;->p:Ljava/lang/String;

    return-object p0
.end method

.method public getReader()Ljava/io/BufferedReader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/mortbay/jetty/Request;->C:I

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "STREAMED"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->D:Ljava/io/BufferedReader;

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    :cond_3
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->D:Ljava/io/BufferedReader;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/mortbay/jetty/Request;->E:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v2

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->E:Ljava/lang/String;

    new-instance v3, Lorg/mortbay/jetty/h;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, p0, v4, v2}, Lorg/mortbay/jetty/h;-><init>(Lorg/mortbay/jetty/Request;Ljava/io/Reader;Ljavax/servlet/ServletInputStream;)V

    iput-object v3, p0, Lorg/mortbay/jetty/Request;->D:Ljava/io/BufferedReader;

    :cond_5
    iput v1, p0, Lorg/mortbay/jetty/Request;->C:I

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->D:Ljava/io/BufferedReader;

    return-object p0
.end method

.method public getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->G:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/Request;->c:Lorg/mortbay/io/EndPoint;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/mortbay/io/EndPoint;->getRemoteAddr()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lorg/mortbay/jetty/Request;->F:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/Request;->c:Lorg/mortbay/io/EndPoint;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/mortbay/io/EndPoint;->getRemoteHost()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getRemoteAddr()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRemotePort()I
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->c:Lorg/mortbay/io/EndPoint;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/mortbay/io/EndPoint;->getRemotePort()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getRemoteUser()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 4

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->G:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/mortbay/jetty/Request;->v:Ljava/lang/String;

    iget-object v2, p0, Lorg/mortbay/jetty/Request;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    const/4 v0, 0x0

    add-int/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0, p1}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object p0, p0, Lorg/mortbay/jetty/Request;->G:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRequestURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->x:Lorg/mortbay/jetty/HttpURI;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpURI;->getPathAndParam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->s:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/Request;->s:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestURL()Ljava/lang/StringBuffer;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getServerPort()I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getServerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lorg/mortbay/jetty/Request;->n:I

    if-lez v3, :cond_2

    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x50

    if-ne v2, v3, :cond_1

    :cond_0
    const-string v3, "https"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x1bb

    if-eq v2, v1, :cond_2

    :cond_1
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/mortbay/jetty/Request;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getRequestURI()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    monitor-exit v0

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRequestedSessionId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->q:Ljava/lang/String;

    return-object p0
.end method

.method public getRoleMap()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->d:Ljava/util/Map;

    return-object p0
.end method

.method public getRootURL()Ljava/lang/StringBuffer;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getServerPort()I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getServerName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-lez v2, :cond_2

    const-string p0, "http"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x50

    if-ne v2, p0, :cond_1

    :cond_0
    const-string p0, "https"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x1bb

    if-eq v2, p0, :cond_2

    :cond_1
    const/16 p0, 0x3a

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_2
    monitor-exit v0

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->t:Ljava/lang/String;

    return-object p0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->x:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpURI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->i:Ljava/lang/String;

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->x:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpURI;->getPort()I

    move-result v0

    iput v0, p0, Lorg/mortbay/jetty/Request;->n:I

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->HOST_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/HttpFields;->get(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_3

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v1

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v1

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_2

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v1

    invoke-interface {v0, v1, v2}, Lorg/mortbay/io/Buffer;->peek(II)Lorg/mortbay/io/Buffer;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/io/BufferUtil;->to8859_1_String(Lorg/mortbay/io/Buffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/Request;->i:Ljava/lang/String;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v1, v3}, Lorg/mortbay/io/Buffer;->peek(II)Lorg/mortbay/io/Buffer;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/io/BufferUtil;->toInt(Lorg/mortbay/io/Buffer;)I

    move-result v0

    iput v0, p0, Lorg/mortbay/jetty/Request;->n:I

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->i:Ljava/lang/String;

    return-object p0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/mortbay/jetty/Request;->i:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget v1, p0, Lorg/mortbay/jetty/Request;->n:I

    if-gez v1, :cond_5

    :cond_4
    invoke-static {v0}, Lorg/mortbay/io/BufferUtil;->to8859_1_String(Lorg/mortbay/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/Request;->n:I

    :cond_5
    iget-object p0, p0, Lorg/mortbay/jetty/Request;->i:Ljava/lang/String;

    return-object p0

    :cond_6
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->b:Lorg/mortbay/jetty/HttpConnection;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getLocalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getLocalPort()I

    move-result v0

    iput v0, p0, Lorg/mortbay/jetty/Request;->n:I

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->i:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v1, "0.0.0.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->i:Ljava/lang/String;

    return-object p0

    :cond_7
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :goto_1
    iget-object p0, p0, Lorg/mortbay/jetty/Request;->i:Ljava/lang/String;

    return-object p0
.end method

.method public getServerPort()I
    .locals 1

    iget v0, p0, Lorg/mortbay/jetty/Request;->n:I

    if-gtz v0, :cond_3

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getServerName()Ljava/lang/String;

    :cond_0
    iget v0, p0, Lorg/mortbay/jetty/Request;->n:I

    if-gtz v0, :cond_3

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->x:Lorg/mortbay/jetty/HttpURI;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpURI;->getPort()I

    move-result v0

    iput v0, p0, Lorg/mortbay/jetty/Request;->n:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->c:Lorg/mortbay/io/EndPoint;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->getLocalPort()I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/mortbay/jetty/Request;->n:I

    :cond_3
    :goto_1
    iget v0, p0, Lorg/mortbay/jetty/Request;->n:I

    if-gtz v0, :cond_5

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0x1bb

    return p0

    :cond_4
    const/16 p0, 0x50

    return p0

    :cond_5
    return v0
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->G:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    return-object p0
.end method

.method public getServletName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->w:Ljava/lang/String;

    return-object p0
.end method

.method public getServletPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->v:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->v:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/Request;->v:Ljava/lang/String;

    return-object p0
.end method

.method public getServletResponse()Ljavax/servlet/ServletResponse;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object p0

    return-object p0
.end method

.method public getSession()Ljavax/servlet/http/HttpSession;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object p0

    return-object p0
.end method

.method public getSession(Z)Ljavax/servlet/http/HttpSession;
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->I:Lorg/mortbay/jetty/SessionManager;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No SessionHandler or SessionManager"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/mortbay/jetty/Request;->H:Ljavax/servlet/http/HttpSession;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Lorg/mortbay/jetty/SessionManager;->isValid(Ljavax/servlet/http/HttpSession;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object p0, p0, Lorg/mortbay/jetty/Request;->H:Ljavax/servlet/http/HttpSession;

    return-object p0

    :cond_2
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lorg/mortbay/jetty/Request;->H:Ljavax/servlet/http/HttpSession;

    .line 7
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getRequestedSessionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 8
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->I:Lorg/mortbay/jetty/SessionManager;

    if-eqz v2, :cond_3

    .line 9
    invoke-interface {v2, v1}, Lorg/mortbay/jetty/SessionManager;->getHttpSession(Ljava/lang/String;)Ljavax/servlet/http/HttpSession;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/Request;->H:Ljavax/servlet/http/HttpSession;

    if-nez v1, :cond_3

    if-nez p1, :cond_3

    return-object v0

    .line 10
    :cond_3
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->H:Ljavax/servlet/http/HttpSession;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->I:Lorg/mortbay/jetty/SessionManager;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 11
    invoke-interface {v0, p0}, Lorg/mortbay/jetty/SessionManager;->newHttpSession(Ljavax/servlet/http/HttpServletRequest;)Ljavax/servlet/http/HttpSession;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->H:Ljavax/servlet/http/HttpSession;

    .line 12
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->I:Lorg/mortbay/jetty/SessionManager;

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getContextPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->isSecure()Z

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lorg/mortbay/jetty/SessionManager;->getSessionCookie(Ljavax/servlet/http/HttpSession;Ljava/lang/String;Z)Ljavax/servlet/http/Cookie;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 13
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/Response;->addCookie(Ljavax/servlet/http/Cookie;)V

    .line 14
    :cond_4
    iget-object p0, p0, Lorg/mortbay/jetty/Request;->H:Ljavax/servlet/http/HttpSession;

    return-object p0
.end method

.method public getSessionManager()Lorg/mortbay/jetty/SessionManager;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->I:Lorg/mortbay/jetty/SessionManager;

    return-object p0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lorg/mortbay/jetty/Request;->M:J

    return-wide v0
.end method

.method public getTimeStampBuffer()Lorg/mortbay/io/Buffer;
    .locals 4

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->N:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/mortbay/jetty/Request;->M:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    sget-object v2, Lorg/mortbay/jetty/HttpFields;->__dateCache:Lorg/mortbay/io/BufferDateCache;

    invoke-virtual {v2, v0, v1}, Lorg/mortbay/io/BufferDateCache;->formatBuffer(J)Lorg/mortbay/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->N:Lorg/mortbay/io/Buffer;

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/Request;->N:Lorg/mortbay/io/Buffer;

    return-object p0
.end method

.method public getUri()Lorg/mortbay/jetty/HttpURI;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->x:Lorg/mortbay/jetty/HttpURI;

    return-object p0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 5

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->y:Ljava/security/Principal;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v2, v0, Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;

    sget-object v2, Lorg/mortbay/jetty/security/SecurityHandler;->__NO_USER:Ljava/security/Principal;

    iput-object v2, p0, Lorg/mortbay/jetty/Request;->y:Ljava/security/Principal;

    invoke-virtual {v0}, Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;->getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/security/SecurityHandler;->getAuthenticator()Lorg/mortbay/jetty/security/Authenticator;

    move-result-object v2

    invoke-virtual {v0}, Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;->getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/security/SecurityHandler;->getUserRealm()Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getServletPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getServletPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2, v0, v3, p0, v1}, Lorg/mortbay/jetty/security/Authenticator;->authenticate(Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Ljava/security/Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    iget-object p0, p0, Lorg/mortbay/jetty/Request;->y:Ljava/security/Principal;

    sget-object v0, Lorg/mortbay/jetty/security/SecurityHandler;->__NO_USER:Ljava/security/Principal;

    if-ne p0, v0, :cond_2

    return-object v1

    :cond_2
    return-object p0
.end method

.method public getUserRealm()Lorg/mortbay/jetty/security/UserRealm;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->S:Lorg/mortbay/jetty/security/UserRealm;

    return-object p0
.end method

.method public isHandled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/Request;->a:Z

    return p0
.end method

.method public isRequestedSessionIdFromCookie()Z
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lorg/mortbay/jetty/Request;->r:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRequestedSessionIdFromURL()Z
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lorg/mortbay/jetty/Request;->r:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRequestedSessionIdFromUrl()Z
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lorg/mortbay/jetty/Request;->r:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRequestedSessionIdValid()Z
    .locals 3

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->q:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/Request;->I:Lorg/mortbay/jetty/SessionManager;

    invoke-interface {v1}, Lorg/mortbay/jetty/SessionManager;->getIdManager()Lorg/mortbay/jetty/SessionIdManager;

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/jetty/Request;->q:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/mortbay/jetty/SessionIdManager;->getClusterId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->I:Lorg/mortbay/jetty/SessionManager;

    invoke-interface {p0, v0}, Lorg/mortbay/jetty/SessionManager;->getClusterId(Ljavax/servlet/http/HttpSession;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public isSecure()Z
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0, p0}, Lorg/mortbay/jetty/HttpConnection;->isConfidential(Lorg/mortbay/jetty/Request;)Z

    move-result p0

    return p0
.end method

.method public isUserInRole(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->S:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {p0, v0, p1}, Lorg/mortbay/jetty/security/UserRealm;->isUserInRole(Ljava/security/Principal;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public recoverNewSession(Ljava/lang/Object;)Ljavax/servlet/http/HttpSession;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->R:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/servlet/http/HttpSession;

    return-object p0
.end method

.method public recycle()V
    .locals 5

    iget v0, p0, Lorg/mortbay/jetty/Request;->C:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->D:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->D:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    iput-object v2, p0, Lorg/mortbay/jetty/Request;->D:Ljava/io/BufferedReader;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/Request;->a:Z

    iget-object v1, p0, Lorg/mortbay/jetty/Request;->G:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/mortbay/jetty/Request;->e:Lorg/mortbay/util/Attributes;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/mortbay/util/Attributes;->clearAttributes()V

    :cond_1
    iput-object v2, p0, Lorg/mortbay/jetty/Request;->f:Ljava/lang/String;

    iput-object v2, p0, Lorg/mortbay/jetty/Request;->g:Ljava/lang/String;

    iput-object v2, p0, Lorg/mortbay/jetty/Request;->h:Ljava/lang/String;

    iput-object v2, p0, Lorg/mortbay/jetty/Request;->G:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    iput-object v2, p0, Lorg/mortbay/jetty/Request;->i:Ljava/lang/String;

    iput-object v2, p0, Lorg/mortbay/jetty/Request;->l:Ljava/lang/String;

    iput-object v2, p0, Lorg/mortbay/jetty/Request;->m:Ljava/lang/String;

    iput v0, p0, Lorg/mortbay/jetty/Request;->n:I

    const-string v1, "HTTP/1.1"

    iput-object v1, p0, Lorg/mortbay/jetty/Request;->o:Ljava/lang/String;

    iput-object v2, p0, Lorg/mortbay/jetty/Request;->p:Ljava/lang/String;

    iput-object v2, p0, Lorg/mortbay/jetty/Request;->q:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/mortbay/jetty/Request;->r:Z

    iput-object v2, p0, Lorg/mortbay/jetty/Request;->H:Ljavax/servlet/http/HttpSession;

    iput-object v2, p0, Lorg/mortbay/jetty/Request;->I:Lorg/mortbay/jetty/SessionManager;

    iput-object v2, p0, Lorg/mortbay/jetty/Request;->s:Ljava/lang/String;

    const-string v1, "http"

    iput-object v1, p0, Lorg/mortbay/jetty/Request;->t:Ljava/lang/String;

    iput-object v2, p0, Lorg/mortbay/jetty/Request;->v:Ljava/lang/String;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lorg/mortbay/jetty/Request;->M:J

    iput-object v2, p0, Lorg/mortbay/jetty/Request;->N:Lorg/mortbay/io/Buffer;

    iput-object v2, p0, Lorg/mortbay/jetty/Request;->x:Lorg/mortbay/jetty/HttpURI;

    iput-object v2, p0, Lorg/mortbay/jetty/Request;->y:Ljava/security/Principal;

    iget-object v1, p0, Lorg/mortbay/jetty/Request;->A:Lorg/mortbay/util/MultiMap;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/AbstractMap;->clear()V

    :cond_2
    iput-object v2, p0, Lorg/mortbay/jetty/Request;->z:Lorg/mortbay/util/MultiMap;

    iput-boolean v0, p0, Lorg/mortbay/jetty/Request;->B:Z

    iput v0, p0, Lorg/mortbay/jetty/Request;->C:I

    iput-boolean v0, p0, Lorg/mortbay/jetty/Request;->J:Z

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->R:Ljava/util/Map;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_3
    iput-object v2, p0, Lorg/mortbay/jetty/Request;->R:Ljava/util/Map;

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->O:Lorg/mortbay/util/ajax/Continuation;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->isPending()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->O:Lorg/mortbay/util/ajax/Continuation;

    invoke-interface {p0}, Lorg/mortbay/util/ajax/Continuation;->reset()V

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Request in context!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->e:Lorg/mortbay/util/Attributes;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/mortbay/jetty/Request;->e:Lorg/mortbay/util/Attributes;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lorg/mortbay/util/Attributes;->removeAttribute(Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/mortbay/jetty/Request;->P:Ljava/lang/Object;

    if-eqz v1, :cond_3

    new-instance v1, Ljavax/servlet/ServletRequestAttributeEvent;

    iget-object v2, p0, Lorg/mortbay/jetty/Request;->G:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-direct {v1, v2, p0, p1, v0}, Ljavax/servlet/ServletRequestAttributeEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mortbay/jetty/Request;->P:Ljava/lang/Object;

    invoke-static {p1}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_3

    iget-object v2, p0, Lorg/mortbay/jetty/Request;->P:Ljava/lang/Object;

    invoke-static {v2, v0}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/ServletRequestAttributeListener;

    instance-of v3, v2, Ljavax/servlet/ServletRequestAttributeListener;

    if-eqz v3, :cond_2

    invoke-interface {v2, v1}, Ljavax/servlet/ServletRequestAttributeListener;->attributeRemoved(Ljavax/servlet/ServletRequestAttributeEvent;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public removeEventListener(Ljava/util/EventListener;)V
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->P:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->P:Ljava/lang/Object;

    return-void
.end method

.method public saveNewSession(Ljava/lang/Object;Ljavax/servlet/http/HttpSession;)V
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->R:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->R:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/Request;->R:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->e:Lorg/mortbay/util/Attributes;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    const-string v2, "org.mortbay.jetty.Request.queryEncoding"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/Request;->setQueryEncoding(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    const-string v1, "org.mortbay.jetty.ResponseBuffer"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_0
    move-object v1, p2

    check-cast v1, Ljava/nio/ByteBuffer;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    new-instance v2, Lorg/mortbay/io/nio/DirectNIOBuffer;

    invoke-direct {v2, v1, v3}, Lorg/mortbay/io/nio/DirectNIOBuffer;-><init>(Ljava/nio/ByteBuffer;Z)V

    goto :goto_2

    :cond_3
    new-instance v2, Lorg/mortbay/io/nio/IndirectNIOBuffer;

    invoke-direct {v2, v1, v3}, Lorg/mortbay/io/nio/IndirectNIOBuffer;-><init>(Ljava/nio/ByteBuffer;Z)V

    :goto_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getServletResponse()Ljavax/servlet/ServletResponse;

    move-result-object v3

    invoke-interface {v3}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v3

    check-cast v3, Lorg/mortbay/jetty/HttpConnection$Output;

    invoke-virtual {v3, v2}, Lorg/mortbay/jetty/HttpConnection$Output;->sendResponse(Lorg/mortbay/io/Buffer;)V

    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    :goto_3
    iget-object v1, p0, Lorg/mortbay/jetty/Request;->e:Lorg/mortbay/util/Attributes;

    if-nez v1, :cond_5

    new-instance v1, Lorg/mortbay/util/AttributesMap;

    invoke-direct {v1}, Lorg/mortbay/util/AttributesMap;-><init>()V

    iput-object v1, p0, Lorg/mortbay/jetty/Request;->e:Lorg/mortbay/util/Attributes;

    :cond_5
    iget-object v1, p0, Lorg/mortbay/jetty/Request;->e:Lorg/mortbay/util/Attributes;

    invoke-interface {v1, p1, p2}, Lorg/mortbay/util/Attributes;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/mortbay/jetty/Request;->P:Ljava/lang/Object;

    if-eqz v1, :cond_a

    new-instance v1, Ljavax/servlet/ServletRequestAttributeEvent;

    iget-object v2, p0, Lorg/mortbay/jetty/Request;->G:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    if-nez v0, :cond_6

    move-object v3, p2

    goto :goto_4

    :cond_6
    move-object v3, v0

    :goto_4
    invoke-direct {v1, v2, p0, p1, v3}, Ljavax/servlet/ServletRequestAttributeEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mortbay/jetty/Request;->P:Ljava/lang/Object;

    invoke-static {p1}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result p1

    const/4 v2, 0x0

    :goto_5
    if-ge v2, p1, :cond_a

    iget-object v3, p0, Lorg/mortbay/jetty/Request;->P:Ljava/lang/Object;

    invoke-static {v3, v2}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/servlet/ServletRequestAttributeListener;

    instance-of v4, v3, Ljavax/servlet/ServletRequestAttributeListener;

    if-eqz v4, :cond_9

    if-nez v0, :cond_7

    invoke-interface {v3, v1}, Ljavax/servlet/ServletRequestAttributeListener;->attributeAdded(Ljavax/servlet/ServletRequestAttributeEvent;)V

    goto :goto_6

    :cond_7
    if-nez p2, :cond_8

    invoke-interface {v3, v1}, Ljavax/servlet/ServletRequestAttributeListener;->attributeRemoved(Ljavax/servlet/ServletRequestAttributeEvent;)V

    goto :goto_6

    :cond_8
    invoke-interface {v3, v1}, Ljavax/servlet/ServletRequestAttributeListener;->attributeReplaced(Ljavax/servlet/ServletRequestAttributeEvent;)V

    :cond_9
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    return-void
.end method

.method public setAttributes(Lorg/mortbay/util/Attributes;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->e:Lorg/mortbay/util/Attributes;

    return-void
.end method

.method public setAuthType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->f:Ljava/lang/String;

    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget v0, p0, Lorg/mortbay/jetty/Request;->C:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->g:Ljava/lang/String;

    invoke-static {p1}, Lorg/mortbay/util/StringUtil;->isUTF8(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ""

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    :cond_1
    return-void
.end method

.method public setCharacterEncodingUnchecked(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->g:Ljava/lang/String;

    return-void
.end method

.method public setConnection(Lorg/mortbay/jetty/HttpConnection;)V
    .locals 1

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getEndPoint()Lorg/mortbay/io/EndPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->c:Lorg/mortbay/io/EndPoint;

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResolveNames()Z

    move-result p1

    iput-boolean p1, p0, Lorg/mortbay/jetty/Request;->F:Z

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p0

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {p0, v0, p1}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    return-void
.end method

.method public setContext(Lorg/mortbay/jetty/handler/ContextHandler$SContext;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->G:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    return-void
.end method

.method public setContextPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->u:Ljava/lang/String;

    return-void
.end method

.method public setCookies([Ljavax/servlet/http/Cookie;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->K:[Ljavax/servlet/http/Cookie;

    return-void
.end method

.method public setHandled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/Request;->a:Z

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->l:Ljava/lang/String;

    return-void
.end method

.method public setParameters(Lorg/mortbay/util/MultiMap;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/mortbay/jetty/Request;->A:Lorg/mortbay/util/MultiMap;

    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->z:Lorg/mortbay/util/MultiMap;

    iget-boolean p0, p0, Lorg/mortbay/jetty/Request;->B:Z

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public setPathInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->m:Ljava/lang/String;

    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->o:Ljava/lang/String;

    return-void
.end method

.method public setQueryEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->h:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->p:Ljava/lang/String;

    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->p:Ljava/lang/String;

    return-void
.end method

.method public setRemoteAddr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->j:Ljava/lang/String;

    return-void
.end method

.method public setRemoteHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->k:Ljava/lang/String;

    return-void
.end method

.method public setRequestListeners(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->Q:Ljava/lang/Object;

    return-void
.end method

.method public setRequestURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->s:Ljava/lang/String;

    return-void
.end method

.method public setRequestedSessionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->q:Ljava/lang/String;

    return-void
.end method

.method public setRequestedSessionIdFromCookie(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/Request;->r:Z

    return-void
.end method

.method public setRoleMap(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->d:Ljava/util/Map;

    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->t:Ljava/lang/String;

    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->i:Ljava/lang/String;

    return-void
.end method

.method public setServerPort(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/jetty/Request;->n:I

    return-void
.end method

.method public setServletName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->w:Ljava/lang/String;

    return-void
.end method

.method public setServletPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->v:Ljava/lang/String;

    return-void
.end method

.method public setSession(Ljavax/servlet/http/HttpSession;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->H:Ljavax/servlet/http/HttpSession;

    return-void
.end method

.method public setSessionManager(Lorg/mortbay/jetty/SessionManager;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->I:Lorg/mortbay/jetty/SessionManager;

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lorg/mortbay/jetty/Request;->M:J

    return-void
.end method

.method public setUri(Lorg/mortbay/jetty/HttpURI;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->x:Lorg/mortbay/jetty/HttpURI;

    return-void
.end method

.method public setUserPrincipal(Ljava/security/Principal;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->y:Ljava/security/Principal;

    return-void
.end method

.method public setUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/Request;->S:Lorg/mortbay/jetty/security/UserRealm;

    return-void
.end method

.method public takeRequestListeners()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->Q:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mortbay/jetty/Request;->Q:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/mortbay/jetty/Request;->x:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/mortbay/jetty/Request;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpFields;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
