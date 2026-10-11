.class public Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/io/ole2/CompoundDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final e:Lcom/sunia/HTREnginev2/hyl;

.field public final f:Lcom/twelvemonkeys/io/ole2/CompoundDocument;

.field public final g:J

.field public h:J

.field public i:I

.field public j:[B

.field public k:I


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/hyl;IILcom/twelvemonkeys/io/ole2/CompoundDocument;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->e:Lcom/sunia/HTREnginev2/hyl;

    int-to-long p1, p2

    iput-wide p1, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->g:J

    new-array p1, p3, [B

    iput-object p1, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->j:[B

    array-length p1, p1

    iput p1, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->k:I

    iput-object p4, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->f:Lcom/twelvemonkeys/io/ole2/CompoundDocument;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->j:[B

    array-length v0, v0

    iget v1, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->k:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->g:J

    iget-wide v4, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->h:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->j:[B

    return-void
.end method

.method public final f()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->h:J

    iget-wide v2, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->g:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->i:I

    iget-object v2, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->e:Lcom/sunia/HTREnginev2/hyl;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/hyl;->f()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->f:Lcom/twelvemonkeys/io/ole2/CompoundDocument;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->f:Lcom/twelvemonkeys/io/ole2/CompoundDocument;

    iget-object v3, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->e:Lcom/sunia/HTREnginev2/hyl;

    iget v4, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->i:I

    invoke-virtual {v3, v4}, Lcom/sunia/HTREnginev2/hyl;->c(I)I

    move-result v3

    iget-wide v4, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->g:J

    invoke-static {v2, v3, v4, v5}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->a(Lcom/twelvemonkeys/io/ole2/CompoundDocument;IJ)V

    iget-object v2, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->f:Lcom/twelvemonkeys/io/ole2/CompoundDocument;

    invoke-static {v2}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->b(Lcom/twelvemonkeys/io/ole2/CompoundDocument;)Ljava/io/DataInput;

    move-result-object v2

    iget-object v3, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->j:[B

    invoke-interface {v2, v3}, Ljava/io/DataInput;->readFully([B)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->i:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->i:I

    iput v1, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->k:I

    return v2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    return v1
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->available()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->h:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->h:J

    .line 4
    iget-object v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->j:[B

    iget v1, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->k:I

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->available()I

    move-result v0

    if-gtz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->available()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 8
    iget-object v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->j:[B

    iget v1, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->k:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget p1, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->k:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->k:I

    .line 10
    iget-wide p1, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->h:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;->h:J

    return p3
.end method
