.class public Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;
.super Ljavax/xml/transform/sax/SAXTransformerFactory;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SourceLoader;
.implements Ljavax/xml/transform/ErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl$PIParamWrapper;
    }
.end annotation


# static fields
.field public static final AUTO_TRANSLET:Ljava/lang/String; = "auto-translet"

.field public static final DEBUG:Ljava/lang/String; = "debug"

.field protected static final DEFAULT_TRANSLET_NAME:Ljava/lang/String; = "GregorSamsa"

.field public static final DESTINATION_DIRECTORY:Ljava/lang/String; = "destination-directory"

.field public static final ENABLE_INLINING:Ljava/lang/String; = "enable-inlining"

.field public static final GENERATE_TRANSLET:Ljava/lang/String; = "generate-translet"

.field public static final INDENT_NUMBER:Ljava/lang/String; = "indent-number"

.field public static final JAR_NAME:Ljava/lang/String; = "jar-name"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package-name"

.field public static final TRANSLET_NAME:Ljava/lang/String; = "translet-name"

.field public static final USE_CLASSPATH:Ljava/lang/String; = "use-classpath"


# instance fields
.field private _autoTranslet:Z

.field private _debug:Z

.field private _destinationDirectory:Ljava/lang/String;

.field private _enableInlining:Z

.field private _errorListener:Ljavax/xml/transform/ErrorListener;

.field private _generateTranslet:Z

.field private _indentNumber:I

.field private _isSecureProcessing:Z

.field private _jarFileName:Ljava/lang/String;

.field private _packageName:Ljava/lang/String;

.field private _piParams:Ljava/util/Hashtable;

.field private _transletName:Ljava/lang/String;

.field private _uriResolver:Ljavax/xml/transform/URIResolver;

.field private _useClasspath:Z

.field private m_DTMManagerClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXTransformerFactory;-><init>()V

    iput-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_errorListener:Ljavax/xml/transform/ErrorListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_uriResolver:Ljavax/xml/transform/URIResolver;

    const-string v1, "GregorSamsa"

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_transletName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_destinationDirectory:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_jarFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_piParams:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_debug:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_enableInlining:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_generateTranslet:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_autoTranslet:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_useClasspath:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_indentNumber:I

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_isSecureProcessing:Z

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;->getDTMManagerClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->m_DTMManagerClass:Ljava/lang/Class;

    return-void
.end method

.method private getBytecodesFromClasses(Ljavax/xml/transform/Source;Ljava/lang/String;)[[B
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->getStylesheetFileName(Ljavax/xml/transform/Source;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    const/16 p1, 0x2e

    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_2

    add-int/2addr v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, p2

    :goto_1
    const/16 v4, 0x2f

    invoke-virtual {p2, p1, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_destinationDirectory:Ljava/lang/String;

    const-string v4, "/"

    const-string v5, ".class"

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_destinationDirectory:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_5

    return-object v0

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long p1, v6, v4

    if-gez p1, :cond_6

    return-object v0

    :cond_6
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v1, v4

    if-lez v1, :cond_b

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    new-array v5, v1, [B

    :try_start_1
    invoke-direct {p0, v5, v4, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->readFromInputStream([BLjava/io/InputStream;I)V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_7

    const-string p2, "user.dir"

    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl$1;

    invoke-direct {v2, p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl$1;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    array-length v4, p2

    if-ge v2, v4, :cond_9

    aget-object v4, p2, v2

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    if-lez v5, :cond_8

    :try_start_2
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    new-array v4, v5, [B

    :try_start_3
    invoke-direct {p0, v4, v6, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->readFromInputStream([BLjava/io/InputStream;I)V

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    invoke-virtual {p1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :catch_0
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p0

    if-lez p0, :cond_b

    filled-new-array {p0, v3}, [I

    move-result-object p2

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[B

    :goto_4
    if-ge v1, p0, :cond_a

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    aput-object v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    return-object p2

    :catch_1
    :cond_b
    return-object v0
.end method

.method private getBytecodesFromJar(Ljavax/xml/transform/Source;Ljava/lang/String;)[[B
    .locals 11

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->getStylesheetFileName(Ljavax/xml/transform/Source;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_destinationDirectory:Ljava/lang/String;

    const-string v2, "/"

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_destinationDirectory:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_jarFileName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_jarFileName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_jarFileName:Ljava/lang/String;

    :goto_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-gez p1, :cond_4

    return-object v0

    :cond_4
    :try_start_0
    new-instance p1, Ljava/util/zip/ZipFile;

    invoke-direct {p1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".class"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_5

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v6, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_6
    :try_start_1
    invoke-virtual {p1, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v7

    long-to-int v5, v7

    new-array v7, v5, [B

    invoke-direct {p0, v7, v6, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->readFromInputStream([BLjava/io/InputStream;I)V

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    return-object v0

    :cond_7
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result p0

    if-lez p0, :cond_9

    const/4 p1, 0x1

    filled-new-array {p0, p1}, [I

    move-result-object p1

    sget-object p2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    const/4 p2, 0x0

    :goto_3
    if-ge p2, p0, :cond_8

    invoke-virtual {v3, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_8
    return-object p1

    :catch_1
    :cond_9
    return-object v0
.end method

.method private getStylesheetFileName(Ljavax/xml/transform/Source;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "file"

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    :cond_1
    return-object p1
.end method

.method private getTransletBaseName(Ljavax/xml/transform/Source;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_transletName:Ljava/lang/String;

    const-string v1, "GregorSamsa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_transletName:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/Util;->baseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/Util;->noExtName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/Util;->toJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    move-object v1, p0

    :cond_2
    return-object v1
.end method

.method private passErrorsToListener(Ljava/util/Vector;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_errorListener:Ljavax/xml/transform/ErrorListener;

    new-instance v4, Ljavax/xml/transform/TransformerException;

    invoke-direct {v4, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    return-void
.end method

.method private passWarningsToListener(Ljava/util/Vector;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->isWarningError()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_errorListener:Ljavax/xml/transform/ErrorListener;

    new-instance v4, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_errorListener:Ljavax/xml/transform/ErrorListener;

    new-instance v4, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private readFromInputStream([BLjava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    :goto_0
    if-lez p3, :cond_0

    invoke-virtual {p2, p1, p0, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    add-int/2addr p0, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetTransientAttributes()V
    .locals 1

    const-string v0, "GregorSamsa"

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_transletName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_destinationDirectory:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_jarFileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public error(Ljavax/xml/transform/TransformerException;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getMessageAndLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v3, "ERROR_PLUS_WRAPPED_MSG"

    invoke-direct {v1, v3, v2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v1, "ERROR_MSG"

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getMessageAndLocation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :goto_0
    throw p1
.end method

.method public fatalError(Ljavax/xml/transform/TransformerException;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getMessageAndLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v3, "FATAL_ERR_PLUS_WRAPPED_MSG"

    invoke-direct {v1, v3, v2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v1, "FATAL_ERR_MSG"

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getMessageAndLocation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :goto_0
    throw p1
.end method

.method public getAssociatedStylesheet(Ljavax/xml/transform/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    const-string v0, "getAssociatedStylesheets failed"

    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/StylesheetPIHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, p3, p4}, Lcom/sun/org/apache/xml/internal/utils/StylesheetPIHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    instance-of p2, p1, Ljavax/xml/transform/dom/DOMSource;

    if-eqz p2, :cond_0

    check-cast p1, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMSource;->getSystemId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object p1

    new-instance p3, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;

    invoke-direct {p3, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/xml/internal/utils/StylesheetPIHandler;->setBaseId(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {p3}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->parse()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object p3

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    iget-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_isSecureProcessing:Z
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/utils/StopParseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_1

    :try_start_1
    const-string v2, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p3, v2, p4}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :cond_1
    :try_start_2
    invoke-virtual {p3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p3

    invoke-virtual {p3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p3

    if-nez p3, :cond_2

    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p3

    :cond_2
    invoke-virtual {v1, p2}, Lcom/sun/org/apache/xml/internal/utils/StylesheetPIHandler;->setBaseId(Ljava/lang/String;)V

    invoke-interface {p3, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {p3, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_uriResolver:Ljavax/xml/transform/URIResolver;

    if-eqz p0, :cond_3

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xml/internal/utils/StylesheetPIHandler;->setURIResolver(Ljavax/xml/transform/URIResolver;)V
    :try_end_2
    .catch Lcom/sun/org/apache/xml/internal/utils/StopParseException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {p1, v0, p0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {p1, v0, p0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {p1, v0, p0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_4
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/StylesheetPIHandler;->getAssociatedStylesheet()Ljavax/xml/transform/Source;

    move-result-object p0

    return-object p0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "translet-name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_transletName:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, "generate-translet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/Boolean;

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_generateTranslet:Z

    invoke-direct {p1, p0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p1

    :cond_1
    const-string v0, "auto-translet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Ljava/lang/Boolean;

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_autoTranslet:Z

    invoke-direct {p1, p0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p1

    :cond_2
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v0, "JAXP_INVALID_ATTR_ERR"

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDTMManagerClass()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->m_DTMManagerClass:Ljava/lang/Class;

    return-object p0
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_errorListener:Ljavax/xml/transform/ErrorListener;

    return-object p0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 8

    const-string v0, "http://javax.xml.transform.dom.DOMSource/feature"

    const-string v1, "http://javax.xml.transform.dom.DOMResult/feature"

    const-string v2, "http://javax.xml.transform.sax.SAXSource/feature"

    const-string v3, "http://javax.xml.transform.sax.SAXResult/feature"

    const-string v4, "http://javax.xml.transform.stream.StreamSource/feature"

    const-string v5, "http://javax.xml.transform.stream.StreamResult/feature"

    const-string v6, "http://javax.xml.transform.sax.SAXTransformerFactory/feature"

    const-string v7, "http://javax.xml.transform.sax.SAXTransformerFactory/feature/xmlfilter"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_isSecureProcessing:Z

    return p0

    :cond_2
    return v1

    :cond_3
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string p1, "JAXP_GET_FEATURE_NULL_NAME"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_uriResolver:Ljavax/xml/transform/URIResolver;

    return-object p0
.end method

.method public loadSource(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;)Lorg/xml/sax/InputSource;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_uriResolver:Ljavax/xml/transform/URIResolver;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Ljavax/xml/transform/URIResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p3, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/Util;->getInputSource(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_useClasspath:Z

    const-string v1, "."

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->getTransletBaseName(Ljavax/xml/transform/Source;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->resetTransientAttributes()V

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;

    new-array v4, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v0, v4, v2

    const/4 v6, 0x0

    iget v7, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_indentNumber:I

    move-object v3, v1

    move-object v5, p1

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;-><init>([Ljava/lang/Class;Ljava/lang/String;Ljava/util/Properties;ILcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v2, "RUNTIME_ERROR_KEY"

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v0, "CLASS_NOT_FOUND_ERR"

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_autoTranslet:Z

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->getTransletBaseName(Ljavax/xml/transform/Source;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_packageName:Ljava/lang/String;

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v5, v0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_jarFileName:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->getBytecodesFromJar(Ljavax/xml/transform/Source;Ljava/lang/String;)[[B

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->getBytecodesFromClasses(Ljavax/xml/transform/Source;Ljava/lang/String;)[[B

    move-result-object v0

    :goto_0
    move-object v4, v0

    if-eqz v4, :cond_6

    iget-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_debug:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_jarFileName:Ljava/lang/String;

    if-eqz p1, :cond_4

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v1, "TRANSFORM_WITH_JAR_STR"

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_jarFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v5, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v1, "TRANSFORM_WITH_TRANSLET_STR"

    invoke-direct {v0, v1, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->resetTransientAttributes()V

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;

    const/4 v6, 0x0

    iget v7, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_indentNumber:I

    move-object v3, p1

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;-><init>([[BLjava/lang/String;Ljava/util/Properties;ILcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;)V

    return-object p1

    :cond_6
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;-><init>()V

    iget-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_debug:Z

    if-eqz v1, :cond_7

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setDebug(Z)V

    :cond_7
    iget-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_enableInlining:Z

    if-eqz v1, :cond_8

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setTemplateInlining(Z)V

    :cond_8
    iget-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_isSecureProcessing:Z

    if-eqz v1, :cond_9

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setSecureProcessing(Z)V

    :cond_9
    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->init()V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_uriResolver:Ljavax/xml/transform/URIResolver;

    if-eqz v1, :cond_a

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setSourceLoader(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SourceLoader;)V

    :cond_a
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_piParams:Ljava/util/Hashtable;

    if-eqz v1, :cond_b

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_piParams:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl$PIParamWrapper;

    if-eqz v1, :cond_b

    iget-object v2, v1, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl$PIParamWrapper;->_media:Ljava/lang/String;

    iget-object v3, v1, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl$PIParamWrapper;->_title:Ljava/lang/String;

    iget-object v1, v1, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl$PIParamWrapper;->_charset:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setPIParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_generateTranslet:Z

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_autoTranslet:Z

    if-eqz v1, :cond_c

    goto :goto_2

    :cond_c
    const/4 v1, 0x2

    goto :goto_4

    :cond_d
    :goto_2
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->getTransletBaseName(Ljavax/xml/transform/Source;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setClassName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_destinationDirectory:Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setDestDirectory(Ljava/lang/String;)Z

    goto :goto_3

    :cond_e
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->getStylesheetFileName(Ljavax/xml/transform/Source;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setDestDirectory(Ljava/lang/String;)Z

    :cond_f
    :goto_3
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_packageName:Ljava/lang/String;

    if-eqz v1, :cond_10

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setPackageName(Ljava/lang/String;)V

    :cond_10
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_jarFileName:Ljava/lang/String;

    if-eqz v1, :cond_11

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setJarFileName(Ljava/lang/String;)V

    const/4 v1, 0x5

    goto :goto_4

    :cond_11
    const/4 v1, 0x4

    :goto_4
    invoke-static {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/Util;->getInputSource(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->compile(Ljava/lang/String;Lorg/xml/sax/InputSource;I)[[B

    move-result-object v4

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_generateTranslet:Z

    if-nez p1, :cond_12

    iget-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_autoTranslet:Z

    if-eqz p1, :cond_13

    :cond_12
    if-eqz v4, :cond_13

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_jarFileName:Ljava/lang/String;

    if-eqz p1, :cond_13

    :try_start_1
    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->outputToJar()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    :cond_13
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->resetTransientAttributes()V

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eq p1, p0, :cond_14

    :try_start_2
    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getWarnings()Ljava/util/Vector;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->passWarningsToListener(Ljava/util/Vector;)V
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_5

    :catch_3
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_14
    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->printWarnings()V

    :goto_5
    if-nez v4, :cond_16

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v1, "JAXP_COMPILE_ERR"

    invoke-direct {p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz p1, :cond_15

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getErrors()Ljava/util/Vector;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->passErrorsToListener(Ljava/util/Vector;)V

    :try_start_3
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_errorListener:Ljavax/xml/transform/ErrorListener;

    invoke-interface {p0, v1}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_6

    :cond_15
    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->printErrors()V

    :catch_4
    :goto_6
    throw v1

    :cond_16
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getOutputProperties()Ljava/util/Properties;

    move-result-object v6

    iget v7, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_indentNumber:I

    move-object v3, p1

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;-><init>([[BLjava/lang/String;Ljava/util/Properties;ILcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;)V

    return-object p1
.end method

.method public newTemplatesHandler()Ljavax/xml/transform/sax/TemplatesHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_indentNumber:I

    invoke-direct {v0, v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;-><init>(ILcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_uriResolver:Ljavax/xml/transform/URIResolver;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesHandlerImpl;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    :cond_0
    return-object v0
.end method

.method public newTransformer()Ljavax/xml/transform/Transformer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_indentNumber:I

    invoke-direct {v0, v1, v2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;-><init>(Ljava/util/Properties;ILcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;)V

    .line 2
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_uriResolver:Ljavax/xml/transform/URIResolver;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    .line 4
    :cond_0
    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_isSecureProcessing:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 5
    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->setSecureProcessing(Z)V

    :cond_1
    return-object v0
.end method

.method public newTransformer(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Transformer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p1

    .line 8
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_uriResolver:Ljavax/xml/transform/URIResolver;

    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p1, p0}, Ljavax/xml/transform/Transformer;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    :cond_0
    return-object p1
.end method

.method public newTransformerHandler()Ljavax/xml/transform/sax/TransformerHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_uriResolver:Ljavax/xml/transform/URIResolver;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Ljavax/xml/transform/Transformer;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    .line 4
    :cond_0
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;)V

    return-object p0
.end method

.method public newTransformerHandler(Ljavax/xml/transform/Source;)Ljavax/xml/transform/sax/TransformerHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->newTransformer(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Transformer;

    move-result-object p1

    .line 6
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_uriResolver:Ljavax/xml/transform/URIResolver;

    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p1, p0}, Ljavax/xml/transform/Transformer;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    .line 8
    :cond_0
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;)V

    return-object p0
.end method

.method public newTransformerHandler(Ljavax/xml/transform/Templates;)Ljavax/xml/transform/sax/TransformerHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 9
    invoke-interface {p1}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p0

    .line 10
    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;

    .line 11
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;)V

    return-object p1
.end method

.method public newXMLFilter(Ljavax/xml/transform/Source;)Lorg/xml/sax/XMLFilter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->newXMLFilter(Ljavax/xml/transform/Templates;)Lorg/xml/sax/XMLFilter;

    move-result-object p0

    return-object p0
.end method

.method public newXMLFilter(Ljavax/xml/transform/Templates;)Lorg/xml/sax/XMLFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 3
    :try_start_0
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TrAXFilter;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TrAXFilter;-><init>(Ljavax/xml/transform/Templates;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 4
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz p0, :cond_0

    .line 5
    :try_start_1
    invoke-interface {p0, p1}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p0, 0x0

    return-object p0

    :catch_1
    move-exception p0

    .line 6
    new-instance v0, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {v0, p0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    .line 7
    :cond_0
    throw p1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "translet-name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_transletName:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "destination-directory"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_destinationDirectory:Ljava/lang/String;

    return-void

    :cond_1
    const-string v0, "package-name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_packageName:Ljava/lang/String;

    return-void

    :cond_2
    const-string v0, "jar-name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_jarFileName:Ljava/lang/String;

    return-void

    :cond_3
    const-string v0, "generate-translet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "true"

    if-eqz v0, :cond_5

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_generateTranslet:Z

    return-void

    :cond_4
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_f

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_generateTranslet:Z

    return-void

    :cond_5
    const-string v0, "auto-translet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_autoTranslet:Z

    return-void

    :cond_6
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_f

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_autoTranslet:Z

    return-void

    :cond_7
    const-string v0, "use-classpath"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_useClasspath:Z

    return-void

    :cond_8
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_f

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_useClasspath:Z

    return-void

    :cond_9
    const-string v0, "debug"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_debug:Z

    return-void

    :cond_a
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_f

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_debug:Z

    return-void

    :cond_b
    const-string v0, "enable-inlining"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_enableInlining:Z

    return-void

    :cond_c
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_f

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_enableInlining:Z

    return-void

    :cond_d
    const-string v0, "indent-number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_e

    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_indentNumber:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_e
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_f

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_indentNumber:I

    return-void

    :catch_0
    :cond_f
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string p2, "JAXP_INVALID_ATTR_ERR"

    invoke-direct {p0, p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_errorListener:Ljavax/xml/transform/ErrorListener;

    return-void

    :cond_0
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string p1, "ERROR_LISTENER_NULL_ERR"

    const-string v0, "TransformerFactory"

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_isSecureProcessing:Z

    return-void

    :cond_0
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string p2, "JAXP_UNSUPPORTED_FEATURE"

    invoke-direct {p0, p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string p1, "JAXP_SET_FEATURE_NULL_NAME"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->_uriResolver:Ljavax/xml/transform/URIResolver;

    return-void
.end method

.method public warning(Ljavax/xml/transform/TransformerException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getMessageAndLocation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v2, "WARNING_PLUS_WRAPPED_MSG"

    invoke-direct {v1, v2, p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v1, "WARNING_MSG"

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getMessageAndLocation()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
