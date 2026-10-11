.class public final synthetic Lcom/sunia/HTREnginev2/woi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/woi;->e:Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/woi;->e:Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;

    check-cast p1, Lcom/github/javaparser/ast/body/MethodDeclaration;

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->j(Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;Lcom/github/javaparser/ast/body/MethodDeclaration;)Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl$MethodSignatureImpl;

    move-result-object p0

    return-object p0
.end method
