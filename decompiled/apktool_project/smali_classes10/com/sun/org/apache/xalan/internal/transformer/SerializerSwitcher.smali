.class public Lcom/sun/org/apache/xalan/internal/transformer/SerializerSwitcher;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getOutputPropertyNoDefault(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static switchSerializerIfHTML(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Lcom/sun/org/apache/xml/internal/serializer/Serializer;)Lcom/sun/org/apache/xml/internal/serializer/Serializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_4

    :cond_0
    const-string p0, "html"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "method"

    .line 8
    invoke-static {p1, p2}, Lcom/sun/org/apache/xalan/internal/transformer/SerializerSwitcher;->getOutputPropertyNoDefault(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p3

    .line 9
    :cond_1
    new-instance p1, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 10
    invoke-virtual {p1, p2, p0}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->copyFrom(Ljava/util/Properties;Z)V

    .line 11
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object p0

    if-eqz p3, :cond_4

    .line 12
    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lcom/sun/org/apache/xml/internal/serializer/Serializer;

    move-result-object p0

    .line 13
    invoke-interface {p3}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->getWriter()Ljava/io/Writer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 14
    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->setWriter(Ljava/io/Writer;)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 16
    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    :cond_3
    :goto_0
    move-object p3, p0

    :cond_4
    return-object p3
.end method

.method public static switchSerializerIfHTML(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_3

    :cond_1
    const-string p1, "html"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "method"

    .line 2
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getOutputPropertyNoDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    return-void

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getOutputFormat()Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object p0

    .line 4
    new-instance p2, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    invoke-direct {p2, p1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p2, p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->copyFrom(Ljava/util/Properties;Z)V

    .line 6
    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    :cond_3
    return-void
.end method
