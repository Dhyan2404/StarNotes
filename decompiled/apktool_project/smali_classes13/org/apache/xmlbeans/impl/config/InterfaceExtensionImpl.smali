.class public Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/InterfaceExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl$MethodSignatureImpl;
    }
.end annotation


# instance fields
.field private _delegateToClassName:Ljava/lang/String;

.field private _interfaceClassName:Ljava/lang/String;

.field private _methods:[Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl$MethodSignatureImpl;

.field private _xbeanSet:Lorg/apache/xmlbeans/impl/config/NameSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/resolution/MethodUsage;Lcom/github/javaparser/ast/body/MethodDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->lambda$validateMethod$4(Lcom/github/javaparser/resolution/MethodUsage;Lcom/github/javaparser/ast/body/MethodDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(I)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->lambda$paramStrings$9(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c([Ljava/lang/String;Lcom/github/javaparser/ast/body/MethodDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->lambda$getMethod$7([Ljava/lang/String;Lcom/github/javaparser/ast/body/MethodDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(I)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->lambda$validateMethod$6(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lorg/apache/xmlbeans/XmlObject;Lcom/github/javaparser/resolution/MethodUsage;)Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->lambda$validateMethods$1(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lorg/apache/xmlbeans/XmlObject;Lcom/github/javaparser/resolution/MethodUsage;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(I)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->lambda$validateMethod$5(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/github/javaparser/ast/type/ReferenceType;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/Type;->resolve()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    return-object p0
.end method

.method public static getMethod(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/String;[Ljava/lang/String;)Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getMethodsByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/epi;

    invoke-direct {p1, p2}, Lcom/sunia/HTREnginev2/epi;-><init>([Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/body/MethodDeclaration;

    return-object p0
.end method

.method public static synthetic h(I)[Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl$MethodSignatureImpl;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->lambda$validateMethods$3(I)[Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl$MethodSignatureImpl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/github/javaparser/resolution/MethodUsage;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->lambda$validateMethods$0(Lcom/github/javaparser/resolution/MethodUsage;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;Lcom/github/javaparser/ast/body/MethodDeclaration;)Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl$MethodSignatureImpl;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->lambda$validateMethods$2(Lcom/github/javaparser/ast/body/MethodDeclaration;)Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl$MethodSignatureImpl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/github/javaparser/ast/Node;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->lambda$paramStrings$8(Lcom/github/javaparser/ast/Node;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getMethod$7([Ljava/lang/String;Lcom/github/javaparser/ast/body/MethodDeclaration;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->paramStrings(Lcom/github/javaparser/ast/NodeList;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->parameterMatches([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$paramStrings$8(Lcom/github/javaparser/ast/Node;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lcom/github/javaparser/ast/body/Parameter;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/github/javaparser/ast/body/Parameter;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/Parameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/Type;->resolve()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/github/javaparser/ast/type/TypeParameter;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/github/javaparser/ast/type/TypeParameter;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/TypeParameter;->getNameAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "unknown"

    return-object p0
.end method

.method private static synthetic lambda$paramStrings$9(I)[Ljava/lang/String;
    .locals 0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$validateMethod$4(Lcom/github/javaparser/resolution/MethodUsage;Lcom/github/javaparser/ast/body/MethodDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->matchParams(Lcom/github/javaparser/resolution/MethodUsage;Lcom/github/javaparser/ast/body/MethodDeclaration;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$validateMethod$5(I)[Ljava/lang/String;
    .locals 0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$validateMethod$6(I)[Ljava/lang/String;
    .locals 0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$validateMethods$0(Lcom/github/javaparser/resolution/MethodUsage;)Z
    .locals 1

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/MethodUsage;->declaringType()Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object p0

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getQualifiedName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$validateMethods$1(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lorg/apache/xmlbeans/XmlObject;Lcom/github/javaparser/resolution/MethodUsage;)Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 0

    invoke-direct {p0, p1, p2, p4, p3}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->validateMethod(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/resolution/MethodUsage;Lorg/apache/xmlbeans/XmlObject;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$validateMethods$2(Lcom/github/javaparser/ast/body/MethodDeclaration;)Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl$MethodSignatureImpl;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl$MethodSignatureImpl;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->getStaticHandler()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl$MethodSignatureImpl;-><init>(Ljava/lang/String;Lcom/github/javaparser/ast/body/MethodDeclaration;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static synthetic lambda$validateMethods$3(I)[Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl$MethodSignatureImpl;
    .locals 0

    new-array p0, p0, [Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl$MethodSignatureImpl;

    return-object p0
.end method

.method private static matchParams(Lcom/github/javaparser/resolution/MethodUsage;Lcom/github/javaparser/ast/body/MethodDeclaration;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/MethodUsage;->getParamTypes()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    return v3

    :cond_0
    const-class v0, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/body/Parameter;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/body/Parameter;->resolve()Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;

    move-result-object v1

    invoke-interface {v1}, Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;->describeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v0, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {v1}, Lcom/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/body/Parameter;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/body/Parameter;->resolve()Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;->describeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    return v2
.end method

.method public static newInstance(Lorg/apache/xmlbeans/impl/config/Parser;Lorg/apache/xmlbeans/impl/config/NameSet;Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig$Interface;)Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;-><init>()V

    iput-object p1, v0, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->_xbeanSet:Lorg/apache/xmlbeans/impl/config/NameSet;

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig$Interface;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->validateInterface(Lorg/apache/xmlbeans/impl/config/Parser;Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Interface \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig$Interface;->getStaticHandler()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not found."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->error(Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)V

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getFullyQualifiedName()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->_interfaceClassName:Ljava/lang/String;

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig$Interface;->getStaticHandler()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->_delegateToClassName:Ljava/lang/String;

    invoke-static {p0, v2, p2}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->validateClass(Lorg/apache/xmlbeans/impl/config/Parser;Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Handler class \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig$Interface;->getStaticHandler()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not found on classpath, skip validation."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->warning(Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)V

    return-object v0

    :cond_1
    invoke-direct {v0, p0, p1, v2, p2}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->validateMethods(Lorg/apache/xmlbeans/impl/config/Parser;Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lorg/apache/xmlbeans/XmlObject;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method private static paramStrings(Lcom/github/javaparser/ast/NodeList;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "*>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/voi;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/voi;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/yoi;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/yoi;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static parameterMatches([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6

    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    aget-object v1, p0, v0

    aget-object v3, p1, v0

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, v3

    move-object v3, v1

    move-object v1, v5

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static validateClass(Lorg/apache/xmlbeans/impl/config/Parser;Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->validateJava(Lorg/apache/xmlbeans/impl/config/Parser;Ljava/lang/String;ZLorg/apache/xmlbeans/XmlObject;)Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object p0

    return-object p0
.end method

.method private static validateInterface(Lorg/apache/xmlbeans/impl/config/Parser;Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->validateJava(Lorg/apache/xmlbeans/impl/config/Parser;Ljava/lang/String;ZLorg/apache/xmlbeans/XmlObject;)Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object p0

    return-object p0
.end method

.method public static validateJava(Lorg/apache/xmlbeans/impl/config/Parser;Ljava/lang/String;ZLorg/apache/xmlbeans/XmlObject;)Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    const-string v1, "Interface"

    goto :goto_0

    :cond_1
    const-string v1, "Class"

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/config/Parser;->loadSource(Ljava/lang/String;)Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object p0

    const-string v2, " \'"

    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not found."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->error(Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)V

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v0

    if-eq p2, v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' must be "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3

    const-string p2, "an interface"

    goto :goto_1

    :cond_3
    const-string p2, "a class"

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p3}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->error(Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_4
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isPublic()Z

    move-result p2

    if-nez p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not public."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->error(Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_5
    return-object p0
.end method

.method private validateMethod(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/resolution/MethodUsage;Lorg/apache/xmlbeans/XmlObject;)Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 6

    invoke-virtual {p3}, Lcom/github/javaparser/resolution/MethodUsage;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getMethodsByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/zoi;

    invoke-direct {v1, p3}, Lcom/sunia/HTREnginev2/zoi;-><init>(Lcom/github/javaparser/resolution/MethodUsage;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/body/MethodDeclaration;

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getFullyQualifiedName()Ljava/util/Optional;

    move-result-object p2

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/github/javaparser/resolution/MethodUsage;->getParamTypes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getFullyQualifiedName()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Handler class \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not contain method "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p4}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->error(Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)V

    return-object v1

    :cond_0
    invoke-virtual {p3}, Lcom/github/javaparser/resolution/MethodUsage;->getDeclaration()Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    move-result-object v2

    invoke-interface {v2}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;->getSpecifiedExceptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcom/sunia/HTREnginev2/api;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/api;-><init>()V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcom/sunia/HTREnginev2/bpi;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/bpi;-><init>()V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/sunia/HTREnginev2/cpi;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/cpi;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/sunia/HTREnginev2/api;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/api;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/sunia/HTREnginev2/dpi;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/dpi;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "."

    if-nez v2, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Handler method \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' must declare the same exceptions as the interface method \'"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p4}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->error(Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)V

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/github/javaparser/ast/body/MethodDeclaration;->isPublic()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lcom/github/javaparser/ast/body/MethodDeclaration;->isStatic()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/github/javaparser/resolution/MethodUsage;->getDeclaration()Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    move-result-object p1

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;->getReturnType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-virtual {v0}, Lcom/github/javaparser/ast/body/MethodDeclaration;->resolve()Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    move-result-object v2

    invoke-interface {v2}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;->getReturnType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p3}, Lcom/github/javaparser/resolution/MethodUsage;->getDeclaration()Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    move-result-object p1

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;->getReturnType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Return type for method \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "(...)\' does not match the return type of the interface method :\'"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'."

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p4}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->error(Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)V

    return-object v1

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Method \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' must be declared public and static."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p4}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->error(Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)V

    return-object v1
.end method

.method private validateMethods(Lorg/apache/xmlbeans/impl/config/Parser;Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->resolve()Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object p1

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getAllMethods()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/fpi;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/fpi;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/gpi;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/sunia/HTREnginev2/gpi;-><init>(Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lorg/apache/xmlbeans/XmlObject;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/sunia/HTREnginev2/woi;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/woi;-><init>(Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/sunia/HTREnginev2/xoi;

    invoke-direct {p2}, Lcom/sunia/HTREnginev2/xoi;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl$MethodSignatureImpl;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->_methods:[Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl$MethodSignatureImpl;

    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/xmlbeans/impl/config/c;

    invoke-direct {p1}, Lorg/apache/xmlbeans/impl/config/c;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->_xbeanSet:Lorg/apache/xmlbeans/impl/config/NameSet;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/config/NameSet;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getInterface()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->_interfaceClassName:Ljava/lang/String;

    return-object p0
.end method

.method public getMethods()[Lorg/apache/xmlbeans/InterfaceExtension$MethodSignature;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->_methods:[Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl$MethodSignatureImpl;

    return-object p0
.end method

.method public getStaticHandler()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->_delegateToClassName:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  static handler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->_delegateToClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  interface: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->_interfaceClassName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  name set: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->_xbeanSet:Lorg/apache/xmlbeans/impl/config/NameSet;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->_methods:[Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl$MethodSignatureImpl;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    const-string v3, "  method["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->_methods:[Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl$MethodSignatureImpl;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
