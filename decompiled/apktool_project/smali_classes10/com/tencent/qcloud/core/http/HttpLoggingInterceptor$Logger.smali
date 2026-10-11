.class public interface abstract Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Logger"
.end annotation


# virtual methods
.method public abstract logException(Ljava/lang/Exception;Ljava/lang/String;)V
.end method

.method public abstract logRequest(Ljava/lang/String;)V
.end method

.method public abstract logResponse(Lokhttp3/Response;Ljava/lang/String;)V
.end method
