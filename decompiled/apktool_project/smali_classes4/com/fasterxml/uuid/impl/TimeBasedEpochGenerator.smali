.class public Lcom/fasterxml/uuid/impl/TimeBasedEpochGenerator;
.super Lcom/fasterxml/uuid/NoArgGenerator;
.source "SourceFile"


# instance fields
.field protected final _random:Ljava/util/Random;


# direct methods
.method public constructor <init>(Ljava/util/Random;)V
    .locals 0

    invoke-direct {p0}, Lcom/fasterxml/uuid/NoArgGenerator;-><init>()V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/fasterxml/uuid/impl/LazyRandom;->sharedSecureRandom()Ljava/security/SecureRandom;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/fasterxml/uuid/impl/TimeBasedEpochGenerator;->_random:Ljava/util/Random;

    return-void
.end method

.method public static final _toLong([BI)J
    .locals 3

    invoke-static {p0, p1}, Lcom/fasterxml/uuid/impl/TimeBasedEpochGenerator;->a([BI)J

    move-result-wide v0

    add-int/lit8 p1, p1, 0x4

    invoke-static {p0, p1}, Lcom/fasterxml/uuid/impl/TimeBasedEpochGenerator;->a([BI)J

    move-result-wide p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    shl-long/2addr p0, v2

    ushr-long/2addr p0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static final a([BI)J
    .locals 2

    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    int-to-long p0, v0

    return-wide p0
.end method

.method public static final b([BI)J
    .locals 1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    int-to-long p0, v0

    return-wide p0
.end method


# virtual methods
.method public generate()Ljava/util/UUID;
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0xa

    new-array v2, v2, [B

    iget-object p0, p0, Lcom/fasterxml/uuid/impl/TimeBasedEpochGenerator;->_random:Ljava/util/Random;

    invoke-virtual {p0, v2}, Ljava/util/Random;->nextBytes([B)V

    const/16 p0, 0x10

    shl-long/2addr v0, p0

    const/16 p0, 0x8

    invoke-static {v2, p0}, Lcom/fasterxml/uuid/impl/TimeBasedEpochGenerator;->b([BI)J

    move-result-wide v3

    or-long/2addr v0, v3

    const/4 p0, 0x0

    invoke-static {v2, p0}, Lcom/fasterxml/uuid/impl/TimeBasedEpochGenerator;->_toLong([BI)J

    move-result-wide v2

    sget-object p0, Lcom/fasterxml/uuid/UUIDType;->TIME_BASED_EPOCH:Lcom/fasterxml/uuid/UUIDType;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/fasterxml/uuid/impl/UUIDUtil;->constructUUID(Lcom/fasterxml/uuid/UUIDType;JJ)Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method

.method public getType()Lcom/fasterxml/uuid/UUIDType;
    .locals 0

    sget-object p0, Lcom/fasterxml/uuid/UUIDType;->TIME_BASED_EPOCH:Lcom/fasterxml/uuid/UUIDType;

    return-object p0
.end method
