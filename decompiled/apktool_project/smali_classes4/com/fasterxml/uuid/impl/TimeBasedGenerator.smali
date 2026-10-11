.class public Lcom/fasterxml/uuid/impl/TimeBasedGenerator;
.super Lcom/fasterxml/uuid/NoArgGenerator;
.source "SourceFile"


# instance fields
.field protected final _ethernetAddress:Lcom/fasterxml/uuid/EthernetAddress;

.field protected final _timer:Lcom/fasterxml/uuid/UUIDTimer;

.field protected final _uuidL2:J


# direct methods
.method public constructor <init>(Lcom/fasterxml/uuid/EthernetAddress;Lcom/fasterxml/uuid/UUIDTimer;)V
    .locals 3

    invoke-direct {p0}, Lcom/fasterxml/uuid/NoArgGenerator;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    if-nez p1, :cond_0

    invoke-static {}, Lcom/fasterxml/uuid/EthernetAddress;->constructMulticastAddress()Lcom/fasterxml/uuid/EthernetAddress;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/fasterxml/uuid/impl/TimeBasedGenerator;->_ethernetAddress:Lcom/fasterxml/uuid/EthernetAddress;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/uuid/EthernetAddress;->toByteArray([BI)V

    invoke-virtual {p2}, Lcom/fasterxml/uuid/UUIDTimer;->getClockSequence()I

    move-result p1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    const/16 v2, 0x8

    aput-byte v1, v0, v2

    const/16 v1, 0x9

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    invoke-static {v0, v2}, Lcom/fasterxml/uuid/impl/UUIDUtil;->gatherLong([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/fasterxml/uuid/impl/UUIDUtil;->initUUIDSecondLong(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/uuid/impl/TimeBasedGenerator;->_uuidL2:J

    iput-object p2, p0, Lcom/fasterxml/uuid/impl/TimeBasedGenerator;->_timer:Lcom/fasterxml/uuid/UUIDTimer;

    return-void
.end method


# virtual methods
.method public generate()Ljava/util/UUID;
    .locals 5

    iget-object v0, p0, Lcom/fasterxml/uuid/impl/TimeBasedGenerator;->_timer:Lcom/fasterxml/uuid/UUIDTimer;

    invoke-virtual {v0}, Lcom/fasterxml/uuid/UUIDTimer;->getTimestamp()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    long-to-int v3, v3

    long-to-int v0, v0

    shl-int/lit8 v1, v3, 0x10

    ushr-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    const v3, -0xf001

    and-int/2addr v1, v3

    or-int/lit16 v1, v1, 0x1000

    int-to-long v3, v1

    shl-long/2addr v3, v2

    ushr-long/2addr v3, v2

    int-to-long v0, v0

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    new-instance v2, Ljava/util/UUID;

    iget-wide v3, p0, Lcom/fasterxml/uuid/impl/TimeBasedGenerator;->_uuidL2:J

    invoke-direct {v2, v0, v1, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    return-object v2
.end method

.method public getEthernetAddress()Lcom/fasterxml/uuid/EthernetAddress;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/uuid/impl/TimeBasedGenerator;->_ethernetAddress:Lcom/fasterxml/uuid/EthernetAddress;

    return-object p0
.end method

.method public getType()Lcom/fasterxml/uuid/UUIDType;
    .locals 0

    sget-object p0, Lcom/fasterxml/uuid/UUIDType;->TIME_BASED:Lcom/fasterxml/uuid/UUIDType;

    return-object p0
.end method
