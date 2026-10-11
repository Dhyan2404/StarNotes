.class public Lonyx/org/apache/commons/io/input/ReaderInputStream$Builder;
.super Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/input/ReaderInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lonyx/org/apache/commons/io/build/AbstractStreamBuilder<",
        "Lonyx/org/apache/commons/io/input/ReaderInputStream;",
        "Lonyx/org/apache/commons/io/input/ReaderInputStream$Builder;",
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

    invoke-static {v0}, Lonyx/org/apache/commons/io/input/ReaderInputStream;->f(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream$Builder;->l:Ljava/nio/charset/CharsetEncoder;

    return-void
.end method

.method public static synthetic g(Lonyx/org/apache/commons/io/input/ReaderInputStream$Builder;)Ljava/nio/charset/CharsetEncoder;
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/input/ReaderInputStream$Builder;->i()Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    return-object p0
.end method

.method private synthetic i()Ljava/nio/charset/CharsetEncoder;
    .locals 0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getCharsetDefault()Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/input/ReaderInputStream;->f(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

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
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ReaderInputStream$Builder;->get()Lonyx/org/apache/commons/io/input/ReaderInputStream;

    move-result-object p0

    return-object p0
.end method

.method public get()Lonyx/org/apache/commons/io/input/ReaderInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lonyx/org/apache/commons/io/input/ReaderInputStream;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getReader()Ljava/io/Reader;

    move-result-object v1

    iget-object v2, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream$Builder;->l:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getBufferSize()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lonyx/org/apache/commons/io/input/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V

    return-object v0
.end method

.method public h()Ljava/nio/charset/CharsetEncoder;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream$Builder;->l:Ljava/nio/charset/CharsetEncoder;

    return-object p0
.end method

.method public bridge synthetic setCharset(Ljava/nio/charset/Charset;)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/input/ReaderInputStream$Builder;->setCharset(Ljava/nio/charset/Charset;)Lonyx/org/apache/commons/io/input/ReaderInputStream$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lonyx/org/apache/commons/io/input/ReaderInputStream$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->setCharset(Ljava/nio/charset/Charset;)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;

    .line 3
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p1}, Lonyx/org/apache/commons/io/input/ReaderInputStream;->f(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream$Builder;->l:Ljava/nio/charset/CharsetEncoder;

    return-object p0
.end method

.method public setCharsetEncoder(Ljava/nio/charset/CharsetEncoder;)Lonyx/org/apache/commons/io/input/ReaderInputStream$Builder;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/edl;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/edl;-><init>(Lonyx/org/apache/commons/io/input/ReaderInputStream$Builder;)V

    invoke-static {p1, v0}, Lonyx/org/apache/commons/io/charset/CharsetEncoders;->toCharsetEncoder(Ljava/nio/charset/CharsetEncoder;Ljava/util/function/Supplier;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/ReaderInputStream$Builder;->l:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p1}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-super {p0, p1}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->setCharset(Ljava/nio/charset/Charset;)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;

    return-object p0
.end method
