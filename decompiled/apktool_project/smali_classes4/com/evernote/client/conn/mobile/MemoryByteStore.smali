.class public Lcom/evernote/client/conn/mobile/MemoryByteStore;
.super Lcom/evernote/client/conn/mobile/ByteStore;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/client/conn/mobile/MemoryByteStore$Factory;
    }
.end annotation


# instance fields
.field protected final mByteArrayOutputStream:Lcom/sunia/HTREnginev2/rwi;

.field protected mBytesWritten:I

.field protected mClosed:Z

.field protected mData:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/evernote/client/conn/mobile/ByteStore;-><init>()V

    new-instance v0, Lcom/sunia/HTREnginev2/rwi;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/rwi;-><init>()V

    iput-object v0, p0, Lcom/evernote/client/conn/mobile/MemoryByteStore;->mByteArrayOutputStream:Lcom/sunia/HTREnginev2/rwi;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/evernote/client/conn/mobile/MemoryByteStore;->mClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/evernote/client/conn/mobile/MemoryByteStore;->mByteArrayOutputStream:Lcom/sunia/HTREnginev2/rwi;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/evernote/client/conn/mobile/MemoryByteStore;->mClosed:Z

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean p0, p0, Lcom/evernote/client/conn/mobile/MemoryByteStore;->mClosed:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Already closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBytesWritten()I
    .locals 0

    iget p0, p0, Lcom/evernote/client/conn/mobile/MemoryByteStore;->mBytesWritten:I

    return p0
.end method

.method public getData()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/conn/mobile/MemoryByteStore;->mData:[B

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/evernote/client/conn/mobile/MemoryByteStore;->close()V

    iget-object v0, p0, Lcom/evernote/client/conn/mobile/MemoryByteStore;->mByteArrayOutputStream:Lcom/sunia/HTREnginev2/rwi;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/rwi;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/client/conn/mobile/MemoryByteStore;->mData:[B

    return-object v0
.end method

.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/evernote/client/conn/mobile/MemoryByteStore;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lcom/evernote/client/conn/mobile/MemoryByteStore;->mData:[B

    iput v1, p0, Lcom/evernote/client/conn/mobile/MemoryByteStore;->mBytesWritten:I

    iput-boolean v1, p0, Lcom/evernote/client/conn/mobile/MemoryByteStore;->mClosed:Z

    return-void

    :catchall_0
    move-exception v2

    iput-object v0, p0, Lcom/evernote/client/conn/mobile/MemoryByteStore;->mData:[B

    iput v1, p0, Lcom/evernote/client/conn/mobile/MemoryByteStore;->mBytesWritten:I

    iput-boolean v1, p0, Lcom/evernote/client/conn/mobile/MemoryByteStore;->mClosed:Z

    throw v2
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/evernote/client/conn/mobile/MemoryByteStore;->f()V

    .line 5
    iget-object v0, p0, Lcom/evernote/client/conn/mobile/MemoryByteStore;->mByteArrayOutputStream:Lcom/sunia/HTREnginev2/rwi;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 6
    iget p1, p0, Lcom/evernote/client/conn/mobile/MemoryByteStore;->mBytesWritten:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/evernote/client/conn/mobile/MemoryByteStore;->mBytesWritten:I

    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/evernote/client/conn/mobile/MemoryByteStore;->f()V

    .line 2
    iget-object v0, p0, Lcom/evernote/client/conn/mobile/MemoryByteStore;->mByteArrayOutputStream:Lcom/sunia/HTREnginev2/rwi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 3
    iget p1, p0, Lcom/evernote/client/conn/mobile/MemoryByteStore;->mBytesWritten:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/evernote/client/conn/mobile/MemoryByteStore;->mBytesWritten:I

    return-void
.end method
