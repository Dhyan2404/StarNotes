.class Lcom/sun/org/apache/xalan/internal/lib/SecuritySupport12;
.super Lcom/sun/org/apache/xalan/internal/lib/SecuritySupport;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/lib/SecuritySupport;-><init>()V

    return-void
.end method


# virtual methods
.method public getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/lib/SecuritySupport12$1;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xalan/internal/lib/SecuritySupport12$1;-><init>(Lcom/sun/org/apache/xalan/internal/lib/SecuritySupport12;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public getFileExists(Ljava/io/File;)Z
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/lib/SecuritySupport12$7;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xalan/internal/lib/SecuritySupport12$7;-><init>(Lcom/sun/org/apache/xalan/internal/lib/SecuritySupport12;Ljava/io/File;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/sun/org/apache/xalan/internal/lib/SecuritySupport12$5;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xalan/internal/lib/SecuritySupport12$5;-><init>(Lcom/sun/org/apache/xalan/internal/lib/SecuritySupport12;Ljava/io/File;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object p0

    check-cast p0, Ljava/io/FileNotFoundException;

    throw p0
.end method

.method public getLastModified(Ljava/io/File;)J
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/lib/SecuritySupport12$8;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xalan/internal/lib/SecuritySupport12$8;-><init>(Lcom/sun/org/apache/xalan/internal/lib/SecuritySupport12;Ljava/io/File;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/lib/SecuritySupport12$3;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xalan/internal/lib/SecuritySupport12$3;-><init>(Lcom/sun/org/apache/xalan/internal/lib/SecuritySupport12;Ljava/lang/ClassLoader;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/lib/SecuritySupport12$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/lib/SecuritySupport12$6;-><init>(Lcom/sun/org/apache/xalan/internal/lib/SecuritySupport12;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    return-object p0
.end method

.method public getSystemClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/lib/SecuritySupport12$2;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xalan/internal/lib/SecuritySupport12$2;-><init>(Lcom/sun/org/apache/xalan/internal/lib/SecuritySupport12;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/lib/SecuritySupport12$4;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xalan/internal/lib/SecuritySupport12$4;-><init>(Lcom/sun/org/apache/xalan/internal/lib/SecuritySupport12;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
