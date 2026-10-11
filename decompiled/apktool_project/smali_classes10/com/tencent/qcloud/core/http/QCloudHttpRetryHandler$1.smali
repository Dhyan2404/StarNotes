.class Lcom/tencent/qcloud/core/http/QCloudHttpRetryHandler$1;
.super Lcom/tencent/qcloud/core/http/QCloudHttpRetryHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qcloud/core/http/QCloudHttpRetryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qcloud/core/http/QCloudHttpRetryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldRetry(Lokhttp3/Request;Lokhttp3/Response;Ljava/lang/Exception;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
