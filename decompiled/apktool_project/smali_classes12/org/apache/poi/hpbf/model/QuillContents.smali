.class public final Lorg/apache/poi/hpbf/model/QuillContents;
.super Lorg/apache/poi/hpbf/model/HPBFPart;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field private static final PATH:[Ljava/lang/String;


# instance fields
.field private final bits:[Lorg/apache/poi/hpbf/model/qcbits/QCBit;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/apache/poi/hpbf/model/QuillContents;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpbf/model/QuillContents;->LOG:Lorg/apache/logging/log4j/Logger;

    const-string v0, "QuillSub"

    const-string v1, "CONTENTS"

    const-string v2, "Quill"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpbf/model/QuillContents;->PATH:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/apache/poi/hpbf/model/QuillContents;->PATH:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hpbf/model/HPBFPart;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hpbf/model/HPBFPart;->getData()[B

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string v1, "CHNKINK "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x14

    new-array v1, v0, [Lorg/apache/poi/hpbf/model/qcbits/QCBit;

    iput-object v1, p0, Lorg/apache/poi/hpbf/model/QuillContents;->bits:[Lorg/apache/poi/hpbf/model/qcbits/QCBit;

    :goto_0
    if-ge v3, v0, :cond_3

    mul-int/lit8 v1, v3, 0x18

    add-int/lit8 v1, v1, 0x20

    aget-byte v2, p1, v1

    const/16 v4, 0x18

    if-ne v2, v4, :cond_2

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, v1, 0x2

    sget-object v5, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    const/4 v6, 0x4

    invoke-direct {v2, p1, v4, v6, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/lit8 v4, v1, 0x6

    invoke-static {p1, v4}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v4

    add-int/lit8 v7, v1, 0x8

    invoke-static {p1, v7}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v7

    add-int/lit8 v8, v1, 0xa

    invoke-static {p1, v8}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v8

    new-instance v9, Ljava/lang/String;

    add-int/lit8 v10, v1, 0xc

    invoke-direct {v9, p1, v10, v6, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/lit8 v5, v1, 0x10

    invoke-static {p1, v5}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v5

    long-to-int v5, v5

    add-int/lit8 v1, v1, 0x14

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v10

    long-to-int v1, v10

    invoke-static {}, Lorg/apache/poi/hpbf/model/EscherPart;->getMaxRecordLength()I

    move-result v6

    invoke-static {p1, v5, v1, v6}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object v1

    const-string v6, "TEXT"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/apache/poi/hpbf/model/QuillContents;->bits:[Lorg/apache/poi/hpbf/model/qcbits/QCBit;

    new-instance v10, Lorg/apache/poi/hpbf/model/qcbits/QCTextBit;

    invoke-direct {v10, v2, v9, v1}, Lorg/apache/poi/hpbf/model/qcbits/QCTextBit;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    aput-object v10, v6, v3

    goto :goto_1

    :cond_0
    const-string v6, "PLC "

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :try_start_0
    iget-object v6, p0, Lorg/apache/poi/hpbf/model/QuillContents;->bits:[Lorg/apache/poi/hpbf/model/qcbits/QCBit;

    invoke-static {v2, v9, v1}, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit;->createQCPLCBit(Ljava/lang/String;Ljava/lang/String;[B)Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit;

    move-result-object v10

    aput-object v10, v6, v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v6, Lorg/apache/poi/hpbf/model/QuillContents;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v6}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v6

    const-string v10, "Unable to read Quill Contents PLC Bit record. Ignoring this record."

    invoke-interface {v6, v10}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/apache/poi/hpbf/model/QuillContents;->bits:[Lorg/apache/poi/hpbf/model/qcbits/QCBit;

    new-instance v10, Lorg/apache/poi/hpbf/model/qcbits/UnknownQCBit;

    invoke-direct {v10, v2, v9, v1}, Lorg/apache/poi/hpbf/model/qcbits/UnknownQCBit;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    aput-object v10, v6, v3

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lorg/apache/poi/hpbf/model/QuillContents;->bits:[Lorg/apache/poi/hpbf/model/qcbits/QCBit;

    new-instance v10, Lorg/apache/poi/hpbf/model/qcbits/UnknownQCBit;

    invoke-direct {v10, v2, v9, v1}, Lorg/apache/poi/hpbf/model/qcbits/UnknownQCBit;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    aput-object v10, v6, v3

    :goto_1
    iget-object v1, p0, Lorg/apache/poi/hpbf/model/QuillContents;->bits:[Lorg/apache/poi/hpbf/model/qcbits/QCBit;

    aget-object v1, v1, v3

    invoke-virtual {v1, v4}, Lorg/apache/poi/hpbf/model/qcbits/QCBit;->setOptA(I)V

    iget-object v1, p0, Lorg/apache/poi/hpbf/model/QuillContents;->bits:[Lorg/apache/poi/hpbf/model/qcbits/QCBit;

    aget-object v1, v1, v3

    invoke-virtual {v1, v7}, Lorg/apache/poi/hpbf/model/qcbits/QCBit;->setOptB(I)V

    iget-object v1, p0, Lorg/apache/poi/hpbf/model/QuillContents;->bits:[Lorg/apache/poi/hpbf/model/qcbits/QCBit;

    aget-object v1, v1, v3

    invoke-virtual {v1, v8}, Lorg/apache/poi/hpbf/model/qcbits/QCBit;->setOptC(I)V

    iget-object v1, p0, Lorg/apache/poi/hpbf/model/QuillContents;->bits:[Lorg/apache/poi/hpbf/model/qcbits/QCBit;

    aget-object v1, v1, v3

    invoke-virtual {v1, v5}, Lorg/apache/poi/hpbf/model/qcbits/QCBit;->setDataOffset(I)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expecting \'CHNKINK \' but was \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public generateData()V
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not done yet!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBits()[Lorg/apache/poi/hpbf/model/qcbits/QCBit;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpbf/model/QuillContents;->bits:[Lorg/apache/poi/hpbf/model/qcbits/QCBit;

    return-object p0
.end method
