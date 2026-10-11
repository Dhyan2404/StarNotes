.class public final Lorg/apache/poi/hmef/attribute/MAPIRtfAttribute;
.super Lorg/apache/poi/hmef/attribute/MAPIAttribute;
.source "SourceFile"


# static fields
.field private static final MAX_RECORD_LENGTH:I = 0x2faf080


# instance fields
.field private final data:Ljava/lang/String;

.field private final decompressed:[B


# direct methods
.method public constructor <init>(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hmef/attribute/MAPIAttribute;-><init>(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;I[B)V

    new-instance p1, Lorg/apache/poi/hmef/CompressedRTF;

    invoke-direct {p1}, Lorg/apache/poi/hmef/CompressedRTF;-><init>()V

    new-instance p2, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    invoke-direct {p2, p3}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;-><init>([B)V

    :try_start_0
    invoke-virtual {p1, p2}, Lorg/apache/poi/util/LZWDecompresser;->decompress(Ljava/io/InputStream;)[B

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    array-length p2, p3

    invoke-virtual {p1}, Lorg/apache/poi/hmef/CompressedRTF;->getDeCompressedSize()I

    move-result v0

    const/4 v1, 0x0

    if-le p2, v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hmef/CompressedRTF;->getDeCompressedSize()I

    move-result p1

    const p2, 0x2faf080

    invoke-static {p3, v1, p1, p2}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hmef/attribute/MAPIRtfAttribute;->decompressed:[B

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lorg/apache/poi/hmef/attribute/MAPIRtfAttribute;->decompressed:[B

    :goto_0
    iget-object p1, p0, Lorg/apache/poi/hmef/attribute/MAPIRtfAttribute;->decompressed:[B

    array-length p2, p1

    invoke-static {p1, v1, p2}, Lorg/apache/poi/util/StringUtil;->getFromCompressedUnicode([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hmef/attribute/MAPIRtfAttribute;->data:Ljava/lang/String;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_2
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method


# virtual methods
.method public getData()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hmef/attribute/MAPIRtfAttribute;->decompressed:[B

    return-object p0
.end method

.method public getDataString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hmef/attribute/MAPIRtfAttribute;->data:Ljava/lang/String;

    return-object p0
.end method

.method public getRawData()[B
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/hmef/attribute/MAPIAttribute;->getData()[B

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hmef/attribute/MAPIAttribute;->getProperty()Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/hmef/attribute/MAPIRtfAttribute;->data:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
