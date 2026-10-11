.class public final Lorg/apache/xerces/impl/io/ASCIIReader;
.super Ljava/io/Reader;
.source "SourceFile"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x800


# instance fields
.field public final e:Lorg/apache/xerces/util/MessageFormatter;

.field public final f:Ljava/util/Locale;

.field protected final fBuffer:[B

.field protected final fInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILorg/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 0

    .line 1
    new-array p2, p2, [B

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xerces/impl/io/ASCIIReader;-><init>(Ljava/io/InputStream;[BLorg/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 1

    .line 2
    const/16 v0, 0x800

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/xerces/impl/io/ASCIIReader;-><init>(Ljava/io/InputStream;ILorg/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[BLorg/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    iput-object p2, p0, Lorg/apache/xerces/impl/io/ASCIIReader;->fBuffer:[B

    iput-object p3, p0, Lorg/apache/xerces/impl/io/ASCIIReader;->e:Lorg/apache/xerces/util/MessageFormatter;

    iput-object p4, p0, Lorg/apache/xerces/impl/io/ASCIIReader;->f:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result p0

    return p0
.end method

.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    return v0

    :cond_0
    new-instance v1, Lorg/apache/xerces/impl/io/MalformedByteSequenceException;

    iget-object v3, p0, Lorg/apache/xerces/impl/io/ASCIIReader;->e:Lorg/apache/xerces/util/MessageFormatter;

    iget-object v4, p0, Lorg/apache/xerces/impl/io/ASCIIReader;->f:Ljava/util/Locale;

    const-string v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v6, "InvalidASCII"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lorg/apache/xerces/impl/io/MalformedByteSequenceException;-><init>(Lorg/apache/xerces/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public read([CII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/xerces/impl/io/ASCIIReader;->fBuffer:[B

    array-length v1, v0

    if-le p3, v1, :cond_0

    array-length p3, v0

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    :goto_0
    if-lt v2, p3, :cond_1

    return p3

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/impl/io/ASCIIReader;->fBuffer:[B

    aget-byte v0, v0, v2

    if-ltz v0, :cond_2

    add-int v1, p2, v2

    int-to-char v0, v0

    aput-char v0, p1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/apache/xerces/impl/io/MalformedByteSequenceException;

    iget-object v4, p0, Lorg/apache/xerces/impl/io/ASCIIReader;->e:Lorg/apache/xerces/util/MessageFormatter;

    iget-object v5, p0, Lorg/apache/xerces/impl/io/ASCIIReader;->f:Ljava/util/Locale;

    const-string v6, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v7, "InvalidASCII"

    and-int/lit16 p0, v0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v8

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lorg/apache/xerces/impl/io/MalformedByteSequenceException;-><init>(Lorg/apache/xerces/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public ready()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public reset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p0

    return-wide p0
.end method
