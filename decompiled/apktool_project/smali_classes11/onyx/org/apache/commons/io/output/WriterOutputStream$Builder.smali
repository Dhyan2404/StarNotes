.class public Lonyx/org/apache/commons/io/output/WriterOutputStream$Builder;
.super Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/output/WriterOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lonyx/org/apache/commons/io/build/AbstractStreamBuilder<",
        "Lonyx/org/apache/commons/io/output/WriterOutputStream;",
        "Lonyx/org/apache/commons/io/output/WriterOutputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public l:Ljava/nio/charset/CharsetDecoder;

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lonyx/org/apache/commons/io/output/WriterOutputStream$Builder;->l:Ljava/nio/charset/CharsetDecoder;

    return-void
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
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/output/WriterOutputStream$Builder;->get()Lonyx/org/apache/commons/io/output/WriterOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public get()Lonyx/org/apache/commons/io/output/WriterOutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lonyx/org/apache/commons/io/output/WriterOutputStream;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getWriter()Ljava/io/Writer;

    move-result-object v1

    iget-object v2, p0, Lonyx/org/apache/commons/io/output/WriterOutputStream$Builder;->l:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getBufferSize()I

    move-result v3

    iget-boolean p0, p0, Lonyx/org/apache/commons/io/output/WriterOutputStream$Builder;->m:Z

    invoke-direct {v0, v1, v2, v3, p0}, Lonyx/org/apache/commons/io/output/WriterOutputStream;-><init>(Ljava/io/Writer;Ljava/nio/charset/CharsetDecoder;IZ)V

    return-object v0
.end method

.method public bridge synthetic setCharset(Ljava/lang/String;)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/output/WriterOutputStream$Builder;->setCharset(Ljava/lang/String;)Lonyx/org/apache/commons/io/output/WriterOutputStream$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setCharset(Ljava/nio/charset/Charset;)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/output/WriterOutputStream$Builder;->setCharset(Ljava/nio/charset/Charset;)Lonyx/org/apache/commons/io/output/WriterOutputStream$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setCharset(Ljava/lang/String;)Lonyx/org/apache/commons/io/output/WriterOutputStream$Builder;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->setCharset(Ljava/lang/String;)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;

    .line 6
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/output/WriterOutputStream$Builder;->l:Ljava/nio/charset/CharsetDecoder;

    return-object p0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lonyx/org/apache/commons/io/output/WriterOutputStream$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->setCharset(Ljava/nio/charset/Charset;)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;

    .line 4
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/output/WriterOutputStream$Builder;->l:Ljava/nio/charset/CharsetDecoder;

    return-object p0
.end method

.method public setCharsetDecoder(Ljava/nio/charset/CharsetDecoder;)Lonyx/org/apache/commons/io/output/WriterOutputStream$Builder;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getCharsetDefault()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lonyx/org/apache/commons/io/output/WriterOutputStream$Builder;->l:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-super {p0, p1}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->setCharset(Ljava/nio/charset/Charset;)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;

    return-object p0
.end method

.method public setWriteImmediately(Z)Lonyx/org/apache/commons/io/output/WriterOutputStream$Builder;
    .locals 0

    iput-boolean p1, p0, Lonyx/org/apache/commons/io/output/WriterOutputStream$Builder;->m:Z

    return-object p0
.end method
