.class public Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;
.super Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;
.source "SourceFile"


# instance fields
.field private attachmentCount:J

.field private isEmbedded:Z

.field private nextAttachmentId:J

.field private nextRecipientId:J

.field private recipientCount:J


# direct methods
.method public constructor <init>(Lorg/apache/poi/hsmf/datatypes/ChunkGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;-><init>(Lorg/apache/poi/hsmf/datatypes/ChunkGroup;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hsmf/datatypes/ChunkGroup;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;-><init>(Lorg/apache/poi/hsmf/datatypes/ChunkGroup;)V

    .line 3
    iput-boolean p2, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->isEmbedded:Z

    return-void
.end method


# virtual methods
.method public getAttachmentCount()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->attachmentCount:J

    return-wide v0
.end method

.method public getNextAttachmentId()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->nextAttachmentId:J

    return-wide v0
.end method

.method public getNextRecipientId()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->nextRecipientId:J

    return-wide v0
.end method

.method public getRecipientCount()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->recipientCount:J

    return-wide v0
.end method

.method public readProperties(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/poi/util/LittleEndian;->readLong(Ljava/io/InputStream;)J

    invoke-static {p1}, Lorg/apache/poi/util/LittleEndian;->readUInt(Ljava/io/InputStream;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->nextRecipientId:J

    invoke-static {p1}, Lorg/apache/poi/util/LittleEndian;->readUInt(Ljava/io/InputStream;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->nextAttachmentId:J

    invoke-static {p1}, Lorg/apache/poi/util/LittleEndian;->readUInt(Ljava/io/InputStream;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->recipientCount:J

    invoke-static {p1}, Lorg/apache/poi/util/LittleEndian;->readUInt(Ljava/io/InputStream;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->attachmentCount:J

    iget-boolean v0, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->isEmbedded:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/poi/util/LittleEndian;->readLong(Ljava/io/InputStream;)J

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->readProperties(Ljava/io/InputStream;)V

    return-void
.end method

.method public readValue(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->readProperties(Ljava/io/InputStream;)V

    return-void
.end method

.method public setAttachmentCount(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->attachmentCount:J

    return-void
.end method

.method public setNextAttachmentId(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->nextAttachmentId:J

    return-void
.end method

.method public setNextRecipientId(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->nextRecipientId:J

    return-void
.end method

.method public setRecipientCount(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->recipientCount:J

    return-void
.end method

.method public writeProperties(Ljava/io/OutputStream;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/hsmf/datatypes/PropertyValue;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1}, Lorg/apache/poi/util/LittleEndian;->putLong(JLjava/io/OutputStream;)V

    iget-wide v2, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->nextRecipientId:J

    invoke-static {v2, v3, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    iget-wide v2, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->nextAttachmentId:J

    invoke-static {v2, v3, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    iget-wide v2, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->recipientCount:J

    invoke-static {v2, v3, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    iget-wide v2, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->attachmentCount:J

    invoke-static {v2, v3, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    iget-boolean v2, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->isEmbedded:Z

    if-nez v2, :cond_0

    invoke-static {v0, v1, p1}, Lorg/apache/poi/util/LittleEndian;->putLong(JLjava/io/OutputStream;)V

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->writeProperties(Ljava/io/OutputStream;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public writeValue(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->writeProperties(Ljava/io/OutputStream;)Ljava/util/List;

    return-void
.end method
