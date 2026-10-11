.class public Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$Matcher;,
        Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$XPath;
    }
.end annotation


# instance fields
.field protected fIdentityConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

.field protected fXPath:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$XPath;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$XPath;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;->fXPath:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$XPath;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;->fIdentityConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    return-void
.end method


# virtual methods
.method public createMatcher(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/FieldActivator;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/ValueStore;)Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$Matcher;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;->fXPath:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$XPath;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$Matcher;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$XPath;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/FieldActivator;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/ValueStore;)V

    return-object v0
.end method

.method public getIdentityConstraint()Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;->fIdentityConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    return-object p0
.end method

.method public getXPath()Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;->fXPath:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$XPath;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;->fXPath:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$XPath;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
