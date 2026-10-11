.class public Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;,
        Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$XPath;
    }
.end annotation


# instance fields
.field protected fIDConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

.field protected fIdentityConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

.field protected fXPath:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$XPath;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$XPath;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector;->fXPath:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$XPath;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector;->fIdentityConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    return-void
.end method


# virtual methods
.method public createMatcher(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/FieldActivator;I)Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector;->fXPath:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$XPath;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$XPath;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/FieldActivator;I)V

    return-object v0
.end method

.method public getIDConstraint()Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector;->fIdentityConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    return-object p0
.end method

.method public getXPath()Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector;->fXPath:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$XPath;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector;->fXPath:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$XPath;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
