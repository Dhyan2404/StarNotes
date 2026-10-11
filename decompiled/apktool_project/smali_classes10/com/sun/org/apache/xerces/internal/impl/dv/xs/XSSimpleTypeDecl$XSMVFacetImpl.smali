.class final Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xs/XSMultiValueFacet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XSMVFacetImpl"
.end annotation


# instance fields
.field annotations:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

.field final kind:S

.field values:Lcom/sun/org/apache/xerces/internal/xs/StringList;


# direct methods
.method public constructor <init>(SLcom/sun/org/apache/xerces/internal/xs/StringList;Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;->kind:S

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;->values:Lcom/sun/org/apache/xerces/internal/xs/StringList;

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;->annotations:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    return-void
.end method


# virtual methods
.method public getAnnotations()Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;->annotations:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    return-object p0
.end method

.method public getFacetKind()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;->kind:S

    return p0
.end method

.method public getLexicalFacetValues()Lcom/sun/org/apache/xerces/internal/xs/StringList;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;->values:Lcom/sun/org/apache/xerces/internal/xs/StringList;

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

    const/16 p0, 0xe

    return p0
.end method
