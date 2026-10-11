.class public Lorg/apache/http/impl/client/HttpClientBuilder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/http/impl/client/HttpClientBuilder;->build()Lorg/apache/http/impl/client/CloseableHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lorg/apache/http/impl/client/IdleConnectionEvictor;

.field public final synthetic f:Lorg/apache/http/impl/client/HttpClientBuilder;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/HttpClientBuilder;Lorg/apache/http/impl/client/IdleConnectionEvictor;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder$a;->f:Lorg/apache/http/impl/client/HttpClientBuilder;

    iput-object p2, p0, Lorg/apache/http/impl/client/HttpClientBuilder$a;->e:Lorg/apache/http/impl/client/IdleConnectionEvictor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder$a;->e:Lorg/apache/http/impl/client/IdleConnectionEvictor;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/IdleConnectionEvictor;->shutdown()V

    :try_start_0
    iget-object p0, p0, Lorg/apache/http/impl/client/HttpClientBuilder$a;->e:Lorg/apache/http/impl/client/IdleConnectionEvictor;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/http/impl/client/IdleConnectionEvictor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method
