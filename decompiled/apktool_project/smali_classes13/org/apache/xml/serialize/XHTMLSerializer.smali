.class public Lorg/apache/xml/serialize/XHTMLSerializer;
.super Lorg/apache/xml/serialize/HTMLSerializer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/xml/serialize/OutputFormat;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "xhtml"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lorg/apache/xml/serialize/HTMLSerializer;-><init>(ZLorg/apache/xml/serialize/OutputFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/apache/xml/serialize/OutputFormat;)V
    .locals 3

    .line 2
    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/apache/xml/serialize/OutputFormat;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "xhtml"

    invoke-direct {p2, v2, v0, v1}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lorg/apache/xml/serialize/HTMLSerializer;-><init>(ZLorg/apache/xml/serialize/OutputFormat;)V

    invoke-virtual {p0, p1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lorg/apache/xml/serialize/OutputFormat;)V
    .locals 3

    .line 3
    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/apache/xml/serialize/OutputFormat;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "xhtml"

    invoke-direct {p2, v2, v0, v1}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lorg/apache/xml/serialize/HTMLSerializer;-><init>(ZLorg/apache/xml/serialize/OutputFormat;)V

    invoke-virtual {p0, p1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->setOutputCharStream(Ljava/io/Writer;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/serialize/OutputFormat;)V
    .locals 3

    .line 4
    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/xml/serialize/OutputFormat;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "xhtml"

    invoke-direct {p1, v2, v0, v1}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/apache/xml/serialize/HTMLSerializer;-><init>(ZLorg/apache/xml/serialize/OutputFormat;)V

    return-void
.end method


# virtual methods
.method public setOutputFormat(Lorg/apache/xml/serialize/OutputFormat;)V
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/xml/serialize/OutputFormat;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "xhtml"

    invoke-direct {p1, v2, v0, v1}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-super {p0, p1}, Lorg/apache/xml/serialize/HTMLSerializer;->setOutputFormat(Lorg/apache/xml/serialize/OutputFormat;)V

    return-void
.end method
