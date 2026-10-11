.class public Lnet/sf/saxon/trans/CommandLineOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/trans/CommandLineOptions$ParamSetter;
    }
.end annotation


# static fields
.field public static final TYPE_BOOLEAN:I = 0x1

.field public static final TYPE_CLASSNAME:I = 0x3

.field public static final TYPE_DATETIME:I = 0x8

.field public static final TYPE_ENUMERATION:I = 0x4

.field public static final TYPE_FILENAME:I = 0x2

.field public static final TYPE_FILENAME_LIST:I = 0x7

.field public static final TYPE_INTEGER:I = 0x5

.field public static final TYPE_INTEGER_PAIR:I = 0xa

.field public static final TYPE_QNAME:I = 0x6

.field public static final TYPE_STRING:I = 0x9

.field public static final VALUE_PROHIBITED:I = 0x200

.field public static final VALUE_REQUIRED:I = 0x100


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Properties;

.field public final d:Ljava/util/Properties;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Properties;

.field public final i:Ljava/util/Properties;

.field public final j:Ljava/util/Properties;

.field public final k:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/CommandLineOptions;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/CommandLineOptions;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/CommandLineOptions;->c:Ljava/util/Properties;

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/CommandLineOptions;->d:Ljava/util/Properties;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/CommandLineOptions;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/CommandLineOptions;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/CommandLineOptions;->g:Ljava/util/List;

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/CommandLineOptions;->h:Ljava/util/Properties;

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/CommandLineOptions;->i:Ljava/util/Properties;

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/CommandLineOptions;->j:Ljava/util/Properties;

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/CommandLineOptions;->k:Ljava/util/Properties;

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/XdmValue;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/trans/CommandLineOptions;->e(Ljava/util/Map;Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/XdmValue;)V

    return-void
.end method

.method public static d(Ljava/util/Set;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "\"\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/util/Map;Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/XdmValue;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XdmValue;

    return-void
.end method

.method public static featureKeys()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lnet/sf/saxon/lib/FeatureIndex;->getNames()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "\n  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCommandName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "cli.Saxon.Cmd.DotNet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static isImplicitURI(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "http:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "file:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "classpath:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static loadAdditionalSchemas(Lnet/sf/saxon/Configuration;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/SchemaException;
        }
    .end annotation

    new-instance v0, Ljava/util/StringTokenizer;

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {p1, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->addSchemaSource(Ljavax/xml/transform/Source;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/type/SchemaException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Schema document "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/SchemaException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public static loadDocuments(Ljava/lang/String;ZLnet/sf/saxon/s9api/Processor;ZLjava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lnet/sf/saxon/s9api/Processor;",
            "Z",
            "Ljava/util/List<",
            "Ljavax/xml/transform/Source;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    invoke-virtual {p2}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_9

    invoke-static {p0}, Lnet/sf/saxon/trans/CommandLineOptions;->isImplicitURI(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string p1, "-"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    new-instance p0, Ljavax/xml/transform/sax/SAXSource;

    new-instance p1, Lorg/xml/sax/InputSource;

    sget-object p2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {p1, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, p1}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljavax/xml/transform/stream/StreamSource;

    sget-object p1, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {p0, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    :cond_2
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getSourceParser()Lorg/xml/sax/XMLReader;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    array-length v2, p2

    :goto_1
    if-ge v1, v2, :cond_5

    aget-object v3, p2, v1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->isHidden()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p3, :cond_3

    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-virtual {v4}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljavax/xml/transform/sax/SAXSource;

    invoke-direct {v4, p0, v3}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)V

    goto :goto_2

    :cond_3
    new-instance v3, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {v4}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    move-object v4, v3

    :goto_2
    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return v0

    :cond_6
    if-eqz p3, :cond_7

    new-instance p0, Lorg/xml/sax/InputSource;

    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljavax/xml/transform/sax/SAXSource;

    invoke-direct {p1, p0}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    goto :goto_3

    :cond_7
    new-instance p0, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    move-object p1, p0

    :goto_3
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    :cond_8
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Source file "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_4
    :try_start_0
    new-instance p1, Lnet/sf/saxon/lib/ResourceRequest;

    invoke-direct {p1}, Lnet/sf/saxon/lib/ResourceRequest;-><init>()V

    iput-object p0, p1, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    const-string p0, "https://www.iana.org/assignments/media-types/application/xml"

    iput-object p0, p1, Lnet/sf/saxon/lib/ResourceRequest;->nature:Ljava/lang/String;

    const-string p0, "source document"

    iput-object p0, p1, Lnet/sf/saxon/lib/ResourceRequest;->purpose:Ljava/lang/String;

    const/4 p0, 0x2

    new-array p0, p0, [Lnet/sf/saxon/lib/ResourceResolver;

    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object p3

    aput-object p3, p0, v1

    new-instance p3, Lnet/sf/saxon/lib/DirectResourceResolver;

    invoke-direct {p3, p2}, Lnet/sf/saxon/lib/DirectResourceResolver;-><init>(Lnet/sf/saxon/Configuration;)V

    aput-object p3, p0, v0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/lib/ResourceRequest;->resolve([Lnet/sf/saxon/lib/ResourceResolver;)Ljavax/xml/transform/Source;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static setCatalogFiles(Lnet/sf/saxon/lib/ConfigurableResourceResolver;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/lib/ConfigurableResourceResolver;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CATALOG_FILES:Lorg/xmlresolver/ResolverFeature;

    invoke-interface {p0, v0, p1}, Lnet/sf/saxon/lib/ConfigurableResourceResolver;->setFeature(Lorg/xmlresolver/ResolverFeature;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/trans/CommandLineOptions;->a:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lnet/sf/saxon/trans/CommandLineOptions;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 p2, p2, 0xff

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    const-string p2, "off"

    const-string p3, "on"

    filled-new-array {p3, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/trans/CommandLineOptions;->setPermittedValues(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public applyFileParams(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/s9api/Xslt30Transformer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/CommandLineOptions;->j:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/y3e;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/y3e;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->b(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/trans/CommandLineOptions$ParamSetter;)V

    invoke-virtual {p2, v0}, Lnet/sf/saxon/s9api/Xslt30Transformer;->setStylesheetParameters(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public applyStaticParams(Lnet/sf/saxon/s9api/XsltCompiler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XsltCompiler;->getProcessor()Lnet/sf/saxon/s9api/Processor;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/trans/CommandLineOptions;->h:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lnet/sf/saxon/trans/CommandLineOptions;->h:Ljava/util/Properties;

    invoke-virtual {v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lnet/sf/saxon/s9api/QName;->fromClarkName(Ljava/lang/String;)Lnet/sf/saxon/s9api/QName;

    move-result-object v2

    new-instance v4, Lnet/sf/saxon/s9api/XdmAtomicValue;

    sget-object v5, Lnet/sf/saxon/s9api/ItemType;->UNTYPED_ATOMIC:Lnet/sf/saxon/s9api/ItemType;

    invoke-direct {v4, v3, v5}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Ljava/lang/String;Lnet/sf/saxon/s9api/ItemType;)V

    invoke-virtual {p1, v2, v4}, Lnet/sf/saxon/s9api/XsltCompiler;->setParameter(Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/XdmValue;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/trans/CommandLineOptions;->i:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lnet/sf/saxon/trans/CommandLineOptions;->i:Ljava/util/Properties;

    invoke-virtual {v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/Processor;->newXPathCompiler()Lnet/sf/saxon/s9api/XPathCompiler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lnet/sf/saxon/s9api/XPathCompiler;->compile(Ljava/lang/String;)Lnet/sf/saxon/s9api/XPathExecutable;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/s9api/XPathExecutable;->load()Lnet/sf/saxon/s9api/XPathSelector;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/s9api/XPathSelector;->evaluate()Lnet/sf/saxon/s9api/XdmValue;

    move-result-object v3

    invoke-static {v2}, Lnet/sf/saxon/s9api/QName;->fromClarkName(Ljava/lang/String;)Lnet/sf/saxon/s9api/QName;

    move-result-object v2

    invoke-virtual {p1, v2, v3}, Lnet/sf/saxon/s9api/XsltCompiler;->setParameter(Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/XdmValue;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public applyToConfiguration(Lnet/sf/saxon/s9api/Processor;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/trans/CommandLineOptions;->d:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lnet/sf/saxon/trans/CommandLineOptions;->d:Ljava/util/Properties;

    invoke-virtual {v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://saxon.sf.net/feature/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "parserFeature?"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "parserProperty?"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v4}, Lnet/sf/saxon/lib/FeatureIndex;->exists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v4}, Lnet/sf/saxon/lib/FeatureIndex;->getData(Ljava/lang/String;)Lnet/sf/saxon/lib/FeatureData;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, v5, Lnet/sf/saxon/lib/FeatureData;->type:Ljava/lang/Class;

    const-class v6, Ljava/lang/Boolean;

    if-ne v5, v6, :cond_0

    invoke-static {v2, v3}, Lnet/sf/saxon/Configuration;->requireBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-class v6, Ljava/lang/Integer;

    if-ne v5, v6, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Property --"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cannot be supplied as a string"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown configuration feature "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown configuration property --"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lnet/sf/saxon/Configuration;->setConfigurationProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect value for --"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const-string v1, "catalog"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "u"

    invoke-virtual {p0, v5}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Catalog file not found: "

    const-string v7, ";"

    if-nez v5, :cond_9

    invoke-static {v2}, Lnet/sf/saxon/trans/CommandLineOptions;->isImplicitURI(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v5, v3

    :goto_2
    if-ge v5, v2, :cond_a

    aget-object v7, v1, v5

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v8}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_3
    new-instance v5, Lnet/sf/saxon/lib/ResourceRequest;

    invoke-direct {v5}, Lnet/sf/saxon/lib/ResourceRequest;-><init>()V

    const-string v8, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    iput-object v8, v5, Lnet/sf/saxon/lib/ResourceRequest;->nature:Ljava/lang/String;

    iput-object v1, v5, Lnet/sf/saxon/lib/ResourceRequest;->purpose:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v7, v3

    :goto_4
    if-ge v7, v2, :cond_a

    aget-object v8, v1, v7

    :try_start_1
    iput-object v8, v5, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    new-instance v9, Lnet/sf/saxon/lib/DirectResourceResolver;

    invoke-direct {v9, v0}, Lnet/sf/saxon/lib/DirectResourceResolver;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v9, v5}, Lnet/sf/saxon/lib/DirectResourceResolver;->resolve(Lnet/sf/saxon/lib/ResourceRequest;)Ljavax/xml/transform/Source;

    move-result-object v8
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-interface {v8}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :catch_1
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_a
    invoke-virtual {p0, v0, v4}, Lnet/sf/saxon/trans/CommandLineOptions;->f(Lnet/sf/saxon/Configuration;Ljava/util/List;)V

    :cond_b
    const-string v1, "dtd"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "recover"

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :goto_5
    move v1, v4

    goto :goto_6

    :sswitch_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_5

    :cond_c
    move v1, v5

    goto :goto_6

    :sswitch_1
    const-string v7, "off"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_5

    :cond_d
    move v1, v6

    goto :goto_6

    :sswitch_2
    const-string v7, "on"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_5

    :cond_e
    move v1, v3

    :goto_6
    packed-switch v1, :pswitch_data_0

    goto :goto_7

    :pswitch_0
    sget-object v1, Lnet/sf/saxon/lib/Feature;->DTD_VALIDATION:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, v1, v6}, Lnet/sf/saxon/Configuration;->setBooleanProperty(Lnet/sf/saxon/lib/Feature;Z)V

    sget-object v1, Lnet/sf/saxon/lib/Feature;->DTD_VALIDATION_RECOVERABLE:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, v1, v6}, Lnet/sf/saxon/Configuration;->setBooleanProperty(Lnet/sf/saxon/lib/Feature;Z)V

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v1

    invoke-virtual {v1, v5}, Lnet/sf/saxon/lib/ParseOptions;->setDTDValidationMode(I)V

    goto :goto_7

    :pswitch_1
    sget-object v1, Lnet/sf/saxon/lib/Feature;->DTD_VALIDATION:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, v1, v3}, Lnet/sf/saxon/Configuration;->setBooleanProperty(Lnet/sf/saxon/lib/Feature;Z)V

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v1

    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Lnet/sf/saxon/lib/ParseOptions;->setDTDValidationMode(I)V

    goto :goto_7

    :pswitch_2
    sget-object v1, Lnet/sf/saxon/lib/Feature;->DTD_VALIDATION:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, v1, v6}, Lnet/sf/saxon/Configuration;->setBooleanProperty(Lnet/sf/saxon/lib/Feature;Z)V

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v1

    invoke-virtual {v1, v6}, Lnet/sf/saxon/lib/ParseOptions;->setDTDValidationMode(I)V

    :cond_f
    :goto_7
    const-string v1, "ea"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    invoke-static {v1, v7}, Lnet/sf/saxon/Configuration;->requireBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getDefaultXsltCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v7

    invoke-virtual {v7, v1}, Lnet/sf/saxon/trans/CompilerInfo;->setAssertionsEnabled(Z)V

    :cond_10
    const-string v1, "expand"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_11

    invoke-static {v1, v7}, Lnet/sf/saxon/Configuration;->requireBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v7

    invoke-virtual {v7, v1}, Lnet/sf/saxon/lib/ParseOptions;->setExpandAttributeDefaults(Z)V

    :cond_11
    const-string v1, "ext"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_12

    invoke-static {v1, v7}, Lnet/sf/saxon/Configuration;->requireBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    sget-object v7, Lnet/sf/saxon/lib/Feature;->ALLOW_EXTERNAL_FUNCTIONS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, v7, v1}, Lnet/sf/saxon/Configuration;->setBooleanProperty(Lnet/sf/saxon/lib/Feature;Z)V

    :cond_12
    const-string v1, "l"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_13

    invoke-static {v1, v7}, Lnet/sf/saxon/Configuration;->requireBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    sget-object v7, Lnet/sf/saxon/lib/Feature;->LINE_NUMBERING:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, v7, v1}, Lnet/sf/saxon/Configuration;->setBooleanProperty(Lnet/sf/saxon/lib/Feature;Z)V

    :cond_13
    const-string v1, "m"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    sget-object v7, Lnet/sf/saxon/lib/Feature;->MESSAGE_EMITTER_CLASS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, v7, v1}, Lnet/sf/saxon/Configuration;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    :cond_14
    const-string v1, "opt"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    sget-object v7, Lnet/sf/saxon/lib/Feature;->OPTIMIZATION_LEVEL:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, v7, v1}, Lnet/sf/saxon/Configuration;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    :cond_15
    const-string v1, "or"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lnet/sf/saxon/lib/OutputURIResolver;

    if-eqz v8, :cond_16

    sget-object v1, Lnet/sf/saxon/lib/Feature;->OUTPUT_URI_RESOLVER:Lnet/sf/saxon/lib/Feature;

    check-cast v7, Lnet/sf/saxon/lib/OutputURIResolver;

    invoke-virtual {v0, v1, v7}, Lnet/sf/saxon/Configuration;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    goto :goto_8

    :cond_16
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Class "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not an OutputURIResolver"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    :goto_8
    const-string v1, "outval"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/lib/Feature;->VALIDATION_WARNINGS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/Configuration;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    sget-object v2, Lnet/sf/saxon/lib/Feature;->VALIDATION_COMMENTS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/Configuration;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    :cond_18
    const-string v1, "r"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->makeResourceResolver(Ljava/lang/String;)Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V

    :cond_19
    const-string v1, "strip"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    sget-object v2, Lnet/sf/saxon/lib/Feature;->STRIP_WHITESPACE:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/Configuration;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    :cond_1a
    const-string v1, "T"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0, v6}, Lnet/sf/saxon/Configuration;->setCompileWithTracing(Z)V

    :cond_1b
    const-string v1, "TJ"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-static {v1, v2}, Lnet/sf/saxon/Configuration;->requireBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Lnet/sf/saxon/lib/Feature;->TRACE_EXTERNAL_FUNCTIONS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/Configuration;->setBooleanProperty(Lnet/sf/saxon/lib/Feature;Z)V

    :cond_1c
    const-string v1, "tree"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    goto :goto_9

    :sswitch_3
    const-string v2, "tinyc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_9

    :cond_1d
    move v4, v5

    goto :goto_9

    :sswitch_4
    const-string v2, "tiny"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_9

    :cond_1e
    move v4, v6

    goto :goto_9

    :sswitch_5
    const-string v2, "linked"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_9

    :cond_1f
    move v4, v3

    :goto_9
    packed-switch v4, :pswitch_data_1

    goto :goto_a

    :pswitch_3
    invoke-virtual {v0, v5}, Lnet/sf/saxon/Configuration;->setTreeModel(I)V

    goto :goto_a

    :pswitch_4
    invoke-virtual {v0, v6}, Lnet/sf/saxon/Configuration;->setTreeModel(I)V

    goto :goto_a

    :pswitch_5
    invoke-virtual {v0, v3}, Lnet/sf/saxon/Configuration;->setTreeModel(I)V

    :cond_20
    :goto_a
    const-string v1, "val"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22

    const-string v2, "strict"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    sget-object v1, Lnet/sf/saxon/lib/Feature;->SCHEMA_VALIDATION:Lnet/sf/saxon/lib/Feature;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lnet/sf/saxon/s9api/Processor;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    goto :goto_b

    :cond_21
    const-string v2, "lax"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    sget-object v1, Lnet/sf/saxon/lib/Feature;->SCHEMA_VALIDATION:Lnet/sf/saxon/lib/Feature;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lnet/sf/saxon/s9api/Processor;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    :cond_22
    :goto_b
    const-string v1, "x"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    sget-object v2, Lnet/sf/saxon/lib/Feature;->SOURCE_PARSER_CLASS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p1, v2, v1}, Lnet/sf/saxon/s9api/Processor;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    :cond_23
    const-string v1, "xi"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_24

    invoke-static {v1, v2}, Lnet/sf/saxon/Configuration;->requireBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Lnet/sf/saxon/lib/Feature;->XINCLUDE:Lnet/sf/saxon/lib/Feature;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lnet/sf/saxon/s9api/Processor;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    :cond_24
    const-string v1, "xmlversion"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_25

    sget-object v2, Lnet/sf/saxon/lib/Feature;->XML_VERSION:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p1, v2, v1}, Lnet/sf/saxon/s9api/Processor;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    :cond_25
    const-string v1, "xsdversion"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26

    sget-object v2, Lnet/sf/saxon/lib/Feature;->XSD_VERSION:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p1, v2, v1}, Lnet/sf/saxon/s9api/Processor;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    :cond_26
    const-string v1, "xsiloc"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-static {v1, v2}, Lnet/sf/saxon/Configuration;->requireBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Lnet/sf/saxon/lib/Feature;->USE_XSI_SCHEMA_LOCATION:Lnet/sf/saxon/lib/Feature;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lnet/sf/saxon/s9api/Processor;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    :cond_27
    const-string v1, "y"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_28

    sget-object v2, Lnet/sf/saxon/lib/Feature;->STYLE_PARSER_CLASS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p1, v2, v1}, Lnet/sf/saxon/s9api/Processor;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    :cond_28
    const-string p1, "init"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_29

    invoke-virtual {v0, p0}, Lnet/sf/saxon/Configuration;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/lib/Initializer;

    invoke-interface {p0, v0}, Lnet/sf/saxon/lib/Initializer;->initialize(Lnet/sf/saxon/Configuration;)V

    :cond_29
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xddf -> :sswitch_2
        0x1ad6f -> :sswitch_1
        0x40872d64 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x41b959e7 -> :sswitch_5
        0x365300 -> :sswitch_4
        0x6940d63 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final b(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/trans/CommandLineOptions$ParamSetter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    const-string v0, "u"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lnet/sf/saxon/trans/CommandLineOptions;->j:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lnet/sf/saxon/trans/CommandLineOptions;->j:Ljava/util/Properties;

    invoke-virtual {v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    invoke-static {v3, v0, p1, v5, v4}, Lnet/sf/saxon/trans/CommandLineOptions;->loadDocuments(Ljava/lang/String;ZLnet/sf/saxon/s9api/Processor;ZLjava/util/List;)Z

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/Processor;->newDocumentBuilder()Lnet/sf/saxon/s9api/DocumentBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/xml/transform/Source;

    invoke-virtual {v5, v6}, Lnet/sf/saxon/s9api/DocumentBuilder;->build(Ljavax/xml/transform/Source;)Lnet/sf/saxon/s9api/XdmNode;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v4, Lnet/sf/saxon/s9api/XdmValue;

    invoke-direct {v4, v3}, Lnet/sf/saxon/s9api/XdmValue;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v2}, Lnet/sf/saxon/s9api/QName;->fromClarkName(Ljava/lang/String;)Lnet/sf/saxon/s9api/QName;

    move-result-object v2

    invoke-interface {p2, v2, v4}, Lnet/sf/saxon/trans/CommandLineOptions$ParamSetter;->setParam(Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/XdmValue;)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lnet/sf/saxon/s9api/QName;->fromClarkName(Ljava/lang/String;)Lnet/sf/saxon/s9api/QName;

    move-result-object v2

    invoke-static {}, Lnet/sf/saxon/s9api/XdmEmptySequence;->getInstance()Lnet/sf/saxon/s9api/XdmEmptySequence;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lnet/sf/saxon/trans/CommandLineOptions$ParamSetter;->setParam(Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/XdmValue;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Help for -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " option"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/trans/CommandLineOptions;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit16 v1, v0, 0x200

    if-nez v1, :cond_0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Value: int,int"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Value: string"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Value: list of file names, semicolon-separated"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Value: QName in Clark notation ({uri}local)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Value: integer"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value: one of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/trans/CommandLineOptions;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-static {v1}, Lnet/sf/saxon/trans/CommandLineOptions;->d(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Value: Java fully-qualified class name"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Value: file name"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_9
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Value: on|off"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Meaning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/trans/CommandLineOptions;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public definesParameterValues()Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/trans/CommandLineOptions;->k:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/trans/CommandLineOptions;->i:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/trans/CommandLineOptions;->j:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/trans/CommandLineOptions;->h:Ljava/util/Properties;

    invoke-virtual {p0}, Ljava/util/Properties;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public displayPermittedOptions()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lnet/sf/saxon/trans/CommandLineOptions;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lnet/sf/saxon/trans/CommandLineOptions;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    const-string v4, " -"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p0, " --?"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lnet/sf/saxon/Configuration;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/Configuration;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object p0

    instance-of p1, p0, Lnet/sf/saxon/lib/ConfigurableResourceResolver;

    if-eqz p1, :cond_0

    check-cast p0, Lnet/sf/saxon/lib/ConfigurableResourceResolver;

    invoke-static {p0, p2}, Lnet/sf/saxon/trans/CommandLineOptions;->setCatalogFiles(Lnet/sf/saxon/lib/ConfigurableResourceResolver;Ljava/util/List;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The resolver in the Configuration is not a ConfigurableResourceResolver"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getOptionValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/CommandLineOptions;->c:Ljava/util/Properties;

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPositionalOptions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/trans/CommandLineOptions;->g:Ljava/util/List;

    return-object p0
.end method

.method public setActualOptions([Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_16

    aget-object v3, p1, v2

    const-string v4, "-"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lnet/sf/saxon/trans/CommandLineOptions;->g:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_0
    const-string v4, "--?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Configuration features:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/sf/saxon/trans/CommandLineOptions;->featureKeys()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    const-string v6, ""

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v4, v5, :cond_10

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v9, 0x5

    const/16 v10, 0x3a

    if-le v4, v9, :cond_4

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_4

    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v8

    if-ge v4, v5, :cond_2

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/sf/saxon/trans/CommandLineOptions;->d:Ljava/util/Properties;

    invoke-virtual {v4, v5, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_2
    if-lez v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v8

    if-ne v4, v5, :cond_3

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/sf/saxon/trans/CommandLineOptions;->d:Ljava/util/Properties;

    invoke-virtual {v4, v3, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_3
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/sf/saxon/trans/CommandLineOptions;->d:Ljava/util/Properties;

    const-string v5, "true"

    invoke-virtual {v4, v3, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_4
    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v8

    if-ge v4, v5, :cond_5

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_5
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v4, v6

    :goto_1
    iget-object v7, p0, Lnet/sf/saxon/trans/CommandLineOptions;->a:Ljava/util/HashMap;

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v9, "Command line option -"

    if-eq v7, v8, :cond_f

    iget-object v7, p0, Lnet/sf/saxon/trans/CommandLineOptions;->c:Ljava/util/Properties;

    invoke-virtual {v7, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_e

    const-string v7, "?"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, ": permitted values are "

    if-eqz v6, :cond_8

    iget-object v6, p0, Lnet/sf/saxon/trans/CommandLineOptions;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " requires a value"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/trans/CommandLineOptions;->e:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/trans/CommandLineOptions;->e:Ljava/util/Map;

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Lnet/sf/saxon/trans/CommandLineOptions;->d(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_6
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    iget-object v6, p0, Lnet/sf/saxon/trans/CommandLineOptions;->f:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_9

    move-object v4, v6

    goto :goto_2

    :cond_8
    iget-object v6, p0, Lnet/sf/saxon/trans/CommandLineOptions;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/lit16 v6, v6, 0x200

    if-nez v6, :cond_c

    :cond_9
    :goto_2
    iget-object v6, p0, Lnet/sf/saxon/trans/CommandLineOptions;->e:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    if-eqz v6, :cond_b

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_3

    :cond_a
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad option value "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lnet/sf/saxon/trans/CommandLineOptions;->d(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_3
    iget-object v3, p0, Lnet/sf/saxon/trans/CommandLineOptions;->c:Ljava/util/Properties;

    invoke-virtual {v3, v5, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not expect a value"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    invoke-virtual {p0, v5}, Lnet/sf/saxon/trans/CommandLineOptions;->c(Ljava/lang/String;)V

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "No processing requested"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " appears more than once"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not recognized. Options available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CommandLineOptions;->displayPermittedOptions()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lt v4, v8, :cond_15

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v8

    if-ge v4, v9, :cond_11

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :cond_11
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x21

    if-ne v3, v9, :cond_12

    if-lt v4, v7, :cond_12

    iget-object v3, p0, Lnet/sf/saxon/trans/CommandLineOptions;->k:Ljava/util/Properties;

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_4

    :cond_12
    const/16 v9, 0x3f

    if-ne v3, v9, :cond_13

    if-lt v4, v7, :cond_13

    iget-object v3, p0, Lnet/sf/saxon/trans/CommandLineOptions;->i:Ljava/util/Properties;

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_4

    :cond_13
    const/16 v9, 0x2b

    if-ne v3, v9, :cond_14

    if-lt v4, v7, :cond_14

    iget-object v3, p0, Lnet/sf/saxon/trans/CommandLineOptions;->j:Ljava/util/Properties;

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_4

    :cond_14
    iget-object v3, p0, Lnet/sf/saxon/trans/CommandLineOptions;->h:Ljava/util/Properties;

    invoke-virtual {v3, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_4

    :cond_15
    iget-object v4, p0, Lnet/sf/saxon/trans/CommandLineOptions;->g:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_16
    return-void
.end method

.method public setParams(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/trans/CommandLineOptions$ParamSetter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/CommandLineOptions;->h:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lnet/sf/saxon/trans/CommandLineOptions;->h:Ljava/util/Properties;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lnet/sf/saxon/s9api/QName;->fromClarkName(Ljava/lang/String;)Lnet/sf/saxon/s9api/QName;

    move-result-object v1

    new-instance v3, Lnet/sf/saxon/s9api/XdmAtomicValue;

    sget-object v4, Lnet/sf/saxon/s9api/ItemType;->UNTYPED_ATOMIC:Lnet/sf/saxon/s9api/ItemType;

    invoke-direct {v3, v2, v4}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Ljava/lang/String;Lnet/sf/saxon/s9api/ItemType;)V

    invoke-interface {p2, v1, v3}, Lnet/sf/saxon/trans/CommandLineOptions$ParamSetter;->setParam(Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/XdmValue;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/trans/CommandLineOptions;->b(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/trans/CommandLineOptions$ParamSetter;)V

    iget-object v0, p0, Lnet/sf/saxon/trans/CommandLineOptions;->i:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lnet/sf/saxon/trans/CommandLineOptions;->i:Ljava/util/Properties;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/Processor;->newXPathCompiler()Lnet/sf/saxon/s9api/XPathCompiler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lnet/sf/saxon/s9api/XPathCompiler;->compile(Ljava/lang/String;)Lnet/sf/saxon/s9api/XPathExecutable;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/s9api/XPathExecutable;->load()Lnet/sf/saxon/s9api/XPathSelector;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/s9api/XPathSelector;->evaluate()Lnet/sf/saxon/s9api/XdmValue;

    move-result-object v2

    invoke-static {v1}, Lnet/sf/saxon/s9api/QName;->fromClarkName(Ljava/lang/String;)Lnet/sf/saxon/s9api/QName;

    move-result-object v1

    invoke-interface {p2, v1, v2}, Lnet/sf/saxon/trans/CommandLineOptions$ParamSetter;->setParam(Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/XdmValue;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setPermittedValues(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p2, p0, Lnet/sf/saxon/trans/CommandLineOptions;->e:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/trans/CommandLineOptions;->f:Ljava/util/Map;

    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setSerializationProperties(Lnet/sf/saxon/s9api/Serializer;)V
    .locals 5

    iget-object v0, p0, Lnet/sf/saxon/trans/CommandLineOptions;->k:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lnet/sf/saxon/trans/CommandLineOptions;->k:Ljava/util/Properties;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "saxon:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{http://saxon.sf.net/}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Lnet/sf/saxon/s9api/QName;->fromClarkName(Ljava/lang/String;)Lnet/sf/saxon/s9api/QName;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Lnet/sf/saxon/s9api/Serializer;->setOutputProperty(Lnet/sf/saxon/s9api/QName;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public testIfSchemaAware()Z
    .locals 1

    const-string v0, "sa"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "outval"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "val"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "vlax"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "xsd"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "xsdversion"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
