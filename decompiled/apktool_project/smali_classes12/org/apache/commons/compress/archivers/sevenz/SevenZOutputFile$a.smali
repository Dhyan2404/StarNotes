.class public Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$a;
.super Lorg/apache/commons/compress/utils/CountingOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->l0()Lorg/apache/commons/compress/utils/CountingOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic f:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$a;->f:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/utils/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lorg/apache/commons/compress/utils/CountingOutputStream;->write(I)V

    .line 2
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$a;->f:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->w(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)Ljava/util/zip/CRC32;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/zip/CRC32;->update(I)V

    return-void
.end method

.method public write([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lorg/apache/commons/compress/utils/CountingOutputStream;->write([B)V

    .line 4
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$a;->f:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->w(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)Ljava/util/zip/CRC32;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/zip/CRC32;->update([B)V

    return-void
.end method

.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/compress/utils/CountingOutputStream;->write([BII)V

    .line 6
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$a;->f:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->w(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)Ljava/util/zip/CRC32;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    return-void
.end method
