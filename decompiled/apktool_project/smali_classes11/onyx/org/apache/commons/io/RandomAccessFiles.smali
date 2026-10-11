.class public Lonyx/org/apache/commons/io/RandomAccessFiles;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/RandomAccessFile;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static contentEquals(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lonyx/org/apache/commons/io/RandomAccessFiles;->a(Ljava/io/RandomAccessFile;)J

    move-result-wide v2

    invoke-static {p1}, Lonyx/org/apache/commons/io/RandomAccessFiles;->a(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-nez v0, :cond_2

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    const/16 v0, 0x2000

    invoke-static {p0, p1, v0}, Lonyx/org/apache/commons/io/channels/FileChannels;->contentEquals(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;I)Z

    move-result p0

    return p0
.end method

.method public static read(Ljava/io/RandomAccessFile;JI)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance p1, Lcom/sunia/HTREnginev2/jcl;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/jcl;-><init>(Ljava/io/RandomAccessFile;)V

    invoke-static {p1, p3}, Lonyx/org/apache/commons/io/IOUtils;->v(Lonyx/org/apache/commons/io/function/IOTriFunction;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static reset(Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    return-object p0
.end method
