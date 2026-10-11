.class public Lcom/sun/org/apache/xml/internal/serialize/XHTMLSerializer;
.super Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "xhtml"

    invoke-direct {v0, v3, v1, v2}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;-><init>(ZLcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "xhtml"

    invoke-direct {p1, v2, v0, v1}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;-><init>(ZLcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V
    .locals 3

    if-eqz p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p2, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "xhtml"

    invoke-direct {p2, v2, v0, v1}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;-><init>(ZLcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V
    .locals 3

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "xhtml"

    invoke-direct {p2, v2, v0, v1}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;-><init>(ZLcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->setOutputCharStream(Ljava/io/Writer;)V

    return-void
.end method


# virtual methods
.method public setOutputFormat(Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "xhtml"

    invoke-direct {p1, v2, v0, v1}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;->setOutputFormat(Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V

    return-void
.end method
