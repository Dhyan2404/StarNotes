.class public Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:I = 0x9

.field public static final d:I


# instance fields
.field public a:Z

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;->a:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;->b:I

    return-void
.end method


# virtual methods
.method public getCompressionLevel()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;->b:I

    return p0
.end method

.method public setCompressionLevel(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    iput p1, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;->b:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid Deflate compression level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setWithZlibHeader(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;->a:Z

    return-void
.end method

.method public withZlibHeader()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;->a:Z

    return p0
.end method
