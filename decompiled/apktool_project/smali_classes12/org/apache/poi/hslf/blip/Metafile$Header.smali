.class public Lorg/apache/poi/hslf/blip/Metafile$Header;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hslf/blip/Metafile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# static fields
.field private static final RECORD_LENGTH:I = 0x22


# instance fields
.field private final bounds:Ljava/awt/Rectangle;

.field private compression:I

.field private filter:I

.field private final size:Ljava/awt/Dimension;

.field private wmfsize:I

.field private zipsize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0}, Ljava/awt/Rectangle;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->bounds:Ljava/awt/Rectangle;

    new-instance v0, Ljava/awt/Dimension;

    invoke-direct {v0}, Ljava/awt/Dimension;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->size:Ljava/awt/Dimension;

    const/16 v0, 0xfe

    iput v0, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->filter:I

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/hslf/blip/Metafile$Header;)Ljava/awt/Dimension;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->size:Ljava/awt/Dimension;

    return-object p0
.end method


# virtual methods
.method public getBounds()Ljava/awt/Rectangle;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->bounds:Ljava/awt/Rectangle;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/Rectangle;

    return-object p0
.end method

.method public getSize()I
    .locals 0

    const/16 p0, 0x22

    return p0
.end method

.method public getWmfSize()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->wmfsize:I

    return p0
.end method

.method public read([BI)V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/apache/poi/util/LittleEndianInputStream;

    new-instance v1, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    const/16 v2, 0x22

    invoke-direct {v1, p1, p2, v2}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;-><init>([BII)V

    invoke-direct {v0, v1}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->wmfsize:I

    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p1

    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p2

    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->bounds:Ljava/awt/Rectangle;

    sub-int/2addr v1, p1

    sub-int/2addr v2, p2

    invoke-virtual {v3, p1, p2, v1, v2}, Ljava/awt/Rectangle;->setBounds(IIII)V

    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p1

    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p2

    iget-object v1, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->size:Ljava/awt/Dimension;

    invoke-virtual {v1, p1, p2}, Ljava/awt/Dimension;->setSize(II)V

    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->zipsize:I

    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->compression:I

    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->filter:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_5
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setBounds(Ljava/awt/Rectangle;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->bounds:Ljava/awt/Rectangle;

    invoke-virtual {p0, p1}, Ljava/awt/Rectangle;->setBounds(Ljava/awt/Rectangle;)V

    return-void
.end method

.method public setDimension(Ljava/awt/Dimension;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->size:Ljava/awt/Dimension;

    invoke-virtual {p0, p1}, Ljava/awt/Dimension;->setSize(Ljava/awt/Dimension;)V

    return-void
.end method

.method public setWmfSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->wmfsize:I

    return-void
.end method

.method public setZipSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->zipsize:I

    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/poi/util/LittleEndianOutputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/util/LittleEndianOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2
    iget p1, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->wmfsize:I

    invoke-virtual {v0, p1}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    .line 3
    iget-object p1, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->bounds:Ljava/awt/Rectangle;

    iget p1, p1, Ljava/awt/Rectangle;->x:I

    invoke-virtual {v0, p1}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    .line 4
    iget-object p1, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->bounds:Ljava/awt/Rectangle;

    iget p1, p1, Ljava/awt/Rectangle;->y:I

    invoke-virtual {v0, p1}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    .line 5
    iget-object p1, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->bounds:Ljava/awt/Rectangle;

    iget v1, p1, Ljava/awt/Rectangle;->x:I

    iget p1, p1, Ljava/awt/Rectangle;->width:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    .line 6
    iget-object p1, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->bounds:Ljava/awt/Rectangle;

    iget v1, p1, Ljava/awt/Rectangle;->y:I

    iget p1, p1, Ljava/awt/Rectangle;->height:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    .line 7
    iget-object p1, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->size:Ljava/awt/Dimension;

    iget p1, p1, Ljava/awt/Dimension;->width:I

    invoke-virtual {v0, p1}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    .line 8
    iget-object p1, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->size:Ljava/awt/Dimension;

    iget p1, p1, Ljava/awt/Dimension;->height:I

    invoke-virtual {v0, p1}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    .line 9
    iget p1, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->zipsize:I

    invoke-virtual {v0, p1}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    .line 10
    iget p1, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->compression:I

    invoke-virtual {v0, p1}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeByte(I)V

    .line 11
    iget p0, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->filter:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeByte(I)V

    return-void
.end method

.method public write([BI)V
    .locals 2

    .line 12
    iget v0, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->wmfsize:I

    invoke-static {p1, p2, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 p2, p2, 0x4

    .line 13
    iget-object v0, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->bounds:Ljava/awt/Rectangle;

    iget v0, v0, Ljava/awt/Rectangle;->x:I

    invoke-static {p1, p2, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 p2, p2, 0x4

    .line 14
    iget-object v0, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->bounds:Ljava/awt/Rectangle;

    iget v0, v0, Ljava/awt/Rectangle;->y:I

    invoke-static {p1, p2, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 p2, p2, 0x4

    .line 15
    iget-object v0, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->bounds:Ljava/awt/Rectangle;

    iget v1, v0, Ljava/awt/Rectangle;->x:I

    iget v0, v0, Ljava/awt/Rectangle;->width:I

    add-int/2addr v1, v0

    invoke-static {p1, p2, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 p2, p2, 0x4

    .line 16
    iget-object v0, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->bounds:Ljava/awt/Rectangle;

    iget v1, v0, Ljava/awt/Rectangle;->y:I

    iget v0, v0, Ljava/awt/Rectangle;->height:I

    add-int/2addr v1, v0

    invoke-static {p1, p2, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 p2, p2, 0x4

    .line 17
    iget-object v0, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->size:Ljava/awt/Dimension;

    iget v0, v0, Ljava/awt/Dimension;->width:I

    invoke-static {p1, p2, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 p2, p2, 0x4

    .line 18
    iget-object v0, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->size:Ljava/awt/Dimension;

    iget v0, v0, Ljava/awt/Dimension;->height:I

    invoke-static {p1, p2, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 p2, p2, 0x4

    .line 19
    iget v0, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->zipsize:I

    invoke-static {p1, p2, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 p2, p2, 0x4

    .line 20
    iget v0, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->compression:I

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    .line 21
    iget p0, p0, Lorg/apache/poi/hslf/blip/Metafile$Header;->filter:I

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method
