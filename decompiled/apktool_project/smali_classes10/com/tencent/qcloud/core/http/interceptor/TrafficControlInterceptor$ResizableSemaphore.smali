.class Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor$ResizableSemaphore;
.super Ljava/util/concurrent/Semaphore;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResizableSemaphore"
.end annotation


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public reducePermits(I)V
    .locals 0

    invoke-super {p0, p1}, Ljava/util/concurrent/Semaphore;->reducePermits(I)V

    return-void
.end method
