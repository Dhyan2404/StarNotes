.class final Lcom/sun/org/apache/xml/internal/serialize/SerializerFactoryImpl;
.super Lcom/sun/org/apache/xml/internal/serialize/SerializerFactory;
.source "SourceFile"


# instance fields
.field private _method:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactory;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string v1, "xhtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string v0, "text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "MethodNotSupported"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "http://apache.org/xml/serializer"

    invoke-static {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private getSerializer(Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)Lcom/sun/org/apache/xml/internal/serialize/Serializer;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;-><init>(Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;-><init>(Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string v1, "xhtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lcom/sun/org/apache/xml/internal/serialize/XHTMLSerializer;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/XHTMLSerializer;-><init>(Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V

    return-object p0

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p0, Lcom/sun/org/apache/xml/internal/serialize/TextSerializer;

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serialize/TextSerializer;-><init>()V

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "http://apache.org/xml/serializer"

    const-string v0, "MethodNotSupported"

    invoke-static {p1, v0, p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getSupportedMethod()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    return-object p0
.end method

.method public makeSerializer(Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)Lcom/sun/org/apache/xml/internal/serialize/Serializer;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactoryImpl;->getSerializer(Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)Lcom/sun/org/apache/xml/internal/serialize/Serializer;

    move-result-object p0

    .line 2
    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/Serializer;->setOutputFormat(Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V

    return-object p0
.end method

.method public makeSerializer(Ljava/io/OutputStream;Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)Lcom/sun/org/apache/xml/internal/serialize/Serializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 5
    invoke-direct {p0, p2}, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactoryImpl;->getSerializer(Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)Lcom/sun/org/apache/xml/internal/serialize/Serializer;

    move-result-object p0

    .line 6
    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/Serializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    return-object p0
.end method

.method public makeSerializer(Ljava/io/Writer;Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)Lcom/sun/org/apache/xml/internal/serialize/Serializer;
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactoryImpl;->getSerializer(Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)Lcom/sun/org/apache/xml/internal/serialize/Serializer;

    move-result-object p0

    .line 4
    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/Serializer;->setOutputCharStream(Ljava/io/Writer;)V

    return-object p0
.end method
