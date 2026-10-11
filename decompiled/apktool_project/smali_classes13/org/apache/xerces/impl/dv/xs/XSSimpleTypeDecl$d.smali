.class public final Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/XSMultiValueFacet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final e:S

.field public final f:Lorg/apache/xerces/xs/XSObjectList;

.field public final g:Lorg/apache/xerces/xs/StringList;

.field public final h:Lorg/apache/xerces/xs/datatypes/ObjectList;


# direct methods
.method public constructor <init>(SLorg/apache/xerces/xs/StringList;Lorg/apache/xerces/xs/datatypes/ObjectList;Lorg/apache/xerces/xs/XSObjectList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$d;->e:S

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$d;->g:Lorg/apache/xerces/xs/StringList;

    iput-object p3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$d;->h:Lorg/apache/xerces/xs/datatypes/ObjectList;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    sget-object p4, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_0
    iput-object p4, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$d;->f:Lorg/apache/xerces/xs/XSObjectList;

    return-void
.end method


# virtual methods
.method public getAnnotations()Lorg/apache/xerces/xs/XSObjectList;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$d;->f:Lorg/apache/xerces/xs/XSObjectList;

    return-object p0
.end method

.method public getEnumerationValues()Lorg/apache/xerces/xs/datatypes/ObjectList;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$d;->h:Lorg/apache/xerces/xs/datatypes/ObjectList;

    return-object p0
.end method

.method public getFacetKind()S
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$d;->e:S

    return p0
.end method

.method public getLexicalFacetValues()Lorg/apache/xerces/xs/StringList;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$d;->g:Lorg/apache/xerces/xs/StringList;

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

.method public getNamespaceItem()Lorg/apache/xerces/xs/XSNamespaceItem;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getType()S
    .locals 0

    const/16 p0, 0xe

    return p0
.end method
