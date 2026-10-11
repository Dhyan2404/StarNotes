.class public Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;
.super Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/input/CharSequenceInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lonyx/org/apache/commons/io/build/AbstractStreamBuilder<",
        "Lonyx/org/apache/commons/io/input/CharSequenceInputStream;",
        "Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public l:Ljava/nio/charset/CharsetEncoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {v0}, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->f(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;->l:Ljava/nio/charset/CharsetEncoder;

    return-void
.end method

.method public static synthetic g(Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;)Lonyx/org/apache/commons/io/input/CharSequenceInputStream;
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;->j()Lonyx/org/apache/commons/io/input/CharSequenceInputStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;)Ljava/nio/charset/CharsetEncoder;
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;->k()Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    return-object p0
.end method

.method private synthetic j()Lonyx/org/apache/commons/io/input/CharSequenceInputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getBufferSize()I

    move-result v2

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;->l:Ljava/nio/charset/CharsetEncoder;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;-><init>(Ljava/lang/CharSequence;ILjava/nio/charset/CharsetEncoder;Lonyx/org/apache/commons/io/input/CharSequenceInputStream$a;)V

    return-object v0
.end method

.method private synthetic k()Ljava/nio/charset/CharsetEncoder;
    .locals 0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getCharsetDefault()Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->f(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;->get()Lonyx/org/apache/commons/io/input/CharSequenceInputStream;

    move-result-object p0

    return-object p0
.end method

.method public get()Lonyx/org/apache/commons/io/input/CharSequenceInputStream;
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/wqd;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/wqd;-><init>(Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;)V

    invoke-static {v0}, Lonyx/org/apache/commons/io/function/Uncheck;->get(Lonyx/org/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;

    return-object p0
.end method

.method public i()Ljava/nio/charset/CharsetEncoder;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;->l:Ljava/nio/charset/CharsetEncoder;

    return-object p0
.end method

.method public bridge synthetic setCharset(Ljava/nio/charset/Charset;)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;->setCharset(Ljava/nio/charset/Charset;)Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->setCharset(Ljava/nio/charset/Charset;)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;

    .line 3
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p1}, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->f(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;->l:Ljava/nio/charset/CharsetEncoder;

    return-object p0
.end method

.method public setCharsetEncoder(Ljava/nio/charset/CharsetEncoder;)Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/xqd;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/xqd;-><init>(Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;)V

    invoke-static {p1, v0}, Lonyx/org/apache/commons/io/charset/CharsetEncoders;->toCharsetEncoder(Ljava/nio/charset/CharsetEncoder;Ljava/util/function/Supplier;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;->l:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p1}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-super {p0, p1}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->setCharset(Ljava/nio/charset/Charset;)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;

    return-object p0
.end method
