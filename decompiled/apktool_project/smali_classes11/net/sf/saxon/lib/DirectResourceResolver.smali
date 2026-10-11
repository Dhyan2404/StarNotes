.class public Lnet/sf/saxon/lib/DirectResourceResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/ResourceResolver;


# instance fields
.field public final e:Lnet/sf/saxon/Configuration;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/lib/DirectResourceResolver;->e:Lnet/sf/saxon/Configuration;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/lib/DirectResourceResolver;->b(Ljava/lang/String;Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;
    .locals 1

    new-instance v0, Lnet/sf/saxon/event/IDFilter;

    invoke-direct {v0, p1, p0}, Lnet/sf/saxon/event/IDFilter;-><init>(Lnet/sf/saxon/event/Receiver;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public resolve(Lnet/sf/saxon/lib/ResourceRequest;)Ljavax/xml/transform/Source;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p1, Lnet/sf/saxon/lib/ResourceRequest;->uriIsNamespace:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/lib/DirectResourceResolver;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getProtocolRestrictor()Lnet/sf/saxon/lib/ProtocolRestrictor;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/lib/ProtocolRestrictor;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "all"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :try_start_0
    new-instance v2, Ljava/net/URI;

    iget-object v3, p1, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/lib/ProtocolRestrictor;->test(Ljava/net/URI;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URIs using protocol "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " are not permitted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown URI scheme requested "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object v0, p1, Lnet/sf/saxon/lib/ResourceRequest;->relativeUri:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p1, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    :cond_3
    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x1

    if-ltz v2, :cond_4

    invoke-virtual {p1}, Lnet/sf/saxon/lib/ResourceRequest;->copy()Lnet/sf/saxon/lib/ResourceRequest;

    move-result-object p1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lnet/sf/saxon/lib/ResourceRequest;->relativeUri:Ljava/lang/String;

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    iget-object v2, p1, Lnet/sf/saxon/lib/ResourceRequest;->nature:Ljava/lang/String;

    const-string v4, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :try_start_1
    iget-object v2, p1, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    const-string v4, "classpath:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p1, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_5
    iget-object v4, p0, Lnet/sf/saxon/lib/DirectResourceResolver;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {v4}, Lnet/sf/saxon/Configuration;->getDynamicLoader()Lnet/sf/saxon/lib/IDynamicLoader;

    move-result-object v4

    invoke-interface {v4, v2}, Lnet/sf/saxon/lib/IDynamicLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_2

    :cond_6
    new-instance v2, Ljava/net/URL;

    iget-object v4, p1, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lnet/sf/saxon/resource/ResourceLoader;->urlStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_2
    new-instance v2, Lorg/xml/sax/InputSource;

    iget-object p1, p1, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    invoke-direct {v2, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    new-instance p1, Ljavax/xml/transform/sax/SAXSource;

    iget-object p0, p0, Lnet/sf/saxon/lib/DirectResourceResolver;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getStyleParser()Lorg/xml/sax/XMLReader;

    move-result-object p0

    invoke-direct {p1, p0, v2}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)V

    if-eqz v1, :cond_b

    invoke-static {p1}, Lnet/sf/saxon/lib/AugmentedSource;->makeAugmentedSource(Ljavax/xml/transform/Source;)Lnet/sf/saxon/lib/AugmentedSource;

    move-result-object p1

    invoke-virtual {p1, v3}, Lnet/sf/saxon/lib/AugmentedSource;->setPleaseCloseAfterUse(Z)V

    goto :goto_5

    :cond_7
    const-string p0, "https://www.iana.org/assignments/media-types/application/xml"

    iget-object v2, p1, Lnet/sf/saxon/lib/ResourceRequest;->nature:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    const-string p0, "http://www.w3.org/2001/XMLSchema"

    iget-object v2, p1, Lnet/sf/saxon/lib/ResourceRequest;->nature:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_4

    :cond_8
    new-instance p0, Ljavax/xml/transform/stream/StreamSource;

    iget-object p1, p1, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    :cond_9
    :goto_3
    move-object p1, p0

    goto :goto_5

    :cond_a
    :goto_4
    :try_start_2
    new-instance p0, Ljava/net/URL;

    iget-object v2, p1, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lnet/sf/saxon/resource/ResourceLoader;->urlStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    new-instance p0, Ljavax/xml/transform/stream/StreamSource;

    iget-object p1, p1, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    if-eqz v1, :cond_9

    invoke-static {p0}, Lnet/sf/saxon/lib/AugmentedSource;->makeAugmentedSource(Ljavax/xml/transform/Source;)Lnet/sf/saxon/lib/AugmentedSource;

    move-result-object p0

    invoke-virtual {p0, v3}, Lnet/sf/saxon/lib/AugmentedSource;->setPleaseCloseAfterUse(Z)V

    goto :goto_3

    :cond_b
    :goto_5
    if-eqz v0, :cond_c

    new-instance p0, Lcom/sunia/HTREnginev2/g5f;

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/g5f;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lnet/sf/saxon/lib/AugmentedSource;->makeAugmentedSource(Ljavax/xml/transform/Source;)Lnet/sf/saxon/lib/AugmentedSource;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/lib/AugmentedSource;->addFilter(Lnet/sf/saxon/event/FilterFactory;)V

    :cond_c
    return-object p1
.end method
