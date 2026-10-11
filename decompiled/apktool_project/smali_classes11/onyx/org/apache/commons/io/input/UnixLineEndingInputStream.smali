.class public Lonyx/org/apache/commons/io/input/UnixLineEndingInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public e:Z

.field public f:Z

.field public g:Z

.field public final h:Ljava/io/InputStream;

.field public final i:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/UnixLineEndingInputStream;->h:Ljava/io/InputStream;

    iput-boolean p2, p0, Lonyx/org/apache/commons/io/input/UnixLineEndingInputStream;->i:Z

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

    invoke-super {p0}, Ljava/io/InputStream;->close()V

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/UnixLineEndingInputStream;->h:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final f(Z)I
    .locals 1

    const/4 v0, -0x1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lonyx/org/apache/commons/io/input/UnixLineEndingInputStream;->i:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lonyx/org/apache/commons/io/input/UnixLineEndingInputStream;->g:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lonyx/org/apache/commons/io/input/UnixLineEndingInputStream;->g:Z

    const/16 p0, 0xa

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public final j()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/UnixLineEndingInputStream;->h:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lonyx/org/apache/commons/io/input/UnixLineEndingInputStream;->e:Z

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lonyx/org/apache/commons/io/input/UnixLineEndingInputStream;->f:Z

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lonyx/org/apache/commons/io/input/UnixLineEndingInputStream;->g:Z

    return v0
.end method

.method public declared-synchronized mark(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/sunia/HTREnginev2/xwn;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lonyx/org/apache/commons/io/input/UnixLineEndingInputStream;->f:Z

    iget-boolean v1, p0, Lonyx/org/apache/commons/io/input/UnixLineEndingInputStream;->e:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/input/UnixLineEndingInputStream;->f(Z)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/UnixLineEndingInputStream;->j()I

    move-result v1

    iget-boolean v2, p0, Lonyx/org/apache/commons/io/input/UnixLineEndingInputStream;->e:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/input/UnixLineEndingInputStream;->f(Z)I

    move-result p0

    return p0

    :cond_1
    iget-boolean v2, p0, Lonyx/org/apache/commons/io/input/UnixLineEndingInputStream;->f:Z

    if-eqz v2, :cond_2

    const/16 p0, 0xa

    return p0

    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lonyx/org/apache/commons/io/input/UnixLineEndingInputStream;->g:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/UnixLineEndingInputStream;->read()I

    move-result p0

    return p0

    :cond_3
    return v1
.end method
