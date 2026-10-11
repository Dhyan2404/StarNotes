.class public abstract Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;
.super Lonyx/org/apache/commons/io/build/AbstractSupplier;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Lonyx/org/apache/commons/io/build/AbstractOriginSupplier<",
        "TT;TB;>;>",
        "Lonyx/org/apache/commons/io/build/AbstractSupplier<",
        "TT;TB;>;"
    }
.end annotation


# instance fields
.field public a:Lonyx/org/apache/commons/io/build/AbstractOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lonyx/org/apache/commons/io/build/AbstractOrigin<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/build/AbstractSupplier;-><init>()V

    return-void
.end method

.method public static newByteArrayOrigin([B)Lonyx/org/apache/commons/io/build/AbstractOrigin$ByteArrayOrigin;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/build/AbstractOrigin$ByteArrayOrigin;

    invoke-direct {v0, p0}, Lonyx/org/apache/commons/io/build/AbstractOrigin$ByteArrayOrigin;-><init>([B)V

    return-object v0
.end method

.method public static newCharSequenceOrigin(Ljava/lang/CharSequence;)Lonyx/org/apache/commons/io/build/AbstractOrigin$CharSequenceOrigin;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/build/AbstractOrigin$CharSequenceOrigin;

    invoke-direct {v0, p0}, Lonyx/org/apache/commons/io/build/AbstractOrigin$CharSequenceOrigin;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static newFileOrigin(Ljava/io/File;)Lonyx/org/apache/commons/io/build/AbstractOrigin$FileOrigin;
    .locals 1

    .line 1
    new-instance v0, Lonyx/org/apache/commons/io/build/AbstractOrigin$FileOrigin;

    invoke-direct {v0, p0}, Lonyx/org/apache/commons/io/build/AbstractOrigin$FileOrigin;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static newFileOrigin(Ljava/lang/String;)Lonyx/org/apache/commons/io/build/AbstractOrigin$FileOrigin;
    .locals 2

    .line 2
    new-instance v0, Lonyx/org/apache/commons/io/build/AbstractOrigin$FileOrigin;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lonyx/org/apache/commons/io/build/AbstractOrigin$FileOrigin;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static newInputStreamOrigin(Ljava/io/InputStream;)Lonyx/org/apache/commons/io/build/AbstractOrigin$InputStreamOrigin;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/build/AbstractOrigin$InputStreamOrigin;

    invoke-direct {v0, p0}, Lonyx/org/apache/commons/io/build/AbstractOrigin$InputStreamOrigin;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static newOutputStreamOrigin(Ljava/io/OutputStream;)Lonyx/org/apache/commons/io/build/AbstractOrigin$OutputStreamOrigin;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/build/AbstractOrigin$OutputStreamOrigin;

    invoke-direct {v0, p0}, Lonyx/org/apache/commons/io/build/AbstractOrigin$OutputStreamOrigin;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static newPathOrigin(Ljava/lang/String;)Lonyx/org/apache/commons/io/build/AbstractOrigin$PathOrigin;
    .locals 2

    .line 2
    new-instance v0, Lonyx/org/apache/commons/io/build/AbstractOrigin$PathOrigin;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-direct {v0, p0}, Lonyx/org/apache/commons/io/build/AbstractOrigin$PathOrigin;-><init>(Ljava/nio/file/Path;)V

    return-object v0
.end method

.method public static newPathOrigin(Ljava/nio/file/Path;)Lonyx/org/apache/commons/io/build/AbstractOrigin$PathOrigin;
    .locals 1

    .line 1
    new-instance v0, Lonyx/org/apache/commons/io/build/AbstractOrigin$PathOrigin;

    invoke-direct {v0, p0}, Lonyx/org/apache/commons/io/build/AbstractOrigin$PathOrigin;-><init>(Ljava/nio/file/Path;)V

    return-object v0
.end method

.method public static newReaderOrigin(Ljava/io/Reader;)Lonyx/org/apache/commons/io/build/AbstractOrigin$ReaderOrigin;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/build/AbstractOrigin$ReaderOrigin;

    invoke-direct {v0, p0}, Lonyx/org/apache/commons/io/build/AbstractOrigin$ReaderOrigin;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public static newURIOrigin(Ljava/net/URI;)Lonyx/org/apache/commons/io/build/AbstractOrigin$URIOrigin;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/build/AbstractOrigin$URIOrigin;

    invoke-direct {v0, p0}, Lonyx/org/apache/commons/io/build/AbstractOrigin$URIOrigin;-><init>(Ljava/net/URI;)V

    return-object v0
.end method

.method public static newWriterOrigin(Ljava/io/Writer;)Lonyx/org/apache/commons/io/build/AbstractOrigin$WriterOrigin;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/build/AbstractOrigin$WriterOrigin;

    invoke-direct {v0, p0}, Lonyx/org/apache/commons/io/build/AbstractOrigin$WriterOrigin;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method


# virtual methods
.method public checkOrigin()Lonyx/org/apache/commons/io/build/AbstractOrigin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lonyx/org/apache/commons/io/build/AbstractOrigin<",
            "**>;"
        }
    .end annotation

    iget-object p0, p0, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->a:Lonyx/org/apache/commons/io/build/AbstractOrigin;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "origin == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getOrigin()Lonyx/org/apache/commons/io/build/AbstractOrigin;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lonyx/org/apache/commons/io/build/AbstractOrigin<",
            "**>;"
        }
    .end annotation

    iget-object p0, p0, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->a:Lonyx/org/apache/commons/io/build/AbstractOrigin;

    return-object p0
.end method

.method public hasOrigin()Z
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->a:Lonyx/org/apache/commons/io/build/AbstractOrigin;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setByteArray([B)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TB;"
        }
    .end annotation

    invoke-static {p1}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->newByteArrayOrigin([B)Lonyx/org/apache/commons/io/build/AbstractOrigin$ByteArrayOrigin;

    move-result-object p1

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->setOrigin(Lonyx/org/apache/commons/io/build/AbstractOrigin;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p0

    return-object p0
.end method

.method public setCharSequence(Ljava/lang/CharSequence;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TB;"
        }
    .end annotation

    invoke-static {p1}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->newCharSequenceOrigin(Ljava/lang/CharSequence;)Lonyx/org/apache/commons/io/build/AbstractOrigin$CharSequenceOrigin;

    move-result-object p1

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->setOrigin(Lonyx/org/apache/commons/io/build/AbstractOrigin;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p0

    return-object p0
.end method

.method public setFile(Ljava/io/File;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TB;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->newFileOrigin(Ljava/io/File;)Lonyx/org/apache/commons/io/build/AbstractOrigin$FileOrigin;

    move-result-object p1

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->setOrigin(Lonyx/org/apache/commons/io/build/AbstractOrigin;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p0

    return-object p0
.end method

.method public setFile(Ljava/lang/String;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->newFileOrigin(Ljava/lang/String;)Lonyx/org/apache/commons/io/build/AbstractOrigin$FileOrigin;

    move-result-object p1

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->setOrigin(Lonyx/org/apache/commons/io/build/AbstractOrigin;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p0

    return-object p0
.end method

.method public setInputStream(Ljava/io/InputStream;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TB;"
        }
    .end annotation

    invoke-static {p1}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->newInputStreamOrigin(Ljava/io/InputStream;)Lonyx/org/apache/commons/io/build/AbstractOrigin$InputStreamOrigin;

    move-result-object p1

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->setOrigin(Lonyx/org/apache/commons/io/build/AbstractOrigin;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p0

    return-object p0
.end method

.method public setOrigin(Lonyx/org/apache/commons/io/build/AbstractOrigin;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/build/AbstractOrigin<",
            "**>;)TB;"
        }
    .end annotation

    iput-object p1, p0, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->a:Lonyx/org/apache/commons/io/build/AbstractOrigin;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractSupplier;->asThis()Lonyx/org/apache/commons/io/build/AbstractSupplier;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;

    return-object p0
.end method

.method public setOutputStream(Ljava/io/OutputStream;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            ")TB;"
        }
    .end annotation

    invoke-static {p1}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->newOutputStreamOrigin(Ljava/io/OutputStream;)Lonyx/org/apache/commons/io/build/AbstractOrigin$OutputStreamOrigin;

    move-result-object p1

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->setOrigin(Lonyx/org/apache/commons/io/build/AbstractOrigin;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p0

    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->newPathOrigin(Ljava/lang/String;)Lonyx/org/apache/commons/io/build/AbstractOrigin$PathOrigin;

    move-result-object p1

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->setOrigin(Lonyx/org/apache/commons/io/build/AbstractOrigin;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p0

    return-object p0
.end method

.method public setPath(Ljava/nio/file/Path;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")TB;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->newPathOrigin(Ljava/nio/file/Path;)Lonyx/org/apache/commons/io/build/AbstractOrigin$PathOrigin;

    move-result-object p1

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->setOrigin(Lonyx/org/apache/commons/io/build/AbstractOrigin;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p0

    return-object p0
.end method

.method public setReader(Ljava/io/Reader;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")TB;"
        }
    .end annotation

    invoke-static {p1}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->newReaderOrigin(Ljava/io/Reader;)Lonyx/org/apache/commons/io/build/AbstractOrigin$ReaderOrigin;

    move-result-object p1

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->setOrigin(Lonyx/org/apache/commons/io/build/AbstractOrigin;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p0

    return-object p0
.end method

.method public setURI(Ljava/net/URI;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")TB;"
        }
    .end annotation

    invoke-static {p1}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->newURIOrigin(Ljava/net/URI;)Lonyx/org/apache/commons/io/build/AbstractOrigin$URIOrigin;

    move-result-object p1

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->setOrigin(Lonyx/org/apache/commons/io/build/AbstractOrigin;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p0

    return-object p0
.end method

.method public setWriter(Ljava/io/Writer;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            ")TB;"
        }
    .end annotation

    invoke-static {p1}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->newWriterOrigin(Ljava/io/Writer;)Lonyx/org/apache/commons/io/build/AbstractOrigin$WriterOrigin;

    move-result-object p1

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->setOrigin(Lonyx/org/apache/commons/io/build/AbstractOrigin;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p0

    return-object p0
.end method
