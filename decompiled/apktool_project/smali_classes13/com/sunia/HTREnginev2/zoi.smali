.class public final synthetic Lcom/sunia/HTREnginev2/zoi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Lcom/github/javaparser/resolution/MethodUsage;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/resolution/MethodUsage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zoi;->e:Lcom/github/javaparser/resolution/MethodUsage;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zoi;->e:Lcom/github/javaparser/resolution/MethodUsage;

    check-cast p1, Lcom/github/javaparser/ast/body/MethodDeclaration;

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->a(Lcom/github/javaparser/resolution/MethodUsage;Lcom/github/javaparser/ast/body/MethodDeclaration;)Z

    move-result p0

    return p0
.end method
