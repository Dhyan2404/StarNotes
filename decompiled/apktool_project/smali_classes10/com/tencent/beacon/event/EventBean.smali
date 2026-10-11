.class public final Lcom/tencent/beacon/event/EventBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private apn:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private byteValue:[B

.field private cid:J

.field private eventCode:Ljava/lang/String;

.field private eventResult:Z

.field private eventTime:J

.field private eventType:I

.field private eventValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reserved:Ljava/lang/String;

.field private srcIp:Ljava/lang/String;

.field private valueType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/beacon/event/EventBean;->cid:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/beacon/event/EventBean;->eventResult:Z

    return-void
.end method


# virtual methods
.method public getApn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/EventBean;->apn:Ljava/lang/String;

    return-object p0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/EventBean;->appKey:Ljava/lang/String;

    return-object p0
.end method

.method public getByteValue()[B
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/EventBean;->byteValue:[B

    return-object p0
.end method

.method public getCid()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/beacon/event/EventBean;->cid:J

    return-wide v0
.end method

.method public getEventCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/EventBean;->eventCode:Ljava/lang/String;

    return-object p0
.end method

.method public getEventResult()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/event/EventBean;->eventResult:Z

    return p0
.end method

.method public getEventTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/beacon/event/EventBean;->eventTime:J

    return-wide v0
.end method

.method public getEventType()I
    .locals 0

    iget p0, p0, Lcom/tencent/beacon/event/EventBean;->eventType:I

    return p0
.end method

.method public getEventValue()Ljava/util/Map;
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

    iget-object p0, p0, Lcom/tencent/beacon/event/EventBean;->eventValue:Ljava/util/Map;

    return-object p0
.end method

.method public getReserved()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/EventBean;->reserved:Ljava/lang/String;

    return-object p0
.end method

.method public getSrcIp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/EventBean;->srcIp:Ljava/lang/String;

    return-object p0
.end method

.method public getValueType()I
    .locals 0

    iget p0, p0, Lcom/tencent/beacon/event/EventBean;->valueType:I

    return p0
.end method

.method public setApn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/EventBean;->apn:Ljava/lang/String;

    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/EventBean;->appKey:Ljava/lang/String;

    return-void
.end method

.method public setByteValue([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/EventBean;->byteValue:[B

    return-void
.end method

.method public setCid(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/beacon/event/EventBean;->cid:J

    return-void
.end method

.method public setEventCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/EventBean;->eventCode:Ljava/lang/String;

    return-void
.end method

.method public setEventResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/beacon/event/EventBean;->eventResult:Z

    return-void
.end method

.method public setEventTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/beacon/event/EventBean;->eventTime:J

    return-void
.end method

.method public setEventType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/beacon/event/EventBean;->eventType:I

    return-void
.end method

.method public setEventValue(Ljava/util/Map;)V
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

    iput-object p1, p0, Lcom/tencent/beacon/event/EventBean;->eventValue:Ljava/util/Map;

    return-void
.end method

.method public setReserved(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/EventBean;->reserved:Ljava/lang/String;

    return-void
.end method

.method public setSrcIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/EventBean;->srcIp:Ljava/lang/String;

    return-void
.end method

.method public setValueType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/beacon/event/EventBean;->valueType:I

    return-void
.end method
