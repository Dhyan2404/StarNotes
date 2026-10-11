.class public abstract Lorg/apache/poi/hwpf/HWPFDocumentCore;
.super Lorg/apache/poi/POIDocument;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0x1dcd6500

.field protected static final FIB_BASE_LEN:I = 0x44

.field private static MAX_RECORD_LENGTH:I = 0x1dcd6500

.field protected static final RC4_REKEYING_INTERVAL:I = 0x200

.field protected static final STREAM_OBJECT_POOL:Ljava/lang/String; = "ObjectPool"

.field protected static final STREAM_TABLE_0:Ljava/lang/String; = "0Table"

.field protected static final STREAM_TABLE_1:Ljava/lang/String; = "1Table"

.field protected static final STREAM_WORD_DOCUMENT:Ljava/lang/String; = "WordDocument"


# instance fields
.field protected _cbt:Lorg/apache/poi/hwpf/model/CHPBinTable;

.field private _encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

.field protected _fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

.field protected _ft:Lorg/apache/poi/hwpf/model/FontTable;

.field protected _lt:Lorg/apache/poi/hwpf/model/ListTables;

.field protected _mainStream:[B

.field protected _objectPool:Lorg/apache/poi/hwpf/usermodel/ObjectPoolImpl;

.field protected _pbt:Lorg/apache/poi/hwpf/model/PAPBinTable;

.field protected _ss:Lorg/apache/poi/hwpf/model/StyleSheet;

.field protected _st:Lorg/apache/poi/hwpf/model/SectionTable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/poi/POIDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lorg/apache/poi/hwpf/HWPFDocumentCore;->verifyAndBuildPOIFS(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hwpf/HWPFDocumentCore;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/poi/POIDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    const/16 v0, 0x44

    const v1, 0x7fffffff

    const-string v2, "WordDocument"

    .line 5
    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/poi/hwpf/HWPFDocumentCore;->getDocumentEntryBytes(Ljava/lang/String;II)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_mainStream:[B

    .line 6
    new-instance v0, Lorg/apache/poi/hwpf/model/FileInformationBlock;

    iget-object v1, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_mainStream:[B

    invoke-direct {v0, v1}, Lorg/apache/poi/hwpf/model/FileInformationBlock;-><init>([B)V

    iput-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    const-string v0, "ObjectPool"

    .line 7
    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    new-instance v0, Lorg/apache/poi/hwpf/usermodel/ObjectPoolImpl;

    invoke-direct {v0, p1}, Lorg/apache/poi/hwpf/usermodel/ObjectPoolImpl;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    iput-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_objectPool:Lorg/apache/poi/hwpf/usermodel/ObjectPoolImpl;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hwpf/HWPFDocumentCore;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method

.method private getDecryptedStream(Lorg/apache/poi/poifs/filesystem/DocumentInputStream;II)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/HWPFDocumentCore;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getDataStream(Ljava/io/InputStream;II)Ljava/io/InputStream;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    new-array p1, v0, [B

    if-lez p3, :cond_0

    int-to-long p1, p3

    sget v1, Lorg/apache/poi/hwpf/HWPFDocumentCore;->MAX_RECORD_LENGTH:I

    invoke-static {p1, p2, v1}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object p1

    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->readPlain([BII)V

    :cond_0
    new-instance p2, Ljava/io/SequenceInputStream;

    new-instance p3, Ljava/io/ByteArrayInputStream;

    invoke-direct {p3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p2, p3, p0}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    return-object p2
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->MAX_RECORD_LENGTH:I

    return-void
.end method

.method public static verifyAndBuildPOIFS(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->prepareToCheckMagic(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/poifs/filesystem/FileMagic;->OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The document is really a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " file"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getCharacterTable()Lorg/apache/poi/hwpf/model/CHPBinTable;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_cbt:Lorg/apache/poi/hwpf/model/CHPBinTable;

    return-object p0
.end method

.method public getDocumentEntryBytes(Ljava/lang/String;II)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    invoke-interface {v1}, Lorg/apache/poi/poifs/filesystem/DocumentEntry;->getSize()I

    move-result v2

    const/4 v3, -0x1

    if-le p2, v3, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/HWPFDocumentCore;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    :try_start_1
    invoke-direct {p0, v0, v2, p2}, Lorg/apache/poi/hwpf/HWPFDocumentCore;->getDecryptedStream(Lorg/apache/poi/poifs/filesystem/DocumentInputStream;II)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    move-object p0, v0

    :goto_1
    :try_start_2
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    sget p3, Lorg/apache/poi/hwpf/HWPFDocumentCore;->MAX_RECORD_LENGTH:I

    invoke-static {p0, p2, p3}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;II)[B

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_2

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return-object p2

    :catchall_1
    move-exception p2

    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p3

    if-eqz p0, :cond_4

    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    :try_start_7
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_3
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p2

    if-eqz v0, :cond_5

    :try_start_9
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p3

    :try_start_a
    invoke-virtual {p0, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw p2
    :try_end_a
    .catch Ljava/security/GeneralSecurityException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to decrypt data for entry: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getDocumentText()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/HWPFDocumentCore;->getText()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFibBase()Lorg/apache/poi/hwpf/model/FibBase;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFibBase()Lorg/apache/poi/hwpf/model/FibBase;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_mainStream:[B

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "WordDocument"

    const/16 v2, 0x44

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/hwpf/HWPFDocumentCore;->getDocumentEntryBytes(Ljava/lang/String;II)[B

    move-result-object v0

    :goto_0
    new-instance v2, Lorg/apache/poi/hwpf/model/FibBase;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/apache/poi/hwpf/model/FibBase;-><init>([BI)V

    move-object v0, v2

    :goto_1
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/types/FibBaseAbstractType;->isFEncrypted()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    return-object v3

    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/types/FibBaseAbstractType;->isFWhichTblStm()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "1Table"

    goto :goto_2

    :cond_4
    const-string v2, "0Table"

    :goto_2
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/types/FibBaseAbstractType;->getLKey()I

    move-result v4

    invoke-virtual {p0, v2, v1, v4}, Lorg/apache/poi/hwpf/HWPFDocumentCore;->getDocumentEntryBytes(Ljava/lang/String;II)[B

    move-result-object v1

    new-instance v2, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    invoke-direct {v2, v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/types/FibBaseAbstractType;->isFObfuscated()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v3, Lorg/apache/poi/poifs/crypt/EncryptionMode;->xor:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    :cond_5
    new-instance v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-direct {v0, v2, v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/util/LittleEndianInput;Lorg/apache/poi/poifs/crypt/EncryptionMode;)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v1

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Lorg/apache/poi/poifs/crypt/Decryptor;->setChunkSize(I)V

    :try_start_0
    invoke-static {}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->getCurrentUserPassword()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v2, "VelvetSweatshop"

    :cond_6
    invoke-virtual {v1, v2}, Lorg/apache/poi/poifs/crypt/Decryptor;->verifyPassword(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_7

    iput-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    return-object v0

    :cond_7
    :try_start_1
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v0, "document is encrypted, password is invalid - use Biff8EncryptionKey.setCurrentUserPasswort() to set password before opening"

    invoke-direct {p0, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getFileInformationBlock()Lorg/apache/poi/hwpf/model/FileInformationBlock;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    return-object p0
.end method

.method public getFontTable()Lorg/apache/poi/hwpf/model/FontTable;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_ft:Lorg/apache/poi/hwpf/model/FontTable;

    return-object p0
.end method

.method public getListTables()Lorg/apache/poi/hwpf/model/ListTables;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_lt:Lorg/apache/poi/hwpf/model/ListTables;

    return-object p0
.end method

.method public getMainStream()[B
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_mainStream:[B

    return-object p0
.end method

.method public getObjectsPool()Lorg/apache/poi/hwpf/usermodel/ObjectsPool;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_objectPool:Lorg/apache/poi/hwpf/usermodel/ObjectPoolImpl;

    return-object p0
.end method

.method public abstract getOverallRange()Lorg/apache/poi/hwpf/usermodel/Range;
.end method

.method public getParagraphTable()Lorg/apache/poi/hwpf/model/PAPBinTable;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_pbt:Lorg/apache/poi/hwpf/model/PAPBinTable;

    return-object p0
.end method

.method public abstract getRange()Lorg/apache/poi/hwpf/usermodel/Range;
.end method

.method public getSectionTable()Lorg/apache/poi/hwpf/model/SectionTable;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_st:Lorg/apache/poi/hwpf/model/SectionTable;

    return-object p0
.end method

.method public getStyleSheet()Lorg/apache/poi/hwpf/model/StyleSheet;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_ss:Lorg/apache/poi/hwpf/model/StyleSheet;

    return-object p0
.end method

.method public abstract getText()Ljava/lang/StringBuilder;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation
.end method

.method public abstract getTextTable()Lorg/apache/poi/hwpf/model/TextPieceTable;
.end method

.method public updateEncryptionInfo()V
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->readProperties()V

    invoke-static {}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->getCurrentUserPassword()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFibBase()Lorg/apache/poi/hwpf/model/FibBase;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Lorg/apache/poi/hwpf/model/types/FibBaseAbstractType;->setLKey(I)V

    invoke-virtual {v0, v2}, Lorg/apache/poi/hwpf/model/types/FibBaseAbstractType;->setFEncrypted(Z)V

    invoke-virtual {v0, v2}, Lorg/apache/poi/hwpf/model/types/FibBaseAbstractType;->setFObfuscated(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    if-nez v3, :cond_1

    new-instance v3, Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    sget-object v4, Lorg/apache/poi/poifs/crypt/EncryptionMode;->cryptoAPI:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    invoke-direct {v3, v4}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionMode;)V

    iput-object v3, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/apache/poi/hwpf/model/types/FibBaseAbstractType;->setFEncrypted(Z)V

    invoke-virtual {v0, v2}, Lorg/apache/poi/hwpf/model/types/FibBaseAbstractType;->setFObfuscated(Z)V

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getSalt()[B

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/crypt/Encryptor;->confirmPassword(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getVerifier()[B

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/poifs/crypt/Encryptor;->confirmPassword(Ljava/lang/String;[B[B[B[B[B)V

    :goto_0
    return-void
.end method
