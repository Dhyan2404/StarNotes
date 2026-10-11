.class public Lorg/mortbay/servlet/MultiPartFilter$a;
.super Ljavax/servlet/http/HttpServletRequestWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/servlet/MultiPartFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:Lorg/mortbay/util/MultiMap;


# direct methods
.method public constructor <init>(Ljavax/servlet/http/HttpServletRequest;Lorg/mortbay/util/MultiMap;)V
    .locals 0

    invoke-direct {p0, p1}, Ljavax/servlet/http/HttpServletRequestWrapper;-><init>(Ljavax/servlet/http/HttpServletRequest;)V

    const-string p1, "UTF-8"

    iput-object p1, p0, Lorg/mortbay/servlet/MultiPartFilter$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lorg/mortbay/servlet/MultiPartFilter$a;->c:Lorg/mortbay/util/MultiMap;

    return-void
.end method


# virtual methods
.method public getContentLength()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mortbay/servlet/MultiPartFilter$a;->c:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v0, p1}, Lorg/mortbay/util/MultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, [B

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/String;

    check-cast p1, [B

    iget-object p0, p0, Lorg/mortbay/servlet/MultiPartFilter$a;->b:Ljava/lang/String;

    invoke-direct {v0, p1, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getParameterMap()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/servlet/MultiPartFilter$a;->c:Lorg/mortbay/util/MultiMap;

    invoke-virtual {p0}, Lorg/mortbay/util/MultiMap;->toStringArrayMap()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getParameterNames()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/servlet/MultiPartFilter$a;->c:Lorg/mortbay/util/MultiMap;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getParameterValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/mortbay/servlet/MultiPartFilter$a;->c:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v0, p1}, Lorg/mortbay/util/MultiMap;->getValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, [B

    if-eqz v3, :cond_1

    :try_start_0
    new-instance v3, Ljava/lang/String;

    check-cast v2, [B

    iget-object v4, p0, Lorg/mortbay/servlet/MultiPartFilter$a;->b:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v3, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_1
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    :goto_2
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iput-object p1, p0, Lorg/mortbay/servlet/MultiPartFilter$a;->b:Ljava/lang/String;

    return-void
.end method
