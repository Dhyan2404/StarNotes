.class public Lonyx/org/apache/commons/io/build/AbstractOrigin$ReaderOrigin;
.super Lonyx/org/apache/commons/io/build/AbstractOrigin;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/build/AbstractOrigin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReaderOrigin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lonyx/org/apache/commons/io/build/AbstractOrigin<",
        "Ljava/io/Reader;",
        "Lonyx/org/apache/commons/io/build/AbstractOrigin$ReaderOrigin;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/build/AbstractOrigin;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getByteArray()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lonyx/org/apache/commons/io/build/AbstractOrigin;->a:Ljava/lang/Object;

    check-cast p0, Ljava/io/Reader;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lonyx/org/apache/commons/io/IOUtils;->toByteArray(Ljava/io/Reader;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public getCharSequence(Ljava/nio/charset/Charset;)Ljava/lang/CharSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lonyx/org/apache/commons/io/build/AbstractOrigin;->a:Ljava/lang/Object;

    check-cast p0, Ljava/io/Reader;

    invoke-static {p0}, Lonyx/org/apache/commons/io/IOUtils;->toString(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public varargs getInputStream([Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lonyx/org/apache/commons/io/input/ReaderInputStream;->builder()Lonyx/org/apache/commons/io/input/ReaderInputStream$Builder;

    move-result-object p1

    iget-object p0, p0, Lonyx/org/apache/commons/io/build/AbstractOrigin;->a:Ljava/lang/Object;

    check-cast p0, Ljava/io/Reader;

    invoke-virtual {p1, p0}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->setReader(Ljava/io/Reader;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/input/ReaderInputStream$Builder;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/input/ReaderInputStream$Builder;->setCharset(Ljava/nio/charset/Charset;)Lonyx/org/apache/commons/io/input/ReaderInputStream$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ReaderInputStream$Builder;->get()Lonyx/org/apache/commons/io/input/ReaderInputStream;

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

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractOrigin;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/Reader;

    return-object p0
.end method
