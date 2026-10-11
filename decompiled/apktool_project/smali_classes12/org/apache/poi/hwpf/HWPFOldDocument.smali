.class public Lorg/apache/poi/hwpf/HWPFOldDocument;
.super Lorg/apache/poi/hwpf/HWPFDocumentCore;
.source "SourceFile"


# static fields
.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0x989680

.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field private static MAX_RECORD_LENGTH:I


# instance fields
.field private _text:Ljava/lang/StringBuilder;

.field private final fontTable:Lorg/apache/poi/hwpf/model/OldFontTable;

.field private final guessedCharset:Ljava/nio/charset/Charset;

.field private tpt:Lorg/apache/poi/hwpf/model/OldTextPieceTable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hwpf/HWPFOldDocument;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwpf/HWPFOldDocument;->LOG:Lorg/apache/logging/log4j/Logger;

    const v0, 0x989680

    sput v0, Lorg/apache/poi/hwpf/HWPFOldDocument;->MAX_RECORD_LENGTH:I

    sget-object v0, Lorg/apache/poi/util/StringUtil;->WIN_1252:Ljava/nio/charset/Charset;

    sput-object v0, Lorg/apache/poi/hwpf/HWPFOldDocument;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p1}, Lorg/apache/poi/hwpf/HWPFDocumentCore;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 3
    iget-object v1, v0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_mainStream:[B

    const/16 v2, 0x88

    invoke-static {v1, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v5

    .line 4
    iget-object v1, v0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_mainStream:[B

    const/16 v2, 0x8c

    invoke-static {v1, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v6

    .line 5
    iget-object v1, v0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_mainStream:[B

    const/16 v2, 0xb8

    invoke-static {v1, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v9

    .line 6
    iget-object v1, v0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_mainStream:[B

    const/16 v2, 0xbc

    invoke-static {v1, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v10

    .line 7
    iget-object v1, v0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_mainStream:[B

    const/16 v2, 0xc0

    invoke-static {v1, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v13

    .line 8
    iget-object v1, v0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_mainStream:[B

    const/16 v2, 0xc4

    invoke-static {v1, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v14

    .line 9
    iget-object v1, v0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_mainStream:[B

    const/16 v2, 0xd0

    invoke-static {v1, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    .line 10
    iget-object v2, v0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_mainStream:[B

    const/16 v3, 0xd4

    invoke-static {v2, v3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    .line 11
    new-instance v3, Lorg/apache/poi/hwpf/model/OldFontTable;

    iget-object v4, v0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_mainStream:[B

    invoke-direct {v3, v4, v1, v2}, Lorg/apache/poi/hwpf/model/OldFontTable;-><init>([BII)V

    iput-object v3, v0, Lorg/apache/poi/hwpf/HWPFOldDocument;->fontTable:Lorg/apache/poi/hwpf/model/OldFontTable;

    .line 12
    invoke-direct {v0, v3}, Lorg/apache/poi/hwpf/HWPFOldDocument;->guessCodePage(Lorg/apache/poi/hwpf/model/OldFontTable;)Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/hwpf/HWPFOldDocument;->guessedCharset:Ljava/nio/charset/Charset;

    .line 13
    iget-object v2, v0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_mainStream:[B

    const/16 v3, 0x160

    invoke-static {v2, v3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v18

    .line 14
    iget-object v2, v0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFibBase()Lorg/apache/poi/hwpf/model/FibBase;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/types/FibBaseAbstractType;->isFComplex()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    new-instance v2, Lorg/apache/poi/hwpf/model/OldComplexFileTable;

    iget-object v3, v0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_mainStream:[B

    iget-object v4, v0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    .line 16
    invoke-virtual {v4}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFibBase()Lorg/apache/poi/hwpf/model/FibBase;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/hwpf/model/types/FibBaseAbstractType;->getFcMin()I

    move-result v19

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v3

    move-object/from16 v20, v1

    invoke-direct/range {v15 .. v20}, Lorg/apache/poi/hwpf/model/OldComplexFileTable;-><init>([B[BIILjava/nio/charset/Charset;)V

    .line 17
    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/ComplexFileTable;->getTextPieceTable()Lorg/apache/poi/hwpf/model/TextPieceTable;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hwpf/model/OldTextPieceTable;

    iput-object v1, v0, Lorg/apache/poi/hwpf/HWPFOldDocument;->tpt:Lorg/apache/poi/hwpf/model/OldTextPieceTable;

    goto :goto_1

    .line 18
    :cond_0
    :try_start_0
    invoke-direct {v0, v1}, Lorg/apache/poi/hwpf/HWPFOldDocument;->buildTextPiece(Ljava/nio/charset/Charset;)Lorg/apache/poi/hwpf/model/TextPiece;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 19
    :catch_0
    sget-object v1, Lorg/apache/poi/util/StringUtil;->WIN_1252:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1}, Lorg/apache/poi/hwpf/HWPFOldDocument;->buildTextPiece(Ljava/nio/charset/Charset;)Lorg/apache/poi/hwpf/model/TextPiece;

    move-result-object v1

    .line 20
    sget-object v2, Lorg/apache/poi/hwpf/HWPFOldDocument;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v2

    const-string v3, "Error with {}. Backing off to Windows-1252"

    iget-object v4, v0, Lorg/apache/poi/hwpf/HWPFOldDocument;->guessedCharset:Ljava/nio/charset/Charset;

    invoke-interface {v2, v3, v4}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    :goto_0
    iget-object v2, v0, Lorg/apache/poi/hwpf/HWPFOldDocument;->tpt:Lorg/apache/poi/hwpf/model/OldTextPieceTable;

    invoke-virtual {v2, v1}, Lorg/apache/poi/hwpf/model/TextPieceTable;->add(Lorg/apache/poi/hwpf/model/TextPiece;)V

    const/4 v2, 0x0

    .line 22
    :goto_1
    iget-object v1, v0, Lorg/apache/poi/hwpf/HWPFOldDocument;->tpt:Lorg/apache/poi/hwpf/model/OldTextPieceTable;

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/TextPieceTable;->getText()Ljava/lang/StringBuilder;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/hwpf/HWPFOldDocument;->_text:Ljava/lang/StringBuilder;

    .line 23
    new-instance v1, Lorg/apache/poi/hwpf/model/OldCHPBinTable;

    iget-object v8, v0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_mainStream:[B

    iget-object v3, v0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    .line 24
    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFibBase()Lorg/apache/poi/hwpf/model/FibBase;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/types/FibBaseAbstractType;->getFcMin()I

    move-result v11

    iget-object v12, v0, Lorg/apache/poi/hwpf/HWPFOldDocument;->tpt:Lorg/apache/poi/hwpf/model/OldTextPieceTable;

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/hwpf/model/OldCHPBinTable;-><init>([BIIILorg/apache/poi/hwpf/model/OldTextPieceTable;)V

    iput-object v1, v0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_cbt:Lorg/apache/poi/hwpf/model/CHPBinTable;

    .line 25
    new-instance v1, Lorg/apache/poi/hwpf/model/OldPAPBinTable;

    iget-object v12, v0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_mainStream:[B

    iget-object v3, v0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    .line 26
    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFibBase()Lorg/apache/poi/hwpf/model/FibBase;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/types/FibBaseAbstractType;->getFcMin()I

    move-result v15

    iget-object v3, v0, Lorg/apache/poi/hwpf/HWPFOldDocument;->tpt:Lorg/apache/poi/hwpf/model/OldTextPieceTable;

    move-object v11, v1

    move-object/from16 v16, v3

    invoke-direct/range {v11 .. v16}, Lorg/apache/poi/hwpf/model/OldPAPBinTable;-><init>([BIIILorg/apache/poi/hwpf/model/TextPieceTable;)V

    iput-object v1, v0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_pbt:Lorg/apache/poi/hwpf/model/PAPBinTable;

    .line 27
    new-instance v1, Lorg/apache/poi/hwpf/model/OldSectionTable;

    iget-object v4, v0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_mainStream:[B

    iget-object v3, v0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    .line 28
    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFibBase()Lorg/apache/poi/hwpf/model/FibBase;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/types/FibBaseAbstractType;->getFcMin()I

    move-result v7

    iget-object v8, v0, Lorg/apache/poi/hwpf/HWPFOldDocument;->tpt:Lorg/apache/poi/hwpf/model/OldTextPieceTable;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lorg/apache/poi/hwpf/model/OldSectionTable;-><init>([BIIILorg/apache/poi/hwpf/model/TextPieceTable;)V

    iput-object v1, v0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_st:Lorg/apache/poi/hwpf/model/SectionTable;

    :try_start_1
    const-string v1, "org.apache.poi.hwpf.preserveBinTables"

    .line 29
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_1

    .line 31
    iget-object v1, v0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_cbt:Lorg/apache/poi/hwpf/model/CHPBinTable;

    invoke-virtual {v1, v2}, Lorg/apache/poi/hwpf/model/CHPBinTable;->rebuild(Lorg/apache/poi/hwpf/model/ComplexFileTable;)V

    .line 32
    iget-object v1, v0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_pbt:Lorg/apache/poi/hwpf/model/PAPBinTable;

    iget-object v0, v0, Lorg/apache/poi/hwpf/HWPFOldDocument;->_text:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/hwpf/model/PAPBinTable;->rebuild(Ljava/lang/StringBuilder;Lorg/apache/poi/hwpf/model/ComplexFileTable;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hwpf/HWPFOldDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method

.method private buildTextPiece(Ljava/nio/charset/Charset;)Lorg/apache/poi/hwpf/model/TextPiece;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/hwpf/model/PieceDescriptor;

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/poi/hwpf/model/PieceDescriptor;-><init>([BILjava/nio/charset/Charset;)V

    iget-object v1, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFibBase()Lorg/apache/poi/hwpf/model/FibBase;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/types/FibBaseAbstractType;->getFcMin()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->setFilePosition(I)V

    new-instance v1, Lorg/apache/poi/hwpf/model/OldTextPieceTable;

    invoke-direct {v1}, Lorg/apache/poi/hwpf/model/OldTextPieceTable;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hwpf/HWPFOldDocument;->tpt:Lorg/apache/poi/hwpf/model/OldTextPieceTable;

    iget-object v1, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_mainStream:[B

    iget-object v3, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFibBase()Lorg/apache/poi/hwpf/model/FibBase;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/types/FibBaseAbstractType;->getFcMin()I

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v4}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFibBase()Lorg/apache/poi/hwpf/model/FibBase;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/hwpf/model/types/FibBaseAbstractType;->getFcMac()I

    move-result v4

    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFibBase()Lorg/apache/poi/hwpf/model/FibBase;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/FibBaseAbstractType;->getFcMin()I

    move-result p0

    sub-int/2addr v4, p0

    sget p0, Lorg/apache/poi/hwpf/HWPFOldDocument;->MAX_RECORD_LENGTH:I

    invoke-static {v1, v3, v4, p0}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p0

    array-length v1, p0

    sget-object v3, Lorg/apache/poi/hwpf/util/DoubleByteUtil;->DOUBLE_BYTE_CHARSETS:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    div-int/lit8 v1, v1, 0x2

    :cond_0
    new-instance p1, Lorg/apache/poi/hwpf/model/TextPiece;

    invoke-direct {p1, v2, v1, p0, v0}, Lorg/apache/poi/hwpf/model/TextPiece;-><init>(II[BLorg/apache/poi/hwpf/model/PieceDescriptor;)V

    return-object p1

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
    .end array-data
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/hwpf/HWPFOldDocument;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method private guessCodePage(Lorg/apache/poi/hwpf/model/OldFontTable;)Ljava/nio/charset/Charset;
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/model/OldFontTable;->getFontNames()[Lorg/apache/poi/hwpf/model/OldFfn;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p0, v0

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/OldFfn;->getChs()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->valueOf(I)Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->ANSI:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    if-eq v1, v2, :cond_0

    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->DEFAULT:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    if-eq v1, v2, :cond_0

    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->SYMBOL:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    if-eq v1, v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/apache/poi/hwpf/HWPFOldDocument;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "Couldn\'t find a defined charset; backing off to cp1252"

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    sget-object p0, Lorg/apache/poi/hwpf/HWPFOldDocument;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/hwpf/HWPFOldDocument;->MAX_RECORD_LENGTH:I

    return-void
.end method


# virtual methods
.method public getFontTable()Lorg/apache/poi/hwpf/model/FontTable;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Use getOldFontTable instead."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGuessedCharset()Ljava/nio/charset/Charset;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFOldDocument;->guessedCharset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public getOldFontTable()Lorg/apache/poi/hwpf/model/OldFontTable;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFOldDocument;->fontTable:Lorg/apache/poi/hwpf/model/OldFontTable;

    return-object p0
.end method

.method public getOverallRange()Lorg/apache/poi/hwpf/usermodel/Range;
    .locals 3

    new-instance v0, Lorg/apache/poi/hwpf/usermodel/Range;

    iget-object v1, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFibBase()Lorg/apache/poi/hwpf/model/FibBase;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/types/FibBaseAbstractType;->getFcMac()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFibBase()Lorg/apache/poi/hwpf/model/FibBase;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/types/FibBaseAbstractType;->getFcMin()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lorg/apache/poi/hwpf/usermodel/Range;-><init>(IILorg/apache/poi/hwpf/HWPFDocumentCore;)V

    return-object v0
.end method

.method public getRange()Lorg/apache/poi/hwpf/usermodel/Range;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/HWPFOldDocument;->getOverallRange()Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object p0

    return-object p0
.end method

.method public getText()Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFOldDocument;->_text:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public getTextTable()Lorg/apache/poi/hwpf/model/TextPieceTable;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFOldDocument;->tpt:Lorg/apache/poi/hwpf/model/OldTextPieceTable;

    return-object p0
.end method

.method public write()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Writing is not available for the older file formats"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public write(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Writing is not available for the older file formats"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Writing is not available for the older file formats"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
