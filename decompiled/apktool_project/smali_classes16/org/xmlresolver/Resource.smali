.class public Lorg/xmlresolver/Resource;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:Ljava/net/URI;

.field public final c:Ljava/net/URI;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/net/URI;Ljava/net/URI;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/xmlresolver/Resource;->a:Ljava/io/InputStream;

    .line 3
    iput-object p2, p0, Lorg/xmlresolver/Resource;->b:Ljava/net/URI;

    .line 4
    iput-object p3, p0, Lorg/xmlresolver/Resource;->c:Ljava/net/URI;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lorg/xmlresolver/Resource;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/net/URI;Ljava/net/URI;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lorg/xmlresolver/Resource;->a:Ljava/io/InputStream;

    .line 8
    iput-object p2, p0, Lorg/xmlresolver/Resource;->b:Ljava/net/URI;

    .line 9
    iput-object p3, p0, Lorg/xmlresolver/Resource;->c:Ljava/net/URI;

    .line 10
    iput-object p4, p0, Lorg/xmlresolver/Resource;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0, p1}, Lorg/xmlresolver/Resource;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "data:"

    .line 13
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 14
    invoke-static {p2}, Lorg/xmlresolver/utils/URIUtils;->newURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlresolver/Resource;->b:Ljava/net/URI;

    .line 15
    iput-object p1, p0, Lorg/xmlresolver/Resource;->c:Ljava/net/URI;

    const/4 p1, 0x5

    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    const/4 p2, 0x0

    .line 18
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v0, v2

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ";base64"

    .line 20
    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/xmlresolver/Resource;->a:Ljava/io/InputStream;

    .line 22
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x7

    invoke-virtual {v3, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlresolver/Resource;->d:Ljava/lang/String;

    goto :goto_2

    :cond_0
    const-string v0, ";charset="

    .line 23
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, 0x9

    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ";"

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 26
    invoke-virtual {v0, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "UTF-8"

    .line 27
    :cond_2
    :goto_0
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 28
    new-instance p2, Ljava/io/ByteArrayInputStream;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object p2, p0, Lorg/xmlresolver/Resource;->a:Ljava/io/InputStream;

    const-string p1, ""

    .line 29
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v3

    :goto_1
    iput-object v1, p0, Lorg/xmlresolver/Resource;->d:Ljava/lang/String;

    :goto_2
    return-void

    .line 30
    :cond_4
    new-instance p0, Ljava/net/URISyntaxException;

    const-string p1, "Comma separator missing"

    invoke-direct {p0, p2, p1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_5
    const-string v0, "classpath:"

    .line 31
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "/"

    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_6
    if-nez p1, :cond_7

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    goto :goto_3

    .line 36
    :cond_7
    sget-object v2, Lorg/xmlresolver/ResolverFeature;->CLASSLOADER:Lorg/xmlresolver/ResolverFeature;

    invoke-interface {p1, v2}, Lorg/xmlresolver/ResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ClassLoader;

    .line 37
    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 38
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/xmlresolver/utils/URIUtils;->newURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    iput-object p2, p0, Lorg/xmlresolver/Resource;->b:Ljava/net/URI;

    .line 39
    iput-object p2, p0, Lorg/xmlresolver/Resource;->c:Ljava/net/URI;

    .line 40
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlresolver/Resource;->a:Ljava/io/InputStream;

    .line 41
    iput-object v1, p0, Lorg/xmlresolver/Resource;->d:Ljava/lang/String;

    return-void

    .line 42
    :cond_8
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not found: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_9
    invoke-static {p2}, Lorg/xmlresolver/utils/URIUtils;->newURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlresolver/Resource;->b:Ljava/net/URI;

    .line 44
    iput-object p1, p0, Lorg/xmlresolver/Resource;->c:Ljava/net/URI;

    .line 45
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    iput-object p2, p0, Lorg/xmlresolver/Resource;->a:Ljava/io/InputStream;

    .line 47
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlresolver/Resource;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public body()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/Resource;->a:Ljava/io/InputStream;

    return-object p0
.end method

.method public contentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/Resource;->d:Ljava/lang/String;

    return-object p0
.end method

.method public localUri()Ljava/net/URI;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/Resource;->c:Ljava/net/URI;

    return-object p0
.end method

.method public uri()Ljava/net/URI;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/Resource;->b:Ljava/net/URI;

    return-object p0
.end method
