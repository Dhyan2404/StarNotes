.class public Lcom/sun/org/apache/bcel/internal/util/ClassLoaderRepository;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/util/Repository;


# instance fields
.field private loadedClasses:Ljava/util/HashMap;

.field private loader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoaderRepository;->loadedClasses:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoaderRepository;->loader:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoaderRepository;->loadedClasses:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public findClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoaderRepository;->loadedClasses:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoaderRepository;->loadedClasses:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public loadClass(Ljava/lang/Class;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 9
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/util/ClassLoaderRepository;->loadClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0

    return-object p0
.end method

.method public loadClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    .line 1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/util/ClassLoaderRepository;->findClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 3
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoaderRepository;->loader:Ljava/lang/ClassLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".class"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;

    invoke-direct {v1, v0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->parse()Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/util/ClassLoaderRepository;->storeClass(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V

    return-object p1

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/ClassNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/ClassNotFoundException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeClass(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoaderRepository;->loadedClasses:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public storeClass(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoaderRepository;->loadedClasses:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->setRepository(Lcom/sun/org/apache/bcel/internal/util/Repository;)V

    return-void
.end method
