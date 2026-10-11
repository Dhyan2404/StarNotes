.class public Lcom/evernote/client/conn/mobile/DiskBackedByteStore;
.super Lcom/evernote/client/conn/mobile/ByteStore;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/client/conn/mobile/DiskBackedByteStore$Factory;
    }
.end annotation


# static fields
.field public static final e:I = 0x200000


# instance fields
.field protected final mByteArrayOutputStream:Lcom/sunia/HTREnginev2/rwi;

.field protected mBytesWritten:I

.field protected final mCacheDir:Ljava/io/File;

.field protected mCacheFile:Ljava/io/File;

.field protected mClosed:Z

.field protected mCurrentOutputStream:Ljava/io/OutputStream;

.field protected mData:[B

.field protected mFileBuffer:[B

.field protected mFileOutputStream:Ljava/io/FileOutputStream;

.field protected final mMaxMemory:I


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 0

    invoke-direct {p0}, Lcom/evernote/client/conn/mobile/ByteStore;-><init>()V

    iput-object p1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mCacheDir:Ljava/io/File;

    iput p2, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mMaxMemory:I

    new-instance p1, Lcom/sunia/HTREnginev2/rwi;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/rwi;-><init>()V

    iput-object p1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mByteArrayOutputStream:Lcom/sunia/HTREnginev2/rwi;

    iput-object p1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mCurrentOutputStream:Ljava/io/OutputStream;

    return-void
.end method

.method public static w(Ljava/io/File;[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p0, 0x0

    move v0, p2

    move p2, p0

    :goto_0
    if-lez v0, :cond_0

    if-ltz p0, :cond_0

    :try_start_1
    invoke-virtual {v1, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr p2, p0

    sub-int/2addr v0, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception p0

    :goto_1
    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method


# virtual methods
.method public final H(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->j(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->swapToDisk()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mByteArrayOutputStream:Lcom/sunia/HTREnginev2/rwi;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mClosed:Z

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

    iget-boolean v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mClosed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mCurrentOutputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->swapped()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mFileOutputStream:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mCurrentOutputStream:Ljava/io/OutputStream;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mByteArrayOutputStream:Lcom/sunia/HTREnginev2/rwi;

    iput-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mCurrentOutputStream:Ljava/io/OutputStream;

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Already closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBytesWritten()I
    .locals 0

    iget p0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mBytesWritten:I

    return p0
.end method

.method public getData()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mData:[B

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->close()V

    invoke-virtual {p0}, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->swapped()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mFileBuffer:[B

    if-eqz v0, :cond_1

    array-length v0, v0

    iget v1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mBytesWritten:I

    if-ge v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mBytesWritten:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mFileBuffer:[B

    :cond_2
    iget-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mCacheFile:Ljava/io/File;

    iget-object v1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mFileBuffer:[B

    iget v2, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mBytesWritten:I

    invoke-static {v0, v1, v2}, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->w(Ljava/io/File;[BI)V

    iget-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mFileBuffer:[B

    iput-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mData:[B

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mByteArrayOutputStream:Lcom/sunia/HTREnginev2/rwi;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/rwi;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mData:[B

    :goto_0
    iget-object p0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mData:[B

    return-object p0
.end method

.method public final j(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->swapped()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mBytesWritten:I

    add-int/2addr v0, p1

    iget p0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mMaxMemory:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->close()V

    iget-object v2, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mCacheFile:Ljava/io/File;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mCacheFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "could not delete cache file"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mFileOutputStream:Ljava/io/FileOutputStream;

    iput-object v1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mCurrentOutputStream:Ljava/io/OutputStream;

    iput v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mBytesWritten:I

    iput-boolean v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mClosed:Z

    iput-object v1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mData:[B

    return-void

    :catchall_0
    move-exception v2

    iput-object v1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mFileOutputStream:Ljava/io/FileOutputStream;

    iput-object v1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mCurrentOutputStream:Ljava/io/OutputStream;

    iput v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mBytesWritten:I

    iput-boolean v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mClosed:Z

    iput-object v1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mData:[B

    throw v2
.end method

.method public swapToDisk()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "could not create cache dir"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mCacheDir:Ljava/io/File;

    const-string v2, "byte_store"

    invoke-static {v2, v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mCacheFile:Ljava/io/File;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mCacheFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mFileOutputStream:Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mByteArrayOutputStream:Lcom/sunia/HTREnginev2/rwi;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mByteArrayOutputStream:Lcom/sunia/HTREnginev2/rwi;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mFileOutputStream:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mCurrentOutputStream:Ljava/io/OutputStream;

    return-void

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "cache dir is no directory"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public swapped()Z
    .locals 1

    iget v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mBytesWritten:I

    iget p0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mMaxMemory:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->f()V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->H(I)V

    .line 7
    iget-object v1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mCurrentOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    .line 8
    iget p1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mBytesWritten:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mBytesWritten:I

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
    invoke-virtual {p0}, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->f()V

    .line 2
    invoke-virtual {p0, p3}, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->H(I)V

    .line 3
    iget-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mCurrentOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 4
    iget p1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mBytesWritten:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->mBytesWritten:I

    return-void
.end method
