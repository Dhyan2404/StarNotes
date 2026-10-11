.class public final Lonyx/org/apache/commons/io/channels/FileChannels;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/nio/channels/FileChannel;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static contentEquals(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;I)Z
    .locals 9
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
    invoke-static {p0}, Lonyx/org/apache/commons/io/channels/FileChannels;->a(Ljava/nio/channels/FileChannel;)J

    move-result-wide v2

    invoke-static {p1}, Lonyx/org/apache/commons/io/channels/FileChannels;->a(Ljava/nio/channels/FileChannel;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    return v6

    :cond_1
    const-wide/16 v7, 0x0

    cmp-long v0, v2, v7

    if-nez v0, :cond_2

    cmp-long v0, v4, v7

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    :cond_3
    invoke-virtual {p0, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    if-ne v2, v3, :cond_4

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    if-eq v1, v2, :cond_5

    return v6

    :cond_5
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v6
.end method
