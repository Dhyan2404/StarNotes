.class public Lorg/apache/commons/compress/compressors/deflate64/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/deflate64/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:[B

.field public final b:I

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    .line 2
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/deflate64/a$d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 4
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/deflate64/a$d;->a:[B

    .line 5
    array-length p1, p1

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/compress/compressors/deflate64/a$d;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/compress/compressors/deflate64/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/deflate64/a$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(B)B
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/a$d;->a:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/deflate64/a$d;->c:I

    aput-byte p1, v0, v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/deflate64/a$d;->c(I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/deflate64/a$d;->c:I

    return p1
.end method

.method public b([BII)V
    .locals 2

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/deflate64/a$d;->a(B)B

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(I)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lorg/apache/commons/compress/compressors/deflate64/a$d;->b:I

    and-int/2addr v0, v1

    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/deflate64/a$d;->d:Z

    if-nez v1, :cond_0

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/deflate64/a$d;->d:Z

    :cond_0
    return v0
.end method

.method public d(II[B)V
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/a$d;->a:[B

    array-length v0, v0

    if-gt p1, v0, :cond_3

    iget v0, p0, Lorg/apache/commons/compress/compressors/deflate64/a$d;->c:I

    sub-int v1, v0, p1

    iget v2, p0, Lorg/apache/commons/compress/compressors/deflate64/a$d;->b:I

    and-int/2addr v1, v2

    iget-boolean v2, p0, Lorg/apache/commons/compress/compressors/deflate64/a$d;->d:Z

    if-nez v2, :cond_1

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempt to read beyond memory: dist="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-ge p1, p2, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/a$d;->a:[B

    aget-byte v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/deflate64/a$d;->a(B)B

    move-result v0

    aput-byte v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/deflate64/a$d;->c(I)I

    move-result v1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal distance parameter: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
