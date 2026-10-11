.class public Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;
.super Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Matcher"
.end annotation


# instance fields
.field protected fElementDepth:I

.field protected fFieldActivator:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/FieldActivator;

.field protected fInitialDepth:I

.field protected fMatchedDepth:I

.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$XPath;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/FieldActivator;I)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector;

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;)V

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;->fFieldActivator:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/FieldActivator;

    iput p4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;->fInitialDepth:I

    return-void
.end method


# virtual methods
.method public endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;ZLjava/lang/Object;SLcom/sun/org/apache/xerces/internal/xs/ShortList;)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;->endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;ZLjava/lang/Object;SLcom/sun/org/apache/xerces/internal/xs/ShortList;)V

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;->fElementDepth:I

    add-int/lit8 p2, p1, -0x1

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;->fElementDepth:I

    iget p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;->fMatchedDepth:I

    if-ne p1, p2, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;->fMatchedDepth:I

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;->fFieldActivator:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/FieldActivator;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector;

    iget-object p2, p2, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector;->fIdentityConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;->fInitialDepth:I

    invoke-interface {p1, p2, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/FieldActivator;->endValueScopeFor(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;I)V

    :cond_0
    return-void
.end method

.method public getIdentityConstraint()Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector;->fIdentityConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    return-object p0
.end method

.method public getInitialDepth()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;->fInitialDepth:I

    return p0
.end method

.method public startDocumentFragment()V
    .locals 1

    invoke-super {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;->startDocumentFragment()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;->fElementDepth:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;->fMatchedDepth:I

    return-void
.end method

.method public startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;->fElementDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;->fElementDepth:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;->isMatched()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;->fElementDepth:I

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;->fMatchedDepth:I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;->fFieldActivator:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/FieldActivator;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector;->fIdentityConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;->fInitialDepth:I

    invoke-interface {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/FieldActivator;->startValueScopeFor(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;I)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector;->fIdentityConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->getFieldCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector;->fIdentityConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->getFieldAt(I)Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;->fFieldActivator:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/FieldActivator;

    iget v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;->fInitialDepth:I

    invoke-interface {v3, v2, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/FieldActivator;->activateField(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;I)Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
