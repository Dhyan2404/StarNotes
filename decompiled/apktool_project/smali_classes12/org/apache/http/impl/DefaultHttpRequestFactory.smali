.class public Lorg/apache/http/impl/DefaultHttpRequestFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/HttpRequestFactory;


# annotations
.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/http/impl/DefaultHttpRequestFactory;

.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/http/impl/DefaultHttpRequestFactory;

    invoke-direct {v0}, Lorg/apache/http/impl/DefaultHttpRequestFactory;-><init>()V

    sput-object v0, Lorg/apache/http/impl/DefaultHttpRequestFactory;->INSTANCE:Lorg/apache/http/impl/DefaultHttpRequestFactory;

    const-string v0, "GET"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/DefaultHttpRequestFactory;->a:[Ljava/lang/String;

    const-string v0, "POST"

    const-string v1, "PUT"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/DefaultHttpRequestFactory;->b:[Ljava/lang/String;

    const-string v0, "TRACE"

    const-string v1, "CONNECT"

    const-string v2, "HEAD"

    const-string v3, "OPTIONS"

    const-string v4, "DELETE"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/DefaultHttpRequestFactory;->c:[Ljava/lang/String;

    const-string v0, "PATCH"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/DefaultHttpRequestFactory;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public newHttpRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/MethodNotSupportedException;
        }
    .end annotation

    .line 12
    sget-object p0, Lorg/apache/http/impl/DefaultHttpRequestFactory;->a:[Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/http/impl/DefaultHttpRequestFactory;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 13
    new-instance p0, Lorg/apache/http/message/BasicHttpRequest;

    invoke-direct {p0, p1, p2}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 14
    :cond_0
    sget-object p0, Lorg/apache/http/impl/DefaultHttpRequestFactory;->b:[Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/http/impl/DefaultHttpRequestFactory;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 15
    new-instance p0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    invoke-direct {p0, p1, p2}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 16
    :cond_1
    sget-object p0, Lorg/apache/http/impl/DefaultHttpRequestFactory;->c:[Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/http/impl/DefaultHttpRequestFactory;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 17
    new-instance p0, Lorg/apache/http/message/BasicHttpRequest;

    invoke-direct {p0, p1, p2}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 18
    :cond_2
    sget-object p0, Lorg/apache/http/impl/DefaultHttpRequestFactory;->d:[Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/http/impl/DefaultHttpRequestFactory;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 19
    new-instance p0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    invoke-direct {p0, p1, p2}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 20
    :cond_3
    new-instance p0, Lorg/apache/http/MethodNotSupportedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " method not supported"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/http/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public newHttpRequest(Lorg/apache/http/RequestLine;)Lorg/apache/http/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/MethodNotSupportedException;
        }
    .end annotation

    const-string p0, "Request line"

    .line 1
    invoke-static {p1, p0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object p0

    .line 3
    sget-object v0, Lorg/apache/http/impl/DefaultHttpRequestFactory;->a:[Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/apache/http/impl/DefaultHttpRequestFactory;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance p0, Lorg/apache/http/message/BasicHttpRequest;

    invoke-direct {p0, p1}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Lorg/apache/http/RequestLine;)V

    return-object p0

    .line 5
    :cond_0
    sget-object v0, Lorg/apache/http/impl/DefaultHttpRequestFactory;->b:[Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/apache/http/impl/DefaultHttpRequestFactory;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance p0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    invoke-direct {p0, p1}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Lorg/apache/http/RequestLine;)V

    return-object p0

    .line 7
    :cond_1
    sget-object v0, Lorg/apache/http/impl/DefaultHttpRequestFactory;->c:[Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/apache/http/impl/DefaultHttpRequestFactory;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    new-instance p0, Lorg/apache/http/message/BasicHttpRequest;

    invoke-direct {p0, p1}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Lorg/apache/http/RequestLine;)V

    return-object p0

    .line 9
    :cond_2
    sget-object v0, Lorg/apache/http/impl/DefaultHttpRequestFactory;->d:[Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/apache/http/impl/DefaultHttpRequestFactory;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    new-instance p0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    invoke-direct {p0, p1}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Lorg/apache/http/RequestLine;)V

    return-object p0

    .line 11
    :cond_3
    new-instance p1, Lorg/apache/http/MethodNotSupportedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " method not supported"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/http/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
