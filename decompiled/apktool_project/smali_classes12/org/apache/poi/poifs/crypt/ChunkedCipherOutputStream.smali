.class public abstract Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field private static final STREAMING:I = -0x1


# instance fields
.field private final chunk:[B

.field private final chunkBits:I

.field private final chunkSize:I

.field private cipher:Ljavax/crypto/Cipher;

.field private final dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

.field private final fileOut:Ljava/io/File;

.field private isClosed:Z

.field private final plainByteFlags:Lcom/zaxxer/sparsebits/SparseBitSet;

.field private pos:J

.field private totalPos:J

.field private written:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 11
    iput p2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunkSize:I

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/16 p2, 0x1000

    :cond_0
    int-to-long v0, p2

    .line 12
    sget p1, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->MAX_RECORD_LENGTH:I

    invoke-static {v0, v1, p1}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    .line 13
    new-instance p1, Lcom/zaxxer/sparsebits/SparseBitSet;

    invoke-direct {p1, p2}, Lcom/zaxxer/sparsebits/SparseBitSet;-><init>(I)V

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->plainByteFlags:Lcom/zaxxer/sparsebits/SparseBitSet;

    add-int/lit8 p2, p2, -0x1

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunkBits:I

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->fileOut:Ljava/io/File;

    .line 16
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    const/4 p2, 0x0

    .line 17
    invoke-virtual {p0, p1, p2, p2}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->initCipherForBlock(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2
    iput p2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunkSize:I

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/16 p2, 0x1000

    :cond_0
    int-to-long v1, p2

    .line 3
    sget v3, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->MAX_RECORD_LENGTH:I

    invoke-static {v1, v2, v3}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    .line 4
    new-instance v1, Lcom/zaxxer/sparsebits/SparseBitSet;

    invoke-direct {v1, p2}, Lcom/zaxxer/sparsebits/SparseBitSet;-><init>(I)V

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->plainByteFlags:Lcom/zaxxer/sparsebits/SparseBitSet;

    add-int/lit8 p2, p2, -0x1

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    move-result p2

    iput p2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunkBits:I

    const-string p2, "encrypted_package"

    const-string v1, "crypt"

    .line 6
    invoke-static {p2, v1}, Lorg/apache/poi/util/TempFile;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->fileOut:Ljava/io/File;

    .line 7
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 8
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, v0, p1, p1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->initCipherForBlock(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    return-void
.end method

.method public static synthetic f(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->processPOIFSWriterEvent(Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;)V

    return-void
.end method

.method private processPOIFSWriterEvent(Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;->getStream()Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->fileOut:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/16 v1, 0x8

    :try_start_2
    new-array v1, v1, [B

    iget-wide v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Lorg/apache/poi/util/LittleEndian;->putLong([BIJ)V

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v0, p1}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    iget-object p1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->fileOut:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    const-string v0, "Can\'t delete temporary encryption file: {}"

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->fileOut:Ljava/io/File;

    invoke-interface {p1, v0, p0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_7
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v0

    if-eqz p1, :cond_1

    :try_start_9
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception p1

    :try_start_a
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {p1, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public abstract calculateChecksum(Ljava/io/File;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->isClosed:Z

    if-eqz v0, :cond_0

    sget-object p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string v0, "ChunkedCipherOutputStream was already closed - ignoring"

    invoke-interface {p0, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->isClosed:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->writeChunk(Z)V

    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->fileOut:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->fileOut:Ljava/io/File;

    iget-wide v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    long-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->calculateChecksum(Ljava/io/File;I)V

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    const-string v2, "EncryptedPackage"

    new-instance v3, Lcom/sunia/HTREnginev2/mtd;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/mtd;-><init>(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;)V

    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSWriterListener;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->fileOut:Ljava/io/File;

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->fileOut:Ljava/io/File;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->fileOut:Ljava/io/File;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_3
    throw v0
.end method

.method public abstract createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public getChunk()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    return-object p0
.end method

.method public getChunkMask()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public getPlainByteFlags()Lcom/zaxxer/sparsebits/SparseBitSet;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->plainByteFlags:Lcom/zaxxer/sparsebits/SparseBitSet;

    return-object p0
.end method

.method public getPos()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    return-wide v0
.end method

.method public getTotalPos()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->totalPos:J

    return-wide v0
.end method

.method public final initCipherForBlock(IZ)Ljavax/crypto/Cipher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->initCipherForBlock(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public abstract initCipherForBlock(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public initCipherForBlockNoFlush(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->initCipherForBlock(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public invokeCipher(IZ)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->plainByteFlags:Lcom/zaxxer/sparsebits/SparseBitSet;

    invoke-virtual {v0}, Lcom/zaxxer/sparsebits/SparseBitSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    invoke-virtual {v2, v3, v1, p1, v3}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    move-result v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    invoke-virtual {v2, v3, v1, p1, v3}, Ljavax/crypto/Cipher;->update([BII[B)I

    move-result v2

    :goto_1
    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object p2

    invoke-virtual {p2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v3, "IBMJCE"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    const-string v3, "RC4"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-wide v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    iget p2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunkBits:I

    shr-long/2addr v3, p2

    long-to-int p2, v3

    if-nez p1, :cond_2

    add-int/lit8 p2, p2, -0x1

    iget-object p1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    array-length p1, p1

    move v3, v1

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    :goto_2
    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0, v4, p2, v3}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->initCipherForBlockNoFlush(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    :cond_3
    if-eqz v0, :cond_4

    iget-object p2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->plainByteFlags:Lcom/zaxxer/sparsebits/SparseBitSet;

    invoke-virtual {p2, v1}, Lcom/zaxxer/sparsebits/SparseBitSet;->nextSetBit(I)I

    move-result p2

    :goto_3
    if-ltz p2, :cond_4

    if-ge p2, p1, :cond_4

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    aget-byte v3, v0, p2

    aput-byte v3, v1, p2

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->plainByteFlags:Lcom/zaxxer/sparsebits/SparseBitSet;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v1, p2}, Lcom/zaxxer/sparsebits/SparseBitSet;->nextSetBit(I)I

    move-result p2

    goto :goto_3

    :cond_4
    return v2
.end method

.method public setNextRecordSize(IZ)V
    .locals 0

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->write([B)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->write([BIIZ)V

    return-void
.end method

.method public write([BIIZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-ltz p3, :cond_5

    .line 4
    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_5

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->getChunkMask()I

    move-result v0

    :cond_1
    :goto_0
    if-lez p3, :cond_4

    .line 6
    iget-wide v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    int-to-long v3, v0

    and-long/2addr v1, v3

    long-to-int v1, v1

    .line 7
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    array-length v2, v2

    sub-int/2addr v2, v1

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 8
    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    invoke-static {p1, p2, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p4, :cond_2

    .line 9
    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->plainByteFlags:Lcom/zaxxer/sparsebits/SparseBitSet;

    add-int v6, v1, v2

    invoke-virtual {v5, v1, v6}, Lcom/zaxxer/sparsebits/SparseBitSet;->set(II)V

    .line 10
    :cond_2
    iget-wide v5, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    int-to-long v7, v2

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    .line 11
    iget-wide v9, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->totalPos:J

    add-long/2addr v9, v7

    iput-wide v9, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->totalPos:J

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    and-long v1, v5, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    if-lez p3, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 12
    :goto_1
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->writeChunk(Z)V

    goto :goto_0

    :cond_4
    return-void

    .line 13
    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "not enough bytes in your input buffer"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeChunk(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    iget-wide v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->totalPos:J

    iget-wide v6, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->written:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->getChunkMask()I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v0, v4

    long-to-int v0, v0

    iget-wide v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    iget v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunkBits:I

    shr-long v6, v4, v1

    long-to-int v1, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_1

    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    array-length v0, v0

    move v8, v7

    goto :goto_0

    :cond_1
    move v8, v6

    :goto_0
    :try_start_0
    iput-wide v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    iget v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunkSize:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    if-eqz p1, :cond_3

    move v6, v7

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0, p1, v1, v8}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->initCipherForBlock(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    iput-wide v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    :cond_3
    :goto_1
    invoke-virtual {p0, v0, v6}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->invokeCipher(IZ)I

    move-result p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    invoke-virtual {v0, v1, v7, p1}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->plainByteFlags:Lcom/zaxxer/sparsebits/SparseBitSet;

    invoke-virtual {v0}, Lcom/zaxxer/sparsebits/SparseBitSet;->clear()V

    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->written:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->written:J

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    const-string v0, "can\'t re-/initialize cipher"

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    :goto_2
    return-void
.end method

.method public writePlain([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->write([BIIZ)V

    return-void
.end method
