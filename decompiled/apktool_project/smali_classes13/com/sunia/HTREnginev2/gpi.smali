.class public final synthetic Lcom/sunia/HTREnginev2/gpi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;

.field public final synthetic f:Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

.field public final synthetic g:Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

.field public final synthetic h:Lorg/apache/xmlbeans/XmlObject;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lorg/apache/xmlbeans/XmlObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gpi;->e:Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/gpi;->f:Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/gpi;->g:Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/gpi;->h:Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gpi;->e:Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gpi;->f:Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/gpi;->g:Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gpi;->h:Lorg/apache/xmlbeans/XmlObject;

    check-cast p1, Lcom/github/javaparser/resolution/MethodUsage;

    invoke-static {v0, v1, v2, p0, p1}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->e(Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lorg/apache/xmlbeans/XmlObject;Lcom/github/javaparser/resolution/MethodUsage;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p0

    return-object p0
.end method
