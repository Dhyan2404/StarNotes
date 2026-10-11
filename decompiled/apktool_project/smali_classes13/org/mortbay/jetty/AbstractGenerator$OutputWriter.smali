.class public Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;
.super Ljava/io/Writer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/AbstractGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputWriter"
.end annotation


# static fields
.field public static final i:I = 0x0

.field public static final j:I = 0x1

.field public static final k:I = 0x2


# instance fields
.field public e:Lorg/mortbay/jetty/AbstractGenerator$Output;

.field public f:Lorg/mortbay/jetty/AbstractGenerator;

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/AbstractGenerator$Output;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    iput-object p1, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->e:Lorg/mortbay/jetty/AbstractGenerator$Output;

    iget-object p1, p1, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    iput-object p1, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->f:Lorg/mortbay/jetty/AbstractGenerator;

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

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->e:Lorg/mortbay/jetty/AbstractGenerator$Output;

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->close()V

    return-void
.end method

.method public final f()Ljava/io/Writer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->e:Lorg/mortbay/jetty/AbstractGenerator$Output;

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->h:Ljava/io/Writer;

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->e:Lorg/mortbay/jetty/AbstractGenerator$Output;

    iget-object v3, v2, Lorg/mortbay/jetty/AbstractGenerator$Output;->j:Lorg/mortbay/util/ByteArrayOutputStream2;

    iget-object v2, v2, Lorg/mortbay/jetty/AbstractGenerator$Output;->g:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->h:Ljava/io/Writer;

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->e:Lorg/mortbay/jetty/AbstractGenerator$Output;

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->h:Ljava/io/Writer;

    return-object p0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->e:Lorg/mortbay/jetty/AbstractGenerator$Output;

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->flush()V

    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_3

    sget-object v0, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "UTF-8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->g:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->g:I

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->e:Lorg/mortbay/jetty/AbstractGenerator$Output;

    iget-object v0, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->e:Lorg/mortbay/jetty/AbstractGenerator$Output;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->h:Ljava/io/Writer;

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->g:I

    :cond_4
    :goto_1
    iget-object p0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->e:Lorg/mortbay/jetty/AbstractGenerator$Output;

    iput-object p1, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->g:Ljava/lang/String;

    iget-object p1, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->j:Lorg/mortbay/util/ByteArrayOutputStream2;

    if-nez p1, :cond_5

    new-instance p1, Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-static {}, Lorg/mortbay/jetty/AbstractGenerator;->b()I

    move-result v0

    invoke-direct {p1, v0}, Lorg/mortbay/util/ByteArrayOutputStream2;-><init>(I)V

    iput-object p1, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->j:Lorg/mortbay/util/ByteArrayOutputStream2;

    :cond_5
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    invoke-static {}, Lorg/mortbay/jetty/AbstractGenerator;->b()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 2
    invoke-static {}, Lorg/mortbay/jetty/AbstractGenerator;->b()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->write(Ljava/lang/String;II)V

    .line 3
    invoke-static {}, Lorg/mortbay/jetty/AbstractGenerator;->b()I

    move-result v0

    add-int/2addr p2, v0

    .line 4
    invoke-static {}, Lorg/mortbay/jetty/AbstractGenerator;->b()I

    move-result v0

    sub-int/2addr p3, v0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->e:Lorg/mortbay/jetty/AbstractGenerator$Output;

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->i:[C

    if-nez v1, :cond_1

    .line 6
    invoke-static {}, Lorg/mortbay/jetty/AbstractGenerator;->b()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->i:[C

    .line 7
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->e:Lorg/mortbay/jetty/AbstractGenerator$Output;

    iget-object v0, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->i:[C

    add-int v1, p2, p3

    const/4 v2, 0x0

    .line 8
    invoke-virtual {p1, p2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 9
    invoke-virtual {p0, v0, v2, p3}, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->write([CII)V

    return-void
.end method

.method public write([CII)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->e:Lorg/mortbay/jetty/AbstractGenerator$Output;

    :goto_0
    if-lez p3, :cond_17

    .line 11
    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->j:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 12
    invoke-static {}, Lorg/mortbay/jetty/AbstractGenerator;->b()I

    move-result v1

    if-le p3, v1, :cond_0

    invoke-static {}, Lorg/mortbay/jetty/AbstractGenerator;->b()I

    move-result v1

    goto :goto_1

    :cond_0
    move v1, p3

    .line 13
    :goto_1
    iget v2, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->g:I

    if-eqz v2, :cond_15

    const/4 v3, 0x0

    const/16 v4, 0x3f

    const/4 v5, 0x1

    if-eq v2, v5, :cond_11

    const/4 v5, 0x2

    if-ne v2, v5, :cond_10

    .line 14
    iget-object v2, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->j:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v2}, Lorg/mortbay/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v2

    .line 15
    iget-object v5, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->j:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v5}, Lorg/mortbay/util/ByteArrayOutputStream2;->getCount()I

    move-result v5

    add-int v6, v5, v1

    .line 16
    array-length v7, v2

    if-le v6, v7, :cond_1

    .line 17
    array-length v1, v2

    sub-int/2addr v1, v5

    :cond_1
    :goto_2
    if-ge v3, v1, :cond_f

    add-int v6, p2, v3

    .line 18
    aget-char v6, p1, v6

    and-int/lit8 v7, v6, -0x80

    if-nez v7, :cond_3

    add-int/lit8 v7, v5, 0x1

    .line 19
    array-length v8, v2

    if-le v7, v8, :cond_2

    goto/16 :goto_4

    :cond_2
    int-to-byte v6, v6

    .line 20
    aput-byte v6, v2, v5

    move v5, v7

    goto/16 :goto_6

    :cond_3
    and-int/lit16 v7, v6, -0x800

    if-nez v7, :cond_5

    add-int/lit8 v7, v5, 0x2

    .line 21
    array-length v8, v2

    if-le v7, v8, :cond_4

    goto/16 :goto_4

    :cond_4
    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v8, v6, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    .line 22
    aput-byte v8, v2, v5

    add-int/lit8 v5, v7, 0x1

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    .line 23
    aput-byte v6, v2, v7

    goto/16 :goto_5

    :cond_5
    const/high16 v7, -0x10000

    and-int/2addr v7, v6

    if-nez v7, :cond_7

    add-int/lit8 v7, v5, 0x3

    .line 24
    array-length v8, v2

    if-le v7, v8, :cond_6

    goto/16 :goto_4

    :cond_6
    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v8, v6, 0xc

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    .line 25
    aput-byte v8, v2, v5

    add-int/lit8 v5, v7, 0x1

    shr-int/lit8 v8, v6, 0x6

    and-int/2addr v8, v4

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 26
    aput-byte v8, v2, v7

    add-int/lit8 v7, v5, 0x1

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    .line 27
    aput-byte v6, v2, v5

    :goto_3
    move v5, v7

    goto/16 :goto_5

    :cond_7
    const/high16 v7, -0xe00000

    and-int/2addr v7, v6

    if-nez v7, :cond_9

    add-int/lit8 v7, v5, 0x4

    .line 28
    array-length v8, v2

    if-le v7, v8, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v8, v6, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    .line 29
    aput-byte v8, v2, v5

    add-int/lit8 v5, v7, 0x1

    shr-int/lit8 v8, v6, 0xc

    and-int/2addr v8, v4

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 30
    aput-byte v8, v2, v7

    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v8, v6, 0x6

    and-int/2addr v8, v4

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 31
    aput-byte v8, v2, v5

    add-int/lit8 v5, v7, 0x1

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    .line 32
    aput-byte v6, v2, v7

    goto/16 :goto_5

    :cond_9
    const/high16 v7, -0xc000000

    and-int/2addr v7, v6

    if-nez v7, :cond_b

    add-int/lit8 v7, v5, 0x5

    .line 33
    array-length v8, v2

    if-le v7, v8, :cond_a

    goto :goto_4

    :cond_a
    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v8, v6, 0x18

    or-int/lit16 v8, v8, 0xf8

    int-to-byte v8, v8

    .line 34
    aput-byte v8, v2, v5

    add-int/lit8 v5, v7, 0x1

    shr-int/lit8 v8, v6, 0x12

    and-int/2addr v8, v4

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 35
    aput-byte v8, v2, v7

    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v8, v6, 0xc

    and-int/2addr v8, v4

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 36
    aput-byte v8, v2, v5

    add-int/lit8 v5, v7, 0x1

    shr-int/lit8 v8, v6, 0x6

    and-int/2addr v8, v4

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 37
    aput-byte v8, v2, v7

    add-int/lit8 v7, v5, 0x1

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    .line 38
    aput-byte v6, v2, v5

    goto :goto_3

    :cond_b
    const/high16 v7, -0x80000000

    and-int/2addr v7, v6

    if-nez v7, :cond_d

    add-int/lit8 v7, v5, 0x6

    .line 39
    array-length v8, v2

    if-le v7, v8, :cond_c

    :goto_4
    move v1, v3

    goto :goto_7

    :cond_c
    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v8, v6, 0x1e

    or-int/lit16 v8, v8, 0xfc

    int-to-byte v8, v8

    .line 40
    aput-byte v8, v2, v5

    add-int/lit8 v5, v7, 0x1

    shr-int/lit8 v8, v6, 0x18

    and-int/2addr v8, v4

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 41
    aput-byte v8, v2, v7

    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v8, v6, 0x12

    and-int/2addr v8, v4

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 42
    aput-byte v8, v2, v5

    add-int/lit8 v5, v7, 0x1

    shr-int/lit8 v8, v6, 0xc

    and-int/2addr v8, v4

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 43
    aput-byte v8, v2, v7

    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v8, v6, 0x6

    and-int/2addr v8, v4

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 44
    aput-byte v8, v2, v5

    add-int/lit8 v5, v7, 0x1

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    .line 45
    aput-byte v6, v2, v7

    goto :goto_5

    :cond_d
    add-int/lit8 v6, v5, 0x1

    .line 46
    aput-byte v4, v2, v5

    move v5, v6

    .line 47
    :goto_5
    array-length v6, v2

    if-ne v5, v6, :cond_e

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_e
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 48
    :cond_f
    :goto_7
    iget-object v2, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->j:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v2, v5}, Lorg/mortbay/util/ByteArrayOutputStream2;->setCount(I)V

    goto :goto_a

    .line 49
    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 50
    :cond_11
    iget-object v2, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->j:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v2}, Lorg/mortbay/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v2

    .line 51
    iget-object v5, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->j:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v5}, Lorg/mortbay/util/ByteArrayOutputStream2;->getCount()I

    move-result v5

    .line 52
    array-length v6, v2

    sub-int/2addr v6, v5

    if-le v1, v6, :cond_12

    .line 53
    array-length v1, v2

    sub-int/2addr v1, v5

    :cond_12
    :goto_8
    if-ge v3, v1, :cond_14

    add-int v6, p2, v3

    .line 54
    aget-char v6, p1, v6

    add-int/lit8 v7, v5, 0x1

    const/16 v8, 0x100

    if-ge v6, v8, :cond_13

    goto :goto_9

    :cond_13
    move v6, v4

    :goto_9
    int-to-byte v6, v6

    .line 55
    aput-byte v6, v2, v5

    add-int/lit8 v3, v3, 0x1

    move v5, v7

    goto :goto_8

    :cond_14
    if-ltz v5, :cond_16

    .line 56
    iget-object v2, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->j:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v2, v5}, Lorg/mortbay/util/ByteArrayOutputStream2;->setCount(I)V

    goto :goto_a

    .line 57
    :cond_15
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->f()Ljava/io/Writer;

    move-result-object v2

    .line 58
    invoke-virtual {v2, p1, p2, v1}, Ljava/io/Writer;->write([CII)V

    .line 59
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 60
    :cond_16
    :goto_a
    iget-object v2, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->j:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    goto/16 :goto_0

    :cond_17
    return-void
.end method
