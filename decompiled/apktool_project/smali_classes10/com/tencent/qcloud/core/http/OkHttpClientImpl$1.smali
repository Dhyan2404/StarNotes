.class Lcom/tencent/qcloud/core/http/OkHttpClientImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/EventListener$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qcloud/core/http/OkHttpClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qcloud/core/http/OkHttpClientImpl;


# direct methods
.method public constructor <init>(Lcom/tencent/qcloud/core/http/OkHttpClientImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qcloud/core/http/OkHttpClientImpl$1;->this$0:Lcom/tencent/qcloud/core/http/OkHttpClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 0

    new-instance p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;

    invoke-direct {p0, p1}, Lcom/tencent/qcloud/core/http/CallMetricsListener;-><init>(Lokhttp3/Call;)V

    return-object p0
.end method
