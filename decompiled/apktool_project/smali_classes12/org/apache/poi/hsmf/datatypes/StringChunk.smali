.class public Lorg/apache/poi/hsmf/datatypes/StringChunk;
.super Lorg/apache/poi/hsmf/datatypes/Chunk;
.source "SourceFile"


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "CP1252"


# instance fields
.field private encoding7Bit:Ljava/lang/String;

.field private rawValue:[B

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILorg/apache/poi/hsmf/datatypes/Types$MAPIType;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hsmf/datatypes/Chunk;-><init>(ILorg/apache/poi/hsmf/datatypes/Types$MAPIType;)V

    const-string p1, "CP1252"

    .line 4
    iput-object p1, p0, Lorg/apache/poi/hsmf/datatypes/StringChunk;->encoding7Bit:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/apache/poi/hsmf/datatypes/Types$MAPIType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hsmf/datatypes/Chunk;-><init>(Ljava/lang/String;ILorg/apache/poi/hsmf/datatypes/Types$MAPIType;)V

    const-string p1, "CP1252"

    .line 2
    iput-object p1, p0, Lorg/apache/poi/hsmf/datatypes/StringChunk;->encoding7Bit:Ljava/lang/String;

    return-void
.end method

.method public static parseAs7BitData([B)Ljava/lang/String;
    .locals 1

    const-string v0, "CP1252"

    .line 1
    invoke-static {p0, v0}, Lorg/apache/poi/hsmf/datatypes/StringChunk;->parseAs7BitData([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseAs7BitData([BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "ansi"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "CP1252"

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private parseString()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getType()Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hsmf/datatypes/Types;->ASCII_STRING:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hsmf/datatypes/StringChunk;->rawValue:[B

    iget-object v1, p0, Lorg/apache/poi/hsmf/datatypes/StringChunk;->encoding7Bit:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/poi/hsmf/datatypes/StringChunk;->parseAs7BitData([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getType()Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hsmf/datatypes/Types;->UNICODE_STRING:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hsmf/datatypes/StringChunk;->rawValue:[B

    invoke-static {v0}, Lorg/apache/poi/util/StringUtil;->getFromUnicodeLE([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "\u0000"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/StringChunk;->value:Ljava/lang/String;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getType()Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " for String Chunk"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private storeString()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getType()Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hsmf/datatypes/Types;->ASCII_STRING:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hsmf/datatypes/StringChunk;->value:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/poi/hsmf/datatypes/StringChunk;->encoding7Bit:Ljava/lang/String;

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/StringChunk;->rawValue:[B

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getType()Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hsmf/datatypes/Types;->UNICODE_STRING:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hsmf/datatypes/StringChunk;->value:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/util/StringUtil;->getToUnicodeLE(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/StringChunk;->rawValue:[B

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getType()Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " for String Chunk"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public get7BitEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/StringChunk;->encoding7Bit:Ljava/lang/String;

    return-object p0
.end method

.method public getRawValue()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/StringChunk;->rawValue:[B

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/StringChunk;->value:Ljava/lang/String;

    return-object p0
.end method

.method public readValue(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hsmf/datatypes/StringChunk;->rawValue:[B

    invoke-direct {p0}, Lorg/apache/poi/hsmf/datatypes/StringChunk;->parseString()V

    return-void
.end method

.method public set7BitEncoding(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/poi/hsmf/datatypes/StringChunk;->encoding7Bit:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getType()Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/hsmf/datatypes/Types;->ASCII_STRING:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/hsmf/datatypes/StringChunk;->parseString()V

    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hsmf/datatypes/StringChunk;->value:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/poi/hsmf/datatypes/StringChunk;->storeString()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/StringChunk;->value:Ljava/lang/String;

    return-object p0
.end method

.method public writeValue(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/StringChunk;->rawValue:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
