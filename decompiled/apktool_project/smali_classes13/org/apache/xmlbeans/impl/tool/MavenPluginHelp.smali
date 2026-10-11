.class public Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;
.super Lorg/apache/maven/plugin/AbstractMojo;
.source "SourceFile"


# annotations
.annotation build Lorg/apache/maven/plugins/annotations/Mojo;
    name = "help"
    requiresProject = false
    threadSafe = true
.end annotation


# static fields
.field private static final DEFAULT_LINE_LENGTH:I = 0x50

.field private static final PLUGIN_HELP_PATH:Ljava/lang/String; = "/META-INF/maven/plugin.xml"


# instance fields
.field private detail:Z
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
        defaultValue = "false"
        property = "detail"
    .end annotation
.end field

.field private goal:Ljava/lang/String;
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
        property = "goal"
    .end annotation
.end field

.field private indentSize:I
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
        defaultValue = "2"
        property = "indentSize"
    .end annotation
.end field

.field private lineLength:I
    .annotation build Lorg/apache/maven/plugins/annotations/Parameter;
        defaultValue = "80"
        property = "lineLength"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/maven/plugin/AbstractMojo;-><init>()V

    return-void
.end method

.method private append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->indentSize:I

    iget p0, p0, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->lineLength:I

    invoke-static {p2, p3, v0, p0}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->toLines(Ljava/lang/String;III)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private build()Lorg/w3c/dom/Document;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/maven/plugin/MojoExecutionException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v0

    const-string v1, "load plugin-help.xml: /META-INF/maven/plugin.xml"

    invoke-interface {v0, v1}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "/META-INF/maven/plugin.xml"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/impl/common/DocumentHelper;->readDocument(Lorg/apache/xmlbeans/XmlOptions;Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/maven/plugin/MojoExecutionException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/maven/plugin/MojoExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method private findNamedChild(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private findSingleChild(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/maven/plugin/MojoExecutionException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->findNamedChild(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :cond_1
    new-instance p0, Lorg/apache/maven/plugin/MojoExecutionException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Multiple "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "in plugin.xml"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/maven/plugin/MojoExecutionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getIndentLevel(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v2, v0

    :goto_1
    add-int/lit8 v4, v1, 0x4

    if-gt v2, v4, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_1

    move v1, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return v1
.end method

.method private getPropertyFromExpression(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string p0, "${"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSingleChild(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/maven/plugin/MojoExecutionException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->findNamedChild(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const-string v0, " in plugin.xml"

    if-nez p1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/maven/plugin/MojoExecutionException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/maven/plugin/MojoExecutionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/maven/plugin/MojoExecutionException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/maven/plugin/MojoExecutionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/maven/plugin/MojoExecutionException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->getSingleChild(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isNotEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/2addr v1, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toLines(Ljava/lang/String;III)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "\t"

    .line 2
    invoke-static {v1, p1}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "(\r\n)|(\r)|(\n)"

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 4
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, p2, p3}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->toLines(Ljava/util/List;Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static toLines(Ljava/util/List;Ljava/lang/String;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 6
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->getIndentLevel(Ljava/lang/String;)I

    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, " +"

    .line 8
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 9
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, p1, v4

    .line 10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const-string v7, " "

    const/16 v8, 0x20

    if-lez v6, :cond_1

    .line 11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v6, v9

    if-lt v6, p3, :cond_0

    .line 12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    mul-int v6, v0, p2

    .line 14
    invoke-static {v7, v6}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    move v6, v3

    .line 16
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v6, v9, :cond_4

    .line 17
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x9

    if-ne v9, v10, :cond_2

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    rem-int/2addr v9, p2

    sub-int v9, p2, v9

    invoke-static {v7, v9}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    const/16 v10, 0xa0

    if-ne v9, v10, :cond_3

    .line 19
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 20
    :cond_3
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 21
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private writeGoal(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/maven/plugin/MojoExecutionException;
        }
    .end annotation

    const-string v0, "goal"

    invoke-direct {p0, p3, v0}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->getValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "configuration"

    invoke-direct {p0, p3, v1}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->findSingleChild(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    const-string v2, "description"

    invoke-direct {p0, p3, v2}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->findSingleChild(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->goal:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->goal:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string p2, "deprecated"

    invoke-direct {p0, p3, p2}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->findSingleChild(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p2

    const-string v3, ""

    const/4 v4, 0x1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deprecated. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v4}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    iget-boolean p2, p0, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->detail:Z

    if-eqz p2, :cond_2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, v3, v0}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v4}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v4}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_2
    :goto_0
    invoke-direct {p0, p1, v3, v0}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    iget-boolean p2, p0, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->detail:Z

    if-eqz p2, :cond_3

    const-string p2, "parameters"

    invoke-direct {p0, p3, p2}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->getSingleChild(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p2

    const-string p3, "parameter"

    invoke-direct {p0, p2, p3}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->findNamedChild(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    const-string p3, "Available parameters:"

    invoke-direct {p0, p1, p3, v4}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    invoke-direct {p0, p1, v3, v0}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/w3c/dom/Node;

    invoke-direct {p0, p1, p3, v1}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->writeParameter(Ljava/lang/StringBuilder;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private writeParameter(Ljava/lang/StringBuilder;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/maven/plugin/MojoExecutionException;
        }
    .end annotation

    const-string v0, "name"

    invoke-direct {p0, p2, v0}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->getValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "description"

    invoke-direct {p0, p2, v1}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->getValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_0

    invoke-direct {p0, p3, v0}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->findSingleChild(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p3

    check-cast p3, Lorg/w3c/dom/Element;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const-string v2, ""

    if-eqz p3, :cond_1

    const-string v3, "default-value"

    invoke-interface {p3, v3}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " (Default: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-direct {p0, p1, v0, v3}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v0, "deprecated"

    invoke-direct {p0, p2, v0}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->findSingleChild(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deprecated. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v4}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    invoke-direct {p0, p1, v2, v3}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_2
    invoke-direct {p0, p1, v1, v4}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v0, "required"

    invoke-direct {p0, p2, v0}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->getValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "Required: Yes"

    invoke-direct {p0, p1, p2, v4}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_3
    if-eqz p3, :cond_4

    invoke-interface {p3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->isNotEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->getPropertyFromExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User property: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v4}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_4
    invoke-direct {p0, p1, v2, v3}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/maven/plugin/MojoExecutionException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->lineLength:I

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v0

    const-string v1, "The parameter \'lineLength\' should be positive, using \'80\' as default."

    invoke-interface {v0, v1}, Lorg/apache/maven/plugin/logging/Log;->warn(Ljava/lang/CharSequence;)V

    const/16 v0, 0x50

    iput v0, p0, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->lineLength:I

    :cond_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->indentSize:I

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v0

    const-string v1, "The parameter \'indentSize\' should be positive, using \'2\' as default."

    invoke-interface {v0, v1}, Lorg/apache/maven/plugin/logging/Log;->warn(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->indentSize:I

    :cond_1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->build()Lorg/w3c/dom/Document;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "plugin"

    invoke-direct {p0, v0, v2}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->getSingleChild(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    const-string v2, "name"

    invoke-direct {p0, v0, v2}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->getValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "version"

    invoke-direct {p0, v0, v3}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->getValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "groupId"

    invoke-direct {p0, v0, v5}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->getValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "artifactId"

    invoke-direct {p0, v0, v6}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->getValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v6}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v1, v2, v6}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1, v4, v6}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :goto_0
    const-string v2, "description"

    invoke-direct {p0, v0, v2}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->getValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v2, ""

    invoke-direct {p0, v1, v2, v6}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v4, "goalPrefix"

    invoke-direct {p0, v0, v4}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->getValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mojos"

    invoke-direct {p0, v0, v5}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->getSingleChild(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    const-string v5, "mojo"

    invoke-direct {p0, v0, v5}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->findNamedChild(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->goal:Ljava/lang/String;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_6

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This plugin has "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v3, :cond_5

    const-string v3, " goals:"

    goto :goto_1

    :cond_5
    const-string v3, " goal:"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3, v6}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    invoke-direct {p0, v1, v2, v6}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-direct {p0, v1, v4, v2}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->writeGoal(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/maven/plugin/logging/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/MavenPluginHelp;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/maven/plugin/logging/Log;->info(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method
