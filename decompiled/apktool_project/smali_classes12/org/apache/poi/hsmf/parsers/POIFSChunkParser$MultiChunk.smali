.class Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$MultiChunk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hsmf/parsers/POIFSChunkParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiChunk"
.end annotation


# instance fields
.field private final chunks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hsmf/datatypes/Chunk;",
            ">;"
        }
    .end annotation
.end field

.field private length:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$MultiChunk;->length:I

    .line 3
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$MultiChunk;->chunks:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$MultiChunk;-><init>()V

    return-void
.end method


# virtual methods
.method public addChunk(ILorg/apache/poi/hsmf/datatypes/Chunk;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$MultiChunk;->chunks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getChunks()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hsmf/datatypes/Chunk;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$MultiChunk;->chunks:Ljava/util/Map;

    return-object p0
.end method

.method public getLength()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$MultiChunk;->length:I

    return p0
.end method

.method public setLength(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$MultiChunk;->length:I

    return-void
.end method
