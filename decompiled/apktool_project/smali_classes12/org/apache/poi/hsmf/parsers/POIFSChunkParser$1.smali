.class final Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$1;
.super Lorg/apache/poi/hsmf/datatypes/ByteChunk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/hsmf/parsers/POIFSChunkParser;->readMultiValue(Ljava/lang/String;Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/Entry;Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;Ljava/util/Map;)Lorg/apache/poi/hsmf/datatypes/Chunk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$mc:Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$MultiChunk;


# direct methods
.method public constructor <init>(ILorg/apache/poi/hsmf/datatypes/Types$MAPIType;Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$MultiChunk;)V
    .locals 0

    iput-object p3, p0, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$1;->val$mc:Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$MultiChunk;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hsmf/datatypes/ByteChunk;-><init>(ILorg/apache/poi/hsmf/datatypes/Types$MAPIType;)V

    return-void
.end method


# virtual methods
.method public readValue(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/poi/hsmf/datatypes/ByteChunk;->readValue(Ljava/io/InputStream;)V

    iget-object p1, p0, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$1;->val$mc:Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$MultiChunk;

    invoke-virtual {p0}, Lorg/apache/poi/hsmf/datatypes/ByteChunk;->getValue()[B

    move-result-object p0

    array-length p0, p0

    div-int/lit8 p0, p0, 0x4

    invoke-virtual {p1, p0}, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$MultiChunk;->setLength(I)V

    return-void
.end method
