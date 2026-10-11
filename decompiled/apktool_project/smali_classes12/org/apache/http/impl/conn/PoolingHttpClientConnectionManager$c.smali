.class public Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/config/SocketConfig;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/config/ConnectionConfig;",
            ">;"
        }
    .end annotation
.end field

.field public volatile c:Lorg/apache/http/config/SocketConfig;

.field public volatile d:Lorg/apache/http/config/ConnectionConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$c;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$c;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/http/HttpHost;)Lorg/apache/http/config/ConnectionConfig;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$c;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/http/config/ConnectionConfig;

    return-object p0
.end method

.method public b()Lorg/apache/http/config/ConnectionConfig;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$c;->d:Lorg/apache/http/config/ConnectionConfig;

    return-object p0
.end method

.method public c()Lorg/apache/http/config/SocketConfig;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$c;->c:Lorg/apache/http/config/SocketConfig;

    return-object p0
.end method

.method public d(Lorg/apache/http/HttpHost;)Lorg/apache/http/config/SocketConfig;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$c;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/http/config/SocketConfig;

    return-object p0
.end method

.method public e(Lorg/apache/http/HttpHost;Lorg/apache/http/config/ConnectionConfig;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$c;->b:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public f(Lorg/apache/http/config/ConnectionConfig;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$c;->d:Lorg/apache/http/config/ConnectionConfig;

    return-void
.end method

.method public g(Lorg/apache/http/config/SocketConfig;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$c;->c:Lorg/apache/http/config/SocketConfig;

    return-void
.end method

.method public h(Lorg/apache/http/HttpHost;Lorg/apache/http/config/SocketConfig;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$c;->a:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
