.class public Lcom/twelvemonkeys/imageio/metadata/psd/PSDReader$PSDResource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/imageio/metadata/psd/PSDReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PSDResource"
.end annotation


# instance fields
.field public final a:S

.field public final b:Ljava/lang/String;

.field public final c:J

.field public d:[B


# direct methods
.method public constructor <init>(SLjavax/imageio/stream/ImageInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/twelvemonkeys/imageio/metadata/psd/PSDReader$PSDResource;->a:S

    invoke-static {p2}, Lcom/twelvemonkeys/imageio/metadata/psd/PSDReader$PSDResource;->a(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/metadata/psd/PSDReader$PSDResource;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    invoke-interface {p2}, Ljavax/imageio/stream/ImageInputStream;->readByte()B

    :cond_0
    invoke-interface {p2}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twelvemonkeys/imageio/metadata/psd/PSDReader$PSDResource;->c:J

    invoke-interface {p2}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v2

    new-instance p1, Lcom/twelvemonkeys/imageio/stream/SubImageInputStream;

    invoke-direct {p1, p2, v0, v1}, Lcom/twelvemonkeys/imageio/stream/SubImageInputStream;-><init>(Ljavax/imageio/stream/ImageInputStream;J)V

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/metadata/psd/PSDReader$PSDResource;->readData(Ljavax/imageio/stream/ImageInputStream;)V

    invoke-interface {p2}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide p0

    add-long v4, v2, v0

    cmp-long p0, p0, v4

    if-eqz p0, :cond_1

    add-long/2addr v2, v0

    invoke-interface {p2, v2, v3}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    :cond_1
    const-wide/16 p0, 0x2

    rem-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-eqz p0, :cond_2

    invoke-interface {p2}, Ljavax/imageio/stream/ImageInputStream;->read()I

    :cond_2
    return-void
.end method

.method public static a(Ljava/io/DataInput;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-array v1, v0, [B

    invoke-interface {p0, v1}, Ljava/io/DataInput;->readFully([B)V

    const/4 p0, 0x0

    const-string v2, "ASCII"

    invoke-static {v1, p0, v0, v2}, Lcom/twelvemonkeys/lang/StringUtil;->decode([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final data()[B
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/metadata/psd/PSDReader$PSDResource;->d:[B

    return-object p0
.end method

.method public final id()I
    .locals 0

    iget-short p0, p0, Lcom/twelvemonkeys/imageio/metadata/psd/PSDReader$PSDResource;->a:S

    return p0
.end method

.method public name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/metadata/psd/PSDReader$PSDResource;->b:Ljava/lang/String;

    return-object p0
.end method

.method public readData(Ljavax/imageio/stream/ImageInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/twelvemonkeys/imageio/metadata/psd/PSDReader$PSDResource;->c:J

    long-to-int v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/metadata/psd/PSDReader$PSDResource;->d:[B

    invoke-interface {p1, v0}, Ljavax/imageio/stream/ImageInputStream;->readFully([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/psd/PSDReader$PSDResource;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/twelvemonkeys/imageio/metadata/psd/PSDReader$PSDResource;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringBuilder()Ljava/lang/StringBuilder;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "[ID: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/twelvemonkeys/imageio/metadata/psd/PSDReader$PSDResource;->a:S

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/metadata/psd/PSDReader$PSDResource;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", name: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/metadata/psd/PSDReader$PSDResource;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-object v0
.end method
