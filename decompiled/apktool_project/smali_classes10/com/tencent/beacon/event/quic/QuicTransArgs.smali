.class public Lcom/tencent/beacon/event/quic/QuicTransArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private appkey:Ljava/lang/String;

.field private data:[B

.field private eventCode:Ljava/lang/String;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tencent/beacon/event/EventBean;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/beacon/event/quic/QuicTransArgs;->url:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/beacon/event/quic/QuicTransArgs;->data:[B

    invoke-virtual {p2}, Lcom/tencent/beacon/event/EventBean;->getAppKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/beacon/event/quic/QuicTransArgs;->appkey:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tencent/beacon/event/EventBean;->getEventCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/beacon/event/quic/QuicTransArgs;->eventCode:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/beacon/base/net/b/d;->e()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/beacon/event/quic/QuicTransArgs;->headers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAppkey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/quic/QuicTransArgs;->appkey:Ljava/lang/String;

    return-object p0
.end method

.method public getData()[B
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/quic/QuicTransArgs;->data:[B

    return-object p0
.end method

.method public getEventCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/quic/QuicTransArgs;->eventCode:Ljava/lang/String;

    return-object p0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/beacon/event/quic/QuicTransArgs;->headers:Ljava/util/Map;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/quic/QuicTransArgs;->url:Ljava/lang/String;

    return-object p0
.end method

.method public setAppkey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/quic/QuicTransArgs;->appkey:Ljava/lang/String;

    return-void
.end method

.method public setData([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/quic/QuicTransArgs;->data:[B

    return-void
.end method

.method public setEventCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/quic/QuicTransArgs;->eventCode:Ljava/lang/String;

    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/beacon/event/quic/QuicTransArgs;->headers:Ljava/util/Map;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/quic/QuicTransArgs;->url:Ljava/lang/String;

    return-void
.end method
