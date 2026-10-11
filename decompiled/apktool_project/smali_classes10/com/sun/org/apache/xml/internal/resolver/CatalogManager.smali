.class public Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static pAllowPI:Ljava/lang/String; = "xml.catalog.allowPI"

.field private static pClassname:Ljava/lang/String; = "xml.catalog.className"

.field private static pFiles:Ljava/lang/String; = "xml.catalog.files"

.field private static pIgnoreMissing:Ljava/lang/String; = "xml.catalog.ignoreMissing"

.field private static pPrefer:Ljava/lang/String; = "xml.catalog.prefer"

.field private static pStatic:Ljava/lang/String; = "xml.catalog.staticCatalog"

.field private static pVerbosity:Ljava/lang/String; = "xml.catalog.verbosity"

.field private static staticCatalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

.field private static staticManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;


# instance fields
.field private bResolver:Lcom/sun/org/apache/xml/internal/resolver/helpers/BootstrapResolver;

.field private catalogClassName:Ljava/lang/String;

.field private catalogFiles:Ljava/lang/String;

.field public debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

.field private defaultCatalogFiles:Ljava/lang/String;

.field private defaultOasisXMLCatalogPI:Z

.field private defaultPreferPublic:Z

.field private defaultRelativeCatalogs:Z

.field private defaultUseStaticCatalog:Z

.field private defaultVerbosity:I

.field private fromPropertiesFile:Z

.field private ignoreMissingProperties:Z

.field private oasisXMLCatalogPI:Ljava/lang/Boolean;

.field private preferPublic:Ljava/lang/Boolean;

.field private propertyFile:Ljava/lang/String;

.field private propertyFileURI:Ljava/net/URL;

.field private relativeCatalogs:Ljava/lang/Boolean;

.field private resources:Ljava/util/ResourceBundle;

.field private useStaticCatalog:Ljava/lang/Boolean;

.field private verbosity:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->staticManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    const/4 v0, 0x0

    sput-object v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->staticCatalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/sun/org/apache/xml/internal/resolver/helpers/BootstrapResolver;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/BootstrapResolver;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->bResolver:Lcom/sun/org/apache/xml/internal/resolver/helpers/BootstrapResolver;

    .line 3
    sget-object v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->pIgnoreMissing:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->pFiles:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->ignoreMissingProperties:Z

    const-string v0, "CatalogManager.properties"

    .line 4
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->propertyFileURI:Ljava/net/URL;

    const-string v3, "./xcatalog"

    .line 6
    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->defaultCatalogFiles:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->catalogFiles:Ljava/lang/String;

    .line 8
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->fromPropertiesFile:Z

    .line 9
    iput v2, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->defaultVerbosity:I

    .line 10
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    .line 11
    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->defaultPreferPublic:Z

    .line 12
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->preferPublic:Ljava/lang/Boolean;

    .line 13
    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->defaultUseStaticCatalog:Z

    .line 14
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    .line 15
    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->defaultOasisXMLCatalogPI:Z

    .line 16
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->oasisXMLCatalogPI:Ljava/lang/Boolean;

    .line 17
    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->defaultRelativeCatalogs:Z

    .line 18
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->relativeCatalogs:Ljava/lang/Boolean;

    .line 19
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->catalogClassName:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    .line 21
    new-instance v0, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/sun/org/apache/xml/internal/resolver/helpers/BootstrapResolver;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/BootstrapResolver;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->bResolver:Lcom/sun/org/apache/xml/internal/resolver/helpers/BootstrapResolver;

    .line 24
    sget-object v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->pIgnoreMissing:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->pFiles:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->ignoreMissingProperties:Z

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->propertyFileURI:Ljava/net/URL;

    const-string v3, "./xcatalog"

    .line 26
    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->defaultCatalogFiles:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->catalogFiles:Ljava/lang/String;

    .line 28
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->fromPropertiesFile:Z

    .line 29
    iput v2, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->defaultVerbosity:I

    .line 30
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    .line 31
    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->defaultPreferPublic:Z

    .line 32
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->preferPublic:Ljava/lang/Boolean;

    .line 33
    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->defaultUseStaticCatalog:Z

    .line 34
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    .line 35
    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->defaultOasisXMLCatalogPI:Z

    .line 36
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->oasisXMLCatalogPI:Ljava/lang/Boolean;

    .line 37
    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->defaultRelativeCatalogs:Z

    .line 38
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->relativeCatalogs:Ljava/lang/Boolean;

    .line 39
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->catalogClassName:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    .line 41
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    .line 42
    new-instance p1, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-direct {p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    return-void
.end method

.method public static getStaticManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->staticManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    return-object v0
.end method

.method private queryCatalogFiles()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->pFiles:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->fromPropertiesFile:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->readProperties()V

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-eqz v1, :cond_1

    :try_start_0
    const-string v0, "catalogs"

    invoke-virtual {v1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->fromPropertiesFile:Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": catalogs not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->defaultCatalogFiles:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method private queryPreferPublic()Z
    .locals 2

    sget-object v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->pPrefer:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->readProperties()V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->defaultPreferPublic:Z

    return p0

    :cond_1
    :try_start_0
    const-string v1, "prefer"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->defaultPreferPublic:Z

    return p0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->defaultPreferPublic:Z

    return p0

    :cond_3
    const-string p0, "public"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private queryRelativeCatalogs()Z
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->readProperties()V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->defaultRelativeCatalogs:Z

    return p0

    :cond_1
    :try_start_0
    const-string v1, "relative-catalogs"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :catch_0
    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->defaultRelativeCatalogs:Z

    return p0
.end method

.method private queryUseStaticCatalog()Z
    .locals 2

    sget-object v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->pStatic:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->readProperties()V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->defaultUseStaticCatalog:Z

    return p0

    :cond_1
    :try_start_0
    const-string v1, "static-catalog"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->defaultUseStaticCatalog:Z

    return p0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->defaultUseStaticCatalog:Z

    return p0

    :cond_3
    const-string p0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "yes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method private queryVerbosity()I
    .locals 5

    iget v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->defaultVerbosity:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->pVerbosity:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->readProperties()V

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-eqz v1, :cond_2

    :try_start_0
    const-string v2, "verbosity"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :catch_0
    :cond_2
    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->defaultVerbosity:I

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse verbosity: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->setDebug(I)V

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    :cond_3
    return v1
.end method

.method private declared-synchronized readProperties()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-class v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->propertyFileURI:Ljava/net/URL;

    const-class v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->ignoreMissingProperties:Z

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->ignoreMissingProperties:Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/PropertyResourceBundle;

    invoke-direct {v1, v0}, Ljava/util/PropertyResourceBundle;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :try_start_2
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->ignoreMissingProperties:Z

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure trying to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->ignoreMissingProperties:Z

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_3

    :try_start_3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    const-string v1, "verbosity"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->setDebug(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_2
    :cond_3
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public allowOasisXMLCatalogPI()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getAllowOasisXMLCatalogPI()Z

    move-result p0

    return p0
.end method

.method public catalogClassName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getCatalogClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public catalogFiles()Ljava/util/Vector;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getCatalogFiles()Ljava/util/Vector;

    move-result-object p0

    return-object p0
.end method

.method public getAllowOasisXMLCatalogPI()Z
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->oasisXMLCatalogPI:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->queryAllowOasisXMLCatalogPI()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->oasisXMLCatalogPI:Ljava/lang/Boolean;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->oasisXMLCatalogPI:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getBootstrapResolver()Lcom/sun/org/apache/xml/internal/resolver/helpers/BootstrapResolver;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->bResolver:Lcom/sun/org/apache/xml/internal/resolver/helpers/BootstrapResolver;

    return-object p0
.end method

.method public getCatalog()Lcom/sun/org/apache/xml/internal/resolver/Catalog;
    .locals 3

    sget-object v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->staticCatalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getUseStaticCatalog()Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getPrivateCatalog()Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    sput-object v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->staticCatalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    :cond_2
    return-object v0
.end method

.method public getCatalogClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->catalogClassName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->queryCatalogClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->catalogClassName:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->catalogClassName:Ljava/lang/String;

    return-object p0
.end method

.method public getCatalogFiles()Ljava/util/Vector;
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->catalogFiles:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->queryCatalogFiles()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->catalogFiles:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->catalogFiles:Ljava/lang/String;

    const-string v2, ";"

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->fromPropertiesFile:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->relativeCatalogs()Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->propertyFileURI:Ljava/net/URL;

    invoke-direct {v3, v4, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getIgnoreMissingProperties()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->ignoreMissingProperties:Z

    return p0
.end method

.method public getPreferPublic()Z
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->preferPublic:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->queryPreferPublic()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->preferPublic:Ljava/lang/Boolean;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->preferPublic:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getPrivateCatalog()Lcom/sun/org/apache/xml/internal/resolver/Catalog;
    .locals 6

    sget-object v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->staticCatalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getUseStaticCatalog()Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getCatalogClassName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-direct {v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xml/internal/resolver/Catalog;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v3

    goto :goto_1

    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class named \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' is not a Catalog. Using default."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    new-instance v1, Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-direct {v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;-><init>()V

    goto :goto_0

    :catch_1
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Catalog class named \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' could not be found. Using default."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    new-instance v1, Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-direct {v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;-><init>()V

    goto :goto_0

    :goto_1
    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->setCatalogManager(Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->setupReaders()V

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->loadSystemCatalogs()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    sput-object v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->staticCatalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    :cond_3
    return-object v0
.end method

.method public getRelativeCatalogs()Z
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->relativeCatalogs:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->queryRelativeCatalogs()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->relativeCatalogs:Ljava/lang/Boolean;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->relativeCatalogs:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getUseStaticCatalog()Z
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->queryUseStaticCatalog()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getVerbosity()I
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->queryVerbosity()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public ignoreMissingProperties(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->setIgnoreMissingProperties(Z)V

    return-void
.end method

.method public preferPublic()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getPreferPublic()Z

    move-result p0

    return p0
.end method

.method public queryAllowOasisXMLCatalogPI()Z
    .locals 2

    sget-object v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->pAllowPI:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->readProperties()V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->defaultOasisXMLCatalogPI:Z

    return p0

    :cond_1
    :try_start_0
    const-string v1, "allow-oasis-xml-catalog-pi"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->defaultOasisXMLCatalogPI:Z

    return p0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->defaultOasisXMLCatalogPI:Z

    return p0

    :cond_3
    const-string p0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "yes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public queryCatalogClassName()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->pClassname:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->readProperties()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    const/4 v0, 0x0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    const-string v1, "catalog-class-name"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    return-object v0
.end method

.method public relativeCatalogs()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getRelativeCatalogs()Z

    move-result p0

    return p0
.end method

.method public setAllowOasisXMLCatalogPI(Z)V
    .locals 1

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->oasisXMLCatalogPI:Ljava/lang/Boolean;

    return-void
.end method

.method public setBootstrapResolver(Lcom/sun/org/apache/xml/internal/resolver/helpers/BootstrapResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->bResolver:Lcom/sun/org/apache/xml/internal/resolver/helpers/BootstrapResolver;

    return-void
.end method

.method public setCatalogClassName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->catalogClassName:Ljava/lang/String;

    return-void
.end method

.method public setCatalogFiles(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->catalogFiles:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->fromPropertiesFile:Z

    return-void
.end method

.method public setIgnoreMissingProperties(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->ignoreMissingProperties:Z

    return-void
.end method

.method public setPreferPublic(Z)V
    .locals 1

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->preferPublic:Ljava/lang/Boolean;

    return-void
.end method

.method public setRelativeCatalogs(Z)V
    .locals 1

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->relativeCatalogs:Ljava/lang/Boolean;

    return-void
.end method

.method public setUseStaticCatalog(Z)V
    .locals 1

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    return-void
.end method

.method public setVerbosity(I)V
    .locals 1

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->setDebug(I)V

    return-void
.end method

.method public staticCatalog()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getUseStaticCatalog()Z

    move-result p0

    return p0
.end method

.method public verbosity()I
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getVerbosity()I

    move-result p0

    return p0
.end method
