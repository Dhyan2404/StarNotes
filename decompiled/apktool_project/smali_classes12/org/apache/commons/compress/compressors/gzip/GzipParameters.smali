.class public Lorg/apache/commons/compress/compressors/gzip/GzipParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->a:I

    const/16 v0, 0xff

    iput v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->e:I

    const/16 v0, 0x200

    iput v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->f:I

    return-void
.end method


# virtual methods
.method public getBufferSize()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->f:I

    return p0
.end method

.method public getComment()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getCompressionLevel()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->a:I

    return p0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getModificationTime()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->b:J

    return-wide v0
.end method

.method public getOperatingSystem()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->e:I

    return p0
.end method

.method public setBufferSize(I)V
    .locals 2

    if-lez p1, :cond_0

    iput p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->f:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid buffer size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->d:Ljava/lang/String;

    return-void
.end method

.method public setCompressionLevel(I)V
    .locals 2

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    iput p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->a:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid gzip compression level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->c:Ljava/lang/String;

    return-void
.end method

.method public setModificationTime(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->b:J

    return-void
.end method

.method public setOperatingSystem(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->e:I

    return-void
.end method
