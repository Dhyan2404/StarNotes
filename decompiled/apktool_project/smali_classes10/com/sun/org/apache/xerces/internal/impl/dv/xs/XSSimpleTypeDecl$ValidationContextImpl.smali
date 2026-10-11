.class Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ValidationContextImpl"
.end annotation


# instance fields
.field fExternal:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;

.field fNSContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->this$0:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->fExternal:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;

    return-void
.end method


# virtual methods
.method public addId(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->fExternal:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;->addId(Ljava/lang/String;)V

    return-void
.end method

.method public addIdRef(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->fExternal:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;->addIdRef(Ljava/lang/String;)V

    return-void
.end method

.method public getSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->fExternal:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;->getSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->fNSContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->fExternal:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isEntityDeclared(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->fExternal:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;->isEntityDeclared(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isEntityUnparsed(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->fExternal:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;->isEntityUnparsed(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isIdDeclared(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->fExternal:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;->isIdDeclared(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public needExtraChecking()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->fExternal:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;->needExtraChecking()Z

    move-result p0

    return p0
.end method

.method public needFacetChecking()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->fExternal:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;->needFacetChecking()Z

    move-result p0

    return p0
.end method

.method public needToNormalize()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->fExternal:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;->needToNormalize()Z

    move-result p0

    return p0
.end method

.method public setNSContext(Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->fNSContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    return-void
.end method

.method public useNamespaces()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
