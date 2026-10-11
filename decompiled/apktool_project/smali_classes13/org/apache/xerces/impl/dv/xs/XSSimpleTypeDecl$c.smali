.class public final Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/XSFacet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final e:S

.field public final f:Ljava/lang/String;

.field public final g:I

.field public h:Ljava/lang/Object;

.field public final i:Z

.field public final j:Lorg/apache/xerces/xs/XSObjectList;


# direct methods
.method public constructor <init>(SLjava/lang/String;ILjava/lang/Object;ZLorg/apache/xerces/xs/XSAnnotation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;->e:S

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;->f:Ljava/lang/String;

    iput p3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;->g:I

    iput-object p4, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;->h:Ljava/lang/Object;

    iput-boolean p5, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;->i:Z

    if-eqz p6, :cond_0

    new-instance p1, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {p1}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;->j:Lorg/apache/xerces/xs/XSObjectList;

    invoke-virtual {p1, p6}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lorg/apache/xerces/xs/XSObject;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;->j:Lorg/apache/xerces/xs/XSObjectList;

    :goto_0
    return-void
.end method


# virtual methods
.method public getActualFacetValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;->h:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;->e:S

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;->g:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;->h:Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;->h:Ljava/lang/Object;

    return-object p0
.end method

.method public getAnnotation()Lorg/apache/xerces/xs/XSAnnotation;
    .locals 1

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;->j:Lorg/apache/xerces/xs/XSObjectList;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/apache/xerces/xs/XSObjectList;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/xs/XSAnnotation;

    return-object p0
.end method

.method public getAnnotations()Lorg/apache/xerces/xs/XSObjectList;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;->j:Lorg/apache/xerces/xs/XSObjectList;

    return-object p0
.end method

.method public getFacetKind()S
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;->e:S

    return p0
.end method

.method public getFixed()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;->i:Z

    return p0
.end method

.method public getIntFacetValue()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;->g:I

    return p0
.end method

.method public getLexicalFacetValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;->f:Ljava/lang/String;

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

    const/16 p0, 0xd

    return p0
.end method
