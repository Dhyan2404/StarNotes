.class public abstract Lorg/apache/poi/hsmf/datatypes/Chunk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_NAME_PREFIX:Ljava/lang/String; = "__substg1.0_"


# instance fields
.field private final chunkId:I

.field private final namePrefix:Ljava/lang/String;

.field private final type:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;


# direct methods
.method public constructor <init>(ILorg/apache/poi/hsmf/datatypes/Types$MAPIType;)V
    .locals 1

    const-string v0, "__substg1.0_"

    .line 5
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/poi/hsmf/datatypes/Chunk;-><init>(Ljava/lang/String;ILorg/apache/poi/hsmf/datatypes/Types$MAPIType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/apache/poi/hsmf/datatypes/Types$MAPIType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/poi/hsmf/datatypes/Chunk;->namePrefix:Ljava/lang/String;

    .line 3
    iput p2, p0, Lorg/apache/poi/hsmf/datatypes/Chunk;->chunkId:I

    .line 4
    iput-object p3, p0, Lorg/apache/poi/hsmf/datatypes/Chunk;->type:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    return-void
.end method


# virtual methods
.method public getChunkId()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hsmf/datatypes/Chunk;->chunkId:I

    return p0
.end method

.method public getEntryName()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hsmf/datatypes/Chunk;->type:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;->asFileEnding()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/hsmf/datatypes/Chunk;->chunkId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_0

    const/16 v3, 0x30

    invoke-static {v3, v2}, Lorg/apache/poi/util/StringUtil;->repeat(CI)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/Chunk;->namePrefix:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/Chunk;->type:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    return-object p0
.end method

.method public abstract readValue(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeValue(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
