.class public final Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PROPERTY:Ljava/lang/String; = "org.w3c.dom.DOMImplementationSourceList"

.field public static final b:I = 0x50

.field public static final c:Ljava/lang/String; = "org.apache.xerces.dom.DOMXSImplementationSourceImpl"

.field public static synthetic d:Ljava/lang/Class;


# instance fields
.field public a:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/util/Vector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->a:Ljava/util/Vector;

    return-void
.end method

.method public static a()Ljava/lang/ClassLoader;
    .locals 2

    const-string v0, "org.w3c.dom.bootstrap.DOMImplementationRegistry"

    :try_start_0
    invoke-static {}, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->b()Ljava/lang/ClassLoader;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    sget-object v1, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->d:Ljava/lang/Class;

    if-nez v1, :cond_1

    invoke-static {v0}, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->d:Ljava/lang/Class;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    :catch_0
    sget-object v1, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->d:Ljava/lang/Class;

    if-nez v1, :cond_2

    invoke-static {v0}, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->d:Ljava/lang/Class;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->d:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/lang/ClassLoader;
    .locals 1

    invoke-static {}, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/w3c/dom/bootstrap/b;

    invoke-direct {v0}, Lorg/w3c/dom/bootstrap/b;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    :goto_0
    return-object v0
.end method

.method public static c(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    invoke-static {}, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Lorg/w3c/dom/bootstrap/d;

    invoke-direct {v0, p0, p1}, Lorg/w3c/dom/bootstrap/d;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    return-object p0
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 5

    const-string v0, "META-INF/services/org.w3c.dom.DOMImplementationSourceList"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->c(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_0

    const/16 v0, 0x50

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_0
    return-object v1
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/w3c/dom/bootstrap/c;

    invoke-direct {v0, p0}, Lorg/w3c/dom/bootstrap/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public static f()Z
    .locals 1

    :try_start_0
    const-string v0, "java.security.AccessController"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    const/4 v0, 0x1

    return v0
.end method

.method public static newInstance()Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-static {}, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->a()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "org.w3c.dom.DOMImplementationSourceList"

    invoke-static {v2}, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-static {v1}, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->d(Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    const-string v2, "org.apache.xerces.dom.DOMXSImplementationSourceImpl"

    :cond_2
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v1, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;

    invoke-direct {v1, v0}, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;-><init>(Ljava/util/Vector;)V

    return-object v1

    :cond_3
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    :cond_4
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/DOMImplementationSource;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public addSource(Lorg/w3c/dom/DOMImplementationSource;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->a:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getDOMImplementation(Ljava/lang/String;)Lorg/w3c/dom/DOMImplementation;
    .locals 3

    iget-object v0, p0, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v2, p0, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->a:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/DOMImplementationSource;

    invoke-interface {v2, p1}, Lorg/w3c/dom/DOMImplementationSource;->getDOMImplementation(Ljava/lang/String;)Lorg/w3c/dom/DOMImplementation;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getDOMImplementationList(Ljava/lang/String;)Lorg/w3c/dom/DOMImplementationList;
    .locals 7

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    new-instance p1, Lorg/w3c/dom/bootstrap/a;

    invoke-direct {p1, p0, v0}, Lorg/w3c/dom/bootstrap/a;-><init>(Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;Ljava/util/Vector;)V

    return-object p1

    :cond_0
    iget-object v4, p0, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->a:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/DOMImplementationSource;

    invoke-interface {v4, p1}, Lorg/w3c/dom/DOMImplementationSource;->getDOMImplementationList(Ljava/lang/String;)Lorg/w3c/dom/DOMImplementationList;

    move-result-object v4

    move v5, v2

    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/DOMImplementationList;->getLength()I

    move-result v6

    if-lt v5, v6, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v4, v5}, Lorg/w3c/dom/DOMImplementationList;->item(I)Lorg/w3c/dom/DOMImplementation;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method
