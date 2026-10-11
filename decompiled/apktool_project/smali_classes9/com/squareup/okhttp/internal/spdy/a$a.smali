.class public final Lcom/squareup/okhttp/internal/spdy/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lokio/BufferedSource;

.field public c:I

.field public d:I

.field public e:[Lcom/squareup/okhttp/internal/spdy/Header;

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(ILokio/Source;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->a:Ljava/util/List;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/squareup/okhttp/internal/spdy/Header;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->e:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->g:I

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->h:I

    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->c:I

    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->d:I

    invoke-static {p2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->b:Lokio/BufferedSource;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->d:I

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->h:I

    if-ge v0, v1, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/a$a;->b()V

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/internal/spdy/a$a;->d(I)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->e:[Lcom/squareup/okhttp/internal/spdy/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->e:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->g:I

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->h:I

    return-void
.end method

.method public final c(I)I
    .locals 0

    iget p0, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->f:I

    add-int/lit8 p0, p0, 0x1

    add-int/2addr p0, p1

    return p0
.end method

.method public final d(I)I
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_1

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->e:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->f:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->e:[Lcom/squareup/okhttp/internal/spdy/Header;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/squareup/okhttp/internal/spdy/Header;->a:I

    sub-int/2addr p1, v2

    iget v3, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->h:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->h:I

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->g:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->g:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->e:[Lcom/squareup/okhttp/internal/spdy/Header;

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget v3, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->g:I

    invoke-static {p1, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->f:I

    :cond_1
    return v0
.end method

.method public e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-object v0
.end method

.method public final f(I)Lokio/ByteString;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/spdy/a$a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/a;->a()[Lcom/squareup/okhttp/internal/spdy/Header;

    move-result-object p0

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/Header;->name:Lokio/ByteString;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->e:[Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/a;->a()[Lcom/squareup/okhttp/internal/spdy/Header;

    move-result-object v1

    array-length v1, v1

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/spdy/a$a;->c(I)I

    move-result p0

    aget-object p0, v0, p0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/Header;->name:Lokio/ByteString;

    return-object p0
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->c:I

    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->d:I

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/a$a;->a()V

    return-void
.end method

.method public final h(ILcom/squareup/okhttp/internal/spdy/Header;)V
    .locals 5

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p2, Lcom/squareup/okhttp/internal/spdy/Header;->a:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->e:[Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/spdy/a$a;->c(I)I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Lcom/squareup/okhttp/internal/spdy/Header;->a:I

    sub-int/2addr v0, v2

    :cond_0
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->d:I

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/a$a;->b()V

    return-void

    :cond_1
    iget v3, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->h:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/squareup/okhttp/internal/spdy/a$a;->d(I)I

    move-result v2

    if-ne p1, v1, :cond_3

    iget p1, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->g:I

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->e:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v2, v1

    if-le p1, v2, :cond_2

    array-length p1, v1

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v2, v1

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->e:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->f:I

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->e:[Lcom/squareup/okhttp/internal/spdy/Header;

    :cond_2
    iget p1, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->f:I

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->f:I

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->e:[Lcom/squareup/okhttp/internal/spdy/Header;

    aput-object p2, v1, p1

    iget p1, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->g:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/spdy/a$a;->c(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->e:[Lcom/squareup/okhttp/internal/spdy/Header;

    aput-object p2, v1, p1

    :goto_0
    iget p1, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->h:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->h:I

    return-void
.end method

.method public final i(I)Z
    .locals 1

    if-ltz p1, :cond_0

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/a;->a()[Lcom/squareup/okhttp/internal/spdy/Header;

    move-result-object p0

    array-length p0, p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    if-gt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()I
    .locals 0

    iget p0, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->d:I

    return p0
.end method

.method public final k()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->b:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public l()Lokio/ByteString;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/a$a;->k()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x7f

    invoke-virtual {p0, v0, v2}, Lcom/squareup/okhttp/internal/spdy/a$a;->o(II)I

    move-result v0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sunia/HTREnginev2/m0i;->f()Lcom/sunia/HTREnginev2/m0i;

    move-result-object v1

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->b:Lokio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {p0, v2, v3}, Lokio/BufferedSource;->readByteArray(J)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sunia/HTREnginev2/m0i;->c([B)[B

    move-result-object p0

    invoke-static {p0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->b:Lokio/BufferedSource;

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public m()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x80

    if-eq v0, v1, :cond_7

    and-int/lit16 v2, v0, 0x80

    if-ne v2, v1, :cond_0

    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/internal/spdy/a$a;->o(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/spdy/a$a;->n(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/a$a;->q()V

    goto :goto_0

    :cond_1
    and-int/lit8 v2, v0, 0x40

    if-ne v2, v1, :cond_2

    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/internal/spdy/a$a;->o(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/spdy/a$a;->p(I)V

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4

    const/16 v1, 0x1f

    invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/internal/spdy/a$a;->o(II)I

    move-result v0

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->d:I

    if-ltz v0, :cond_3

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->c:I

    if-gt v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/a$a;->a()V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dynamic table size update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->d:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/16 v1, 0x10

    if-eq v0, v1, :cond_6

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/internal/spdy/a$a;->o(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/spdy/a$a;->r(I)V

    goto :goto_0

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/a$a;->s()V

    goto/16 :goto_0

    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string v0, "index == 0"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    return-void
.end method

.method public final n(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/spdy/a$a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/a;->a()[Lcom/squareup/okhttp/internal/spdy/Header;

    move-result-object v0

    aget-object p1, v0, p1

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/a;->a()[Lcom/squareup/okhttp/internal/spdy/Header;

    move-result-object v0

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/spdy/a$a;->c(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->e:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_1

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->a:Ljava/util/List;

    aget-object p1, v1, v0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Header index too large "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public o(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/2addr p1, p2

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/a$a;->k()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, 0x7f

    shl-int/2addr v0, p1

    add-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    shl-int p0, v0, p1

    add-int/2addr p2, p0

    return p2
.end method

.method public final p(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/spdy/a$a;->f(I)Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/a$a;->l()Lokio/ByteString;

    move-result-object v0

    new-instance v1, Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {v1, p1, v0}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v1}, Lcom/squareup/okhttp/internal/spdy/a$a;->h(ILcom/squareup/okhttp/internal/spdy/Header;)V

    return-void
.end method

.method public final q()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/a$a;->l()Lokio/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/a;->b(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/a$a;->l()Lokio/ByteString;

    move-result-object v1

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {v2, v0, v1}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/squareup/okhttp/internal/spdy/a$a;->h(ILcom/squareup/okhttp/internal/spdy/Header;)V

    return-void
.end method

.method public final r(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/spdy/a$a;->f(I)Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/a$a;->l()Lokio/ByteString;

    move-result-object v0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->a:Ljava/util/List;

    new-instance v1, Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {v1, p1, v0}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final s()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/a$a;->l()Lokio/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/a;->b(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/a$a;->l()Lokio/ByteString;

    move-result-object v1

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/a$a;->a:Ljava/util/List;

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {v2, v0, v1}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
