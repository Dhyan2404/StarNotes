.class public Lorg/apache/xerces/impl/xs/XSGroupDecl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/XSModelGroupDefinition;


# instance fields
.field public e:Lorg/apache/xerces/xs/XSNamespaceItem;

.field public fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

.field public fModelGroup:Lorg/apache/xerces/impl/xs/XSModelGroupImpl;

.field public fName:Ljava/lang/String;

.field public fTargetNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSGroupDecl;->fTargetNamespace:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSGroupDecl;->fModelGroup:Lorg/apache/xerces/impl/xs/XSModelGroupImpl;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSGroupDecl;->fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSGroupDecl;->e:Lorg/apache/xerces/xs/XSNamespaceItem;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/xerces/xs/XSNamespaceItem;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XSGroupDecl;->e:Lorg/apache/xerces/xs/XSNamespaceItem;

    return-void
.end method

.method public getAnnotation()Lorg/apache/xerces/xs/XSAnnotation;
    .locals 1

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSGroupDecl;->fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/apache/xerces/xs/XSObjectList;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/xs/XSAnnotation;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getAnnotations()Lorg/apache/xerces/xs/XSObjectList;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSGroupDecl;->fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_0
    return-object p0
.end method

.method public getModelGroup()Lorg/apache/xerces/xs/XSModelGroup;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSGroupDecl;->fModelGroup:Lorg/apache/xerces/impl/xs/XSModelGroupImpl;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSGroupDecl;->fTargetNamespace:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespaceItem()Lorg/apache/xerces/xs/XSNamespaceItem;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSGroupDecl;->e:Lorg/apache/xerces/xs/XSNamespaceItem;

    return-object p0
.end method

.method public getType()S
    .locals 0

    const/4 p0, 0x6

    return p0
.end method
