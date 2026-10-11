.class public final Lcom/tencent/beacon/pack/ResponsePackage;
.super Lcom/tencent/beacon/pack/AbstractResponseCommon;
.source "SourceFile"


# static fields
.field static cache_sBuffer:[B


# instance fields
.field public cmd:I

.field public encryKey:Ljava/lang/String;

.field public encryPublicKey:Ljava/lang/String;

.field public encryType:B

.field public result:B

.field public sBuffer:[B

.field public zipType:B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/beacon/pack/AbstractResponseCommon;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-byte v0, p0, Lcom/tencent/beacon/pack/ResponsePackage;->result:B

    .line 3
    iput v0, p0, Lcom/tencent/beacon/pack/ResponsePackage;->cmd:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/tencent/beacon/pack/ResponsePackage;->sBuffer:[B

    .line 5
    iput-byte v0, p0, Lcom/tencent/beacon/pack/ResponsePackage;->encryType:B

    .line 6
    iput-byte v0, p0, Lcom/tencent/beacon/pack/ResponsePackage;->zipType:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/tencent/beacon/pack/ResponsePackage;->encryKey:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/tencent/beacon/pack/ResponsePackage;->encryPublicKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(BI[BLjava/lang/String;BBJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/tencent/beacon/pack/AbstractResponseCommon;-><init>()V

    .line 10
    iput-byte p1, p0, Lcom/tencent/beacon/pack/ResponsePackage;->result:B

    .line 11
    iput p2, p0, Lcom/tencent/beacon/pack/ResponsePackage;->cmd:I

    .line 12
    iput-object p3, p0, Lcom/tencent/beacon/pack/ResponsePackage;->sBuffer:[B

    .line 13
    iput-object p4, p0, Lcom/tencent/beacon/pack/AbstractResponseCommon;->srcGatewayIp:Ljava/lang/String;

    .line 14
    iput-byte p5, p0, Lcom/tencent/beacon/pack/ResponsePackage;->encryType:B

    .line 15
    iput-byte p6, p0, Lcom/tencent/beacon/pack/ResponsePackage;->zipType:B

    .line 16
    iput-wide p7, p0, Lcom/tencent/beacon/pack/AbstractResponseCommon;->serverTime:J

    .line 17
    iput-object p9, p0, Lcom/tencent/beacon/pack/ResponsePackage;->encryKey:Ljava/lang/String;

    .line 18
    iput-object p10, p0, Lcom/tencent/beacon/pack/ResponsePackage;->encryPublicKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public readFrom(Lcom/tencent/beacon/pack/a;)V
    .locals 5

    iget-byte v0, p0, Lcom/tencent/beacon/pack/ResponsePackage;->result:B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/beacon/pack/a;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/beacon/pack/ResponsePackage;->result:B

    iget v0, p0, Lcom/tencent/beacon/pack/ResponsePackage;->cmd:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/tencent/beacon/pack/a;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/beacon/pack/ResponsePackage;->cmd:I

    sget-object v0, Lcom/tencent/beacon/pack/ResponsePackage;->cache_sBuffer:[B

    if-nez v0, :cond_0

    new-array v0, v2, [B

    sput-object v0, Lcom/tencent/beacon/pack/ResponsePackage;->cache_sBuffer:[B

    aput-byte v1, v0, v1

    :cond_0
    sget-object v0, Lcom/tencent/beacon/pack/ResponsePackage;->cache_sBuffer:[B

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v3, v2}, Lcom/tencent/beacon/pack/a;->a([BIZ)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/pack/ResponsePackage;->sBuffer:[B

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/tencent/beacon/pack/a;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/pack/AbstractResponseCommon;->srcGatewayIp:Ljava/lang/String;

    iget-byte v0, p0, Lcom/tencent/beacon/pack/ResponsePackage;->encryType:B

    const/4 v3, 0x4

    invoke-virtual {p1, v0, v3, v2}, Lcom/tencent/beacon/pack/a;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/beacon/pack/ResponsePackage;->encryType:B

    iget-byte v0, p0, Lcom/tencent/beacon/pack/ResponsePackage;->zipType:B

    const/4 v3, 0x5

    invoke-virtual {p1, v0, v3, v2}, Lcom/tencent/beacon/pack/a;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/beacon/pack/ResponsePackage;->zipType:B

    iget-wide v3, p0, Lcom/tencent/beacon/pack/AbstractResponseCommon;->serverTime:J

    const/4 v0, 0x6

    invoke-virtual {p1, v3, v4, v0, v2}, Lcom/tencent/beacon/pack/a;->a(JIZ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/beacon/pack/AbstractResponseCommon;->serverTime:J

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/a;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/pack/ResponsePackage;->encryKey:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/a;->a(IZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/beacon/pack/ResponsePackage;->encryPublicKey:Ljava/lang/String;

    return-void
.end method

.method public writeTo(Lcom/tencent/beacon/pack/b;)V
    .locals 3

    iget-byte v0, p0, Lcom/tencent/beacon/pack/ResponsePackage;->result:B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(BI)V

    iget v0, p0, Lcom/tencent/beacon/pack/ResponsePackage;->cmd:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(II)V

    iget-object v0, p0, Lcom/tencent/beacon/pack/ResponsePackage;->sBuffer:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a([BI)V

    iget-object v0, p0, Lcom/tencent/beacon/pack/AbstractResponseCommon;->srcGatewayIp:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(Ljava/lang/String;I)V

    iget-byte v0, p0, Lcom/tencent/beacon/pack/ResponsePackage;->encryType:B

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(BI)V

    iget-byte v0, p0, Lcom/tencent/beacon/pack/ResponsePackage;->zipType:B

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(BI)V

    iget-wide v0, p0, Lcom/tencent/beacon/pack/AbstractResponseCommon;->serverTime:J

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/beacon/pack/b;->a(JI)V

    iget-object v0, p0, Lcom/tencent/beacon/pack/ResponsePackage;->encryKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(Ljava/lang/String;I)V

    :cond_0
    iget-object p0, p0, Lcom/tencent/beacon/pack/ResponsePackage;->encryPublicKey:Ljava/lang/String;

    if-eqz p0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p1, p0, v0}, Lcom/tencent/beacon/pack/b;->a(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
