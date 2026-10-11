.class public abstract Lcom/sun/org/apache/bcel/internal/Repository;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static _repository:Lcom/sun/org/apache/bcel/internal/util/Repository;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;->getInstance()Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/bcel/internal/Repository;->_repository:Lcom/sun/org/apache/bcel/internal/util/Repository;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addClass(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    .locals 2

    sget-object v0, Lcom/sun/org/apache/bcel/internal/Repository;->_repository:Lcom/sun/org/apache/bcel/internal/util/Repository;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/org/apache/bcel/internal/util/Repository;->findClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/Repository;->_repository:Lcom/sun/org/apache/bcel/internal/util/Repository;

    invoke-interface {v1, p0}, Lcom/sun/org/apache/bcel/internal/util/Repository;->storeClass(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V

    return-object v0
.end method

.method public static clearCache()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/Repository;->_repository:Lcom/sun/org/apache/bcel/internal/util/Repository;

    invoke-interface {v0}, Lcom/sun/org/apache/bcel/internal/util/Repository;->clear()V

    return-void
.end method

.method public static getInterfaces(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)[Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getAllInterfaces()[Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0

    return-object p0
.end method

.method public static getInterfaces(Ljava/lang/String;)[Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/Repository;->getInterfaces(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)[Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0

    return-object p0
.end method

.method public static getRepository()Lcom/sun/org/apache/bcel/internal/util/Repository;
    .locals 1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/Repository;->_repository:Lcom/sun/org/apache/bcel/internal/util/Repository;

    return-object v0
.end method

.method public static getSuperClasses(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)[Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getSuperClasses()[Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0

    return-object p0
.end method

.method public static getSuperClasses(Ljava/lang/String;)[Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/Repository;->getSuperClasses(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)[Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static implementationOf(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->implementationOf(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)Z

    move-result p0

    return p0
.end method

.method public static implementationOf(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;Ljava/lang/String;)Z
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sun/org/apache/bcel/internal/Repository;->implementationOf(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)Z

    move-result p0

    return p0
.end method

.method public static implementationOf(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)Z
    .locals 0

    .line 4
    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sun/org/apache/bcel/internal/Repository;->implementationOf(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)Z

    move-result p0

    return p0
.end method

.method public static implementationOf(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sun/org/apache/bcel/internal/Repository;->implementationOf(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)Z

    move-result p0

    return p0
.end method

.method public static instanceOf(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->instanceOf(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)Z

    move-result p0

    return p0
.end method

.method public static instanceOf(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;Ljava/lang/String;)Z
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sun/org/apache/bcel/internal/Repository;->instanceOf(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)Z

    move-result p0

    return p0
.end method

.method public static instanceOf(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)Z
    .locals 0

    .line 4
    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sun/org/apache/bcel/internal/Repository;->instanceOf(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)Z

    move-result p0

    return p0
.end method

.method public static instanceOf(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sun/org/apache/bcel/internal/Repository;->instanceOf(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)Z

    move-result p0

    return p0
.end method

.method public static lookupClass(Ljava/lang/Class;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    .locals 1

    .line 3
    :try_start_0
    sget-object v0, Lcom/sun/org/apache/bcel/internal/Repository;->_repository:Lcom/sun/org/apache/bcel/internal/util/Repository;

    invoke-interface {v0, p0}, Lcom/sun/org/apache/bcel/internal/util/Repository;->loadClass(Ljava/lang/Class;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/sun/org/apache/bcel/internal/Repository;->_repository:Lcom/sun/org/apache/bcel/internal/util/Repository;

    invoke-interface {v0, p0}, Lcom/sun/org/apache/bcel/internal/util/Repository;->findClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/sun/org/apache/bcel/internal/Repository;->_repository:Lcom/sun/org/apache/bcel/internal/util/Repository;

    invoke-interface {v0, p0}, Lcom/sun/org/apache/bcel/internal/util/Repository;->loadClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static lookupClassFile(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/util/ClassPath$ClassFile;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/sun/org/apache/bcel/internal/util/ClassPath;->SYSTEM_CLASS_PATH:Lcom/sun/org/apache/bcel/internal/util/ClassPath;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/util/ClassPath;->getClassFile(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/util/ClassPath$ClassFile;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static removeClass(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/sun/org/apache/bcel/internal/Repository;->_repository:Lcom/sun/org/apache/bcel/internal/util/Repository;

    invoke-interface {v0, p0}, Lcom/sun/org/apache/bcel/internal/util/Repository;->removeClass(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V

    return-void
.end method

.method public static removeClass(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/sun/org/apache/bcel/internal/Repository;->_repository:Lcom/sun/org/apache/bcel/internal/util/Repository;

    invoke-interface {v0, p0}, Lcom/sun/org/apache/bcel/internal/util/Repository;->findClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sun/org/apache/bcel/internal/util/Repository;->removeClass(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V

    return-void
.end method

.method public static setRepository(Lcom/sun/org/apache/bcel/internal/util/Repository;)V
    .locals 0

    sput-object p0, Lcom/sun/org/apache/bcel/internal/Repository;->_repository:Lcom/sun/org/apache/bcel/internal/util/Repository;

    return-void
.end method
