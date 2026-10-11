.class final Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xs/XSFacet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XSFacetImpl"
.end annotation


# instance fields
.field final annotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

.field final fixed:Z

.field final kind:S

.field final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(SLjava/lang/String;ZLcom/sun/org/apache/xerces/internal/xs/XSAnnotation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;->kind:S

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;->value:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;->fixed:Z

    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;->annotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    return-void
.end method


# virtual methods
.method public getAnnotation()Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;->annotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    return-object p0
.end method

.method public getFacetKind()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;->kind:S

    return p0
.end method

.method public getFixed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;->fixed:Z

    return p0
.end method

.method public getLexicalFacetValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;->value:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNamespaceItem()Lcom/sun/org/apache/xerces/internal/xs/XSNamespaceItem;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getType()S
    .locals 0

    const/16 p0, 0xd

    return p0
.end method
