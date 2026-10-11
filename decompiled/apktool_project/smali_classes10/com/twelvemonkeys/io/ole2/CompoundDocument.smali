.class public final Lcom/twelvemonkeys/io/ole2/CompoundDocument;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/io/ole2/CompoundDocument$a;,
        Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;
    }
.end annotation


# static fields
.field public static final EPOCH_OFFSET:J = -0xa9730ed5680L

.field public static final HEADER_SIZE:I = 0x200

.field public static final o:[B

.field public static final p:I = -0x1

.field public static final q:I = -0x2

.field public static final r:I = -0x3

.field public static final s:I = -0x4


# instance fields
.field public final a:Ljava/io/DataInput;

.field public b:Ljava/util/UUID;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:[I

.field public j:[I

.field public k:[I

.field public l:Lcom/twelvemonkeys/io/ole2/Entry;

.field public m:Lcom/sunia/HTREnginev2/hyl;

.field public n:Lcom/sunia/HTREnginev2/hyl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->o:[B

    return-void

    :array_0
    .array-data 1
        -0x30t
        -0x31t
        0x11t
        -0x20t
        -0x5ft
        -0x4ft
        0x1at
        -0x1ft
    .end array-data
.end method

.method public constructor <init>(Lcom/twelvemonkeys/io/SeekableInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$a;

    invoke-direct {v0, p1}, Lcom/twelvemonkeys/io/ole2/CompoundDocument$a;-><init>(Lcom/twelvemonkeys/io/SeekableInputStream;)V

    iput-object v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->a:Ljava/io/DataInput;

    .line 7
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->l()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;

    invoke-static {p1}, Lcom/twelvemonkeys/io/FileUtil;->resolve(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->a:Ljava/io/DataInput;

    .line 3
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->l()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/twelvemonkeys/io/FileCacheSeekableStream;

    invoke-direct {v0, p1}, Lcom/twelvemonkeys/io/FileCacheSeekableStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;-><init>(Lcom/twelvemonkeys/io/SeekableInputStream;)V

    return-void
.end method

.method public constructor <init>(Ljavax/imageio/stream/ImageInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->a:Ljava/io/DataInput;

    .line 10
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->l()V

    return-void
.end method

.method public static synthetic a(Lcom/twelvemonkeys/io/ole2/CompoundDocument;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->o(IJ)V

    return-void
.end method

.method public static synthetic b(Lcom/twelvemonkeys/io/ole2/CompoundDocument;)Ljava/io/DataInput;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->a:Ljava/io/DataInput;

    return-object p0
.end method

.method public static c(Ljava/io/DataInput;Z)Z
    .locals 5

    const/16 v0, 0x8

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    if-eqz p1, :cond_4

    :try_start_0
    instance-of v4, p0, Ljava/io/InputStream;

    if-eqz v4, :cond_0

    move-object v4, p0

    check-cast v4, Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, p0

    check-cast v4, Ljava/io/InputStream;

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->mark(I)V

    goto :goto_0

    :cond_0
    instance-of v4, p0, Ljavax/imageio/stream/ImageInputStream;

    if-eqz v4, :cond_1

    move-object v4, p0

    check-cast v4, Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v4}, Ljavax/imageio/stream/ImageInputStream;->mark()V

    goto :goto_0

    :cond_1
    instance-of v2, p0, Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_2

    move-object v2, p0

    check-cast v2, Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    goto :goto_0

    :cond_2
    instance-of v2, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;

    if-eqz v2, :cond_3

    move-object v2, p0

    check-cast v2, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;

    invoke-virtual {v2}, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->getFilePointer()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_3
    return v1

    :cond_4
    :goto_0
    :try_start_1
    new-array v0, v0, [B

    invoke-interface {p0, v0}, Ljava/io/DataInput;->readFully([B)V

    sget-object v4, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->o:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_8

    :try_start_2
    instance-of p1, p0, Ljava/io/InputStream;

    if-eqz p1, :cond_5

    move-object p1, p0

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result p1

    if-eqz p1, :cond_5

    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    goto :goto_1

    :cond_5
    instance-of p1, p0, Ljavax/imageio/stream/ImageInputStream;

    if-eqz p1, :cond_6

    check-cast p0, Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    goto :goto_1

    :cond_6
    instance-of p1, p0, Ljava/io/RandomAccessFile;

    if-eqz p1, :cond_7

    check-cast p0, Ljava/io/RandomAccessFile;

    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_1

    :cond_7
    instance-of p1, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;

    if-eqz p1, :cond_8

    check-cast p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;

    invoke-virtual {p0, v2, v3}, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->seek(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_1
    return v0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_d

    :try_start_3
    instance-of p1, p0, Ljava/io/InputStream;

    if-eqz p1, :cond_a

    move-object p1, p0

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    goto :goto_3

    :cond_a
    :goto_2
    instance-of p1, p0, Ljavax/imageio/stream/ImageInputStream;

    if-nez p1, :cond_c

    instance-of p1, p0, Ljava/io/RandomAccessFile;

    if-nez p1, :cond_b

    instance-of p1, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;

    if-eqz p1, :cond_d

    check-cast p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;

    invoke-virtual {p0, v2, v3}, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->seek(J)V

    goto :goto_3

    :cond_b
    check-cast p0, Ljava/io/RandomAccessFile;

    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_3

    :cond_c
    check-cast p0, Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    :goto_3
    throw v0

    :catch_3
    if-eqz p1, :cond_11

    :try_start_4
    instance-of p1, p0, Ljava/io/InputStream;

    if-eqz p1, :cond_e

    move-object p1, p0

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result p1

    if-eqz p1, :cond_e

    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    goto :goto_4

    :cond_e
    instance-of p1, p0, Ljavax/imageio/stream/ImageInputStream;

    if-eqz p1, :cond_f

    check-cast p0, Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    goto :goto_4

    :cond_f
    instance-of p1, p0, Ljava/io/RandomAccessFile;

    if-eqz p1, :cond_10

    check-cast p0, Ljava/io/RandomAccessFile;

    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_4

    :cond_10
    instance-of p1, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;

    if-eqz p1, :cond_11

    check-cast p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;

    invoke-virtual {p0, v2, v3}, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->seek(J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_11
    :goto_4
    return v1
.end method

.method public static canRead(Ljava/io/DataInput;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->c(Ljava/io/DataInput;Z)Z

    move-result p0

    return p0
.end method

.method public static toJavaTimeInMillis(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    shr-long/2addr p0, v0

    const-wide/16 v0, 0x1388

    div-long/2addr p0, v0

    const-wide v0, -0xa9730ed5680L

    add-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public final d(I)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    new-array v0, v0, [B

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->n(I)V

    iget-object p0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->a:Ljava/io/DataInput;

    invoke-interface {p0, v0}, Ljava/io/DataInput;->readFully([B)V

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p0
.end method

.method public e(ILcom/twelvemonkeys/io/ole2/Entry;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/twelvemonkeys/io/ole2/Entry;",
            ")",
            "Ljava/util/SortedSet<",
            "Lcom/twelvemonkeys/io/ole2/Entry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->f(ILcom/twelvemonkeys/io/ole2/Entry;Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public final f(ILcom/twelvemonkeys/io/ole2/Entry;Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/twelvemonkeys/io/ole2/Entry;",
            "Ljava/util/SortedSet<",
            "Lcom/twelvemonkeys/io/ole2/Entry;",
            ">;)",
            "Ljava/util/SortedSet<",
            "Lcom/twelvemonkeys/io/ole2/Entry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->g(ILcom/twelvemonkeys/io/ole2/Entry;)Lcom/twelvemonkeys/io/ole2/Entry;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p1, v0, Lcom/twelvemonkeys/io/ole2/Entry;->h:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->f(ILcom/twelvemonkeys/io/ole2/Entry;Ljava/util/SortedSet;)Ljava/util/SortedSet;

    :cond_0
    iget p1, v0, Lcom/twelvemonkeys/io/ole2/Entry;->i:I

    if-eq p1, v1, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->f(ILcom/twelvemonkeys/io/ole2/Entry;Ljava/util/SortedSet;)Ljava/util/SortedSet;

    :cond_1
    return-object p3

    :cond_2
    new-instance p0, Lcom/twelvemonkeys/io/ole2/CorruptDocumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cyclic chain reference for entry: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/twelvemonkeys/io/ole2/CorruptDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public g(ILcom/twelvemonkeys/io/ole2/Entry;)Lcom/twelvemonkeys/io/ole2/Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/twelvemonkeys/io/LittleEndianDataInputStream;

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->d(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/twelvemonkeys/io/LittleEndianDataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/twelvemonkeys/io/ole2/Entry;->b(Ljava/io/DataInput;)Lcom/twelvemonkeys/io/ole2/Entry;

    move-result-object p1

    iput-object p2, p1, Lcom/twelvemonkeys/io/ole2/Entry;->p:Lcom/twelvemonkeys/io/ole2/Entry;

    iput-object p0, p1, Lcom/twelvemonkeys/io/ole2/Entry;->o:Lcom/twelvemonkeys/io/ole2/CompoundDocument;

    return-object p1
.end method

.method public getRootEntry()Lcom/twelvemonkeys/io/ole2/Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->l:Lcom/twelvemonkeys/io/ole2/Entry;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->m()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->g(ILcom/twelvemonkeys/io/ole2/Entry;)Lcom/twelvemonkeys/io/ole2/Entry;

    move-result-object v0

    iput-object v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->l:Lcom/twelvemonkeys/io/ole2/Entry;

    iget-byte v0, v0, Lcom/twelvemonkeys/io/ole2/Entry;->f:B

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/twelvemonkeys/io/ole2/CorruptDocumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid root storage type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->l:Lcom/twelvemonkeys/io/ole2/Entry;

    iget-byte p0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->f:B

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/twelvemonkeys/io/ole2/CorruptDocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->l:Lcom/twelvemonkeys/io/ole2/Entry;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/twelvemonkeys/io/ole2/Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/twelvemonkeys/lang/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->getRootEntry()Lcom/twelvemonkeys/io/ole2/Entry;

    move-result-object p0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1, v0}, Lcom/twelvemonkeys/lang/StringUtil;->toStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/twelvemonkeys/io/ole2/Entry;->getChildEntry(Ljava/lang/String;)Lcom/twelvemonkeys/io/ole2/Entry;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Path must be absolute, and contain a valid path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public i(II)Lcom/twelvemonkeys/io/SeekableInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->j(IJ)Lcom/sunia/HTREnginev2/hyl;

    move-result-object p1

    iget v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->f:I

    if-ge p2, v0, :cond_0

    iget v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->d:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->c:I

    :goto_0
    new-instance v1, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream;

    new-instance v2, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;

    invoke-direct {v2, p1, p2, v0, p0}, Lcom/twelvemonkeys/io/ole2/CompoundDocument$b;-><init>(Lcom/sunia/HTREnginev2/hyl;IILcom/twelvemonkeys/io/ole2/CompoundDocument;)V

    invoke-direct {v1, v2}, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream;-><init>(Ljava/io/InputStream;)V

    return-object v1
.end method

.method public final j(IJ)Lcom/sunia/HTREnginev2/hyl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/hyl;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/hyl;-><init>()V

    invoke-virtual {p0, p2, p3}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->k(J)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->k:[I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->j:[I

    :goto_0
    const/4 p2, -0x2

    if-eq p1, p2, :cond_1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/hyl;->a(I)V

    aget p1, p0, p1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final k(J)Z
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->f:I

    int-to-long v0, p0

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final l()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->i:[I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->a:Ljava/io/DataInput;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->c(Ljava/io/DataInput;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/util/UUID;

    iget-object v2, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->a:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    iget-object v4, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->a:Ljava/io/DataInput;

    invoke-interface {v4}, Ljava/io/DataInput;->readLong()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->b:Ljava/util/UUID;

    iget-object v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->a:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedShort()I

    iget-object v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->a:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedShort()I

    iget-object v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->a:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    const v2, 0xffff

    if-eq v0, v2, :cond_b

    const v2, 0xfffe

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->a:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    const/4 v2, 0x1

    shl-int v0, v2, v0

    iput v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->c:I

    iget-object v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->a:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    shl-int v0, v2, v0

    iput v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->d:I

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->p(I)I

    move-result v2

    if-ne v2, v0, :cond_9

    iget-object v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->a:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iget-object v2, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->a:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v2

    iput v2, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->e:I

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->p(I)I

    move-result v3

    if-ne v3, v2, :cond_8

    iget-object v3, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->a:Ljava/io/DataInput;

    invoke-interface {v3}, Ljava/io/DataInput;->readInt()I

    move-result v3

    iput v3, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->f:I

    iget-object v3, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->a:Ljava/io/DataInput;

    invoke-interface {v3}, Ljava/io/DataInput;->readInt()I

    move-result v3

    iput v3, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->g:I

    iget-object v3, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->a:Ljava/io/DataInput;

    invoke-interface {v3}, Ljava/io/DataInput;->readInt()I

    move-result v3

    iput v3, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->h:I

    iget-object v3, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->a:Ljava/io/DataInput;

    invoke-interface {v3}, Ljava/io/DataInput;->readInt()I

    move-result v3

    iget-object v4, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->a:Ljava/io/DataInput;

    invoke-interface {v4}, Ljava/io/DataInput;->readInt()I

    move-result v4

    new-array v5, v0, [I

    iput-object v5, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->i:[I

    const/16 v5, 0x6d

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_1

    iget-object v7, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->i:[I

    iget-object v8, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->a:Ljava/io/DataInput;

    invoke-interface {v8}, Ljava/io/DataInput;->readInt()I

    move-result v8

    aput v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, -0x2

    if-ne v3, v6, :cond_3

    mul-int/2addr v0, v2

    rsub-int v0, v0, 0x1b4

    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->p(I)I

    move-result p0

    if-ne p0, v0, :cond_2

    goto :goto_3

    :cond_2
    new-instance p0, Lcom/twelvemonkeys/io/ole2/CorruptDocumentException;

    invoke-direct {p0}, Lcom/twelvemonkeys/io/ole2/CorruptDocumentException;-><init>()V

    throw p0

    :cond_3
    const-wide/16 v7, -0x1

    invoke-virtual {p0, v3, v7, v8}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->o(IJ)V

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_7

    move v2, v1

    :goto_2
    const/16 v3, 0x7f

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->a:Ljava/io/DataInput;

    invoke-interface {v3}, Ljava/io/DataInput;->readInt()I

    move-result v3

    const/4 v9, -0x1

    if-eq v3, v9, :cond_4

    iget-object v9, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->i:[I

    add-int/lit8 v10, v5, 0x1

    aput v3, v9, v5

    move v5, v10

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->a:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v2

    if-ne v2, v6, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v2, v7, v8}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->o(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    return-void

    :cond_8
    new-instance p0, Lcom/twelvemonkeys/io/ole2/CorruptDocumentException;

    invoke-direct {p0}, Lcom/twelvemonkeys/io/ole2/CorruptDocumentException;-><init>()V

    throw p0

    :cond_9
    new-instance p0, Lcom/twelvemonkeys/io/ole2/CorruptDocumentException;

    invoke-direct {p0}, Lcom/twelvemonkeys/io/ole2/CorruptDocumentException;-><init>()V

    throw p0

    :cond_a
    new-instance p0, Lcom/twelvemonkeys/io/ole2/CorruptDocumentException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Unknown byte order marker: 0x%04x, expected 0xfffe or 0xffff"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twelvemonkeys/io/ole2/CorruptDocumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Lcom/twelvemonkeys/io/ole2/CorruptDocumentException;

    const-string v0, "Cannot read big endian OLE 2 Compound Documents"

    invoke-direct {p0, v0}, Lcom/twelvemonkeys/io/ole2/CorruptDocumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Lcom/twelvemonkeys/io/ole2/CorruptDocumentException;

    const-string v0, "Not an OLE 2 Compound Document"

    invoke-direct {p0, v0}, Lcom/twelvemonkeys/io/ole2/CorruptDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final m()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->j:[I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->c:I

    div-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->i:[I

    array-length v1, v1

    mul-int/2addr v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->j:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->i:[I

    array-length v4, v3

    const-wide/16 v5, -0x1

    if-ge v2, v4, :cond_2

    aget v3, v3, v2

    invoke-virtual {p0, v3, v5, v6}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->o(IJ)V

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->a:Ljava/io/DataInput;

    invoke-interface {v4}, Ljava/io/DataInput;->readInt()I

    move-result v4

    mul-int v5, v2, v0

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->j:[I

    aput v4, v6, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->g:I

    invoke-virtual {p0, v2, v5, v6}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->j(IJ)Lcom/sunia/HTREnginev2/hyl;

    move-result-object v2

    iget v3, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->h:I

    mul-int/2addr v3, v0

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->k:[I

    move v3, v1

    :goto_2
    iget v4, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->h:I

    if-ge v3, v4, :cond_4

    invoke-virtual {v2, v3}, Lcom/sunia/HTREnginev2/hyl;->c(I)I

    move-result v4

    invoke-virtual {p0, v4, v5, v6}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->o(IJ)V

    move v4, v1

    :goto_3
    if-ge v4, v0, :cond_3

    iget-object v7, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->a:Ljava/io/DataInput;

    invoke-interface {v7}, Ljava/io/DataInput;->readInt()I

    move-result v7

    mul-int v8, v3, v0

    add-int/2addr v8, v4

    iget-object v9, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->k:[I

    aput v7, v9, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final n(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->n:Lcom/sunia/HTREnginev2/hyl;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->e:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->j(IJ)Lcom/sunia/HTREnginev2/hyl;

    move-result-object v0

    iput-object v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->n:Lcom/sunia/HTREnginev2/hyl;

    :cond_0
    iget v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->c:I

    div-int/lit16 v0, v0, 0x80

    div-int v3, p1, v0

    mul-int/2addr v0, v3

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->n:Lcom/sunia/HTREnginev2/hyl;

    invoke-virtual {v0, v3}, Lcom/sunia/HTREnginev2/hyl;->c(I)I

    move-result v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->o(IJ)V

    iget-object p0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->a:Ljava/io/DataInput;

    instance-of v0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->getFilePointer()J

    move-result-wide v0

    mul-int/lit16 p1, p1, 0x80

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->seek(J)V

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljavax/imageio/stream/ImageInputStream;

    if-eqz v0, :cond_2

    check-cast p0, Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v0

    mul-int/lit16 p1, p1, 0x80

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-interface {p0, v0, v1}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    goto :goto_0

    :cond_2
    check-cast p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$a;

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/ole2/CompoundDocument$a;->getStreamPosition()J

    move-result-wide v0

    mul-int/lit16 p1, p1, 0x80

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/io/ole2/CompoundDocument$a;->seek(J)V

    :goto_0
    return-void
.end method

.method public final o(IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->k(J)Z

    move-result p2

    const-wide/16 v0, 0x200

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->getRootEntry()Lcom/twelvemonkeys/io/ole2/Entry;

    move-result-object p2

    iget-object p3, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->m:Lcom/sunia/HTREnginev2/hyl;

    if-nez p3, :cond_0

    iget p3, p2, Lcom/twelvemonkeys/io/ole2/Entry;->m:I

    iget p2, p2, Lcom/twelvemonkeys/io/ole2/Entry;->n:I

    int-to-long v2, p2

    invoke-virtual {p0, p3, v2, v3}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->j(IJ)Lcom/sunia/HTREnginev2/hyl;

    move-result-object p2

    iput-object p2, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->m:Lcom/sunia/HTREnginev2/hyl;

    :cond_0
    iget p2, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->c:I

    iget p3, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->d:I

    div-int/2addr p2, p3

    div-int p3, p1, p2

    mul-int/2addr p2, p3

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->m:Lcom/sunia/HTREnginev2/hyl;

    invoke-virtual {p2, p3}, Lcom/sunia/HTREnginev2/hyl;->c(I)I

    move-result p2

    int-to-long p2, p2

    iget v2, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->c:I

    int-to-long v2, v2

    mul-long/2addr p2, v2

    add-long/2addr p2, v0

    int-to-long v0, p1

    iget p1, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->d:I

    int-to-long v2, p1

    mul-long/2addr v0, v2

    add-long/2addr p2, v0

    goto :goto_0

    :cond_1
    int-to-long p1, p1

    iget p3, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->c:I

    int-to-long v2, p3

    mul-long/2addr p1, v2

    add-long p2, p1, v0

    :goto_0
    iget-object p0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->a:Ljava/io/DataInput;

    instance-of p1, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;

    if-eqz p1, :cond_2

    check-cast p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;

    invoke-virtual {p0, p2, p3}, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->seek(J)V

    goto :goto_1

    :cond_2
    instance-of p1, p0, Ljavax/imageio/stream/ImageInputStream;

    if-eqz p1, :cond_3

    check-cast p0, Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p0, p2, p3}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    goto :goto_1

    :cond_3
    check-cast p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument$a;

    invoke-virtual {p0, p2, p3}, Lcom/twelvemonkeys/io/ole2/CompoundDocument$a;->seek(J)V

    :goto_1
    return-void
.end method

.method public final p(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v0, p1

    :goto_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->a:Ljava/io/DataInput;

    invoke-interface {v1, p1}, Ljava/io/DataInput;->skipBytes(I)I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    sub-int/2addr p1, v0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const-class v0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->b:Ljava/util/UUID;

    iget v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object p0, p0, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->i:[I

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s[uuid: %s, sector size: %d/%d bytes, directory SID: %d, master SAT: %s entries]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
