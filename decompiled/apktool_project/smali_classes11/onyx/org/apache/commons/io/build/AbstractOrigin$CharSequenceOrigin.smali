.class public Lonyx/org/apache/commons/io/build/AbstractOrigin$CharSequenceOrigin;
.super Lonyx/org/apache/commons/io/build/AbstractOrigin;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/build/AbstractOrigin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharSequenceOrigin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lonyx/org/apache/commons/io/build/AbstractOrigin<",
        "Ljava/lang/CharSequence;",
        "Lonyx/org/apache/commons/io/build/AbstractOrigin$CharSequenceOrigin;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/build/AbstractOrigin;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getByteArray()[B
    .locals 1

    iget-object p0, p0, Lonyx/org/apache/commons/io/build/AbstractOrigin;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public getCharSequence(Ljava/nio/charset/Charset;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractOrigin;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public varargs getInputStream([Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lonyx/org/apache/commons/io/input/CharSequenceInputStream;->builder()Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;

    move-result-object p1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/build/AbstractOrigin$CharSequenceOrigin;->getCharSequence(Ljava/nio/charset/Charset;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->setCharSequence(Ljava/lang/CharSequence;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;->get()Lonyx/org/apache/commons/io/input/CharSequenceInputStream;

    move-result-object p0

    return-object p0
.end method

.method public getReader(Ljava/nio/charset/Charset;)Ljava/io/Reader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Lonyx/org/apache/commons/io/input/CharSequenceReader;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractOrigin;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-direct {p1, p0}, Lonyx/org/apache/commons/io/input/CharSequenceReader;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lonyx/org/apache/commons/io/build/AbstractOrigin;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method
