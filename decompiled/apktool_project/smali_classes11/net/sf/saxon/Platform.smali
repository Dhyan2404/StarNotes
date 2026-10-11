.class public interface abstract Lnet/sf/saxon/Platform;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract JAXPStaticContextCheck(Lnet/sf/saxon/expr/parser/RetainedStaticContext;Lnet/sf/saxon/expr/StaticContext;)Z
.end method

.method public abstract canReturnCollationKeys(Lnet/sf/saxon/lib/StringCollator;)Z
.end method

.method public abstract compileRegularExpression(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lnet/sf/saxon/regex/RegularExpression;
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
.end method

.method public abstract getCollationKey(Lnet/sf/saxon/expr/sort/SimpleCollation;Ljava/lang/String;)Lnet/sf/saxon/expr/sort/AtomicMatchKey;
.end method

.method public abstract getDefaultCountry()Ljava/lang/String;
.end method

.method public abstract getDefaultDynamicLoader()Lnet/sf/saxon/lib/IDynamicLoader;
.end method

.method public abstract getDefaultLanguage()Ljava/lang/String;
.end method

.method public abstract getExternalObjectType(Lnet/sf/saxon/Configuration;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/type/ExternalObjectType;
.end method

.method public abstract getInstallationDirectory(Ljava/lang/String;Lnet/sf/saxon/Configuration;)Ljava/lang/String;
.end method

.method public abstract getPlatformSuffix()Ljava/lang/String;
.end method

.method public abstract getPlatformVersion()Ljava/lang/String;
.end method

.method public abstract hasICUCollator()Z
.end method

.method public abstract hasICUNumberer()Z
.end method

.method public abstract initialize(Lnet/sf/saxon/Configuration;)V
.end method

.method public abstract isDotNet()Z
.end method

.method public abstract isJava()Z
.end method

.method public abstract loadParser()Lorg/xml/sax/XMLReader;
.end method

.method public abstract loadParserForXmlFragments()Lorg/xml/sax/XMLReader;
.end method

.method public abstract locateResource(Ljava/lang/String;Ljava/util/List;)Ljava/io/InputStream;
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
.end method

.method public abstract makeCollation(Lnet/sf/saxon/Configuration;Ljava/util/Properties;Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract makeStandardModuleURIResolver(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/lib/ModuleURIResolver;
.end method

.method public abstract makeUcaCollator(Ljava/lang/String;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/lib/StringCollator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract registerAllBuiltInObjectModels(Lnet/sf/saxon/Configuration;)V
.end method

.method public abstract resolveSource(Ljavax/xml/transform/Source;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/lib/ActiveSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract setDefaultSAXParserFactory(Lnet/sf/saxon/Configuration;)V
.end method

.method public showEmbeddedResources()V
    .locals 0

    return-void
.end method
