.class public Lorg/apache/xerces/impl/xs/identity/Field;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/impl/xs/identity/Field$Matcher;,
        Lorg/apache/xerces/impl/xs/identity/Field$XPath;
    }
.end annotation


# instance fields
.field protected final fIdentityConstraint:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

.field protected final fXPath:Lorg/apache/xerces/impl/xs/identity/Field$XPath;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/impl/xs/identity/Field$XPath;Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/identity/Field;->fXPath:Lorg/apache/xerces/impl/xs/identity/Field$XPath;

    iput-object p2, p0, Lorg/apache/xerces/impl/xs/identity/Field;->fIdentityConstraint:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    return-void
.end method


# virtual methods
.method public createMatcher(Lorg/apache/xerces/impl/xs/identity/ValueStore;)Lorg/apache/xerces/impl/xs/identity/XPathMatcher;
    .locals 2

    new-instance v0, Lorg/apache/xerces/impl/xs/identity/Field$Matcher;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/identity/Field;->fXPath:Lorg/apache/xerces/impl/xs/identity/Field$XPath;

    invoke-direct {v0, p0, v1, p1}, Lorg/apache/xerces/impl/xs/identity/Field$Matcher;-><init>(Lorg/apache/xerces/impl/xs/identity/Field;Lorg/apache/xerces/impl/xs/identity/Field$XPath;Lorg/apache/xerces/impl/xs/identity/ValueStore;)V

    return-object v0
.end method

.method public getIdentityConstraint()Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/identity/Field;->fIdentityConstraint:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    return-object p0
.end method

.method public getXPath()Lorg/apache/xerces/impl/xpath/XPath;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/identity/Field;->fXPath:Lorg/apache/xerces/impl/xs/identity/Field$XPath;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/identity/Field;->fXPath:Lorg/apache/xerces/impl/xs/identity/Field$XPath;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/XPath;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
