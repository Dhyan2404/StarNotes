.class public Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BLIB_STORE_ENTRY_PARTS:[I

.field private static final fieldRecInst:Lorg/apache/poi/util/BitField;


# instance fields
.field _encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

.field cyos:Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

.field dea:Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/poi/util/BitField;

    const v1, 0xfff0

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->fieldRecInst:Lorg/apache/poi/util/BitField;

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->BLIB_STORE_ENTRY_PARTS:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x10
        0x2
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->dea:Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    return-void
.end method

.method public constructor <init>([BLjava/util/NavigableMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hslf/record/Record;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-interface {p2}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hslf/record/Record;

    .line 6
    instance-of v3, v1, Lorg/apache/poi/hslf/record/UserEditAtom;

    if-nez v3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    check-cast v1, Lorg/apache/poi/hslf/record/UserEditAtom;

    .line 8
    invoke-virtual {v1}, Lorg/apache/poi/hslf/record/UserEditAtom;->getEncryptSessionPersistIdRef()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_3

    .line 9
    iput-object v2, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->dea:Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    return-void

    .line 10
    :cond_3
    invoke-virtual {v1}, Lorg/apache/poi/hslf/record/UserEditAtom;->getPersistPointersOffset()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hslf/record/Record;

    .line 11
    instance-of v3, v0, Lorg/apache/poi/hslf/record/PersistPtrHolder;

    if-eqz v3, :cond_a

    .line 12
    check-cast v0, Lorg/apache/poi/hslf/record/PersistPtrHolder;

    .line 13
    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/PersistPtrHolder;->getSlideLocationsLookup()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/poi/hslf/record/UserEditAtom;->getEncryptSessionPersistIdRef()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_4

    .line 14
    iput-object v2, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->dea:Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    return-void

    .line 15
    :cond_4
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hslf/record/Record;

    if-nez v1, :cond_5

    .line 16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lorg/apache/poi/hslf/record/Record;->buildRecordAtOffset([BI)Lorg/apache/poi/hslf/record/Record;

    move-result-object v1

    .line 17
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_5
    instance-of p1, v1, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    if-eqz p1, :cond_9

    .line 19
    check-cast v1, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    iput-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->dea:Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    .line 20
    invoke-static {}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->getCurrentUserPassword()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 22
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 23
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object p0

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    const-string p1, "VelvetSweatshop"

    :goto_2
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;->verifyPassword(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 24
    :cond_7
    new-instance p0, Lorg/apache/poi/hslf/exceptions/EncryptedPowerPointFileException;

    const-string p1, "PowerPoint file is encrypted. The correct password needs to be set via Biff8EncryptionKey.setCurrentUserPassword()"

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/exceptions/EncryptedPowerPointFileException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid encryption-info: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 26
    new-instance p1, Lorg/apache/poi/hslf/exceptions/EncryptedPowerPointFileException;

    invoke-direct {p1, p0}, Lorg/apache/poi/hslf/exceptions/EncryptedPowerPointFileException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 27
    :cond_9
    new-instance p0, Lorg/apache/poi/hslf/exceptions/EncryptedPowerPointFileException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Did not have a DocumentEncryptionAtom: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/exceptions/EncryptedPowerPointFileException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_a
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Encountered an unexpected record-type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static addEncryptionRecord([Lorg/apache/poi/hslf/record/Record;Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;)[Lorg/apache/poi/hslf/record/Record;
    .locals 10

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v8, p0, v3

    add-int/lit8 v4, v4, 0x1

    instance-of v9, v8, Lorg/apache/poi/hslf/record/UserEditAtom;

    if-eqz v9, :cond_0

    move v5, v4

    goto :goto_1

    :cond_0
    instance-of v9, v8, Lorg/apache/poi/hslf/record/PersistPtrHolder;

    if-eqz v9, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    instance-of v8, v8, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    if-eqz v8, :cond_2

    move v7, v4

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eq v7, v2, :cond_4

    aget-object v0, p0, v7

    check-cast v0, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/PositionDependentRecordAtom;->getLastOnDiskOffset()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hslf/record/PositionDependentRecordAtom;->setLastOnDiskOffset(I)V

    aput-object p1, p0, v7

    return-object p0

    :cond_4
    aget-object v0, p0, v6

    check-cast v0, Lorg/apache/poi/hslf/record/PersistPtrHolder;

    aget-object v2, p0, v5

    check-cast v2, Lorg/apache/poi/hslf/record/UserEditAtom;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/PositionDependentRecordAtom;->getLastOnDiskOffset()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Lorg/apache/poi/hslf/record/PositionDependentRecordAtom;->setLastOnDiskOffset(I)V

    invoke-virtual {v2}, Lorg/apache/poi/hslf/record/UserEditAtom;->getMaxPersistWritten()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/PositionDependentRecordAtom;->getLastOnDiskOffset()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Lorg/apache/poi/hslf/record/PersistPtrHolder;->addSlideLookup(II)V

    invoke-virtual {v2, v3}, Lorg/apache/poi/hslf/record/UserEditAtom;->setEncryptSessionPersistIdRef(I)V

    invoke-virtual {v2, v3}, Lorg/apache/poi/hslf/record/UserEditAtom;->setMaxPersistWritten(I)V

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lorg/apache/poi/hslf/record/Record;

    if-lez v6, :cond_5

    invoke-static {p0, v1, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v6, v1, :cond_6

    add-int/lit8 v1, v6, 0x1

    array-length v2, p0

    sub-int/2addr v2, v6

    invoke-static {p0, v6, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    aput-object p1, v0, v6

    return-object v0
.end method

.method private decryptPicBytes([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([BI)V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1}, Lorg/apache/poi/poifs/crypt/Decryptor;->getDataStream(Ljava/io/InputStream;II)Ljava/io/InputStream;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->readFully(Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;[BII)V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public static normalizeRecords([Lorg/apache/poi/hslf/record/Record;)[Lorg/apache/poi/hslf/record/Record;
    .locals 12

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v4

    move v7, v5

    move v8, v7

    :goto_0
    if-ge v7, v3, :cond_5

    aget-object v9, p0, v7

    move-object v10, v9

    check-cast v10, Lorg/apache/poi/hslf/record/PositionDependentRecord;

    instance-of v11, v10, Lorg/apache/poi/hslf/record/UserEditAtom;

    if-eqz v11, :cond_0

    check-cast v10, Lorg/apache/poi/hslf/record/UserEditAtom;

    move-object v4, v10

    goto :goto_2

    :cond_0
    instance-of v11, v10, Lorg/apache/poi/hslf/record/PersistPtrHolder;

    if-eqz v11, :cond_4

    if-eqz v6, :cond_1

    add-int/lit8 v8, v8, 0x1

    :cond_1
    check-cast v10, Lorg/apache/poi/hslf/record/PersistPtrHolder;

    invoke-virtual {v10}, Lorg/apache/poi/hslf/record/PersistPtrHolder;->getSlideLocationsLookup()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v11, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz v9, :cond_2

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v6, v10

    goto :goto_2

    :cond_4
    invoke-interface {v10}, Lorg/apache/poi/hslf/record/PositionDependentRecord;->getLastOnDiskOffset()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_9

    if-eqz v6, :cond_9

    invoke-virtual {v4}, Lorg/apache/poi/hslf/record/UserEditAtom;->getPersistPointersOffset()I

    move-result v3

    invoke-virtual {v6}, Lorg/apache/poi/hslf/record/PositionDependentRecordAtom;->getLastOnDiskOffset()I

    move-result v7

    if-ne v3, v7, :cond_9

    invoke-virtual {v6}, Lorg/apache/poi/hslf/record/PositionDependentRecordAtom;->getLastOnDiskOffset()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lorg/apache/poi/hslf/record/PositionDependentRecordAtom;->getLastOnDiskOffset()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v8, :cond_6

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    return-object p0

    :cond_6
    invoke-virtual {v4, v5}, Lorg/apache/poi/hslf/record/UserEditAtom;->setLastUserEditAtomOffset(I)V

    invoke-virtual {v6}, Lorg/apache/poi/hslf/record/PersistPtrHolder;->clear()V

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v3, v0}, Lorg/apache/poi/hslf/record/PersistPtrHolder;->addSlideLookup(II)V

    goto :goto_3

    :cond_7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    new-array v0, v5, [Lorg/apache/poi/hslf/record/Record;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/hslf/record/Record;

    return-object p0

    :cond_9
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v0, "UserEditAtom and PersistPtrHolder must exist and their offset need to match."

    invoke-direct {p0, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readFully(Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;[BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/apache/poi/hslf/exceptions/EncryptedPowerPointFileException;

    const-string p1, "unexpected EOF"

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/exceptions/EncryptedPowerPointFileException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static removeEncryptionRecord([Lorg/apache/poi/hslf/record/Record;)[Lorg/apache/poi/hslf/record/Record;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v7, v2

    move v8, v7

    move-object v5, v3

    move v6, v4

    :goto_0
    if-ge v6, v1, :cond_3

    aget-object v9, p0, v6

    instance-of v10, v9, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    if-eqz v10, :cond_0

    check-cast v9, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    invoke-virtual {v9}, Lorg/apache/poi/hslf/record/PositionDependentRecordAtom;->getLastOnDiskOffset()I

    move-result v8

    goto :goto_2

    :cond_0
    instance-of v10, v9, Lorg/apache/poi/hslf/record/UserEditAtom;

    if-eqz v10, :cond_1

    move-object v5, v9

    check-cast v5, Lorg/apache/poi/hslf/record/UserEditAtom;

    invoke-virtual {v5}, Lorg/apache/poi/hslf/record/UserEditAtom;->getEncryptSessionPersistIdRef()I

    move-result v7

    invoke-virtual {v5, v2}, Lorg/apache/poi/hslf/record/UserEditAtom;->setEncryptSessionPersistIdRef(I)V

    goto :goto_1

    :cond_1
    instance-of v10, v9, Lorg/apache/poi/hslf/record/PersistPtrHolder;

    if-eqz v10, :cond_2

    move-object v3, v9

    check-cast v3, Lorg/apache/poi/hslf/record/PersistPtrHolder;

    :cond_2
    :goto_1
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_8

    if-eqz v5, :cond_8

    if-ne v7, v2, :cond_4

    if-ne v8, v2, :cond_4

    return-object p0

    :cond_4
    new-instance p0, Ljava/util/TreeMap;

    invoke-virtual {v3}, Lorg/apache/poi/hslf/record/PersistPtrHolder;->getSlideLocationsLookup()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Lorg/apache/poi/hslf/record/PersistPtrHolder;->clear()V

    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v7, :cond_5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v8, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v3, v6, v9}, Lorg/apache/poi/hslf/record/PersistPtrHolder;->addSlideLookup(II)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_3

    :cond_7
    invoke-virtual {v5, v2}, Lorg/apache/poi/hslf/record/UserEditAtom;->setMaxPersistWritten(I)V

    new-array p0, v4, [Lorg/apache/poi/hslf/record/Record;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/hslf/record/Record;

    return-object p0

    :cond_8
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v0, "UserEditAtom or PersistPtrholder not found."

    invoke-direct {p0, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->cyos:Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->close()V

    :cond_0
    return-void
.end method

.method public decryptPicture([BI)V
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->dea:Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->decryptPicBytes([BII)V

    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->fieldRecInst:Lorg/apache/poi/util/BitField;

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v1

    add-int/lit8 v2, p2, 0x2

    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v2

    add-int/lit8 v3, p2, 0x4

    invoke-static {p1, v3}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v3

    long-to-int v3, v3

    add-int/2addr p2, v0

    add-int/2addr v3, p2

    const v4, 0xf007

    const/4 v5, 0x0

    if-ne v2, v4, :cond_4

    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->BLIB_STORE_ENTRY_PARTS:[I

    array-length v2, v1

    move v4, v5

    :goto_0
    if-ge v4, v2, :cond_1

    aget v6, v1, v4

    invoke-direct {p0, p1, p2, v6}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->decryptPicBytes([BII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, 0x24

    add-int/lit8 v1, p2, -0x3

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v1

    if-lez v1, :cond_2

    invoke-direct {p0, p1, p2, v1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->decryptPicBytes([BII)V

    add-int/2addr p2, v1

    :cond_2
    if-ne p2, v3, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->decryptPicBytes([BII)V

    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->fieldRecInst:Lorg/apache/poi/util/BitField;

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v1

    add-int/lit8 v2, p2, 0x2

    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v2

    add-int/2addr p2, v0

    :cond_4
    const/16 v0, 0x217

    const/4 v4, 0x1

    if-eq v1, v0, :cond_6

    const/16 v0, 0x3d5

    if-eq v1, v0, :cond_6

    const/16 v0, 0x46b

    if-eq v1, v0, :cond_6

    const/16 v0, 0x543

    if-eq v1, v0, :cond_6

    const/16 v0, 0x6e1

    if-eq v1, v0, :cond_6

    const/16 v0, 0x6e3

    if-eq v1, v0, :cond_6

    const/16 v0, 0x6e5

    if-eq v1, v0, :cond_6

    const/16 v0, 0x7a9

    if-ne v1, v0, :cond_5

    goto :goto_1

    :cond_5
    move v0, v4

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v0, 0x2

    :goto_2
    if-ge v5, v0, :cond_7

    const/16 v1, 0x10

    invoke-direct {p0, p1, p2, v1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->decryptPicBytes([BII)V

    add-int/lit8 p2, p2, 0x10

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    const v0, 0xf01a

    if-eq v2, v0, :cond_8

    const v0, 0xf01b

    if-eq v2, v0, :cond_8

    const v0, 0xf01c

    if-ne v2, v0, :cond_9

    :cond_8
    const/16 v4, 0x22

    :cond_9
    invoke-direct {p0, p1, p2, v4}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->decryptPicBytes([BII)V

    add-int/2addr p2, v4

    sub-int/2addr v3, p2

    invoke-direct {p0, p1, p2, v3}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->decryptPicBytes([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;

    invoke-direct {p1, p0}, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public decryptRecord([BII)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->dea:Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/Decryptor;->setChunkSize(I)V

    :try_start_0
    new-instance v0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    invoke-direct {v0, p1, p3}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    array-length v1, p1

    sub-int/2addr v1, p3

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/poifs/crypt/Decryptor;->getDataStream(Ljava/io/InputStream;II)Ljava/io/InputStream;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {p0, p2}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->initCipherForBlock(I)Ljavax/crypto/Cipher;

    const/16 p2, 0x8

    invoke-static {p0, p1, p3, p2}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->readFully(Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;[BII)V

    add-int/lit8 v1, p3, 0x4

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr p3, p2

    invoke-static {p0, p1, p3, v1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->readFully(Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;[BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_1

    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    :try_start_7
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception p2

    :try_start_a
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/poi/hslf/exceptions/EncryptedPowerPointFileException;

    invoke-direct {p1, p0}, Lorg/apache/poi/hslf/exceptions/EncryptedPowerPointFileException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public encryptPicture([BI)V
    .locals 9

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->dea:Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    invoke-direct {v1, p1, p2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;-><init>([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object p0

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/crypt/Encryptor;->setChunkSize(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/apache/poi/poifs/crypt/Encryptor;->getDataStream(Ljava/io/OutputStream;I)Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    move-result-object v0

    sget-object p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->fieldRecInst:Lorg/apache/poi/util/BitField;

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    add-int/lit8 v3, p2, 0x2

    invoke-static {p1, v3}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v3

    add-int/lit8 v4, p2, 0x4

    invoke-static {p1, v4}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v4

    long-to-int v4, v4

    const/16 v5, 0x8

    invoke-virtual {v0, p1, p2, v5}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    add-int/2addr p2, v5

    add-int/2addr v4, p2

    const v6, 0xf007

    if-ne v3, v6, :cond_4

    add-int/lit8 p0, p2, 0x21

    invoke-static {p1, p0}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result p0

    sget-object v3, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->BLIB_STORE_ENTRY_PARTS:[I

    array-length v6, v3

    move v7, v2

    :goto_0
    if-ge v7, v6, :cond_1

    aget v8, v3, v7

    invoke-virtual {v0, p1, p2, v8}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    add-int/2addr p2, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    if-lez p0, :cond_2

    invoke-virtual {v0, p1, p2, p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr p2, p0

    :cond_2
    if-ne p2, v4, :cond_3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_3
    :try_start_3
    sget-object p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->fieldRecInst:Lorg/apache/poi/util/BitField;

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    add-int/lit8 v3, p2, 0x2

    invoke-static {p1, v3}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v3

    invoke-virtual {v0, p1, p2, v5}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    add-int/2addr p2, v5

    :cond_4
    const/16 v5, 0x217

    const/4 v6, 0x1

    if-eq p0, v5, :cond_6

    const/16 v5, 0x3d5

    if-eq p0, v5, :cond_6

    const/16 v5, 0x46b

    if-eq p0, v5, :cond_6

    const/16 v5, 0x543

    if-eq p0, v5, :cond_6

    const/16 v5, 0x6e1

    if-eq p0, v5, :cond_6

    const/16 v5, 0x6e3

    if-eq p0, v5, :cond_6

    const/16 v5, 0x6e5

    if-eq p0, v5, :cond_6

    const/16 v5, 0x7a9

    if-ne p0, v5, :cond_5

    goto :goto_1

    :cond_5
    move p0, v6

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p0, 0x2

    :goto_2
    if-ge v2, p0, :cond_7

    const/16 v5, 0x10

    invoke-virtual {v0, p1, p2, v5}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    add-int/lit8 p2, p2, 0x10

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    const p0, 0xf01a

    if-eq v3, p0, :cond_9

    const p0, 0xf01b

    if-eq v3, p0, :cond_9

    const p0, 0xf01c

    if-ne v3, p0, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v0, p1, p2, v6}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->write([BII)V

    add-int/2addr p2, v6

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_4

    :cond_9
    :goto_3
    const/16 p0, 0x22

    invoke-virtual {v0, p1, p2, p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->write([BII)V

    add-int/2addr p2, p0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :goto_4
    sub-int/2addr v4, p2

    invoke-virtual {v0, p1, p2, v4}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p2

    :try_start_7
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception p0

    :try_start_8
    new-instance p1, Lorg/apache/poi/hslf/exceptions/EncryptedPowerPointFileException;

    invoke-direct {p1, p0}, Lorg/apache/poi/hslf/exceptions/EncryptedPowerPointFileException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_6
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public encryptRecord(Ljava/io/OutputStream;ILorg/apache/poi/hslf/record/Record;)Ljava/io/OutputStream;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->dea:Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p3, Lorg/apache/poi/hslf/record/UserEditAtom;

    if-nez v0, :cond_1

    instance-of v0, p3, Lorg/apache/poi/hslf/record/PersistPtrHolder;

    if-nez v0, :cond_1

    instance-of p3, p3, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    :goto_1
    if-eqz p3, :cond_3

    :try_start_0
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->cyos:Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    :cond_2
    return-object p1

    :cond_3
    iget-object p3, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->cyos:Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    if-nez p3, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object p3

    const/4 v0, -0x1

    invoke-virtual {p3, v0}, Lorg/apache/poi/poifs/crypt/Encryptor;->setChunkSize(I)V

    invoke-virtual {p3, p1, v1}, Lorg/apache/poi/poifs/crypt/Encryptor;->getDataStream(Ljava/io/OutputStream;I)Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->cyos:Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    :cond_4
    iget-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->cyos:Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    invoke-virtual {p1, p2, v1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->initCipherForBlock(IZ)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->cyos:Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/poi/hslf/exceptions/EncryptedPowerPointFileException;

    invoke-direct {p1, p0}, Lorg/apache/poi/hslf/exceptions/EncryptedPowerPointFileException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getDocumentEncryptionAtom()Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->dea:Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    return-object p0
.end method

.method public getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->dea:Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public updateEncryptionRecord([Lorg/apache/poi/hslf/record/Record;)[Lorg/apache/poi/hslf/record/Record;
    .locals 8

    invoke-static {}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->getCurrentUserPassword()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->dea:Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->dea:Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    invoke-static {p1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->removeEncryptionRecord([Lorg/apache/poi/hslf/record/Record;)[Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->dea:Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    invoke-direct {v0}, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->dea:Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->dea:Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getSalt()[B

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object v2

    if-nez v5, :cond_3

    invoke-virtual {v2, v1}, Lorg/apache/poi/poifs/crypt/Encryptor;->confirmPassword(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getVerifier()[B

    move-result-object v4

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/poifs/crypt/Encryptor;->confirmPassword(Ljava/lang/String;[B[B[B[B[B)V

    :goto_0
    invoke-static {p1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->normalizeRecords([Lorg/apache/poi/hslf/record/Record;)[Lorg/apache/poi/hslf/record/Record;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->dea:Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    invoke-static {p1, p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->addEncryptionRecord([Lorg/apache/poi/hslf/record/Record;Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;)[Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    return-object p0
.end method
