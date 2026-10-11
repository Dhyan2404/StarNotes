.class final Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final securitySupport:Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport;->securitySupport:Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport;
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport;->securitySupport:Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport;

    return-object v0
.end method


# virtual methods
.method public getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport$1;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport$1;-><init>(Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public getFileExists(Ljava/io/File;)Z
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport$7;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport$7;-><init>(Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport;Ljava/io/File;)V

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
    new-instance v0, Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport$5;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport$5;-><init>(Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport;Ljava/io/File;)V

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

    new-instance v0, Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport$8;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport$8;-><init>(Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport;Ljava/io/File;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport$3;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport$3;-><init>(Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport;Ljava/lang/ClassLoader;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport$6;-><init>(Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    return-object p0
.end method

.method public getSystemClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport$2;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport$2;-><init>(Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport$4;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport$4;-><init>(Lcom/sun/org/apache/xml/internal/serialize/SecuritySupport;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
