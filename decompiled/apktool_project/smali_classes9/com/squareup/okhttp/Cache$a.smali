.class public Lcom/squareup/okhttp/Cache$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/InternalCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/squareup/okhttp/Cache;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/Cache;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/Cache$a;->a:Lcom/squareup/okhttp/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/squareup/okhttp/Cache$a;->a:Lcom/squareup/okhttp/Cache;

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/Cache;->k(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;

    move-result-object p0

    return-object p0
.end method

.method public put(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/internal/http/CacheRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/squareup/okhttp/Cache$a;->a:Lcom/squareup/okhttp/Cache;

    invoke-static {p0, p1}, Lcom/squareup/okhttp/Cache;->b(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/internal/http/CacheRequest;

    move-result-object p0

    return-object p0
.end method

.method public remove(Lcom/squareup/okhttp/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/squareup/okhttp/Cache$a;->a:Lcom/squareup/okhttp/Cache;

    invoke-static {p0, p1}, Lcom/squareup/okhttp/Cache;->c(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/Request;)V

    return-void
.end method

.method public trackConditionalCacheHit()V
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Cache$a;->a:Lcom/squareup/okhttp/Cache;

    invoke-static {p0}, Lcom/squareup/okhttp/Cache;->f(Lcom/squareup/okhttp/Cache;)V

    return-void
.end method

.method public trackResponse(Lcom/squareup/okhttp/internal/http/CacheStrategy;)V
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Cache$a;->a:Lcom/squareup/okhttp/Cache;

    invoke-static {p0, p1}, Lcom/squareup/okhttp/Cache;->g(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/internal/http/CacheStrategy;)V

    return-void
.end method

.method public update(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/squareup/okhttp/Cache$a;->a:Lcom/squareup/okhttp/Cache;

    invoke-static {p0, p1, p2}, Lcom/squareup/okhttp/Cache;->e(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Response;)V

    return-void
.end method
