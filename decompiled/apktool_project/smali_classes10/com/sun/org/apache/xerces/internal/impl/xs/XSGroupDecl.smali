.class public Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xs/XSModelGroupDefinition;


# instance fields
.field public fAnnotation:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

.field public fModelGroup:Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

.field public fName:Ljava/lang/String;

.field public fTargetNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;->fTargetNamespace:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;->fModelGroup:Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;->fAnnotation:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    return-void
.end method


# virtual methods
.method public getAnnotation()Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;->fAnnotation:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    return-object p0
.end method

.method public getModelGroup()Lcom/sun/org/apache/xerces/internal/xs/XSModelGroup;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;->fModelGroup:Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;->fTargetNamespace:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespaceItem()Lcom/sun/org/apache/xerces/internal/xs/XSNamespaceItem;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getType()S
    .locals 0

    const/4 p0, 0x6

    return p0
.end method
