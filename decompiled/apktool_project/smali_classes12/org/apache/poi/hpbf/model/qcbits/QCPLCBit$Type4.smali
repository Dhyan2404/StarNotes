.class public Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit$Type4;
.super Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type4"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 5

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit;-><init>(Ljava/lang/String;Ljava/lang/String;[BLorg/apache/poi/hpbf/model/qcbits/QCPLCBit$1;)V

    const/16 p1, 0x8

    .line 3
    invoke-static {p3, p1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result p1

    const/16 p2, 0xa

    .line 4
    invoke-static {p3, p2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result p2

    const/16 v0, 0xc

    .line 5
    invoke-static {p3, v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v0

    const/16 v1, 0xe

    .line 6
    invoke-static {p3, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v1

    filled-new-array {p1, p2, v0, v1}, [I

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit;->setPreData([I)V

    .line 8
    invoke-virtual {p0}, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit;->getNumberOfPLCs()I

    move-result p1

    .line 9
    new-array p2, p1, [J

    .line 10
    new-array v0, p1, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    mul-int/lit8 v2, v1, 0x8

    add-int/lit8 v2, v2, 0x10

    .line 11
    invoke-static {p3, v2}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v3

    aput-wide v3, p2, v1

    add-int/lit8 v2, v2, 0x4

    .line 12
    invoke-static {p3, v2}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit;->setPlcValA([J)V

    .line 14
    invoke-virtual {p0, v0}, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit;->setPlcValB([J)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLorg/apache/poi/hpbf/model/qcbits/QCPLCBit$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit$Type4;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method
