.class public Lnet/sf/saxon/java/JavaPlatform;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/Platform;


# static fields
.field public static a:Z = true


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public JAXPStaticContextCheck(Lnet/sf/saxon/expr/parser/RetainedStaticContext;Lnet/sf/saxon/expr/StaticContext;)Z
    .locals 1

    instance-of v0, p2, Lnet/sf/saxon/xpath/JAXPXPathStaticContext;

    if-eqz v0, :cond_0

    check-cast p2, Lnet/sf/saxon/xpath/JAXPXPathStaticContext;

    invoke-virtual {p2}, Lnet/sf/saxon/xpath/JAXPXPathStaticContext;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/om/NamespaceResolver;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/java/JavaPlatform;->a(Lnet/sf/saxon/expr/parser/RetainedStaticContext;Lnet/sf/saxon/xpath/JAXPXPathStaticContext;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final a(Lnet/sf/saxon/expr/parser/RetainedStaticContext;Lnet/sf/saxon/xpath/JAXPXPathStaticContext;)V
    .locals 1

    invoke-virtual {p2}, Lnet/sf/saxon/xpath/JAXPXPathStaticContext;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object p2

    new-instance v0, Lnet/sf/saxon/java/JavaPlatform$a;

    invoke-direct {v0, p0, p2}, Lnet/sf/saxon/java/JavaPlatform$a;-><init>(Lnet/sf/saxon/java/JavaPlatform;Ljavax/xml/namespace/NamespaceContext;)V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->setNamespaces(Lnet/sf/saxon/om/NamespaceResolver;)V

    return-void
.end method

.method public addFunctionLibraries(Lnet/sf/saxon/functions/FunctionLibraryList;Lnet/sf/saxon/Configuration;I)V
    .locals 0

    return-void
.end method

.method public canReturnCollationKeys(Lnet/sf/saxon/lib/StringCollator;)Z
    .locals 0

    instance-of p0, p1, Lnet/sf/saxon/expr/sort/SimpleCollation;

    if-eqz p0, :cond_1

    check-cast p1, Lnet/sf/saxon/expr/sort/SimpleCollation;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/sort/SimpleCollation;->getComparator()Ljava/util/Comparator;

    move-result-object p0

    instance-of p0, p0, Ljava/text/Collator;

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

.method public compileRegularExpression(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lnet/sf/saxon/regex/RegularExpression;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/Configuration;",
            "Lnet/sf/saxon/str/UnicodeString;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/sf/saxon/regex/RegularExpression;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p0, "!"

    invoke-virtual {p3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lnet/sf/saxon/regex/JavaRegularExpression;

    const-string p4, ""

    invoke-virtual {p3, p0, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lnet/sf/saxon/regex/JavaRegularExpression;-><init>(Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/16 p0, 0x3b

    invoke-virtual {p3, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p0, :cond_3

    const/16 v2, 0x6a

    invoke-virtual {p3, v2, p0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const/16 v3, 0x73

    invoke-virtual {p3, v3, p0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    move v2, v1

    move v3, v2

    :goto_1
    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getDefaultRegexEngine()Ljava/lang/String;

    move-result-object v4

    const-string v5, "J"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {p3, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/regex/JavaRegularExpression;

    invoke-direct {p1, p2, p0}, Lnet/sf/saxon/regex/JavaRegularExpression;-><init>(Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;)V

    return-object p1

    :cond_5
    new-instance p0, Lnet/sf/saxon/regex/ARegularExpression;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lnet/sf/saxon/regex/ARegularExpression;-><init>(Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lnet/sf/saxon/Configuration;)V

    return-object p0
.end method

.method public getCollationKey(Lnet/sf/saxon/expr/sort/SimpleCollation;Ljava/lang/String;)Lnet/sf/saxon/expr/sort/AtomicMatchKey;
    .locals 0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/sort/SimpleCollation;->getComparator()Ljava/util/Comparator;

    move-result-object p0

    check-cast p0, Ljava/text/Collator;

    invoke-virtual {p0, p2}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/sort/CollationMatchKey;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/sort/CollationMatchKey;-><init>(Ljava/text/CollationKey;)V

    return-object p1
.end method

.method public getDefaultCountry()Ljava/lang/String;
    .locals 0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultDynamicLoader()Lnet/sf/saxon/lib/IDynamicLoader;
    .locals 0

    new-instance p0, Lnet/sf/saxon/trans/DynamicLoader;

    invoke-direct {p0}, Lnet/sf/saxon/trans/DynamicLoader;-><init>()V

    return-object p0
.end method

.method public getDefaultLanguage()Ljava/lang/String;
    .locals 0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExternalObjectType(Lnet/sf/saxon/Configuration;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/type/ExternalObjectType;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getExternalObjectType for Java"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInstallationDirectory(Ljava/lang/String;Lnet/sf/saxon/Configuration;)Ljava/lang/String;
    .locals 0

    :try_start_0
    const-string p0, "SAXON_HOME"

    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPlatformSuffix()Ljava/lang/String;
    .locals 0

    const-string p0, "J"

    return-object p0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Java version "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasICUCollator()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasICUNumberer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initialize(Lnet/sf/saxon/Configuration;)V
    .locals 0

    invoke-static {}, Lnet/sf/saxon/dom/DOMEnvelope;->getInstance()Lnet/sf/saxon/dom/DOMEnvelope;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/Configuration;->registerExternalObjectModel(Lnet/sf/saxon/lib/ExternalObjectModel;)V

    invoke-static {}, Lnet/sf/saxon/dom/DOMObjectModel;->getInstance()Lnet/sf/saxon/dom/DOMObjectModel;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/Configuration;->registerExternalObjectModel(Lnet/sf/saxon/lib/ExternalObjectModel;)V

    new-instance p0, Lnet/sf/saxon/resource/StandardCollectionFinder;

    invoke-direct {p0}, Lnet/sf/saxon/resource/StandardCollectionFinder;-><init>()V

    invoke-virtual {p1, p0}, Lnet/sf/saxon/Configuration;->setCollectionFinder(Lnet/sf/saxon/lib/CollectionFinder;)V

    return-void
.end method

.method public isDotNet()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isJava()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public loadParser()Lorg/xml/sax/XMLReader;
    .locals 1

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljavax/xml/transform/TransformerFactoryConfigurationError;

    invoke-direct {v0, p0}, Ljavax/xml/transform/TransformerFactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public loadParserForXmlFragments()Lorg/xml/sax/XMLReader;
    .locals 5

    sget-boolean v0, Lnet/sf/saxon/java/JavaPlatform;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    const-class v2, Ljavax/xml/parsers/SAXParserFactory;

    const-string v3, "newDefaultInstance"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/parsers/SAXParserFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    sput-boolean v0, Lnet/sf/saxon/java/JavaPlatform;->a:Z

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    :try_start_1
    const-class v0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/parsers/SAXParserFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v0

    :catch_1
    :cond_1
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/java/JavaPlatform;->loadParser()Lorg/xml/sax/XMLReader;

    move-result-object p0

    return-object p0
.end method

.method public locateResource(Ljava/lang/String;Ljava/util/List;)Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "net/sf/saxon/data/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Failed to getContextClassLoader() - continuing\n"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, p1

    :goto_0
    const-string v1, " - continuing\n"

    const-string v2, " file located using ClassLoader "

    const-string v3, "Cannot read "

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move-object v4, p1

    :cond_1
    :goto_1
    if-nez v4, :cond_2

    const-class v0, Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-nez v4, :cond_3

    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IO error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " reading "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " located using getSystemResource(): using defaults"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object p1, v4

    :goto_2
    return-object p1
.end method

.method public makeCollation(Lnet/sf/saxon/Configuration;Ljava/util/Properties;Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p1, p3, p2}, Lnet/sf/saxon/java/JavaCollationFactory;->makeCollation(Lnet/sf/saxon/Configuration;Ljava/lang/String;Ljava/util/Properties;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object p0

    return-object p0
.end method

.method public makeStandardModuleURIResolver(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/lib/ModuleURIResolver;
    .locals 0

    new-instance p0, Lnet/sf/saxon/lib/StandardModuleURIResolver;

    invoke-direct {p0, p1}, Lnet/sf/saxon/lib/StandardModuleURIResolver;-><init>(Lnet/sf/saxon/Configuration;)V

    return-object p0
.end method

.method public makeUcaCollator(Ljava/lang/String;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/lib/StringCollator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->getProperties()Ljava/util/Properties;

    move-result-object p1

    const-string p2, "numeric"

    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "yes"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lnet/sf/saxon/expr/sort/AlphanumericCollator;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/sort/AlphanumericCollator;-><init>(Lnet/sf/saxon/lib/StringCollator;)V

    return-object p1

    :cond_0
    return-object p0
.end method

.method public registerAllBuiltInObjectModels(Lnet/sf/saxon/Configuration;)V
    .locals 0

    return-void
.end method

.method public resolveSource(Ljavax/xml/transform/Source;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/lib/ActiveSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of p0, p1, Lnet/sf/saxon/lib/ActiveSource;

    if-eqz p0, :cond_0

    check-cast p1, Lnet/sf/saxon/lib/ActiveSource;

    return-object p1

    :cond_0
    instance-of p0, p1, Ljavax/xml/transform/sax/SAXSource;

    if-eqz p0, :cond_3

    check-cast p1, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getSourceParser()Lorg/xml/sax/XMLReader;

    move-result-object p0

    invoke-interface {p0}, Lorg/xml/sax/XMLReader;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lnet/sf/saxon/lib/StandardEntityResolver;

    invoke-direct {v0, p2}, Lnet/sf/saxon/lib/StandardEntityResolver;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-interface {p0, v0}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    :cond_1
    invoke-virtual {p1, p0}, Ljavax/xml/transform/sax/SAXSource;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    new-instance p0, Lnet/sf/saxon/resource/ActiveSAXSource;

    invoke-direct {p0, p1}, Lnet/sf/saxon/resource/ActiveSAXSource;-><init>(Ljavax/xml/transform/sax/SAXSource;)V

    new-instance p1, Lcom/sunia/HTREnginev2/kri;

    invoke-direct {p1, p2}, Lcom/sunia/HTREnginev2/kri;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/resource/ActiveSAXSource;->setParserPool(Ljava/util/function/Consumer;)V

    return-object p0

    :cond_2
    new-instance p0, Lnet/sf/saxon/resource/ActiveSAXSource;

    invoke-direct {p0, p1}, Lnet/sf/saxon/resource/ActiveSAXSource;-><init>(Ljavax/xml/transform/sax/SAXSource;)V

    return-object p0

    :cond_3
    instance-of p0, p1, Ljavax/xml/transform/stream/StreamSource;

    if-eqz p0, :cond_4

    new-instance p0, Lnet/sf/saxon/resource/ActiveStreamSource;

    check-cast p1, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {p0, p1}, Lnet/sf/saxon/resource/ActiveStreamSource;-><init>(Ljavax/xml/transform/stream/StreamSource;)V

    return-object p0

    :cond_4
    instance-of p0, p1, Ljavax/xml/transform/stax/StAXSource;

    if-eqz p0, :cond_5

    :try_start_0
    check-cast p1, Ljavax/xml/transform/stax/StAXSource;

    invoke-static {p1}, Lnet/sf/saxon/pull/ActiveStAXSource;->fromStAXSource(Ljavax/xml/transform/stax/StAXSource;)Lnet/sf/saxon/pull/ActiveStAXSource;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public setDefaultSAXParserFactory(Lnet/sf/saxon/Configuration;)V
    .locals 0

    return-void
.end method
