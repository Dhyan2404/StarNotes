.class public Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hsmf/datatypes/ChunkGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hsmf/datatypes/AttachmentChunks$AttachmentChunksSorter;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field public static final PREFIX:Ljava/lang/String; = "__attach_version1.0_#"


# instance fields
.field private final allChunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hsmf/datatypes/Chunk;",
            ">;"
        }
    .end annotation
.end field

.field private attachContentId:Lorg/apache/poi/hsmf/datatypes/StringChunk;

.field private attachData:Lorg/apache/poi/hsmf/datatypes/ByteChunk;

.field private attachExtension:Lorg/apache/poi/hsmf/datatypes/StringChunk;

.field private attachFileName:Lorg/apache/poi/hsmf/datatypes/StringChunk;

.field private attachLongFileName:Lorg/apache/poi/hsmf/datatypes/StringChunk;

.field private attachMimeTag:Lorg/apache/poi/hsmf/datatypes/StringChunk;

.field private attachRenderingWMF:Lorg/apache/poi/hsmf/datatypes/ByteChunk;

.field private attachmentDirectory:Lorg/apache/poi/hsmf/datatypes/DirectoryChunk;

.field private final poifsName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->allChunks:Ljava/util/List;

    iput-object p1, p0, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->poifsName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->poifsName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public chunksComplete()V
    .locals 0

    return-void
.end method

.method public getAll()[Lorg/apache/poi/hsmf/datatypes/Chunk;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->allChunks:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/hsmf/datatypes/Chunk;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/hsmf/datatypes/Chunk;

    return-object p0
.end method

.method public getAttachContentId()Lorg/apache/poi/hsmf/datatypes/StringChunk;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->attachContentId:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    return-object p0
.end method

.method public getAttachData()Lorg/apache/poi/hsmf/datatypes/ByteChunk;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->attachData:Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    return-object p0
.end method

.method public getAttachExtension()Lorg/apache/poi/hsmf/datatypes/StringChunk;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->attachExtension:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    return-object p0
.end method

.method public getAttachFileName()Lorg/apache/poi/hsmf/datatypes/StringChunk;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->attachFileName:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    return-object p0
.end method

.method public getAttachLongFileName()Lorg/apache/poi/hsmf/datatypes/StringChunk;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->attachLongFileName:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    return-object p0
.end method

.method public getAttachMimeTag()Lorg/apache/poi/hsmf/datatypes/StringChunk;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->attachMimeTag:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    return-object p0
.end method

.method public getAttachRenderingWMF()Lorg/apache/poi/hsmf/datatypes/ByteChunk;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->attachRenderingWMF:Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    return-object p0
.end method

.method public getAttachmentDirectory()Lorg/apache/poi/hsmf/datatypes/DirectoryChunk;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->attachmentDirectory:Lorg/apache/poi/hsmf/datatypes/DirectoryChunk;

    return-object p0
.end method

.method public getChunks()[Lorg/apache/poi/hsmf/datatypes/Chunk;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->getAll()[Lorg/apache/poi/hsmf/datatypes/Chunk;

    move-result-object p0

    return-object p0
.end method

.method public getEmbeddedAttachmentObject()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->attachData:Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hsmf/datatypes/ByteChunk;->getValue()[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEmbeddedMessage()Lorg/apache/poi/hsmf/MAPIMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->attachmentDirectory:Lorg/apache/poi/hsmf/datatypes/DirectoryChunk;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hsmf/datatypes/DirectoryChunk;->getAsEmbeddedMessage()Lorg/apache/poi/hsmf/MAPIMessage;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPOIFSName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->poifsName:Ljava/lang/String;

    return-object p0
.end method

.method public isEmbeddedMessage()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->attachmentDirectory:Lorg/apache/poi/hsmf/datatypes/DirectoryChunk;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public record(Lorg/apache/poi/hsmf/datatypes/Chunk;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getChunkId()I

    move-result v0

    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->ATTACH_DATA:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    iget v1, v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    if-ne v0, v1, :cond_2

    instance-of v0, p1, Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->attachData:Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    goto/16 :goto_0

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/hsmf/datatypes/DirectoryChunk;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/DirectoryChunk;

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->attachmentDirectory:Lorg/apache/poi/hsmf/datatypes/DirectoryChunk;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "Unexpected data chunk of type {}"

    invoke-virtual {p1}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getEntryName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->ATTACH_EXTENSION:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    iget v1, v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    if-ne v0, v1, :cond_3

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->attachExtension:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    goto :goto_0

    :cond_3
    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->ATTACH_FILENAME:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    iget v1, v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    if-ne v0, v1, :cond_4

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->attachFileName:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    goto :goto_0

    :cond_4
    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->ATTACH_LONG_FILENAME:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    iget v1, v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    if-ne v0, v1, :cond_5

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->attachLongFileName:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    goto :goto_0

    :cond_5
    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->ATTACH_MIME_TAG:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    iget v1, v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    if-ne v0, v1, :cond_6

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->attachMimeTag:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    goto :goto_0

    :cond_6
    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->ATTACH_RENDERING:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    iget v1, v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    if-ne v0, v1, :cond_7

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->attachRenderingWMF:Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    goto :goto_0

    :cond_7
    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->ATTACH_CONTENT_ID:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    iget v1, v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    if-ne v0, v1, :cond_8

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->attachContentId:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    goto :goto_0

    :cond_8
    sget-object v0, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "Currently unsupported attachment chunk property will be ignored. {}"

    invoke-virtual {p1}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getEntryName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->allChunks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
