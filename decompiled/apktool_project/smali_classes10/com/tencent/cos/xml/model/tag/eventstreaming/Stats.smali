.class public Lcom/tencent/cos/xml/model/tag/eventstreaming/Stats;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bytesProcessed:Ljava/lang/Long;

.field private bytesReturned:Ljava/lang/Long;

.field private bytesScanned:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/Stats;->bytesScanned:Ljava/lang/Long;

    iput-object p2, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/Stats;->bytesProcessed:Ljava/lang/Long;

    iput-object p3, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/Stats;->bytesReturned:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getBytesProcessed()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/Stats;->bytesProcessed:Ljava/lang/Long;

    return-object p0
.end method

.method public getBytesReturned()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/Stats;->bytesReturned:Ljava/lang/Long;

    return-object p0
.end method

.method public getBytesScanned()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/Stats;->bytesScanned:Ljava/lang/Long;

    return-object p0
.end method

.method public setBytesProcessed(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/Stats;->bytesProcessed:Ljava/lang/Long;

    return-void
.end method

.method public setBytesReturned(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/Stats;->bytesReturned:Ljava/lang/Long;

    return-void
.end method

.method public setBytesScanned(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/Stats;->bytesScanned:Ljava/lang/Long;

    return-void
.end method

.method public withBytesProcessed(Ljava/lang/Long;)Lcom/tencent/cos/xml/model/tag/eventstreaming/Stats;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/Stats;->setBytesProcessed(Ljava/lang/Long;)V

    return-object p0
.end method

.method public withBytesReturned(Ljava/lang/Long;)Lcom/tencent/cos/xml/model/tag/eventstreaming/Stats;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/Stats;->setBytesReturned(Ljava/lang/Long;)V

    return-object p0
.end method

.method public withBytesScanned(Ljava/lang/Long;)Lcom/tencent/cos/xml/model/tag/eventstreaming/Stats;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/Stats;->setBytesScanned(Ljava/lang/Long;)V

    return-object p0
.end method
