.class public Lcom/twelvemonkeys/io/ole2/CompoundDocument$a;
.super Lcom/twelvemonkeys/io/LittleEndianDataInputStream;
.source "SourceFile"

# interfaces
.implements Lcom/twelvemonkeys/io/Seekable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/io/ole2/CompoundDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final e:Lcom/twelvemonkeys/io/SeekableInputStream;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/io/SeekableInputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twelvemonkeys/io/LittleEndianDataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$a;->e:Lcom/twelvemonkeys/io/SeekableInputStream;

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$a;->e:Lcom/twelvemonkeys/io/SeekableInputStream;

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/SeekableInputStream;->flush()V

    return-void
.end method

.method public flushBefore(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$a;->e:Lcom/twelvemonkeys/io/SeekableInputStream;

    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/io/SeekableInputStream;->flushBefore(J)V

    return-void
.end method

.method public getFlushedPosition()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$a;->e:Lcom/twelvemonkeys/io/SeekableInputStream;

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/SeekableInputStream;->getFlushedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStreamPosition()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$a;->e:Lcom/twelvemonkeys/io/SeekableInputStream;

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/SeekableInputStream;->getStreamPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public isCached()Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$a;->e:Lcom/twelvemonkeys/io/SeekableInputStream;

    invoke-interface {p0}, Lcom/twelvemonkeys/io/Seekable;->isCached()Z

    move-result p0

    return p0
.end method

.method public isCachedFile()Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$a;->e:Lcom/twelvemonkeys/io/SeekableInputStream;

    invoke-interface {p0}, Lcom/twelvemonkeys/io/Seekable;->isCachedFile()Z

    move-result p0

    return p0
.end method

.method public isCachedMemory()Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$a;->e:Lcom/twelvemonkeys/io/SeekableInputStream;

    invoke-interface {p0}, Lcom/twelvemonkeys/io/Seekable;->isCachedMemory()Z

    move-result p0

    return p0
.end method

.method public mark()V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$a;->e:Lcom/twelvemonkeys/io/SeekableInputStream;

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/SeekableInputStream;->mark()V

    return-void
.end method

.method public reset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$a;->e:Lcom/twelvemonkeys/io/SeekableInputStream;

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/SeekableInputStream;->reset()V

    return-void
.end method

.method public seek(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$a;->e:Lcom/twelvemonkeys/io/SeekableInputStream;

    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/io/SeekableInputStream;->seek(J)V

    return-void
.end method
