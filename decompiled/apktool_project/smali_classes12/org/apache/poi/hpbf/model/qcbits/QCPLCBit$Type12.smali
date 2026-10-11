.class public Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit$Type12;
.super Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type12"
.end annotation


# static fields
.field private static final oneStartsAt:I = 0x4c

.field private static final threePlusIncrement:I = 0x16

.field private static final twoStartsAt:I = 0x68


# instance fields
.field private final hyperlinks:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 8

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit;-><init>(Ljava/lang/String;Ljava/lang/String;[BLorg/apache/poi/hpbf/model/qcbits/QCPLCBit$1;)V

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit;->getNumberOfPLCs()I

    move-result p1

    .line 4
    array-length p2, p3

    const/4 v0, 0x0

    const/16 v1, 0x34

    if-ne p2, v1, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit$Type12;->hyperlinks:[Ljava/lang/String;

    add-int/lit8 p2, p1, 0x1

    const/4 v2, 0x1

    add-int/2addr p2, v2

    .line 5
    new-array v3, p2, [I

    move v4, v0

    :goto_1
    if-ge v4, p2, :cond_1

    mul-int/lit8 v5, v4, 0x4

    add-int/lit8 v5, v5, 0x8

    .line 6
    invoke-static {p3, v5}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v5

    long-to-int v5, v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0, v3}, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit;->setPreData([I)V

    mul-int/lit8 p2, p1, 0x4

    add-int/lit8 p2, p2, 0xc

    add-int/lit8 p2, p2, 0x4

    const/4 v3, 0x2

    if-ne p1, v2, :cond_2

    .line 8
    iget-object v4, p0, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit$Type12;->hyperlinks:[Ljava/lang/String;

    array-length v4, v4

    if-ne v4, v2, :cond_2

    const/16 v1, 0x4c

    goto :goto_2

    :cond_2
    if-lt p1, v3, :cond_3

    sub-int/2addr p1, v3

    mul-int/lit8 p1, p1, 0x16

    add-int/lit8 v1, p1, 0x68

    :cond_3
    :goto_2
    sub-int p1, v1, p2

    .line 9
    div-int/2addr p1, v3

    new-array v2, p1, [J

    new-array v4, v0, [J

    move v5, v0

    :goto_3
    if-ge v5, p1, :cond_4

    mul-int/lit8 v6, v5, 0x2

    add-int/2addr v6, p2

    .line 10
    invoke-static {p3, v6}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v6

    int-to-long v6, v6

    aput-wide v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 11
    :cond_4
    invoke-virtual {p0, v2}, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit;->setPlcValA([J)V

    .line 12
    invoke-virtual {p0, v4}, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit;->setPlcValB([J)V

    .line 13
    :goto_4
    iget-object p1, p0, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit$Type12;->hyperlinks:[Ljava/lang/String;

    array-length p1, p1

    if-ge v0, p1, :cond_6

    .line 14
    invoke-static {p3, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result p1

    add-int/lit8 p2, v1, 0x2

    .line 15
    invoke-static {p3, p2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v2

    if-nez v2, :cond_5

    .line 16
    iget-object p2, p0, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit$Type12;->hyperlinks:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, p2, v0

    goto :goto_5

    .line 17
    :cond_5
    iget-object v2, p0, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit$Type12;->hyperlinks:[Ljava/lang/String;

    invoke-static {p3, p2, p1}, Lorg/apache/poi/util/StringUtil;->getFromUnicodeLE([BII)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v0

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v3

    :goto_5
    add-int/2addr v1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLorg/apache/poi/hpbf/model/qcbits/QCPLCBit$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit$Type12;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public getAllTextEndAt()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit;->getPreData()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit;->getNumberOfPLCs()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    aget p0, v0, p0

    return p0
.end method

.method public getHyperlink(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit$Type12;->hyperlinks:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getNumberOfHyperlinks()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit$Type12;->hyperlinks:[Ljava/lang/String;

    array-length p0, p0

    return p0
.end method

.method public getTextStartAt(I)I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit;->getPreData()[I

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    return p0
.end method
