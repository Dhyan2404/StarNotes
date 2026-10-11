.class public final Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;
.super Lorg/apache/poi/hslf/record/PositionDependentRecordAtom;
.source "SourceFile"


# static fields
.field private static final _type:J


# instance fields
.field private final _header:[B

.field private ei:Lorg/apache/poi/poifs/crypt/EncryptionInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->DocumentEncryptionAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;->_type:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 10
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/PositionDependentRecordAtom;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 11
    iput-object v0, p0, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;->_header:[B

    const/4 v1, 0x0

    const/16 v2, 0xf

    .line 12
    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 13
    sget-wide v1, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;->_type:J

    long-to-int v1, v1

    int-to-short v1, v1

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 14
    new-instance v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    sget-object v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->cryptoAPI:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    invoke-direct {v0, v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionMode;)V

    iput-object v0, p0, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;->ei:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/PositionDependentRecordAtom;-><init>()V

    add-int/lit8 v0, p2, 0x8

    .line 2
    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;->_header:[B

    .line 3
    new-instance p2, Ljava/io/ByteArrayInputStream;

    add-int/lit8 p3, p3, -0x8

    invoke-direct {p2, p1, v0, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 4
    :try_start_0
    new-instance p1, Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-direct {p1, p2}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    new-instance p2, Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    sget-object p3, Lorg/apache/poi/poifs/crypt/EncryptionMode;->cryptoAPI:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    invoke-direct {p2, p1, p3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/util/LittleEndianInput;Lorg/apache/poi/poifs/crypt/EncryptionMode;)V

    iput-object p2, p0, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;->ei:Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    .line 8
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {p1, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;->ei:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    return-object p0
.end method

.method public getEncryptionProviderName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;->ei:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCspName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/jaf;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/jaf;-><init>(Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;)V

    const-string p0, "encryptionInfo"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getKeyLength()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;->ei:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySize()I

    move-result p0

    return p0
.end method

.method public getRecordType()J
    .locals 2

    sget-wide v0, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;->_type:J

    return-wide v0
.end method

.method public initializeEncryptionInfo(I)V
    .locals 8

    new-instance v7, Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    sget-object v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->cryptoAPI:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    sget-object v2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    sget-object v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, v7

    move v4, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionMode;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    iput-object v7, p0, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;->ei:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    return-void
.end method

.method public updateOtherRecordReferences(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    new-instance v1, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;-><init>([BI)V

    iget-object v3, p0, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;->ei:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMajor()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    iget-object v3, p0, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;->ei:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMinor()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    iget-object v3, p0, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;->ei:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptionFlags()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    iget-object v3, p0, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;->ei:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;

    invoke-virtual {v3, v1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    iget-object v3, p0, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;->ei:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;

    invoke-virtual {v3, v1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    iget-object v3, p0, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;->_header:[B

    const/4 v4, 0x4

    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->getWriteIndex()I

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;->_header:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->getWriteIndex()I

    move-result p0

    invoke-virtual {p1, v0, v2, p0}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void
.end method
