.class public Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$Matcher;
.super Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Matcher"
.end annotation


# instance fields
.field protected fFieldActivator:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/FieldActivator;

.field protected fStore:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/ValueStore;

.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$XPath;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/FieldActivator;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/ValueStore;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$Matcher;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;)V

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$Matcher;->fFieldActivator:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/FieldActivator;

    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$Matcher;->fStore:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/ValueStore;

    return-void
.end method

.method private convertToPrimitiveKind(Lcom/sun/org/apache/xerces/internal/xs/ShortList;)Lcom/sun/org/apache/xerces/internal/xs/ShortList;
    .locals 5

    if-eqz p1, :cond_4

    .line 2
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ShortList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    invoke-interface {p1, v2}, Lcom/sun/org/apache/xerces/internal/xs/ShortList;->item(I)S

    move-result v3

    .line 4
    invoke-direct {p0, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$Matcher;->convertToPrimitiveKind(S)S

    move-result v4

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eq v2, v0, :cond_4

    .line 5
    new-array v3, v0, [S

    :goto_2
    if-ge v1, v2, :cond_2

    .line 6
    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xs/ShortList;->item(I)S

    move-result v4

    aput-short v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v2, v0, :cond_3

    .line 7
    invoke-interface {p1, v2}, Lcom/sun/org/apache/xerces/internal/xs/ShortList;->item(I)S

    move-result v1

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$Matcher;->convertToPrimitiveKind(S)S

    move-result v1

    aput-short v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 8
    :cond_3
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/ShortListImpl;

    invoke-direct {p0, v3, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/ShortListImpl;-><init>([SI)V

    return-object p0

    :cond_4
    return-object p1
.end method

.method private convertToPrimitiveKind(S)S
    .locals 0

    .line 1
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


# virtual methods
.method public handleContent(Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;ZLjava/lang/Object;SLcom/sun/org/apache/xerces/internal/xs/ShortList;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/xs/XSComplexTypeDefinition;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/XSComplexTypeDefinition;->getContentType()S

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$Matcher;->fStore:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/ValueStore;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$Matcher;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;->fIdentityConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$Matcher;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;->fIdentityConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "cvc-id.3"

    invoke-interface {p1, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/ValueStore;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;->fMatchedString:Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, p5, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$Matcher;->matched(Ljava/lang/Object;SLcom/sun/org/apache/xerces/internal/xs/ShortList;Z)V

    return-void
.end method

.method public matched(Ljava/lang/Object;SLcom/sun/org/apache/xerces/internal/xs/ShortList;Z)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;->matched(Ljava/lang/Object;SLcom/sun/org/apache/xerces/internal/xs/ShortList;Z)V

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$Matcher;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;

    iget-object p4, p4, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;->fIdentityConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    invoke-virtual {p4}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result p4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$Matcher;->fStore:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/ValueStore;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$Matcher;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;->fIdentityConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "KeyMatchesNillable"

    invoke-interface {p4, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/ValueStore;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$Matcher;->fStore:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/ValueStore;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$Matcher;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$Matcher;->convertToPrimitiveKind(S)S

    move-result p2

    invoke-direct {p0, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$Matcher;->convertToPrimitiveKind(Lcom/sun/org/apache/xerces/internal/xs/ShortList;)Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    move-result-object p3

    invoke-interface {p4, v0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/ValueStore;->addValue(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;Ljava/lang/Object;SLcom/sun/org/apache/xerces/internal/xs/ShortList;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$Matcher;->fFieldActivator:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/FieldActivator;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$Matcher;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/FieldActivator;->setMayMatch(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;Ljava/lang/Boolean;)V

    return-void
.end method
