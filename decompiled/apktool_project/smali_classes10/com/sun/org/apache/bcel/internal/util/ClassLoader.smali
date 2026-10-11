.class public Lcom/sun/org/apache/bcel/internal/util/ClassLoader;
.super Ljava/lang/ClassLoader;
.source "SourceFile"


# instance fields
.field private classes:Ljava/util/Hashtable;

.field private deferTo:Ljava/lang/ClassLoader;

.field private ignored_packages:[Ljava/lang/String;

.field private repository:Lcom/sun/org/apache/bcel/internal/util/Repository;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoader;->classes:Ljava/util/Hashtable;

    const-string v0, "javax."

    const-string v1, "sun."

    const-string v2, "java."

    .line 3
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoader;->ignored_packages:[Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;->getInstance()Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoader;->repository:Lcom/sun/org/apache/bcel/internal/util/Repository;

    .line 5
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoader;->deferTo:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 7
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoader;->classes:Ljava/util/Hashtable;

    const-string v0, "javax."

    const-string v1, "sun."

    const-string v2, "java."

    .line 8
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoader;->ignored_packages:[Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;->getInstance()Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoader;->repository:Lcom/sun/org/apache/bcel/internal/util/Repository;

    .line 10
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 11
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoader;->deferTo:Ljava/lang/ClassLoader;

    .line 12
    new-instance v0, Lcom/sun/org/apache/bcel/internal/util/ClassLoaderRepository;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/bcel/internal/util/ClassLoaderRepository;-><init>(Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoader;->repository:Lcom/sun/org/apache/bcel/internal/util/Repository;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;[Ljava/lang/String;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 20
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoader;->classes:Ljava/util/Hashtable;

    const-string v0, "javax."

    const-string v1, "sun."

    const-string v2, "java."

    .line 21
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoader;->ignored_packages:[Ljava/lang/String;

    .line 22
    invoke-static {}, Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;->getInstance()Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoader;->repository:Lcom/sun/org/apache/bcel/internal/util/Repository;

    .line 23
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 24
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoader;->deferTo:Ljava/lang/ClassLoader;

    .line 25
    new-instance v0, Lcom/sun/org/apache/bcel/internal/util/ClassLoaderRepository;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/bcel/internal/util/ClassLoaderRepository;-><init>(Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoader;->repository:Lcom/sun/org/apache/bcel/internal/util/Repository;

    .line 26
    invoke-direct {p0, p2}, Lcom/sun/org/apache/bcel/internal/util/ClassLoader;->addIgnoredPkgs([Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 3

    .line 13
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 14
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoader;->classes:Ljava/util/Hashtable;

    const-string v0, "javax."

    const-string v1, "sun."

    const-string v2, "java."

    .line 15
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoader;->ignored_packages:[Ljava/lang/String;

    .line 16
    invoke-static {}, Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;->getInstance()Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoader;->repository:Lcom/sun/org/apache/bcel/internal/util/Repository;

    .line 17
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoader;->deferTo:Ljava/lang/ClassLoader;

    .line 18
    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/util/ClassLoader;->addIgnoredPkgs([Ljava/lang/String;)V

    return-void
.end method

.method private addIgnoredPkgs([Ljava/lang/String;)V
    .locals 4

    array-length v0, p1

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoader;->ignored_packages:[Ljava/lang/String;

    array-length v2, v1

    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoader;->ignored_packages:[Ljava/lang/String;

    array-length v1, v1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoader;->ignored_packages:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    .locals 4

    const-string p0, "$$BCEL$$"

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->decode(Ljava/lang/String;Z)[B

    move-result-object p0

    new-instance v1, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p0, "foo"

    invoke-direct {v1, v2, p0}, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->parse()Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassNameIndex()I

    move-result v2

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(IB)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;->getNameIndex()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(IB)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->setBytes(Ljava/lang/String;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoader;->classes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_6

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoader;->ignored_packages:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoader;->deferTo:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_5

    const-string v0, "$$BCEL$$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/util/ClassLoader;->createClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoader;->repository:Lcom/sun/org/apache/bcel/internal/util/Repository;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/bcel/internal/util/Repository;->loadClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/util/ClassLoader;->modifyClass(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getBytes()[B

    move-result-object v0

    array-length v2, v0

    invoke-virtual {p0, p1, v0, v1, v2}, Ljava/lang/ClassLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v0

    goto :goto_3

    :cond_3
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/ClassNotFoundException;

    invoke-direct {p0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_3
    if-eqz p2, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->resolveClass(Ljava/lang/Class;)V

    :cond_6
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassLoader;->classes:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public modifyClass(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    .locals 0

    return-object p1
.end method
