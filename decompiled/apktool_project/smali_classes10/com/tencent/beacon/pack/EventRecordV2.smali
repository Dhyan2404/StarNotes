.class public final Lcom/tencent/beacon/pack/EventRecordV2;
.super Lcom/tencent/beacon/pack/AbstractJceStruct;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_byteValue:[B

.field static cache_mapValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static cache_valueType:I


# instance fields
.field public apn:Ljava/lang/String;

.field public appKey:Ljava/lang/String;

.field public byteValue:[B

.field public eventCode:Ljava/lang/String;

.field public eventResult:Z

.field public eventTime:J

.field public eventType:I

.field public mapValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public reserved:Ljava/lang/String;

.field public srcIp:Ljava/lang/String;

.field public valueType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/beacon/pack/EventRecordV2;->cache_mapValue:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lcom/tencent/beacon/pack/EventRecordV2;->cache_byteValue:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/tencent/beacon/pack/AbstractJceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->appKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->apn:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->srcIp:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->eventCode:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/beacon/pack/EventRecordV2;->valueType:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/beacon/pack/EventRecordV2;->mapValue:Ljava/util/Map;

    iput-object v2, p0, Lcom/tencent/beacon/pack/EventRecordV2;->byteValue:[B

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/beacon/pack/EventRecordV2;->eventTime:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/beacon/pack/EventRecordV2;->eventResult:Z

    iput v1, p0, Lcom/tencent/beacon/pack/EventRecordV2;->eventType:I

    iput-object v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->reserved:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public readFrom(Lcom/tencent/beacon/pack/a;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tencent/beacon/pack/a;->a(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/beacon/pack/EventRecordV2;->appKey:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/tencent/beacon/pack/a;->a(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/beacon/pack/EventRecordV2;->apn:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/tencent/beacon/pack/a;->a(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/beacon/pack/EventRecordV2;->srcIp:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/tencent/beacon/pack/a;->a(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/beacon/pack/EventRecordV2;->eventCode:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/beacon/pack/EventRecordV2;->valueType:I

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3, v0}, Lcom/tencent/beacon/pack/a;->a(IIZ)I

    move-result v2

    iput v2, p0, Lcom/tencent/beacon/pack/EventRecordV2;->valueType:I

    sget-object v2, Lcom/tencent/beacon/pack/EventRecordV2;->cache_mapValue:Ljava/util/Map;

    const/4 v3, 0x5

    invoke-virtual {p1, v2, v3, v0}, Lcom/tencent/beacon/pack/a;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    iput-object v2, p0, Lcom/tencent/beacon/pack/EventRecordV2;->mapValue:Ljava/util/Map;

    sget-object v2, Lcom/tencent/beacon/pack/EventRecordV2;->cache_byteValue:[B

    const/4 v3, 0x6

    invoke-virtual {p1, v2, v3, v0}, Lcom/tencent/beacon/pack/a;->a([BIZ)[B

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/beacon/pack/EventRecordV2;->byteValue:[B

    iget-wide v2, p0, Lcom/tencent/beacon/pack/EventRecordV2;->eventTime:J

    const/4 v4, 0x7

    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/tencent/beacon/pack/a;->a(JIZ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/beacon/pack/EventRecordV2;->eventTime:J

    iget-boolean v1, p0, Lcom/tencent/beacon/pack/EventRecordV2;->eventResult:Z

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/beacon/pack/a;->a(ZIZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/beacon/pack/EventRecordV2;->eventResult:Z

    iget v1, p0, Lcom/tencent/beacon/pack/EventRecordV2;->eventType:I

    const/16 v2, 0x9

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/beacon/pack/a;->a(IIZ)I

    move-result v1

    iput v1, p0, Lcom/tencent/beacon/pack/EventRecordV2;->eventType:I

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/tencent/beacon/pack/a;->a(IZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/beacon/pack/EventRecordV2;->reserved:Ljava/lang/String;

    return-void
.end method

.method public writeTo(Lcom/tencent/beacon/pack/b;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->appKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->apn:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->srcIp:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->eventCode:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(Ljava/lang/String;I)V

    iget v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->valueType:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(II)V

    iget-object v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->mapValue:Ljava/util/Map;

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(Ljava/util/Map;I)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->byteValue:[B

    if-eqz v0, :cond_4

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a([BI)V

    :cond_4
    iget-wide v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->eventTime:J

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/beacon/pack/b;->a(JI)V

    iget-boolean v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->eventResult:Z

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(ZI)V

    iget v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->eventType:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(II)V

    iget-object p0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->reserved:Ljava/lang/String;

    if-eqz p0, :cond_5

    const/16 v0, 0xa

    invoke-virtual {p1, p0, v0}, Lcom/tencent/beacon/pack/b;->a(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method
