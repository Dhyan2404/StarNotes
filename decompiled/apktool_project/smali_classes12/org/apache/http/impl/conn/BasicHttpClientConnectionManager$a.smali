.class public Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/ConnectionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ConnectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lorg/apache/http/conn/routing/HttpRoute;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager$a;->g:Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;

    iput-object p2, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager$a;->e:Lorg/apache/http/conn/routing/HttpRoute;

    iput-object p3, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager$a;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/HttpClientConnection;
    .locals 0

    iget-object p1, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager$a;->g:Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;

    iget-object p2, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager$a;->e:Lorg/apache/http/conn/routing/HttpRoute;

    iget-object p0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager$a;->f:Ljava/lang/Object;

    invoke-virtual {p1, p2, p0}, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->w(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/HttpClientConnection;

    move-result-object p0

    return-object p0
.end method
