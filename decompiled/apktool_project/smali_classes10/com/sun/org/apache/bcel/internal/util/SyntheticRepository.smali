.class public Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/util/Repository;


# static fields
.field private static final DEFAULT_PATH:Ljava/lang/String;

.field private static _instances:Ljava/util/HashMap;


# instance fields
.field private _loadedClasses:Ljava/util/HashMap;

.field private _path:Lcom/sun/org/apache/bcel/internal/util/ClassPath;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/sun/org/apache/bcel/internal/util/ClassPath;->getClassPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;->DEFAULT_PATH:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;->_instances:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lcom/sun/org/apache/bcel/internal/util/ClassPath;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;->_path:Lcom/sun/org/apache/bcel/internal/util/ClassPath;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;->_loadedClasses:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;->_path:Lcom/sun/org/apache/bcel/internal/util/ClassPath;

    return-void
.end method

.method public static getInstance()Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;
    .locals 1

    .line 1
    sget-object v0, Lcom/sun/org/apache/bcel/internal/util/ClassPath;->SYSTEM_CLASS_PATH:Lcom/sun/org/apache/bcel/internal/util/ClassPath;

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;->getInstance(Lcom/sun/org/apache/bcel/internal/util/ClassPath;)Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/sun/org/apache/bcel/internal/util/ClassPath;)Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;
    .locals 2

    .line 2
    sget-object v0, Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;->_instances:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;-><init>(Lcom/sun/org/apache/bcel/internal/util/ClassPath;)V

    .line 4
    sget-object v1, Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;->_instances:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private loadClass(Ljava/io/InputStream;Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;->findClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 11
    :try_start_0
    new-instance v0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;

    invoke-direct {v0, p1, p2}, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->parse()Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;->storeClass(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 14
    new-instance p1, Ljava/lang/ClassNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception while looking for class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    new-instance p0, Ljava/lang/ClassNotFoundException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SyntheticRepository could not load "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;->_loadedClasses:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public findClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;->_loadedClasses:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    return-object p0
.end method

.method public loadClass(Ljava/lang/Class;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 9
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".class"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;->loadClass(Ljava/io/InputStream;Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

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

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;->_path:Lcom/sun/org/apache/bcel/internal/util/ClassPath;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/bcel/internal/util/ClassPath;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;->loadClass(Ljava/io/InputStream;Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Ljava/lang/ClassNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while looking for class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid class name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeClass(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;->_loadedClasses:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public storeClass(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;->_loadedClasses:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->setRepository(Lcom/sun/org/apache/bcel/internal/util/Repository;)V

    return-void
.end method
