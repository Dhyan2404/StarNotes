.class public abstract Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
.super Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Lonyx/org/apache/commons/io/build/AbstractStreamBuilder<",
        "TT;TB;>;>",
        "Lonyx/org/apache/commons/io/build/AbstractOriginSupplier<",
        "TT;TB;>;"
    }
.end annotation


# static fields
.field public static final j:I = 0x7fffffff

.field public static final k:[Ljava/nio/file/OpenOption;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/nio/charset/Charset;

.field public f:Ljava/nio/charset/Charset;

.field public g:[Ljava/nio/file/OpenOption;

.field public final h:Ljava/util/function/IntUnaryOperator;

.field public i:Ljava/util/function/IntUnaryOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lonyx/org/apache/commons/io/file/PathUtils;->EMPTY_OPEN_OPTION_ARRAY:[Ljava/nio/file/OpenOption;

    sput-object v0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->k:[Ljava/nio/file/OpenOption;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;-><init>()V

    const/16 v0, 0x2000

    iput v0, p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->b:I

    iput v0, p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->c:I

    const v0, 0x7fffffff

    iput v0, p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->d:I

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->e:Ljava/nio/charset/Charset;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->f:Ljava/nio/charset/Charset;

    sget-object v0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->k:[Ljava/nio/file/OpenOption;

    iput-object v0, p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->g:[Ljava/nio/file/OpenOption;

    new-instance v0, Lcom/sunia/HTREnginev2/v4;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/v4;-><init>(Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;)V

    iput-object v0, p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->h:Ljava/util/function/IntUnaryOperator;

    iput-object v0, p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->i:Ljava/util/function/IntUnaryOperator;

    return-void
.end method

.method public static synthetic c(Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;I)I
    .locals 0

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->e(I)I

    move-result p0

    return p0
.end method

.method private synthetic e(I)I
    .locals 1

    iget v0, p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->d:I

    if-le p1, v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->f(II)I

    move-result p1

    :cond_0
    return p1
.end method


# virtual methods
.method public final d(I)I
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->i:Ljava/util/function/IntUnaryOperator;

    invoke-interface {p0, p1}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result p0

    return p0
.end method

.method public final f(II)I
    .locals 0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Request %,d exceeds maximum %,d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBufferSize()I
    .locals 0

    iget p0, p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->b:I

    return p0
.end method

.method public getBufferSizeDefault()I
    .locals 0

    iget p0, p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->c:I

    return p0
.end method

.method public getCharSequence()Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->checkOrigin()Lonyx/org/apache/commons/io/build/AbstractOrigin;

    move-result-object v0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-virtual {v0, p0}, Lonyx/org/apache/commons/io/build/AbstractOrigin;->getCharSequence(Ljava/nio/charset/Charset;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->e:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public getCharsetDefault()Ljava/nio/charset/Charset;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->f:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->checkOrigin()Lonyx/org/apache/commons/io/build/AbstractOrigin;

    move-result-object v0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getOpenOptions()[Ljava/nio/file/OpenOption;

    move-result-object p0

    invoke-virtual {v0, p0}, Lonyx/org/apache/commons/io/build/AbstractOrigin;->getInputStream([Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public getOpenOptions()[Ljava/nio/file/OpenOption;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->g:[Ljava/nio/file/OpenOption;

    return-object p0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->checkOrigin()Lonyx/org/apache/commons/io/build/AbstractOrigin;

    move-result-object v0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getOpenOptions()[Ljava/nio/file/OpenOption;

    move-result-object p0

    invoke-virtual {v0, p0}, Lonyx/org/apache/commons/io/build/AbstractOrigin;->getOutputStream([Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public getPath()Ljava/nio/file/Path;
    .locals 0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->checkOrigin()Lonyx/org/apache/commons/io/build/AbstractOrigin;

    move-result-object p0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractOrigin;->getPath()Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->checkOrigin()Lonyx/org/apache/commons/io/build/AbstractOrigin;

    move-result-object v0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-virtual {v0, p0}, Lonyx/org/apache/commons/io/build/AbstractOrigin;->getReader(Ljava/nio/charset/Charset;)Ljava/io/Reader;

    move-result-object p0

    return-object p0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->checkOrigin()Lonyx/org/apache/commons/io/build/AbstractOrigin;

    move-result-object v0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getOpenOptions()[Ljava/nio/file/OpenOption;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lonyx/org/apache/commons/io/build/AbstractOrigin;->getWriter(Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/Writer;

    move-result-object p0

    return-object p0
.end method

.method public setBufferSize(I)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    if-lez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget p1, p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->c:I

    :goto_0
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->d(I)I

    move-result p1

    iput p1, p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->b:I

    .line 2
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractSupplier;->asThis()Lonyx/org/apache/commons/io/build/AbstractSupplier;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;

    return-object p0
.end method

.method public setBufferSize(Ljava/lang/Integer;)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")TB;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->c:I

    :goto_0
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->setBufferSize(I)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;

    .line 4
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractSupplier;->asThis()Lonyx/org/apache/commons/io/build/AbstractSupplier;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;

    return-object p0
.end method

.method public setBufferSizeChecker(Ljava/util/function/IntUnaryOperator;)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntUnaryOperator;",
            ")TB;"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->h:Ljava/util/function/IntUnaryOperator;

    :goto_0
    iput-object p1, p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->i:Ljava/util/function/IntUnaryOperator;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractSupplier;->asThis()Lonyx/org/apache/commons/io/build/AbstractSupplier;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;

    return-object p0
.end method

.method public setBufferSizeDefault(I)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    iput p1, p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->c:I

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractSupplier;->asThis()Lonyx/org/apache/commons/io/build/AbstractSupplier;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;

    return-object p0
.end method

.method public setBufferSizeMax(I)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    :goto_0
    iput p1, p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->d:I

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractSupplier;->asThis()Lonyx/org/apache/commons/io/build/AbstractSupplier;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;

    return-object p0
.end method

.method public setCharset(Ljava/lang/String;)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->f:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lonyx/org/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->setCharset(Ljava/nio/charset/Charset;)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->f:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lonyx/org/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->e:Ljava/nio/charset/Charset;

    .line 2
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractSupplier;->asThis()Lonyx/org/apache/commons/io/build/AbstractSupplier;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;

    return-object p0
.end method

.method public setCharsetDefault(Ljava/nio/charset/Charset;)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->f:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractSupplier;->asThis()Lonyx/org/apache/commons/io/build/AbstractSupplier;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;

    return-object p0
.end method

.method public varargs setOpenOptions([Ljava/nio/file/OpenOption;)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/nio/file/OpenOption;",
            ")TB;"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->k:[Ljava/nio/file/OpenOption;

    :goto_0
    iput-object p1, p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->g:[Ljava/nio/file/OpenOption;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractSupplier;->asThis()Lonyx/org/apache/commons/io/build/AbstractSupplier;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;

    return-object p0
.end method
