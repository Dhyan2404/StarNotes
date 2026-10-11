.class public Lcom/alibaba/sdk/android/oss/network/ExecutionContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Request:",
        "Lcom/alibaba/sdk/android/oss/model/OSSRequest;",
        "Result:",
        "Lcom/alibaba/sdk/android/oss/model/OSSResult;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/sdk/android/oss/model/OSSRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequest;"
        }
    .end annotation
.end field

.field public b:Lokhttp3/OkHttpClient;

.field public c:Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

.field public d:Landroid/content/Context;

.field public e:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

.field public f:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

.field public g:Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient;",
            "TRequest;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient;",
            "TRequest;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->c:Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    .line 4
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setClient(Lokhttp3/OkHttpClient;)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setRequest(Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    .line 6
    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->d:Landroid/content/Context;

    return-object p0
.end method

.method public getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->c:Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    return-object p0
.end method

.method public getClient()Lokhttp3/OkHttpClient;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->b:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public getCompletedCallback()Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "TRequest;TResult;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->e:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    return-object p0
.end method

.method public getProgressCallback()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->f:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-object p0
.end method

.method public getRequest()Lcom/alibaba/sdk/android/oss/model/OSSRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRequest;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->a:Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    return-object p0
.end method

.method public getRetryCallback()Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->g:Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;

    return-object p0
.end method

.method public setClient(Lokhttp3/OkHttpClient;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->b:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "TRequest;TResult;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->e:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    return-void
.end method

.method public setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->f:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-void
.end method

.method public setRequest(Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequest;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->a:Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    return-void
.end method

.method public setRetryCallback(Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->g:Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;

    return-void
.end method
