.class public final Lcom/sun/org/apache/xerces/internal/util/HTTPInputSource;
.super Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;
.source "SourceFile"


# instance fields
.field protected fFollowRedirects:Z

.field protected fHTTPRequestProperties:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/util/HTTPInputSource;->fFollowRedirects:Z

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/util/HTTPInputSource;->fFollowRedirects:Z

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct/range {p0 .. p5}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/util/HTTPInputSource;->fFollowRedirects:Z

    .line 9
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct/range {p0 .. p5}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/util/HTTPInputSource;->fFollowRedirects:Z

    .line 12
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getFollowHTTPRedirects()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/util/HTTPInputSource;->fFollowRedirects:Z

    return p0
.end method

.method public getHTTPRequestProperties()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getHTTPRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public setFollowHTTPRedirects(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/util/HTTPInputSource;->fFollowRedirects:Z

    return-void
.end method

.method public setHTTPRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
