.class public Lorg/apache/xerces/impl/xs/identity/Selector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/impl/xs/identity/Selector$Matcher;,
        Lorg/apache/xerces/impl/xs/identity/Selector$XPath;
    }
.end annotation


# instance fields
.field protected fIDConstraint:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

.field protected final fIdentityConstraint:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

.field protected final fXPath:Lorg/apache/xerces/impl/xs/identity/Selector$XPath;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/impl/xs/identity/Selector$XPath;Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/identity/Selector;->fXPath:Lorg/apache/xerces/impl/xs/identity/Selector$XPath;

    iput-object p2, p0, Lorg/apache/xerces/impl/xs/identity/Selector;->fIdentityConstraint:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    return-void
.end method


# virtual methods
.method public createMatcher(Lorg/apache/xerces/impl/xs/identity/FieldActivator;I)Lorg/apache/xerces/impl/xs/identity/XPathMatcher;
    .locals 2

    new-instance v0, Lorg/apache/xerces/impl/xs/identity/Selector$Matcher;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/identity/Selector;->fXPath:Lorg/apache/xerces/impl/xs/identity/Selector$XPath;

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/apache/xerces/impl/xs/identity/Selector$Matcher;-><init>(Lorg/apache/xerces/impl/xs/identity/Selector;Lorg/apache/xerces/impl/xs/identity/Selector$XPath;Lorg/apache/xerces/impl/xs/identity/FieldActivator;I)V

    return-object v0
.end method

.method public getIDConstraint()Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/identity/Selector;->fIdentityConstraint:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    return-object p0
.end method

.method public getXPath()Lorg/apache/xerces/impl/xpath/XPath;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/identity/Selector;->fXPath:Lorg/apache/xerces/impl/xs/identity/Selector$XPath;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/identity/Selector;->fXPath:Lorg/apache/xerces/impl/xs/identity/Selector$XPath;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/XPath;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
