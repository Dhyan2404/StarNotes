.class public Lorg/apache/commons/math3/random/SobolSequenceGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomVectorGenerator;


# static fields
.field public static final e:I = 0x34

.field public static final f:D

.field public static final g:I = 0x3e8

.field public static final h:Ljava/lang/String; = "/assets/org/apache/commons/math3/random/new-joe-kuo-6.1000"

.field public static final i:Ljava/lang/String; = "US-ASCII"


# instance fields
.field public final a:I

.field public b:I

.field public final c:[[J

.field public final d:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const/16 v2, 0x34

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->f:D

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->b:I

    const/16 v0, 0x3e8

    const/4 v1, 0x1

    if-lt p1, v1, :cond_1

    if-gt p1, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "/assets/org/apache/commons/math3/random/new-joe-kuo-6.1000"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iput p1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->a:I

    const/16 v1, 0x35

    .line 5
    filled-new-array {p1, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    iput-object v1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->c:[[J

    .line 6
    new-array p1, p1, [J

    iput-object p1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->d:[J

    .line 7
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->b(Ljava/io/InputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/commons/math3/exception/MathParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 9
    :catch_1
    :try_start_2
    new-instance p0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p0

    .line 10
    :catch_2
    new-instance p0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 12
    :catch_3
    throw p0

    .line 13
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p0

    .line 14
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0
.end method

.method public constructor <init>(ILjava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/MathParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->b:I

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 17
    iput p1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->a:I

    const/16 v1, 0x35

    .line 18
    filled-new-array {p1, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    iput-object v1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->c:[[J

    .line 19
    new-array v1, p1, [J

    iput-object v1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->d:[J

    .line 20
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->b(Ljava/io/InputStream;)I

    move-result p0

    if-lt p0, p1, :cond_0

    return-void

    .line 21
    :cond_0
    new-instance p2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p2, p1, v0, p0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p2

    .line 22
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0
.end method


# virtual methods
.method public final a(II[I)V
    .locals 11

    array-length v0, p3

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v2, v1

    :goto_0
    if-gt v2, v0, :cond_0

    iget-object v3, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->c:[[J

    aget-object v3, v3, p1

    aget v4, p3, v2

    int-to-long v4, v4

    rsub-int/lit8 v6, v2, 0x34

    shl-long/2addr v4, v6

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p3, v0, 0x1

    :goto_1
    const/16 v2, 0x34

    if-gt p3, v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->c:[[J

    aget-object v2, v2, p1

    sub-int v3, p3, v0

    aget-wide v3, v2, v3

    shr-long v5, v3, v0

    xor-long/2addr v3, v5

    aput-wide v3, v2, p3

    move v2, v1

    :goto_2
    add-int/lit8 v3, v0, -0x1

    if-gt v2, v3, :cond_1

    iget-object v4, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->c:[[J

    aget-object v4, v4, p1

    aget-wide v5, v4, p3

    sub-int/2addr v3, v2

    shr-int v3, p2, v3

    and-int/2addr v3, v1

    int-to-long v7, v3

    sub-int v3, p3, v2

    aget-wide v9, v4, v3

    mul-long/2addr v7, v9

    xor-long/2addr v5, v7

    aput-wide v5, v4, p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final b(Ljava/io/InputStream;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/16 v2, 0x34

    if-gt v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->c:[[J

    const/4 v3, 0x0

    aget-object v2, v2, v3

    rsub-int/lit8 v3, v1, 0x34

    const-wide/16 v4, 0x1

    shl-long v3, v4, v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "US-ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    const/4 p1, 0x2

    const/4 v1, -0x1

    move v3, p1

    move v4, v0

    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v6, " "

    invoke-direct {v1, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lt v6, p1, :cond_2

    iget v7, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->a:I

    if-gt v6, v7, :cond_2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v9, v7, 0x1

    new-array v9, v9, [I

    move v10, v0

    :goto_2
    if-gt v10, v7, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p0, v4, v8, v9}, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->a(II[I)V

    move v4, v1

    :cond_2
    iget v1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->a:I
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-le v6, v1, :cond_3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    return v6

    :cond_3
    add-int/lit8 v3, v3, 0x1

    move v1, v6

    goto :goto_1

    :catch_0
    :try_start_2
    new-instance p0, Lorg/apache/commons/math3/exception/MathParseException;

    invoke-direct {p0, v5, v3}, Lorg/apache/commons/math3/exception/MathParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    :catch_1
    new-instance p0, Lorg/apache/commons/math3/exception/MathParseException;

    invoke-direct {p0, v5, v3}, Lorg/apache/commons/math3/exception/MathParseException;-><init>(Ljava/lang/String;I)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    return v1

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw p0
.end method

.method public getNextIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->b:I

    return p0
.end method

.method public nextVector()[D
    .locals 9

    iget v0, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->a:I

    new-array v0, v0, [D

    iget v1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->b:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->b:I

    return-object v0

    :cond_0
    sub-int/2addr v1, v2

    move v3, v2

    :goto_0
    and-int/lit8 v4, v1, 0x1

    if-ne v4, v2, :cond_1

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget v4, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->a:I

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->d:[J

    aget-wide v5, v4, v1

    iget-object v7, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->c:[[J

    aget-object v7, v7, v1

    aget-wide v7, v7, v3

    xor-long/2addr v5, v7

    aput-wide v5, v4, v1

    long-to-double v4, v5

    sget-wide v6, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->f:D

    div-double/2addr v4, v6

    aput-wide v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget v1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->b:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->b:I

    return-object v0
.end method

.method public skipTo(I)[D
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    iget-object v2, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->d:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    goto :goto_3

    :cond_0
    add-int/lit8 v2, p1, -0x1

    shr-int/lit8 v3, v2, 0x1

    xor-int/2addr v2, v3

    int-to-long v2, v2

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->a:I

    if-ge v4, v5, :cond_3

    const/4 v5, 0x1

    move-wide v6, v0

    :goto_1
    const/16 v8, 0x34

    if-gt v5, v8, :cond_2

    add-int/lit8 v8, v5, -0x1

    shr-long v8, v2, v8

    cmp-long v10, v8, v0

    if-nez v10, :cond_1

    goto :goto_2

    :cond_1
    const-wide/16 v10, 0x1

    and-long/2addr v8, v10

    iget-object v10, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->c:[[J

    aget-object v10, v10, v4

    aget-wide v10, v10, v5

    mul-long/2addr v8, v10

    xor-long/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v5, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->d:[J

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    iput p1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->b:I

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->nextVector()[D

    move-result-object p0

    return-object p0
.end method
