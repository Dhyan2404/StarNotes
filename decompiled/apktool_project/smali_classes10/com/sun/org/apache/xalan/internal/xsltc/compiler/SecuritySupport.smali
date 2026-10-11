.class Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SecuritySupport;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final securitySupport:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "java.security.AccessController"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SecuritySupport12;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SecuritySupport12;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SecuritySupport;

    invoke-direct {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SecuritySupport;-><init>()V

    sput-object v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SecuritySupport;->securitySupport:Ljava/lang/Object;

    throw v0

    :catch_0
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SecuritySupport;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SecuritySupport;-><init>()V

    :goto_0
    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SecuritySupport;->securitySupport:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SecuritySupport;
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SecuritySupport;->securitySupport:Ljava/lang/Object;

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SecuritySupport;

    return-object v0
.end method


# virtual methods
.method public getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFileExists(Ljava/io/File;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object p0
.end method

.method public getLastModified(Ljava/io/File;)J
    .locals 0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    return-wide p0
.end method

.method public getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0

    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSystemClassLoader()Ljava/lang/ClassLoader;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
