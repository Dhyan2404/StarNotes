.class public final Lcom/twelvemonkeys/io/MemoryCacheSeekableStream;
.super Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    new-instance v0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;

    invoke-direct {v0}, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;-><init>(Ljava/io/InputStream;Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic available()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->available()I

    move-result p0

    return p0
.end method

.method public final isCachedFile()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isCachedMemory()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic read()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->read()I

    move-result p0

    return p0
.end method

.method public bridge synthetic read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->read([BII)I

    move-result p0

    return p0
.end method
