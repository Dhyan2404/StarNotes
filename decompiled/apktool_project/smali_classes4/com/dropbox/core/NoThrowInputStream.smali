.class public final Lcom/dropbox/core/NoThrowInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/NoThrowInputStream$HiddenException;
    }
.end annotation


# instance fields
.field public final e:Ljava/io/InputStream;

.field public f:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dropbox/core/NoThrowInputStream;->f:J

    iput-object p1, p0, Lcom/dropbox/core/NoThrowInputStream;->e:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "don\'t call close()"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBytesRead()J
    .locals 2

    iget-wide v0, p0, Lcom/dropbox/core/NoThrowInputStream;->f:J

    return-wide v0
.end method

.method public read()I
    .locals 4

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/dropbox/core/NoThrowInputStream;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dropbox/core/NoThrowInputStream;->f:J

    .line 2
    iget-object p0, p0, Lcom/dropbox/core/NoThrowInputStream;->e:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Lcom/dropbox/core/NoThrowInputStream$HiddenException;

    invoke-direct {v0, p0}, Lcom/dropbox/core/NoThrowInputStream$HiddenException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public read([B)I
    .locals 4

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/NoThrowInputStream;->e:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    .line 8
    iget-wide v0, p0, Lcom/dropbox/core/NoThrowInputStream;->f:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dropbox/core/NoThrowInputStream;->f:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Lcom/dropbox/core/NoThrowInputStream$HiddenException;

    invoke-direct {p1, p0}, Lcom/dropbox/core/NoThrowInputStream$HiddenException;-><init>(Ljava/io/IOException;)V

    throw p1
.end method

.method public read([BII)I
    .locals 2

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/NoThrowInputStream;->e:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 5
    iget-wide p2, p0, Lcom/dropbox/core/NoThrowInputStream;->f:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/dropbox/core/NoThrowInputStream;->f:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Lcom/dropbox/core/NoThrowInputStream$HiddenException;

    invoke-direct {p1, p0}, Lcom/dropbox/core/NoThrowInputStream$HiddenException;-><init>(Ljava/io/IOException;)V

    throw p1
.end method
