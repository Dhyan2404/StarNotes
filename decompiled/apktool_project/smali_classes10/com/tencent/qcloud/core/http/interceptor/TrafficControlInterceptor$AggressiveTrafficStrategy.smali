.class Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor$AggressiveTrafficStrategy;
.super Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor$TrafficStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AggressiveTrafficStrategy"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p2}, Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor$TrafficStrategy;-><init>(Ljava/lang/String;II)V

    return-void
.end method
