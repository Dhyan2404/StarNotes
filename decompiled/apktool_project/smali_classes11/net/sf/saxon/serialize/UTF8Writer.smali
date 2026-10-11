.class public final Lnet/sf/saxon/serialize/UTF8Writer;
.super Ljava/io/Writer;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/str/UnicodeWriter;


# static fields
.field public static final j:I = 0x20

.field public static final k:I = 0xfa0

.field public static final l:I = 0xd800

.field public static final m:I = 0xdbff

.field public static final n:I = 0xdc00

.field public static final o:I = 0xdfff

.field public static final synthetic p:Z


# instance fields
.field public e:Ljava/io/OutputStream;

.field public f:[B

.field public final g:I

.field public h:I

.field public i:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/16 v0, 0xfa0

    .line 1
    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/serialize/UTF8Writer;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lnet/sf/saxon/serialize/UTF8Writer;->i:I

    const/16 v1, 0x20

    if-ge p2, v1, :cond_0

    move p2, v1

    .line 4
    :cond_0
    iput-object p1, p0, Lnet/sf/saxon/serialize/UTF8Writer;->e:Ljava/io/OutputStream;

    .line 5
    new-array p1, p2, [B

    iput-object p1, p0, Lnet/sf/saxon/serialize/UTF8Writer;->f:[B

    add-int/lit8 p2, p2, -0x4

    .line 6
    iput p2, p0, Lnet/sf/saxon/serialize/UTF8Writer;->g:I

    .line 7
    iput v0, p0, Lnet/sf/saxon/serialize/UTF8Writer;->h:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/serialize/UTF8Writer;->e:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/UTF8Writer;->j()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/serialize/UTF8Writer;->f:[B

    iget-object v1, p0, Lnet/sf/saxon/serialize/UTF8Writer;->e:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    iput-object v0, p0, Lnet/sf/saxon/serialize/UTF8Writer;->e:Ljava/io/OutputStream;

    iget v0, p0, Lnet/sf/saxon/serialize/UTF8Writer;->i:I

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lnet/sf/saxon/serialize/UTF8Writer;->i:I

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/UTF8Writer;->w(I)V

    :cond_0
    return-void
.end method

.method public final f(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/serialize/UTF8Writer;->i:I

    const/4 v1, 0x0

    iput v1, p0, Lnet/sf/saxon/serialize/UTF8Writer;->i:I

    const p0, 0xdc00

    if-lt p1, p0, :cond_0

    const v1, 0xdfff

    if-gt p1, v1, :cond_0

    const v1, 0xd800

    sub-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0xa

    const/high16 v1, 0x10000

    add-int/2addr v0, v1

    sub-int/2addr p1, p0

    add-int/2addr v0, p1

    return v0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broken surrogate pair: first char 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", second 0x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; illegal combination"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/UTF8Writer;->j()V

    iget-object p0, p0, Lnet/sf/saxon/serialize/UTF8Writer;->e:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final j()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/serialize/UTF8Writer;->h:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/serialize/UTF8Writer;->f:[B

    if-eqz v1, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/serialize/UTF8Writer;->e:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lnet/sf/saxon/serialize/UTF8Writer;->h:I

    :cond_0
    return-void
.end method

.method public final w(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const p0, 0x10ffff

    const-string v0, "Illegal character point (0x"

    if-gt p1, p0, :cond_2

    const p0, 0xd800

    if-lt p1, p0, :cond_1

    const p0, 0xdbff

    const-string v0, ")"

    if-gt p1, p0, :cond_0

    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched first part of surrogate pair (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched second part of surrogate pair (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") to output"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") to output; max is 0x10FFFF as per RFC 3629"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public write(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    iget v0, p0, Lnet/sf/saxon/serialize/UTF8Writer;->i:I

    if-lez v0, :cond_0

    .line 31
    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/UTF8Writer;->f(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const v0, 0xd800

    if-lt p1, v0, :cond_2

    const v0, 0xdfff

    if-gt p1, v0, :cond_2

    const v0, 0xdbff

    if-le p1, v0, :cond_1

    .line 32
    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/UTF8Writer;->w(I)V

    .line 33
    :cond_1
    iput p1, p0, Lnet/sf/saxon/serialize/UTF8Writer;->i:I

    return-void

    .line 34
    :cond_2
    :goto_0
    iget v0, p0, Lnet/sf/saxon/serialize/UTF8Writer;->h:I

    iget v1, p0, Lnet/sf/saxon/serialize/UTF8Writer;->g:I

    if-lt v0, v1, :cond_3

    .line 35
    invoke-virtual {p0}, Lnet/sf/saxon/serialize/UTF8Writer;->j()V

    :cond_3
    const/16 v0, 0x80

    if-ge p1, v0, :cond_4

    .line 36
    iget-object v0, p0, Lnet/sf/saxon/serialize/UTF8Writer;->f:[B

    iget v1, p0, Lnet/sf/saxon/serialize/UTF8Writer;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/sf/saxon/serialize/UTF8Writer;->h:I

    int-to-byte p0, p1

    aput-byte p0, v0, v1

    goto :goto_2

    .line 37
    :cond_4
    iget v1, p0, Lnet/sf/saxon/serialize/UTF8Writer;->h:I

    const/16 v2, 0x800

    if-ge p1, v2, :cond_5

    .line 38
    iget-object v2, p0, Lnet/sf/saxon/serialize/UTF8Writer;->f:[B

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, p1, 0x6

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    add-int/lit8 v1, v3, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 39
    aput-byte p1, v2, v3

    goto :goto_1

    :cond_5
    const v2, 0xffff

    if-gt p1, v2, :cond_6

    .line 40
    iget-object v2, p0, Lnet/sf/saxon/serialize/UTF8Writer;->f:[B

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, p1, 0xc

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    add-int/lit8 v1, v3, 0x1

    shr-int/lit8 v4, p1, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v0

    int-to-byte v4, v4

    .line 41
    aput-byte v4, v2, v3

    add-int/lit8 v3, v1, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 42
    aput-byte p1, v2, v1

    move v1, v3

    goto :goto_1

    :cond_6
    const v2, 0x10ffff

    if-le p1, v2, :cond_7

    .line 43
    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/UTF8Writer;->w(I)V

    .line 44
    :cond_7
    iget-object v2, p0, Lnet/sf/saxon/serialize/UTF8Writer;->f:[B

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, p1, 0x12

    or-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    add-int/lit8 v1, v3, 0x1

    shr-int/lit8 v4, p1, 0xc

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v0

    int-to-byte v4, v4

    .line 45
    aput-byte v4, v2, v3

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, p1, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v0

    int-to-byte v4, v4

    .line 46
    aput-byte v4, v2, v1

    add-int/lit8 v1, v3, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 47
    aput-byte p1, v2, v3

    .line 48
    :goto_1
    iput v1, p0, Lnet/sf/saxon/serialize/UTF8Writer;->h:I

    :goto_2
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/sf/saxon/serialize/UTF8Writer;->write(Ljava/lang/String;II)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ge p3, v0, :cond_1

    if-ne p3, v1, :cond_0

    .line 80
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/UTF8Writer;->write(I)V

    :cond_0
    return-void

    .line 81
    :cond_1
    iget v0, p0, Lnet/sf/saxon/serialize/UTF8Writer;->i:I

    if-lez v0, :cond_2

    add-int/lit8 v0, p2, 0x1

    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    add-int/lit8 p3, p3, -0x1

    .line 83
    invoke-virtual {p0, p2}, Lnet/sf/saxon/serialize/UTF8Writer;->f(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/serialize/UTF8Writer;->write(I)V

    move p2, v0

    .line 84
    :cond_2
    iget v0, p0, Lnet/sf/saxon/serialize/UTF8Writer;->h:I

    .line 85
    iget-object v2, p0, Lnet/sf/saxon/serialize/UTF8Writer;->f:[B

    .line 86
    iget v3, p0, Lnet/sf/saxon/serialize/UTF8Writer;->g:I

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_f

    const/4 v4, 0x0

    if-lt v0, v3, :cond_3

    .line 87
    iget-object v5, p0, Lnet/sf/saxon/serialize/UTF8Writer;->e:Ljava/io/OutputStream;

    invoke-virtual {v5, v2, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    move v0, v4

    :cond_3
    add-int/lit8 v5, p2, 0x1

    .line 88
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v6, 0x80

    if-ge p2, v6, :cond_8

    add-int/lit8 v7, v0, 0x1

    int-to-byte v8, p2

    .line 89
    aput-byte v8, v2, v0

    sub-int v0, p3, v5

    sub-int v8, v3, v7

    if-le v0, v8, :cond_4

    move v0, v8

    :cond_4
    add-int v8, v0, v5

    move v0, v7

    :goto_1
    if-lt v5, v8, :cond_5

    move v4, v1

    move v10, v5

    move v5, p2

    move p2, v10

    goto :goto_2

    :cond_5
    add-int/lit8 p2, v5, 0x1

    .line 90
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_7

    :goto_2
    if-eqz v4, :cond_6

    goto :goto_0

    :cond_6
    move v10, v5

    move v5, p2

    move p2, v10

    goto :goto_3

    :cond_7
    add-int/lit8 v7, v0, 0x1

    int-to-byte v9, v5

    .line 91
    aput-byte v9, v2, v0

    move v0, v7

    move v10, v5

    move v5, p2

    move p2, v10

    goto :goto_1

    :cond_8
    :goto_3
    const/16 v4, 0x800

    if-ge p2, v4, :cond_9

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v7, p2, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    .line 92
    aput-byte v7, v2, v0

    add-int/lit8 v0, v4, 0x1

    and-int/lit8 p2, p2, 0x3f

    or-int/2addr p2, v6

    int-to-byte p2, p2

    .line 93
    aput-byte p2, v2, v4

    goto/16 :goto_5

    :cond_9
    const v4, 0xd800

    if-lt p2, v4, :cond_e

    const v4, 0xdfff

    if-le p2, v4, :cond_a

    goto :goto_4

    :cond_a
    const v4, 0xdbff

    if-le p2, v4, :cond_b

    .line 94
    iput v0, p0, Lnet/sf/saxon/serialize/UTF8Writer;->h:I

    .line 95
    invoke-virtual {p0, p2}, Lnet/sf/saxon/serialize/UTF8Writer;->w(I)V

    .line 96
    :cond_b
    iput p2, p0, Lnet/sf/saxon/serialize/UTF8Writer;->i:I

    if-lt v5, p3, :cond_c

    goto :goto_6

    :cond_c
    add-int/lit8 p2, v5, 0x1

    .line 97
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lnet/sf/saxon/serialize/UTF8Writer;->f(I)I

    move-result v4

    const v5, 0x10ffff

    if-le v4, v5, :cond_d

    .line 98
    iput v0, p0, Lnet/sf/saxon/serialize/UTF8Writer;->h:I

    .line 99
    invoke-virtual {p0, v4}, Lnet/sf/saxon/serialize/UTF8Writer;->w(I)V

    :cond_d
    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v7, v4, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    .line 100
    aput-byte v7, v2, v0

    add-int/lit8 v0, v5, 0x1

    shr-int/lit8 v7, v4, 0xc

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v6

    int-to-byte v7, v7

    .line 101
    aput-byte v7, v2, v5

    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v7, v4, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v6

    int-to-byte v7, v7

    .line 102
    aput-byte v7, v2, v0

    add-int/lit8 v0, v5, 0x1

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v6

    int-to-byte v4, v4

    .line 103
    aput-byte v4, v2, v5

    goto/16 :goto_0

    :cond_e
    :goto_4
    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v7, p2, 0xc

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    .line 104
    aput-byte v7, v2, v0

    add-int/lit8 v0, v4, 0x1

    shr-int/lit8 v7, p2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v6

    int-to-byte v7, v7

    .line 105
    aput-byte v7, v2, v4

    add-int/lit8 v4, v0, 0x1

    and-int/lit8 p2, p2, 0x3f

    or-int/2addr p2, v6

    int-to-byte p2, p2

    .line 106
    aput-byte p2, v2, v0

    move v0, v4

    :goto_5
    move p2, v5

    goto/16 :goto_0

    .line 107
    :cond_f
    :goto_6
    iput v0, p0, Lnet/sf/saxon/serialize/UTF8Writer;->h:I

    return-void
.end method

.method public write(Lnet/sf/saxon/str/UnicodeString;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    instance-of v0, p1, Lnet/sf/saxon/str/StringView;

    if-nez v0, :cond_b

    instance-of v0, p1, Lnet/sf/saxon/str/BMPString;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 50
    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/str/UnicodeChar;

    if-eqz v0, :cond_1

    .line 51
    check-cast p1, Lnet/sf/saxon/str/UnicodeChar;

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeChar;->getCodepoint()I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/UTF8Writer;->writeCodePoint(I)V

    goto/16 :goto_3

    .line 52
    :cond_1
    instance-of v0, p1, Lnet/sf/saxon/str/ZenoString;

    if-eqz v0, :cond_2

    .line 53
    check-cast p1, Lnet/sf/saxon/str/ZenoString;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/str/ZenoString;->writeSegments(Lnet/sf/saxon/str/UnicodeWriter;)V

    goto/16 :goto_3

    .line 54
    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->getWidth()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_8

    .line 55
    instance-of v0, p1, Lnet/sf/saxon/str/Twine8;

    const/4 v2, 0x7

    if-eqz v0, :cond_4

    .line 56
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->getWidth()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    .line 57
    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/str/Twine8;

    invoke-virtual {v0}, Lnet/sf/saxon/str/Twine8;->getByteArray()[B

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result p1

    invoke-virtual {p0, v0, v3, p1}, Lnet/sf/saxon/serialize/UTF8Writer;->writeAscii([BII)V

    goto/16 :goto_3

    :cond_3
    if-ne v0, v1, :cond_c

    .line 58
    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/str/Twine8;

    invoke-virtual {v0}, Lnet/sf/saxon/str/Twine8;->getByteArray()[B

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result p1

    invoke-virtual {p0, v0, v3, p1}, Lnet/sf/saxon/serialize/UTF8Writer;->writeLatin1([BII)V

    goto/16 :goto_3

    .line 59
    :cond_4
    instance-of v0, p1, Lnet/sf/saxon/str/Slice8;

    if-eqz v0, :cond_6

    .line 60
    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/str/Slice8;

    .line 61
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->getWidth()I

    move-result p1

    if-ne p1, v2, :cond_5

    .line 62
    invoke-virtual {v0}, Lnet/sf/saxon/str/Slice8;->getByteArray()[B

    move-result-object p1

    invoke-virtual {v0}, Lnet/sf/saxon/str/Slice8;->getStart()I

    move-result v1

    invoke-virtual {v0}, Lnet/sf/saxon/str/Slice8;->getEnd()I

    move-result v2

    invoke-virtual {v0}, Lnet/sf/saxon/str/Slice8;->getStart()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p0, p1, v1, v2}, Lnet/sf/saxon/serialize/UTF8Writer;->writeAscii([BII)V

    goto/16 :goto_3

    :cond_5
    if-ne p1, v1, :cond_c

    .line 63
    invoke-virtual {v0}, Lnet/sf/saxon/str/Slice8;->getByteArray()[B

    move-result-object p1

    invoke-virtual {v0}, Lnet/sf/saxon/str/Slice8;->getStart()I

    move-result v1

    invoke-virtual {v0}, Lnet/sf/saxon/str/Slice8;->getEnd()I

    move-result v2

    invoke-virtual {v0}, Lnet/sf/saxon/str/Slice8;->getStart()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p0, p1, v1, v2}, Lnet/sf/saxon/serialize/UTF8Writer;->writeLatin1([BII)V

    goto :goto_3

    .line 64
    :cond_6
    instance-of v0, p1, Lnet/sf/saxon/str/WhitespaceString;

    if-eqz v0, :cond_7

    .line 65
    check-cast p1, Lnet/sf/saxon/str/WhitespaceString;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/str/WhitespaceString;->write(Lnet/sf/saxon/str/UnicodeWriter;)V

    goto :goto_3

    .line 66
    :cond_7
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p1

    .line 67
    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 68
    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/UTF8Writer;->write(I)V

    goto :goto_0

    .line 69
    :cond_8
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->getWidth()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    .line 70
    instance-of v0, p1, Lnet/sf/saxon/str/Twine16;

    if-eqz v0, :cond_9

    .line 71
    check-cast p1, Lnet/sf/saxon/str/Twine16;

    invoke-virtual {p1}, Lnet/sf/saxon/str/Twine16;->getCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/UTF8Writer;->write([C)V

    goto :goto_3

    .line 72
    :cond_9
    instance-of v0, p1, Lnet/sf/saxon/str/Slice16;

    if-eqz v0, :cond_c

    .line 73
    check-cast p1, Lnet/sf/saxon/str/Slice16;

    .line 74
    invoke-virtual {p1}, Lnet/sf/saxon/str/Slice16;->getCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/str/Slice16;->getStart()I

    move-result v1

    invoke-virtual {p1}, Lnet/sf/saxon/str/Slice16;->getEnd()I

    move-result v2

    invoke-virtual {p1}, Lnet/sf/saxon/str/Slice16;->getStart()I

    move-result p1

    sub-int/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lnet/sf/saxon/serialize/UTF8Writer;->write([CII)V

    goto :goto_3

    .line 75
    :cond_a
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p1

    .line 76
    :goto_1
    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 77
    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/UTF8Writer;->write(I)V

    goto :goto_1

    .line 78
    :cond_b
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/UTF8Writer;->write(Ljava/lang/String;)V

    :cond_c
    :goto_3
    return-void
.end method

.method public write([C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/sf/saxon/serialize/UTF8Writer;->write([CII)V

    return-void
.end method

.method public write([CII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ge p3, v0, :cond_1

    if-ne p3, v1, :cond_0

    .line 2
    aget-char p1, p1, p2

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/UTF8Writer;->write(I)V

    :cond_0
    return-void

    .line 3
    :cond_1
    iget v0, p0, Lnet/sf/saxon/serialize/UTF8Writer;->i:I

    if-lez v0, :cond_2

    add-int/lit8 v0, p2, 0x1

    .line 4
    aget-char p2, p1, p2

    add-int/lit8 p3, p3, -0x1

    .line 5
    invoke-virtual {p0, p2}, Lnet/sf/saxon/serialize/UTF8Writer;->f(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/serialize/UTF8Writer;->write(I)V

    move p2, v0

    .line 6
    :cond_2
    iget v0, p0, Lnet/sf/saxon/serialize/UTF8Writer;->h:I

    .line 7
    iget-object v2, p0, Lnet/sf/saxon/serialize/UTF8Writer;->f:[B

    .line 8
    iget v3, p0, Lnet/sf/saxon/serialize/UTF8Writer;->g:I

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_f

    const/4 v4, 0x0

    if-lt v0, v3, :cond_3

    .line 9
    iget-object v5, p0, Lnet/sf/saxon/serialize/UTF8Writer;->e:Ljava/io/OutputStream;

    invoke-virtual {v5, v2, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    move v0, v4

    :cond_3
    add-int/lit8 v5, p2, 0x1

    .line 10
    aget-char p2, p1, p2

    const/16 v6, 0x80

    if-ge p2, v6, :cond_8

    add-int/lit8 v7, v0, 0x1

    int-to-byte v8, p2

    .line 11
    aput-byte v8, v2, v0

    sub-int v0, p3, v5

    sub-int v8, v3, v7

    if-le v0, v8, :cond_4

    move v0, v8

    :cond_4
    add-int v8, v0, v5

    move v0, v7

    :goto_1
    if-lt v5, v8, :cond_5

    move v4, v1

    move v10, v5

    move v5, p2

    move p2, v10

    goto :goto_2

    :cond_5
    add-int/lit8 p2, v5, 0x1

    .line 12
    aget-char v5, p1, v5

    if-lt v5, v6, :cond_7

    :goto_2
    if-eqz v4, :cond_6

    goto :goto_0

    :cond_6
    move v10, v5

    move v5, p2

    move p2, v10

    goto :goto_3

    :cond_7
    add-int/lit8 v7, v0, 0x1

    int-to-byte v9, v5

    .line 13
    aput-byte v9, v2, v0

    move v0, v7

    move v10, v5

    move v5, p2

    move p2, v10

    goto :goto_1

    :cond_8
    :goto_3
    const/16 v4, 0x800

    if-ge p2, v4, :cond_9

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v7, p2, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    .line 14
    aput-byte v7, v2, v0

    add-int/lit8 v0, v4, 0x1

    and-int/lit8 p2, p2, 0x3f

    or-int/2addr p2, v6

    int-to-byte p2, p2

    .line 15
    aput-byte p2, v2, v4

    goto :goto_5

    :cond_9
    const v4, 0xd800

    if-lt p2, v4, :cond_e

    const v4, 0xdfff

    if-le p2, v4, :cond_a

    goto :goto_4

    :cond_a
    const v4, 0xdbff

    if-le p2, v4, :cond_b

    .line 16
    iput v0, p0, Lnet/sf/saxon/serialize/UTF8Writer;->h:I

    .line 17
    invoke-virtual {p0, p2}, Lnet/sf/saxon/serialize/UTF8Writer;->w(I)V

    .line 18
    :cond_b
    iput p2, p0, Lnet/sf/saxon/serialize/UTF8Writer;->i:I

    if-lt v5, p3, :cond_c

    goto :goto_6

    :cond_c
    add-int/lit8 p2, v5, 0x1

    .line 19
    aget-char v4, p1, v5

    invoke-virtual {p0, v4}, Lnet/sf/saxon/serialize/UTF8Writer;->f(I)I

    move-result v4

    const v5, 0x10ffff

    if-le v4, v5, :cond_d

    .line 20
    iput v0, p0, Lnet/sf/saxon/serialize/UTF8Writer;->h:I

    .line 21
    invoke-virtual {p0, v4}, Lnet/sf/saxon/serialize/UTF8Writer;->w(I)V

    :cond_d
    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v7, v4, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    .line 22
    aput-byte v7, v2, v0

    add-int/lit8 v0, v5, 0x1

    shr-int/lit8 v7, v4, 0xc

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v6

    int-to-byte v7, v7

    .line 23
    aput-byte v7, v2, v5

    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v7, v4, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v6

    int-to-byte v7, v7

    .line 24
    aput-byte v7, v2, v0

    add-int/lit8 v0, v5, 0x1

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v6

    int-to-byte v4, v4

    .line 25
    aput-byte v4, v2, v5

    goto/16 :goto_0

    :cond_e
    :goto_4
    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v7, p2, 0xc

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    .line 26
    aput-byte v7, v2, v0

    add-int/lit8 v0, v4, 0x1

    shr-int/lit8 v7, p2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v6

    int-to-byte v7, v7

    .line 27
    aput-byte v7, v2, v4

    add-int/lit8 v4, v0, 0x1

    and-int/lit8 p2, p2, 0x3f

    or-int/2addr p2, v6

    int-to-byte p2, p2

    .line 28
    aput-byte p2, v2, v0

    move v0, v4

    :goto_5
    move p2, v5

    goto/16 :goto_0

    .line 29
    :cond_f
    :goto_6
    iput v0, p0, Lnet/sf/saxon/serialize/UTF8Writer;->h:I

    return-void
.end method

.method public writeAscii([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/sf/saxon/serialize/UTF8Writer;->writeAscii([BII)V

    return-void
.end method

.method public writeAscii([BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget v0, p0, Lnet/sf/saxon/serialize/UTF8Writer;->h:I

    .line 3
    iget-object v1, p0, Lnet/sf/saxon/serialize/UTF8Writer;->f:[B

    .line 4
    iget v2, p0, Lnet/sf/saxon/serialize/UTF8Writer;->g:I

    :goto_0
    if-lez p3, :cond_1

    if-lt v0, v2, :cond_0

    .line 5
    iget-object v3, p0, Lnet/sf/saxon/serialize/UTF8Writer;->e:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    move v0, v4

    :cond_0
    sub-int v3, v2, v0

    .line 6
    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 7
    invoke-static {p1, p2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v3

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    goto :goto_0

    .line 8
    :cond_1
    iput v0, p0, Lnet/sf/saxon/serialize/UTF8Writer;->h:I

    return-void
.end method

.method public writeCodePoint(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/UTF8Writer;->write(I)V

    return-void
.end method

.method public writeLatin1([BII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/serialize/UTF8Writer;->h:I

    iget-object v1, p0, Lnet/sf/saxon/serialize/UTF8Writer;->f:[B

    iget v2, p0, Lnet/sf/saxon/serialize/UTF8Writer;->g:I

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_5

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    iget-object v4, p0, Lnet/sf/saxon/serialize/UTF8Writer;->e:Ljava/io/OutputStream;

    invoke-virtual {v4, v1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    move v0, v3

    :cond_0
    add-int/lit8 v4, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    const/16 v5, 0x80

    if-ge p2, v5, :cond_4

    add-int/lit8 v6, v0, 0x1

    int-to-byte v7, p2

    aput-byte v7, v1, v0

    sub-int v0, p3, v4

    sub-int v7, v2, v6

    if-le v0, v7, :cond_1

    move v0, v7

    :cond_1
    add-int v7, v0, v4

    move v0, v6

    :goto_1
    if-lt v4, v7, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 p2, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    if-lt v4, v5, :cond_3

    move v9, v4

    move v4, p2

    move p2, v9

    :goto_2
    if-eqz v3, :cond_4

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v0, 0x1

    int-to-byte v8, v4

    aput-byte v8, v1, v0

    move v0, v6

    move v9, v4

    move v4, p2

    move p2, v9

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v6, p2, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v1, v0

    add-int/lit8 v0, v3, 0x1

    and-int/lit8 p2, p2, 0x3f

    or-int/2addr p2, v5

    int-to-byte p2, p2

    aput-byte p2, v1, v3

    :goto_3
    move p2, v4

    goto :goto_0

    :cond_5
    iput v0, p0, Lnet/sf/saxon/serialize/UTF8Writer;->h:I

    return-void
.end method

.method public writeRepeatedAscii(BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/serialize/UTF8Writer;->h:I

    iget-object v1, p0, Lnet/sf/saxon/serialize/UTF8Writer;->f:[B

    iget v2, p0, Lnet/sf/saxon/serialize/UTF8Writer;->g:I

    :goto_0
    if-lez p2, :cond_1

    if-lt v0, v2, :cond_0

    iget-object v3, p0, Lnet/sf/saxon/serialize/UTF8Writer;->e:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    move v0, v4

    :cond_0
    sub-int v3, v2, v0

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v4, v0, v3

    invoke-static {v1, v0, v4, p1}, Ljava/util/Arrays;->fill([BIIB)V

    sub-int/2addr p2, v3

    move v0, v4

    goto :goto_0

    :cond_1
    iput v0, p0, Lnet/sf/saxon/serialize/UTF8Writer;->h:I

    return-void
.end method
