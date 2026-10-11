.class public Lonyx/org/apache/commons/io/input/XmlStreamReader$Builder;
.super Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/input/XmlStreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lonyx/org/apache/commons/io/build/AbstractStreamBuilder<",
        "Lonyx/org/apache/commons/io/input/XmlStreamReader;",
        "Lonyx/org/apache/commons/io/input/XmlStreamReader$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public l:Z

.field public m:Z

.field public n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lonyx/org/apache/commons/io/input/XmlStreamReader$Builder;->l:Z

    iput-boolean v0, p0, Lonyx/org/apache/commons/io/input/XmlStreamReader$Builder;->m:Z

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
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/XmlStreamReader$Builder;->get()Lonyx/org/apache/commons/io/input/XmlStreamReader;

    move-result-object p0

    return-object p0
.end method

.method public get()Lonyx/org/apache/commons/io/input/XmlStreamReader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lonyx/org/apache/commons/io/input/XmlStreamReader$Builder;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_0
    iget-object v1, p0, Lonyx/org/apache/commons/io/input/XmlStreamReader$Builder;->n:Ljava/lang/String;

    if-nez v1, :cond_1

    new-instance v1, Lonyx/org/apache/commons/io/input/XmlStreamReader;

    .line 4
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-boolean p0, p0, Lonyx/org/apache/commons/io/input/XmlStreamReader$Builder;->m:Z

    invoke-direct {v1, v2, p0, v0}, Lonyx/org/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/io/InputStream;ZLjava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v1, Lonyx/org/apache/commons/io/input/XmlStreamReader;

    .line 5
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lonyx/org/apache/commons/io/input/XmlStreamReader$Builder;->n:Ljava/lang/String;

    iget-boolean p0, p0, Lonyx/org/apache/commons/io/input/XmlStreamReader$Builder;->m:Z

    invoke-direct {v1, v2, v3, p0, v0}, Lonyx/org/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;ZLjava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public bridge synthetic setCharset(Ljava/lang/String;)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/input/XmlStreamReader$Builder;->setCharset(Ljava/lang/String;)Lonyx/org/apache/commons/io/input/XmlStreamReader$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setCharset(Ljava/nio/charset/Charset;)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/input/XmlStreamReader$Builder;->setCharset(Ljava/nio/charset/Charset;)Lonyx/org/apache/commons/io/input/XmlStreamReader$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setCharset(Ljava/lang/String;)Lonyx/org/apache/commons/io/input/XmlStreamReader$Builder;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iput-boolean v0, p0, Lonyx/org/apache/commons/io/input/XmlStreamReader$Builder;->l:Z

    .line 6
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getCharsetDefault()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p1, v0}, Lonyx/org/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-super {p0, p1}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->setCharset(Ljava/nio/charset/Charset;)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/input/XmlStreamReader$Builder;

    return-object p0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lonyx/org/apache/commons/io/input/XmlStreamReader$Builder;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iput-boolean v0, p0, Lonyx/org/apache/commons/io/input/XmlStreamReader$Builder;->l:Z

    .line 4
    invoke-super {p0, p1}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->setCharset(Ljava/nio/charset/Charset;)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/input/XmlStreamReader$Builder;

    return-object p0
.end method

.method public setHttpContentType(Ljava/lang/String;)Lonyx/org/apache/commons/io/input/XmlStreamReader$Builder;
    .locals 0

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/XmlStreamReader$Builder;->n:Ljava/lang/String;

    return-object p0
.end method

.method public setLenient(Z)Lonyx/org/apache/commons/io/input/XmlStreamReader$Builder;
    .locals 0

    iput-boolean p1, p0, Lonyx/org/apache/commons/io/input/XmlStreamReader$Builder;->m:Z

    return-object p0
.end method
