.class public Lcom/sunia/HTREnginev2/nnj$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/nnj$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/nnj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final c:[B
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Ljava/io/InputStream;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public f:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/nnj$b;->f:J

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nnj$b;->e:Ljava/io/InputStream;

    const/4 p1, 0x4

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nnj$b;->c:[B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nnj$b;->d:Ljava/nio/ByteBuffer;

    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/nnj$b;->d:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/nnj$b;->b(I)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nnj$b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    return p0
.end method

.method public final b(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x4L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/nnj$b;->e:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/nnj$b;->c:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/nnj$b;->f:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/nnj$b;->f:J

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "read failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/nnj$b;->f:J

    return-wide v0
.end method

.method public readUnsignedInt()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/nnj$b;->d:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/nnj$b;->b(I)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nnj$b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/nnj;->e(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/nnj$b;->d:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/nnj$b;->b(I)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nnj$b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/nnj;->f(S)I

    move-result p0

    return p0
.end method

.method public skip(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/nnj$b;->e:Ljava/io/InputStream;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    sub-int/2addr p1, v0

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/nnj$b;->f:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/sunia/HTREnginev2/nnj$b;->f:J

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Skip didn\'t move at least 1 byte forward"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method
