.class public Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/PrePostExtension;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final PARAMTYPES_STRING:[Ljava/lang/String;

.field private static final SIGNATURE:Ljava/lang/String;


# instance fields
.field private _delegateToClass:Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

.field private _delegateToClassName:Ljava/lang/String;

.field private _postSet:Lcom/github/javaparser/ast/body/MethodDeclaration;

.field private _preSet:Lcom/github/javaparser/ast/body/MethodDeclaration;

.field private _xbeanSet:Lorg/apache/xmlbeans/impl/config/NameSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "javax.xml.namespace.QName"

    const-string v1, "boolean"

    const-string v2, "int"

    const-string v3, "org.apache.xmlbeans.XmlObject"

    filled-new-array {v2, v3, v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->PARAMTYPES_STRING:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->SIGNATURE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private lookAfterPreAndPost(Lorg/apache/xmlbeans/impl/config/Parser;Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 2

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_delegateToClass:Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    sget-object v0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->PARAMTYPES_STRING:[Ljava/lang/String;

    const-string v1, "preSet"

    invoke-static {p1, v1, v0}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->getMethod(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/String;[Ljava/lang/String;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_preSet:Lcom/github/javaparser/ast/body/MethodDeclaration;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    invoke-static {}, Lcom/github/javaparser/ast/type/PrimitiveType;->booleanType()Lcom/github/javaparser/ast/type/PrimitiveType;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/github/javaparser/ast/type/Type;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Method \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_delegateToClass:Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getNameAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".preSet"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->SIGNATURE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' should return boolean to be considered for a preSet handler."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->warning(Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_preSet:Lcom/github/javaparser/ast/body/MethodDeclaration;

    :cond_0
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_delegateToClass:Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    const-string v1, "postSet"

    invoke-static {p1, v1, v0}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->getMethod(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/String;[Ljava/lang/String;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_postSet:Lcom/github/javaparser/ast/body/MethodDeclaration;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_preSet:Lcom/github/javaparser/ast/body/MethodDeclaration;

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prePostSet handler specified \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_delegateToClass:Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getNameAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' but no preSet"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->SIGNATURE:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " or postSet"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " methods found."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->error(Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)V

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static newInstance(Lorg/apache/xmlbeans/impl/config/Parser;Lorg/apache/xmlbeans/impl/config/NameSet;Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig$PrePostSet;)Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;-><init>()V

    iput-object p1, v1, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_xbeanSet:Lorg/apache/xmlbeans/impl/config/NameSet;

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig$PrePostSet;->getStaticHandler()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_delegateToClassName:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->validateClass(Lorg/apache/xmlbeans/impl/config/Parser;Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object p1

    iput-object p1, v1, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_delegateToClass:Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    if-nez p1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Handler class \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig$PrePostSet;->getStaticHandler()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not found on classpath, skip validation."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->warning(Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)V

    return-object v1

    :cond_1
    invoke-direct {v1, p0, p2}, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->lookAfterPreAndPost(Lorg/apache/xmlbeans/impl/config/Parser;Lorg/apache/xmlbeans/XmlObject;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_xbeanSet:Lorg/apache/xmlbeans/impl/config/NameSet;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/config/NameSet;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getHandlerNameForJavaSource()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_delegateToClass:Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getNameAsString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getNameSet()Lorg/apache/xmlbeans/impl/config/NameSet;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_xbeanSet:Lorg/apache/xmlbeans/impl/config/NameSet;

    return-object p0
.end method

.method public getStaticHandler()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_delegateToClassName:Ljava/lang/String;

    return-object p0
.end method

.method public hasNameSetIntersection(Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;)Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/config/NameSet;->EMPTY:Lorg/apache/xmlbeans/impl/config/NameSet;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_xbeanSet:Lorg/apache/xmlbeans/impl/config/NameSet;

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_xbeanSet:Lorg/apache/xmlbeans/impl/config/NameSet;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/config/NameSet;->intersect(Lorg/apache/xmlbeans/impl/config/NameSet;)Lorg/apache/xmlbeans/impl/config/NameSet;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasPostCall()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_postSet:Lcom/github/javaparser/ast/body/MethodDeclaration;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasPreCall()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_preSet:Lcom/github/javaparser/ast/body/MethodDeclaration;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
