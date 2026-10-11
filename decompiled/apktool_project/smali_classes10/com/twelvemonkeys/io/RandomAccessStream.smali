.class public abstract Lcom/twelvemonkeys/io/RandomAccessStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twelvemonkeys/io/Seekable;
.implements Ljava/io/DataInput;
.implements Ljava/io/DataOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/io/RandomAccessStream$b;,
        Lcom/twelvemonkeys/io/RandomAccessStream$a;
    }
.end annotation


# instance fields
.field public e:Lcom/twelvemonkeys/io/SeekableInputStream;

.field public f:Lcom/twelvemonkeys/io/SeekableOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twelvemonkeys/io/RandomAccessStream;->e:Lcom/twelvemonkeys/io/SeekableInputStream;

    iput-object v0, p0, Lcom/twelvemonkeys/io/RandomAccessStream;->f:Lcom/twelvemonkeys/io/SeekableOutputStream;

    return-void
.end method


# virtual methods
.method public final asInputStream()Lcom/twelvemonkeys/io/SeekableInputStream;
    .locals 1

    iget-object v0, p0, Lcom/twelvemonkeys/io/RandomAccessStream;->e:Lcom/twelvemonkeys/io/SeekableInputStream;

    if-nez v0, :cond_0

    new-instance v0, Lcom/twelvemonkeys/io/RandomAccessStream$a;

    invoke-direct {v0, p0}, Lcom/twelvemonkeys/io/RandomAccessStream$a;-><init>(Lcom/twelvemonkeys/io/RandomAccessStream;)V

    iput-object v0, p0, Lcom/twelvemonkeys/io/RandomAccessStream;->e:Lcom/twelvemonkeys/io/SeekableInputStream;

    :cond_0
    iget-object p0, p0, Lcom/twelvemonkeys/io/RandomAccessStream;->e:Lcom/twelvemonkeys/io/SeekableInputStream;

    return-object p0
.end method

.method public final asOutputStream()Lcom/twelvemonkeys/io/SeekableOutputStream;
    .locals 1

    iget-object v0, p0, Lcom/twelvemonkeys/io/RandomAccessStream;->f:Lcom/twelvemonkeys/io/SeekableOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Lcom/twelvemonkeys/io/RandomAccessStream$b;

    invoke-direct {v0, p0}, Lcom/twelvemonkeys/io/RandomAccessStream$b;-><init>(Lcom/twelvemonkeys/io/RandomAccessStream;)V

    iput-object v0, p0, Lcom/twelvemonkeys/io/RandomAccessStream;->f:Lcom/twelvemonkeys/io/SeekableOutputStream;

    :cond_0
    iget-object p0, p0, Lcom/twelvemonkeys/io/RandomAccessStream;->f:Lcom/twelvemonkeys/io/SeekableOutputStream;

    return-object p0
.end method

.method public read()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 p0, p0, 0xff

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public final read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 9
    array-length v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/twelvemonkeys/io/RandomAccessStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_5

    if-ltz p2, :cond_4

    .line 2
    array-length v0, p1

    if-gt p2, v0, :cond_4

    if-ltz p3, :cond_4

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_4

    if-ltz v0, :cond_4

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/RandomAccessStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    int-to-byte v0, v0

    .line 4
    aput-byte v0, p1, p2

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p3, :cond_3

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/RandomAccessStream;->read()I

    move-result v2

    if-ne v2, v1, :cond_2

    goto :goto_1

    :cond_2
    add-int v3, p2, v0

    int-to-byte v2, v2

    .line 6
    aput-byte v2, p1, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    :goto_1
    return v0

    .line 7
    :cond_4
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    .line 8
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "bytes == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
