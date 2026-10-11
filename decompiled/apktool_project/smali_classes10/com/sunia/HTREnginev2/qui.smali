.class public abstract Lcom/sunia/HTREnginev2/qui;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twelvemonkeys/io/enc/Decoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/qui$c;,
        Lcom/sunia/HTREnginev2/qui$a;,
        Lcom/sunia/HTREnginev2/qui$b;
    }
.end annotation


# static fields
.field public static final k:I = 0x100

.field public static final l:I = 0x101

.field public static final m:I = 0x9

.field public static final n:I = 0xc

.field public static final o:I = 0x1000


# instance fields
.field public final a:[Lcom/sunia/HTREnginev2/qui$c;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, Lcom/sunia/HTREnginev2/qui;->d:I

    new-array p1, p1, [Lcom/sunia/HTREnginev2/qui$c;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qui;->a:[Lcom/sunia/HTREnginev2/qui$c;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/qui;->a:[Lcom/sunia/HTREnginev2/qui$c;

    new-instance v2, Lcom/sunia/HTREnginev2/qui$c;

    int-to-byte v3, p1

    invoke-direct {v2, v3}, Lcom/sunia/HTREnginev2/qui$c;-><init>(B)V

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/qui;->e()V

    return-void
.end method

.method public static b(I)I
    .locals 1

    const/4 v0, 0x1

    shl-int p0, v0, p0

    sub-int/2addr p0, v0

    return p0
.end method

.method public static c(Z)Lcom/twelvemonkeys/io/enc/Decoder;
    .locals 0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/sunia/HTREnginev2/qui$a;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/qui$a;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/sunia/HTREnginev2/qui$b;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/qui$b;-><init>()V

    :goto_0
    return-object p0
.end method

.method public static g(Ljava/io/InputStream;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/sunia/HTREnginev2/qui$c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sunia/HTREnginev2/qui;->b:I

    iget-object v1, p0, Lcom/sunia/HTREnginev2/qui;->a:[Lcom/sunia/HTREnginev2/qui$c;

    array-length v2, v1

    const/16 v3, 0xc

    if-gt v0, v2, :cond_3

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sunia/HTREnginev2/qui;->b:I

    aput-object p1, v1, v0

    iget v0, p0, Lcom/sunia/HTREnginev2/qui;->e:I

    if-le v2, v0, :cond_1

    iget v0, p0, Lcom/sunia/HTREnginev2/qui;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sunia/HTREnginev2/qui;->c:I

    if-le v0, v3, :cond_0

    iput v3, p0, Lcom/sunia/HTREnginev2/qui;->c:I

    :cond_0
    iget v0, p0, Lcom/sunia/HTREnginev2/qui;->c:I

    invoke-static {v0}, Lcom/sunia/HTREnginev2/qui;->b(I)I

    move-result v0

    iput v0, p0, Lcom/sunia/HTREnginev2/qui;->f:I

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/qui;->h()I

    move-result v0

    iput v0, p0, Lcom/sunia/HTREnginev2/qui;->e:I

    :cond_1
    iget p1, p1, Lcom/sunia/HTREnginev2/qui$c;->f:I

    iget v0, p0, Lcom/sunia/HTREnginev2/qui;->g:I

    if-le p1, v0, :cond_2

    iput p1, p0, Lcom/sunia/HTREnginev2/qui;->g:I

    :cond_2
    return-void

    :cond_3
    new-instance p0, Lcom/twelvemonkeys/io/enc/DecodeException;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "TIFF LZW with more than %d bits per code encountered (table overflow)"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/twelvemonkeys/io/enc/DecodeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract d(Ljava/io/InputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public decode(Ljava/io/InputStream;Ljava/nio/ByteBuffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_7

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/qui;->d(Ljava/io/InputStream;)I

    move-result v0

    const/16 v1, 0x101

    if-eq v0, v1, :cond_6

    const/16 v2, 0x100

    const-string v3, "Corrupted TIFF LZW: code %d (table size: %d)"

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/qui;->e()V

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/qui;->d(Ljava/io/InputStream;)I

    move-result v0

    if-ne v0, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sunia/HTREnginev2/qui;->a:[Lcom/sunia/HTREnginev2/qui$c;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, Lcom/sunia/HTREnginev2/qui$c;->c(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/twelvemonkeys/io/enc/DecodeException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget p0, p0, Lcom/sunia/HTREnginev2/qui;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/twelvemonkeys/io/enc/DecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object v1, p0, Lcom/sunia/HTREnginev2/qui;->a:[Lcom/sunia/HTREnginev2/qui$c;

    iget v2, p0, Lcom/sunia/HTREnginev2/qui;->d:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/qui;->f(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sunia/HTREnginev2/qui;->a:[Lcom/sunia/HTREnginev2/qui$c;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Lcom/sunia/HTREnginev2/qui$c;->c(Ljava/nio/ByteBuffer;)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/qui;->a:[Lcom/sunia/HTREnginev2/qui$c;

    iget v2, p0, Lcom/sunia/HTREnginev2/qui;->d:I

    aget-object v2, v1, v2

    aget-object v1, v1, v0

    iget-byte v1, v1, Lcom/sunia/HTREnginev2/qui$c;->h:B

    invoke-virtual {v2, v1}, Lcom/sunia/HTREnginev2/qui$c;->b(B)Lcom/sunia/HTREnginev2/qui$c;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/qui;->a(Lcom/sunia/HTREnginev2/qui$c;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sunia/HTREnginev2/qui;->a:[Lcom/sunia/HTREnginev2/qui$c;

    iget v2, p0, Lcom/sunia/HTREnginev2/qui;->d:I

    aget-object v1, v1, v2

    iget-byte v2, v1, Lcom/sunia/HTREnginev2/qui$c;->h:B

    invoke-virtual {v1, v2}, Lcom/sunia/HTREnginev2/qui$c;->b(B)Lcom/sunia/HTREnginev2/qui$c;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sunia/HTREnginev2/qui$c;->c(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/qui;->a(Lcom/sunia/HTREnginev2/qui$c;)V

    :goto_0
    iput v0, p0, Lcom/sunia/HTREnginev2/qui;->d:I

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/sunia/HTREnginev2/qui;->g:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_5
    new-instance p1, Lcom/twelvemonkeys/io/enc/DecodeException;

    iget p2, p0, Lcom/sunia/HTREnginev2/qui;->d:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget p0, p0, Lcom/sunia/HTREnginev2/qui;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/twelvemonkeys/io/enc/DecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result p0

    return p0

    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "buffer == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e()V
    .locals 1

    const/16 v0, 0x102

    iput v0, p0, Lcom/sunia/HTREnginev2/qui;->b:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/sunia/HTREnginev2/qui;->c:I

    invoke-static {v0}, Lcom/sunia/HTREnginev2/qui;->b(I)I

    move-result v0

    iput v0, p0, Lcom/sunia/HTREnginev2/qui;->f:I

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/qui;->h()I

    move-result v0

    iput v0, p0, Lcom/sunia/HTREnginev2/qui;->e:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sunia/HTREnginev2/qui;->g:I

    return-void
.end method

.method public final f(I)Z
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/qui;->b:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract h()I
.end method
