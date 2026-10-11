.class public Lorg/apache/xmlbeans/impl/tool/MavenPlugin;
.super Lorg/apache/maven/plugin/AbstractMojo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/tool/MavenPlugin$PassThroughResolver;
    }
.end annotation

.annotation build Lorg/apache/maven/plugins/annotations/Mojo;
    defaultPhase = .enum Lorg/apache/maven/plugins/annotations/LifecyclePhase;->GENERATE_SOURCES:Lorg/apache/maven/plugins/annotations/LifecyclePhase;
    name = "compile"
.end annotation


# instance fields
.field private baseSchemaLocation:Ljava/lang/String;
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
        defaultValue = "schemaorg_apache_xmlbeans/src"
    .end annotation
.end field

.field private basedir:Ljava/io/File;
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
    .end annotation
.end field

.field private buildSchemas:Z
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
        defaultValue = "true"
    .end annotation
.end field

.field private catalogLocation:Ljava/lang/String;
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
    .end annotation
.end field

.field private classPath:Ljava/lang/String;
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
    .end annotation
.end field

.field private classTargetDir:Ljava/lang/String;
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
        defaultValue = "${project.basedir}/target/generated-resources"
    .end annotation
.end field

.field private compiler:Ljava/lang/String;
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
    .end annotation
.end field

.field private copyAnn:Z
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
        defaultValue = "false"
    .end annotation
.end field

.field private debug:Z
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
        defaultValue = "false"
    .end annotation
.end field

.field private download:Z
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
        defaultValue = "false"
    .end annotation
.end field

.field private extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/tool/Extension;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
    .end annotation
.end field

.field private javaTargetDir:Ljava/lang/String;
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
        defaultValue = "${project.basedir}/target/generated-sources"
    .end annotation
.end field

.field private mdefNamespaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
    .end annotation
.end field

.field private memoryInitialSize:Ljava/lang/String;
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
        defaultValue = "8m"
    .end annotation
.end field

.field private memoryMaximumSize:Ljava/lang/String;
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
        defaultValue = "256m"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
        defaultValue = "${project.artifactId}"
    .end annotation
.end field

.field private noAnn:Z
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
        defaultValue = "false"
    .end annotation
.end field

.field private noPvr:Z
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
        defaultValue = "false"
    .end annotation
.end field

.field private noUpa:Z
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
        defaultValue = "false"
    .end annotation
.end field

.field private noVDoc:Z
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
        defaultValue = "false"
    .end annotation
.end field

.field private outputJar:Ljava/io/File;
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
        defaultValue = "${project.basedir}/target/${project.artifactId}-${project.version}-xmltypes.jar"
    .end annotation
.end field

.field private partialMethods:Ljava/lang/String;
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
    .end annotation
.end field

.field private project:Lorg/apache/maven/project/MavenProject;
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
        defaultValue = "${project}"
        readonly = true
    .end annotation
.end field

.field private quiet:Z
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
        defaultValue = "true"
    .end annotation
.end field

.field private quite:Z
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
        defaultValue = "true"
    .end annotation
.end field

.field private repackage:Ljava/lang/String;
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
        defaultValue = "${project.groupId}.${project.artifactId}.metadata"
    .end annotation
.end field

.field private resources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/maven/model/Resource;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
    .end annotation
.end field

.field private sourceDir:Ljava/lang/String;
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
        defaultValue = "${project.basedir}/src/main/schema"
    .end annotation
.end field

.field private sourceOnly:Z
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
        defaultValue = "true"
    .end annotation
.end field

.field private sourceSchemas:Ljava/lang/String;
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
        defaultValue = "*.xsd,*.wsdl,*.java"
    .end annotation
.end field

.field private verbose:Z
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
        defaultValue = "false"
    .end annotation
.end field

.field private xmlConfigs:Ljava/lang/String;
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
        defaultValue = "${project.basedir}/src/schema/xmlconfig.xml"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/maven/plugin/AbstractMojo;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/io/File;Ljava/lang/String;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->lambda$execute$1(Ljava/io/File;Ljava/lang/String;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/regex/Pattern;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->lambda$execute$0(Ljava/util/regex/Pattern;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static files(Ljava/util/List;)[Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)[",
            "Ljava/io/File;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/io/File;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private static synthetic lambda$execute$0(Ljava/util/regex/Pattern;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p1, ".xsdconfig"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$execute$1(Ljava/io/File;Ljava/lang/String;)Ljava/util/stream/Stream;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x1

    aput-object v1, v0, p0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/rgj;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/rgj;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public execute()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/maven/plugin/MojoExecutionException;,
            Lorg/apache/maven/plugin/MojoFailureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->sourceDir:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->baseSchemaLocation:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->sourceSchemas:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v0

    const-string v1, "sourceSchemas is null"

    invoke-interface {v0, v1}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->classPath:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v0

    const-string v1, "classPath is null"

    invoke-interface {v0, v1}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Lorg/apache/maven/model/Resource;

    invoke-direct {v4}, Lorg/apache/maven/model/Resource;-><init>()V

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->sourceDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/maven/model/Resource;->setDirectory(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->baseSchemaLocation:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/maven/model/Resource;->setTargetPath(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->sourceSchemas:Ljava/lang/String;

    const-string v6, ".*"

    const-string v7, ","

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->sourceSchemas:Ljava/lang/String;

    const-string v9, "|"

    invoke-virtual {v8, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "."

    const-string v10, "\\."

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "*"

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    new-instance v6, Lcom/sunia/HTREnginev2/sgj;

    invoke-direct {v6, v5}, Lcom/sunia/HTREnginev2/sgj;-><init>(Ljava/util/regex/Pattern;)V

    invoke-virtual {v3, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v5, [Ljava/io/File;

    array-length v6, v5

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    if-ge v9, v6, :cond_5

    aget-object v10, v5, v9

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".*\\."

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    const-string v13, "java"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    const-string v13, "wsdl"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {v4, v11}, Lorg/apache/maven/model/Resource;->addInclude(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->resources:Ljava/util/List;

    iget-boolean v4, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->buildSchemas:Z

    if-eqz v4, :cond_e

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->xmlConfigs:Ljava/lang/String;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->xmlConfigs:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/sunia/HTREnginev2/tgj;

    invoke-direct {v5, v3}, Lcom/sunia/HTREnginev2/tgj;-><init>(Ljava/io/File;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    goto :goto_4

    :cond_7
    :goto_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    :goto_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->classPath:Ljava/lang/String;

    if-eqz v6, :cond_8

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v9, v8

    :goto_5
    if-ge v9, v7, :cond_8

    aget-object v10, v6, v9

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/maven/plugin/MojoFailureException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid classpath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/maven/plugin/MojoFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_8
    new-instance v6, Ljava/net/URLClassLoader;

    new-array v7, v8, [Ljava/net/URL;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/net/URL;

    invoke-direct {v6, v5}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;)V

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->catalogLocation:Ljava/lang/String;

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/tool/MavenPluginResolver;->getResolver(Ljava/lang/String;)Lorg/xml/sax/EntityResolver;

    move-result-object v5

    new-instance v7, Ljava/io/File;

    iget-object v9, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->sourceDir:Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v7

    new-instance v9, Lorg/apache/xmlbeans/impl/tool/MavenPlugin$PassThroughResolver;

    iget-object v10, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->baseSchemaLocation:Ljava/lang/String;

    invoke-direct {v9, v6, v5, v7, v10}, Lorg/apache/xmlbeans/impl/tool/MavenPlugin$PassThroughResolver;-><init>(Ljava/lang/ClassLoader;Lorg/xml/sax/EntityResolver;Ljava/net/URI;Ljava/lang/String;)V

    new-instance v5, Lorg/apache/xmlbeans/impl/tool/Parameters;

    invoke-direct {v5}, Lorg/apache/xmlbeans/impl/tool/Parameters;-><init>()V

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->files(Ljava/util/List;)[Ljava/io/File;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/apache/xmlbeans/impl/tool/Parameters;->setXsdFiles([Ljava/io/File;)V

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->files(Ljava/util/List;)[Ljava/io/File;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/apache/xmlbeans/impl/tool/Parameters;->setWsdlFiles([Ljava/io/File;)V

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->files(Ljava/util/List;)[Ljava/io/File;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/apache/xmlbeans/impl/tool/Parameters;->setJavaFiles([Ljava/io/File;)V

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->files(Ljava/util/List;)[Ljava/io/File;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/apache/xmlbeans/impl/tool/Parameters;->setConfigFiles([Ljava/io/File;)V

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->files(Ljava/util/List;)[Ljava/io/File;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/apache/xmlbeans/impl/tool/Parameters;->setClasspath([Ljava/io/File;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->name:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lorg/apache/xmlbeans/impl/tool/Parameters;->setName(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->javaTargetDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lorg/apache/xmlbeans/impl/tool/Parameters;->setSrcDir(Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->classTargetDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lorg/apache/xmlbeans/impl/tool/Parameters;->setClassesDir(Ljava/io/File;)V

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->sourceOnly:Z

    invoke-virtual {v5, v0}, Lorg/apache/xmlbeans/impl/tool/Parameters;->setNojavac(Z)V

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->verbose:Z

    invoke-virtual {v5, v0}, Lorg/apache/xmlbeans/impl/tool/Parameters;->setVerbose(Z)V

    invoke-virtual {v5, v9}, Lorg/apache/xmlbeans/impl/tool/Parameters;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->quiet:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->quite:Z

    if-eqz v0, :cond_9

    const/4 v8, 0x1

    :cond_9
    invoke-virtual {v5, v8}, Lorg/apache/xmlbeans/impl/tool/Parameters;->setQuiet(Z)V

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->noUpa:Z

    invoke-virtual {v5, v0}, Lorg/apache/xmlbeans/impl/tool/Parameters;->setNoUpa(Z)V

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->noPvr:Z

    invoke-virtual {v5, v0}, Lorg/apache/xmlbeans/impl/tool/Parameters;->setNoPvr(Z)V

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->noAnn:Z

    invoke-virtual {v5, v0}, Lorg/apache/xmlbeans/impl/tool/Parameters;->setNoAnn(Z)V

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->copyAnn:Z

    invoke-virtual {v5, v0}, Lorg/apache/xmlbeans/impl/tool/Parameters;->setCopyAnn(Z)V

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->noVDoc:Z

    invoke-virtual {v5, v0}, Lorg/apache/xmlbeans/impl/tool/Parameters;->setNoVDoc(Z)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->repackage:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "org.apache.xmlbeans.metadata:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->repackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/apache/xmlbeans/impl/tool/Parameters;->setRepackage(Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->mdefNamespaces:Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->mdefNamespaces:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, v0}, Lorg/apache/xmlbeans/impl/tool/Parameters;->setMdefNamespaces(Ljava/util/Set;)V

    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v0}, Lorg/apache/xmlbeans/impl/tool/Parameters;->setErrorListener(Ljava/util/Collection;)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->partialMethods:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->partialMethods:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler;->parsePartialMethods(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/apache/xmlbeans/impl/tool/Parameters;->setPartialMethods(Ljava/util/Set;)V

    :cond_c
    iget-boolean v1, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->download:Z

    invoke-virtual {v5, v1}, Lorg/apache/xmlbeans/impl/tool/Parameters;->setDownload(Z)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->basedir:Ljava/io/File;

    invoke-virtual {v5, v1}, Lorg/apache/xmlbeans/impl/tool/Parameters;->setBaseDir(Ljava/io/File;)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->compiler:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lorg/apache/xmlbeans/impl/tool/Parameters;->setCompiler(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->memoryInitialSize:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lorg/apache/xmlbeans/impl/tool/Parameters;->setMemoryInitialSize(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->memoryMaximumSize:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lorg/apache/xmlbeans/impl/tool/Parameters;->setMemoryMaximumSize(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->outputJar:Ljava/io/File;

    invoke-virtual {v5, v1}, Lorg/apache/xmlbeans/impl/tool/Parameters;->setOutputJar(Ljava/io/File;)V

    iget-boolean v1, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->debug:Z

    invoke-virtual {v5, v1}, Lorg/apache/xmlbeans/impl/tool/Parameters;->setDebug(Z)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->extensions:Ljava/util/List;

    invoke-virtual {v5, v1}, Lorg/apache/xmlbeans/impl/tool/Parameters;->setExtensions(Ljava/util/List;)V

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler;->compile(Lorg/apache/xmlbeans/impl/tool/Parameters;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v0, Lorg/apache/maven/model/Resource;

    invoke-direct {v0}, Lorg/apache/maven/model/Resource;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->classTargetDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/maven/model/Resource;->setDirectory(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->project:Lorg/apache/maven/project/MavenProject;

    invoke-virtual {v1, v0}, Lorg/apache/maven/project/MavenProject;->addResource(Lorg/apache/maven/model/Resource;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->project:Lorg/apache/maven/project/MavenProject;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->javaTargetDir:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/apache/maven/project/MavenProject;->addCompileSourceRoot(Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    new-instance p0, Lorg/apache/maven/plugin/MojoFailureException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Schema compilation failed!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/sunia/HTREnginev2/ugj;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/ugj;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v2, "\n"

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/maven/plugin/MojoFailureException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_6
    return-void

    :cond_f
    new-instance p0, Lorg/apache/maven/plugin/MojoFailureException;

    const-string v0, "baseSchemaLocation is empty"

    invoke-direct {p0, v0}, Lorg/apache/maven/plugin/MojoFailureException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    new-instance v0, Lorg/apache/maven/plugin/MojoFailureException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set configuration <sourceDir> (=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\') to a valid directory containing *.xsd,*.wsdl files."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/maven/plugin/MojoFailureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
