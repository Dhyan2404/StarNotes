.class public Lcom/onyx/engine/sdk/archive/ArchiveNative;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private handle:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "engine_sdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extract(Lcom/onyx/engine/sdk/archive/ArchiveParameter;)Z
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/onyx/engine/sdk/archive/ArchiveParameter;->toJson()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/engine/sdk/archive/ArchiveNative;->nativeStaticExtract(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static extract(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 2
    new-instance v0, Lcom/onyx/engine/sdk/archive/ArchiveParameter;

    invoke-direct {v0, p0, p1, p2}, Lcom/onyx/engine/sdk/archive/ArchiveParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lcom/onyx/engine/sdk/archive/ArchiveNative;->extract(Lcom/onyx/engine/sdk/archive/ArchiveParameter;)Z

    move-result p0

    return p0
.end method

.method private loaAllFileHeaderList(Lcom/onyx/engine/sdk/archive/FileHeaderList;Ljava/util/function/Function;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/engine/sdk/archive/FileHeaderList;",
            "Ljava/util/function/Function<",
            "Lcom/onyx/engine/sdk/BatchParameter;",
            "Lcom/onyx/engine/sdk/archive/FileHeaderList;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Lcom/onyx/engine/sdk/BatchParameter;

    invoke-direct {p0}, Lcom/onyx/engine/sdk/BatchParameter;-><init>()V

    :cond_0
    invoke-interface {p2, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/engine/sdk/archive/FileHeaderList;

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/DataList;->getTotal()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/onyx/engine/sdk/DataList;->setTotal(I)Lcom/onyx/engine/sdk/DataList;

    invoke-virtual {p1, v0}, Lcom/onyx/engine/sdk/DataList;->addAll(Lcom/onyx/engine/sdk/DataList;)V

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/DataList;->size()I

    move-result v1

    iput v1, p0, Lcom/onyx/engine/sdk/BatchParameter;->start:I

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/DataList;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/DataList;->getTotal()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/DataList;->size()I

    move-result v0

    iget v1, p0, Lcom/onyx/engine/sdk/BatchParameter;->limit:I

    if-ge v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeExtract(JLjava/lang/String;)Z
.end method

.method private native nativeExtractEntryData(JLjava/lang/String;)[B
.end method

.method private native nativeGetArchiveFormatCode(J)I
.end method

.method private native nativeGetDirHeaderList(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetFileHeaderList(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeInitArchive(Ljava/lang/String;)J
.end method

.method private native nativeIsEncrypted(J)Z
.end method

.method private native nativeLoadAllEntries(J)Z
.end method

.method private native nativeSetPassword(JLjava/lang/String;)V
.end method

.method private static native nativeStaticExtract(Ljava/lang/String;)Z
.end method


# virtual methods
.method public close()V
    .locals 5

    iget-wide v0, p0, Lcom/onyx/engine/sdk/archive/ArchiveNative;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/onyx/engine/sdk/archive/ArchiveNative;->nativeClose(J)V

    iput-wide v2, p0, Lcom/onyx/engine/sdk/archive/ArchiveNative;->handle:J

    :cond_0
    return-void
.end method

.method public extract(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/onyx/engine/sdk/archive/ArchiveNative;->handle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/archive/ArchiveNative;->nativeExtract(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public extractEntryData(Ljava/lang/String;)[B
    .locals 2

    iget-wide v0, p0, Lcom/onyx/engine/sdk/archive/ArchiveNative;->handle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/archive/ArchiveNative;->nativeExtractEntryData(JLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public getArchiveFormatCode()I
    .locals 2

    iget-wide v0, p0, Lcom/onyx/engine/sdk/archive/ArchiveNative;->handle:J

    invoke-direct {p0, v0, v1}, Lcom/onyx/engine/sdk/archive/ArchiveNative;->nativeGetArchiveFormatCode(J)I

    move-result p0

    return p0
.end method

.method public getDirHeaderList()Lcom/onyx/engine/sdk/archive/FileHeaderList;
    .locals 2

    .line 1
    new-instance v0, Lcom/onyx/engine/sdk/archive/FileHeaderList;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/archive/FileHeaderList;-><init>()V

    .line 2
    new-instance v1, Lcom/sunia/HTREnginev2/pd;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/pd;-><init>(Lcom/onyx/engine/sdk/archive/ArchiveNative;)V

    invoke-direct {p0, v0, v1}, Lcom/onyx/engine/sdk/archive/ArchiveNative;->loaAllFileHeaderList(Lcom/onyx/engine/sdk/archive/FileHeaderList;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public getDirHeaderList(Lcom/onyx/engine/sdk/BatchParameter;)Lcom/onyx/engine/sdk/archive/FileHeaderList;
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/onyx/engine/sdk/archive/ArchiveNative;->handle:J

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/BatchParameter;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/archive/ArchiveNative;->nativeGetDirHeaderList(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/onyx/engine/sdk/archive/FileHeaderList;->fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/archive/FileHeaderList;

    move-result-object p0

    return-object p0
.end method

.method public getFileHeaderList()Lcom/onyx/engine/sdk/archive/FileHeaderList;
    .locals 2

    .line 1
    new-instance v0, Lcom/onyx/engine/sdk/archive/FileHeaderList;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/archive/FileHeaderList;-><init>()V

    .line 2
    new-instance v1, Lcom/sunia/HTREnginev2/qd;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/qd;-><init>(Lcom/onyx/engine/sdk/archive/ArchiveNative;)V

    invoke-direct {p0, v0, v1}, Lcom/onyx/engine/sdk/archive/ArchiveNative;->loaAllFileHeaderList(Lcom/onyx/engine/sdk/archive/FileHeaderList;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public getFileHeaderList(Lcom/onyx/engine/sdk/BatchParameter;)Lcom/onyx/engine/sdk/archive/FileHeaderList;
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/onyx/engine/sdk/archive/ArchiveNative;->handle:J

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/BatchParameter;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/archive/ArchiveNative;->nativeGetFileHeaderList(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/onyx/engine/sdk/archive/FileHeaderList;->fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/archive/FileHeaderList;

    move-result-object p0

    return-object p0
.end method

.method public initArchive(Lcom/onyx/engine/sdk/archive/ArchiveParameter;)Z
    .locals 2

    .line 3
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/archive/ArchiveParameter;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/onyx/engine/sdk/archive/ArchiveNative;->nativeInitArchive(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/engine/sdk/archive/ArchiveNative;->handle:J

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initArchive(Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/onyx/engine/sdk/archive/ArchiveParameter;

    invoke-direct {v0, p1}, Lcom/onyx/engine/sdk/archive/ArchiveParameter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/engine/sdk/archive/ArchiveNative;->initArchive(Lcom/onyx/engine/sdk/archive/ArchiveParameter;)Z

    move-result p0

    return p0
.end method

.method public initArchive(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 2
    new-instance v0, Lcom/onyx/engine/sdk/archive/ArchiveParameter;

    invoke-direct {v0, p1, p2}, Lcom/onyx/engine/sdk/archive/ArchiveParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/engine/sdk/archive/ArchiveNative;->initArchive(Lcom/onyx/engine/sdk/archive/ArchiveParameter;)Z

    move-result p0

    return p0
.end method

.method public isEncrypted()Z
    .locals 2

    iget-wide v0, p0, Lcom/onyx/engine/sdk/archive/ArchiveNative;->handle:J

    invoke-direct {p0, v0, v1}, Lcom/onyx/engine/sdk/archive/ArchiveNative;->nativeIsEncrypted(J)Z

    move-result p0

    return p0
.end method

.method public loadAllEntries()Z
    .locals 2

    iget-wide v0, p0, Lcom/onyx/engine/sdk/archive/ArchiveNative;->handle:J

    invoke-direct {p0, v0, v1}, Lcom/onyx/engine/sdk/archive/ArchiveNative;->nativeLoadAllEntries(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/archive/ArchiveNative;->close()V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/onyx/engine/sdk/archive/ArchiveNative;->handle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/archive/ArchiveNative;->nativeSetPassword(JLjava/lang/String;)V

    return-void
.end method
