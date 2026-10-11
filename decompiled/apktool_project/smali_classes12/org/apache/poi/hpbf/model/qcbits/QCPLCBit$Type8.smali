.class public Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit$Type8;
.super Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type8"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 6

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit;-><init>(Ljava/lang/String;Ljava/lang/String;[BLorg/apache/poi/hpbf/model/qcbits/QCPLCBit$1;)V

    const/4 p1, 0x7

    new-array p1, p1, [I

    const/16 p2, 0x8

    .line 3
    invoke-static {p3, p2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result p2

    const/4 v0, 0x0

    aput p2, p1, v0

    const/16 p2, 0xa

    .line 4
    invoke-static {p3, p2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result p2

    const/4 v1, 0x1

    aput p2, p1, v1

    const/16 p2, 0xc

    .line 5
    invoke-static {p3, p2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result p2

    const/4 v1, 0x2

    aput p2, p1, v1

    const/16 p2, 0xe

    .line 6
    invoke-static {p3, p2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result p2

    const/4 v1, 0x3

    aput p2, p1, v1

    const/16 p2, 0x10

    .line 7
    invoke-static {p3, p2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result p2

    const/4 v1, 0x4

    aput p2, p1, v1

    const/16 p2, 0x12

    .line 8
    invoke-static {p3, p2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result p2

    const/4 v2, 0x5

    aput p2, p1, v2

    const/16 p2, 0x14

    .line 9
    invoke-static {p3, p2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result p2

    const/4 v2, 0x6

    aput p2, p1, v2

    .line 10
    invoke-virtual {p0, p1}, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit;->setPreData([I)V

    .line 11
    invoke-virtual {p0}, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit;->getNumberOfPLCs()I

    move-result p1

    .line 12
    new-array p2, p1, [J

    .line 13
    new-array v2, p1, [J

    :goto_0
    if-ge v0, p1, :cond_0

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x16

    .line 14
    invoke-static {p3, v3}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v4

    aput-wide v4, p2, v0

    add-int/2addr v3, v1

    .line 15
    invoke-static {p3, v3}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v3

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit;->setPlcValA([J)V

    .line 17
    invoke-virtual {p0, v2}, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit;->setPlcValB([J)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLorg/apache/poi/hpbf/model/qcbits/QCPLCBit$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit$Type8;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method
