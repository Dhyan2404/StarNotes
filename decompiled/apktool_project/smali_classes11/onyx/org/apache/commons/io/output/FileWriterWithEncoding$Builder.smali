.class public Lonyx/org/apache/commons/io/output/FileWriterWithEncoding$Builder;
.super Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/output/FileWriterWithEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lonyx/org/apache/commons/io/build/AbstractStreamBuilder<",
        "Lonyx/org/apache/commons/io/output/FileWriterWithEncoding;",
        "Lonyx/org/apache/commons/io/output/FileWriterWithEncoding$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public l:Z

.field public m:Ljava/nio/charset/CharsetEncoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    invoke-super {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lonyx/org/apache/commons/io/output/FileWriterWithEncoding$Builder;->m:Ljava/nio/charset/CharsetEncoder;

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
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/output/FileWriterWithEncoding$Builder;->get()Lonyx/org/apache/commons/io/output/FileWriterWithEncoding;

    move-result-object p0

    return-object p0
.end method

.method public get()Lonyx/org/apache/commons/io/output/FileWriterWithEncoding;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lonyx/org/apache/commons/io/output/FileWriterWithEncoding$Builder;->m:Ljava/nio/charset/CharsetEncoder;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lonyx/org/apache/commons/io/output/FileWriterWithEncoding$Builder;->m:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    iget-object p0, p0, Lonyx/org/apache/commons/io/output/FileWriterWithEncoding$Builder;->m:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Mismatched Charset(%s) and CharsetEncoder(%s)"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lonyx/org/apache/commons/io/output/FileWriterWithEncoding$Builder;->m:Ljava/nio/charset/CharsetEncoder;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 5
    :goto_1
    new-instance v1, Lonyx/org/apache/commons/io/output/FileWriterWithEncoding;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->checkOrigin()Lonyx/org/apache/commons/io/build/AbstractOrigin;

    move-result-object v2

    invoke-virtual {v2}, Lonyx/org/apache/commons/io/build/AbstractOrigin;->getFile()Ljava/io/File;

    move-result-object v2

    iget-boolean p0, p0, Lonyx/org/apache/commons/io/output/FileWriterWithEncoding$Builder;->l:Z

    invoke-static {v2, v0, p0}, Lonyx/org/apache/commons/io/output/FileWriterWithEncoding;->f(Ljava/io/File;Ljava/lang/Object;Z)Ljava/io/OutputStreamWriter;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lonyx/org/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/OutputStreamWriter;Lonyx/org/apache/commons/io/output/FileWriterWithEncoding$a;)V

    return-object v1
.end method

.method public setAppend(Z)Lonyx/org/apache/commons/io/output/FileWriterWithEncoding$Builder;
    .locals 0

    iput-boolean p1, p0, Lonyx/org/apache/commons/io/output/FileWriterWithEncoding$Builder;->l:Z

    return-object p0
.end method

.method public setCharsetEncoder(Ljava/nio/charset/CharsetEncoder;)Lonyx/org/apache/commons/io/output/FileWriterWithEncoding$Builder;
    .locals 0

    iput-object p1, p0, Lonyx/org/apache/commons/io/output/FileWriterWithEncoding$Builder;->m:Ljava/nio/charset/CharsetEncoder;

    return-object p0
.end method
