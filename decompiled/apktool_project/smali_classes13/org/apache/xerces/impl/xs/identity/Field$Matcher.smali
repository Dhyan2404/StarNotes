.class public Lorg/apache/xerces/impl/xs/identity/Field$Matcher;
.super Lorg/apache/xerces/impl/xs/identity/XPathMatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xs/identity/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Matcher"
.end annotation


# instance fields
.field protected fMayMatch:Z

.field protected final fStore:Lorg/apache/xerces/impl/xs/identity/ValueStore;

.field public final synthetic g:Lorg/apache/xerces/impl/xs/identity/Field;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/impl/xs/identity/Field;Lorg/apache/xerces/impl/xs/identity/Field$XPath;Lorg/apache/xerces/impl/xs/identity/ValueStore;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/apache/xerces/impl/xs/identity/XPathMatcher;-><init>(Lorg/apache/xerces/impl/xpath/XPath;)V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/identity/Field$Matcher;->g:Lorg/apache/xerces/impl/xs/identity/Field;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/xerces/impl/xs/identity/Field$Matcher;->fMayMatch:Z

    iput-object p3, p0, Lorg/apache/xerces/impl/xs/identity/Field$Matcher;->fStore:Lorg/apache/xerces/impl/xs/identity/ValueStore;

    return-void
.end method


# virtual methods
.method public final c(Lorg/apache/xerces/xs/ShortList;)Lorg/apache/xerces/xs/ShortList;
    .locals 5

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/apache/xerces/xs/ShortList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1, v2}, Lorg/apache/xerces/xs/ShortList;->item(I)S

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/xerces/impl/xs/identity/Field$Matcher;->d(S)S

    move-result v4

    if-eq v3, v4, :cond_3

    :goto_1
    if-eq v2, v0, :cond_4

    new-array v3, v0, [S

    :goto_2
    if-lt v1, v2, :cond_2

    :goto_3
    if-lt v2, v0, :cond_1

    new-instance p0, Lorg/apache/xerces/impl/xs/util/ShortListImpl;

    invoke-direct {p0, v3, v0}, Lorg/apache/xerces/impl/xs/util/ShortListImpl;-><init>([SI)V

    return-object p0

    :cond_1
    invoke-interface {p1, v2}, Lorg/apache/xerces/xs/ShortList;->item(I)S

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/xs/identity/Field$Matcher;->d(S)S

    move-result v1

    aput-short v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    invoke-interface {p1, v1}, Lorg/apache/xerces/xs/ShortList;->item(I)S

    move-result v4

    aput-short v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object p1
.end method

.method public final d(S)S
    .locals 0

    const/16 p0, 0x14

    if-gt p1, p0, :cond_0

    return p1

    :cond_0
    const/16 p0, 0x1d

    if-gt p1, p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/16 p0, 0x2a

    if-gt p1, p0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    return p1
.end method

.method public handleContent(Lorg/apache/xerces/xs/XSTypeDefinition;ZLjava/lang/Object;SLorg/apache/xerces/xs/ShortList;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    check-cast p1, Lorg/apache/xerces/xs/XSComplexTypeDefinition;

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSComplexTypeDefinition;->getContentType()S

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/apache/xerces/impl/xs/identity/Field$Matcher;->fStore:Lorg/apache/xerces/impl/xs/identity/ValueStore;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/identity/Field$Matcher;->g:Lorg/apache/xerces/impl/xs/identity/Field;

    iget-object v0, v0, Lorg/apache/xerces/impl/xs/identity/Field;->fIdentityConstraint:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/identity/Field$Matcher;->g:Lorg/apache/xerces/impl/xs/identity/Field;

    iget-object v1, v1, Lorg/apache/xerces/impl/xs/identity/Field;->fIdentityConstraint:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "cvc-id.3"

    invoke-interface {p1, v1, v0}, Lorg/apache/xerces/impl/xs/identity/ValueStore;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iput-object p3, p0, Lorg/apache/xerces/impl/xs/identity/XPathMatcher;->fMatchedString:Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, p5, p2}, Lorg/apache/xerces/impl/xs/identity/Field$Matcher;->matched(Ljava/lang/Object;SLorg/apache/xerces/xs/ShortList;Z)V

    return-void
.end method

.method public matched(Ljava/lang/Object;SLorg/apache/xerces/xs/ShortList;Z)V
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xerces/impl/xs/identity/XPathMatcher;->matched(Ljava/lang/Object;SLorg/apache/xerces/xs/ShortList;Z)V

    if-eqz p4, :cond_0

    iget-object p4, p0, Lorg/apache/xerces/impl/xs/identity/Field$Matcher;->g:Lorg/apache/xerces/impl/xs/identity/Field;

    iget-object p4, p4, Lorg/apache/xerces/impl/xs/identity/Field;->fIdentityConstraint:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {p4}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result p4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    iget-object p4, p0, Lorg/apache/xerces/impl/xs/identity/Field$Matcher;->fStore:Lorg/apache/xerces/impl/xs/identity/ValueStore;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/identity/Field$Matcher;->g:Lorg/apache/xerces/impl/xs/identity/Field;

    iget-object v0, v0, Lorg/apache/xerces/impl/xs/identity/Field;->fIdentityConstraint:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/identity/Field$Matcher;->g:Lorg/apache/xerces/impl/xs/identity/Field;

    iget-object v1, v1, Lorg/apache/xerces/impl/xs/identity/Field;->fIdentityConstraint:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "KeyMatchesNillable"

    invoke-interface {p4, v1, v0}, Lorg/apache/xerces/impl/xs/identity/ValueStore;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/identity/Field$Matcher;->fStore:Lorg/apache/xerces/impl/xs/identity/ValueStore;

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/identity/Field$Matcher;->g:Lorg/apache/xerces/impl/xs/identity/Field;

    iget-boolean v4, p0, Lorg/apache/xerces/impl/xs/identity/Field$Matcher;->fMayMatch:Z

    invoke-virtual {p0, p2}, Lorg/apache/xerces/impl/xs/identity/Field$Matcher;->d(S)S

    move-result v6

    invoke-virtual {p0, p3}, Lorg/apache/xerces/impl/xs/identity/Field$Matcher;->c(Lorg/apache/xerces/xs/ShortList;)Lorg/apache/xerces/xs/ShortList;

    move-result-object v7

    move-object v5, p1

    invoke-interface/range {v2 .. v7}, Lorg/apache/xerces/impl/xs/identity/ValueStore;->addValue(Lorg/apache/xerces/impl/xs/identity/Field;ZLjava/lang/Object;SLorg/apache/xerces/xs/ShortList;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/xerces/impl/xs/identity/Field$Matcher;->fMayMatch:Z

    return-void
.end method
