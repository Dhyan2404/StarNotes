.class public final Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Logger;,
        Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;
    }
.end annotation


# instance fields
.field private volatile level:Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;

.field private final logger:Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Logger;


# direct methods
.method public constructor <init>(Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Logger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;->NONE:Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;

    iput-object v0, p0, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor;->level:Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;

    iput-object p1, p0, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor;->logger:Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Logger;

    return-void
.end method


# virtual methods
.method public getLevel()Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor;->level:Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;

    return-object p0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor;->level:Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    sget-object v2, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;->NONE:Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;

    if-ne v0, v2, :cond_0

    invoke-interface {p1, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lokhttp3/Connection;->protocol()Lokhttp3/Protocol;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget-object v2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    :goto_0
    iget-object v3, p0, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor;->logger:Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Logger;

    invoke-static {v1, v2, v0, v3}, Lcom/tencent/qcloud/core/http/OkHttpLoggingUtils;->logRequest(Lokhttp3/Request;Lokhttp3/Protocol;Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Logger;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    :try_start_0
    invoke-interface {p1, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor;->logger:Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Logger;

    invoke-static {p1, v1, v2, v0, p0}, Lcom/tencent/qcloud/core/http/OkHttpLoggingUtils;->logResponse(Lokhttp3/Response;JLcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Logger;)V

    return-object p1

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor;->logger:Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<-- HTTP FAILED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Logger;->logException(Ljava/lang/Exception;Ljava/lang/String;)V

    throw p1
.end method

.method public setLevel(Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;)Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor;->level:Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "level == null. Use Level.NONE instead."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
