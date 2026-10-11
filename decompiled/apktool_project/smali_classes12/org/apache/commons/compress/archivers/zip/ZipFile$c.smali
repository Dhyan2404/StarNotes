.class public Lorg/apache/commons/compress/archivers/zip/ZipFile$c;
.super Lorg/apache/commons/compress/utils/BoundedArchiveInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final h:Ljava/nio/channels/FileChannel;

.field public final synthetic i:Lorg/apache/commons/compress/archivers/zip/ZipFile;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;JJ)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$c;->i:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/apache/commons/compress/utils/BoundedArchiveInputStream;-><init>(JJ)V

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p1

    check-cast p1, Ljava/nio/channels/FileChannel;

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$c;->h:Ljava/nio/channels/FileChannel;

    return-void
.end method


# virtual methods
.method public read(JLjava/nio/ByteBuffer;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$c;->h:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0, p3, p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result p0

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return p0
.end method
