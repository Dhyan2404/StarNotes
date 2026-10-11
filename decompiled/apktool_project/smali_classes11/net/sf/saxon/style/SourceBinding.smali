.class public Lnet/sf/saxon/style/SourceBinding;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/style/SourceBinding$BindingProperty;
    }
.end annotation


# instance fields
.field public final a:Lnet/sf/saxon/style/StyleElement;

.field public b:Lnet/sf/saxon/om/StructuredQName;

.field public c:Lnet/sf/saxon/expr/Expression;

.field public d:Lnet/sf/saxon/value/SequenceType;

.field public e:Lnet/sf/saxon/value/SequenceType;

.field public f:Lnet/sf/saxon/trans/Visibility;

.field public g:Lnet/sf/saxon/om/GroundedValue;

.field public h:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lnet/sf/saxon/style/SourceBinding$BindingProperty;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/BindingReference;",
            ">;"
        }
    .end annotation
.end field

.field protected slotManager:Lnet/sf/saxon/expr/instruct/SlotManager;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/style/StyleElement;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;

    iput-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->d:Lnet/sf/saxon/value/SequenceType;

    iput-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->e:Lnet/sf/saxon/value/SequenceType;

    iput-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->slotManager:Lnet/sf/saxon/expr/instruct/SlotManager;

    iput-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->g:Lnet/sf/saxon/om/GroundedValue;

    const-class v0, Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->h:Ljava/util/EnumSet;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->i:Ljava/util/List;

    iput-object p1, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;
    .locals 5

    const-string v0, "as"

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v1, p1}, Lnet/sf/saxon/style/StyleElement;->makeSequenceType(Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v1
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1, v0}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_3

    :try_start_1
    iget-object v2, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v2, p2}, Lnet/sf/saxon/style/StyleElement;->K(Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object p2
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    iget-object v2, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object p2

    const-string v4, "saxon:as"

    invoke-virtual {v2, v3, p2, v4}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    :goto_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p1}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Lnet/sf/saxon/type/TypeHierarchy;->sequenceTypeRelationship(Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p1

    sget-object v2, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq p1, v2, :cond_2

    sget-object v2, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-ne p1, v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    const-string p1, "When both are present, @saxon:as must be a subtype of @as"

    const-string p2, "SXER7TBA"

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    :goto_2
    move-object v1, p2

    :cond_3
    :goto_3
    return-object v1
.end method

.method public final b()Lnet/sf/saxon/om/StructuredQName;
    .locals 3

    new-instance p0, Lnet/sf/saxon/om/StructuredQName;

    const-string v0, "http://saxon.sf.net/"

    const-string v1, "error-variable-name"

    const-string v2, "saxon"

    invoke-direct {p0, v2, v0, v1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_1

    const-string v0, "$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "name"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    const-string v2, "Invalid variable name (no \'$\' sign needed)"

    const-string v3, "XTSE0020"

    invoke-virtual {v0, v2, v3, v1}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lnet/sf/saxon/style/StyleElement;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/SourceBinding;->b:Lnet/sf/saxon/om/StructuredQName;

    :cond_1
    return-void
.end method

.method public checkAgainstRequiredType(Lnet/sf/saxon/value/SequenceType;)V
    .locals 5

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->f:Lnet/sf/saxon/trans/Visibility;

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->ABSTRACT:Lnet/sf/saxon/trans/Visibility;

    if-eq v0, v1, :cond_3

    if-eqz p1, :cond_3

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;

    if-eqz v0, :cond_3

    const-string v0, "XTTE0570"

    iget-object v1, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    instance-of v2, v1, Lnet/sf/saxon/style/XSLLocalParam;

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    const-string v0, "XTTE0600"

    goto :goto_1

    :cond_0
    instance-of v2, v1, Lnet/sf/saxon/style/XSLWithParam;

    if-nez v2, :cond_2

    instance-of v1, v1, Lnet/sf/saxon/style/XSLGlobalParam;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "XTTE0590"

    :goto_1
    new-instance v1, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    iget-object v2, p0, Lnet/sf/saxon/style/SourceBinding;->b:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->setErrorCode(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0, v4}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v0

    iget-object v2, p0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;

    iget-object v3, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v3}, Lnet/sf/saxon/style/StyleElement;->makeExpressionVisitor()Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v3

    invoke-virtual {v0, v2, p1, v1, v3}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p1, v0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    new-instance v0, Lnet/sf/saxon/expr/ErrorExpression;

    new-instance v1, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v1, p1}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/ErrorExpression;-><init>(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    iput-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;

    :cond_3
    :goto_2
    return-void
.end method

.method public fixupBinding(Lnet/sf/saxon/expr/Binding;)V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/style/SourceBinding;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/BindingReference;

    invoke-interface {v0, p1}, Lnet/sf/saxon/expr/BindingReference;->fixup(Lnet/sf/saxon/expr/Binding;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fixupReferences(Lnet/sf/saxon/expr/instruct/GlobalVariable;)V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/SourceBinding;->getInferredType(Z)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->ASSIGNABLE:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/SourceBinding;->hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->PARAM:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/SourceBinding;->hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/style/SourceBinding;->f:Lnet/sf/saxon/trans/Visibility;

    sget-object v2, Lnet/sf/saxon/trans/Visibility;->PUBLIC:Lnet/sf/saxon/trans/Visibility;

    if-eq v1, v2, :cond_0

    sget-object v2, Lnet/sf/saxon/trans/Visibility;->ABSTRACT:Lnet/sf/saxon/trans/Visibility;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/style/SourceBinding;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/BindingReference;

    if-eqz p1, :cond_1

    invoke-interface {v3, p1}, Lnet/sf/saxon/expr/BindingReference;->fixup(Lnet/sf/saxon/expr/Binding;)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/style/SourceBinding;->getConstantValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v4

    invoke-interface {v3, v0, v4, v1}, Lnet/sf/saxon/expr/BindingReference;->setStaticType(Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/GroundedValue;I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public getConstantValue()Lnet/sf/saxon/om/GroundedValue;
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->g:Lnet/sf/saxon/om/GroundedValue;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/SourceBinding;->getInferredType(Z)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v1}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->ASSIGNABLE:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/SourceBinding;->hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->PARAM:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/SourceBinding;->hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/style/SourceBinding;->f:Lnet/sf/saxon/trans/Visibility;

    sget-object v3, Lnet/sf/saxon/trans/Visibility;->PUBLIC:Lnet/sf/saxon/trans/Visibility;

    if-eq v2, v3, :cond_1

    sget-object v3, Lnet/sf/saxon/trans/Visibility;->ABSTRACT:Lnet/sf/saxon/trans/Visibility;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;

    instance-of v3, v2, Lnet/sf/saxon/expr/Literal;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq v0, v1, :cond_0

    sget-object v1, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;

    check-cast v0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->g:Lnet/sf/saxon/om/GroundedValue;

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/style/SourceBinding;->g:Lnet/sf/saxon/om/GroundedValue;

    return-object p0
.end method

.method public getDeclaredType()Lnet/sf/saxon/value/SequenceType;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->d:Lnet/sf/saxon/value/SequenceType;

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    const-string v1, ""

    const-string v2, "as"

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/style/StyleElement;->makeSequenceType(Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->d:Lnet/sf/saxon/value/SequenceType;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/style/SourceBinding;->d:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public getInferredType(Z)Lnet/sf/saxon/value/SequenceType;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->e:Lnet/sf/saxon/value/SequenceType;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v0}, Lnet/sf/saxon/style/StyleElement;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->PARAM:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/SourceBinding;->hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->ASSIGNABLE:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/SourceBinding;->hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->FINAL:Lnet/sf/saxon/trans/Visibility;

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;

    if-eqz v0, :cond_6

    iget-object p1, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p1}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;

    invoke-static {v0}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lnet/sf/saxon/style/SourceBinding;->d:Lnet/sf/saxon/value/SequenceType;

    if-nez p1, :cond_2

    sget-object p1, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    :cond_2
    iput-object p1, p0, Lnet/sf/saxon/style/SourceBinding;->e:Lnet/sf/saxon/value/SequenceType;

    return-object p1

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v1

    iget-object v2, p0, Lnet/sf/saxon/style/SourceBinding;->d:Lnet/sf/saxon/value/SequenceType;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lnet/sf/saxon/style/SourceBinding;->d:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p1}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    :cond_4
    iget-object p1, p0, Lnet/sf/saxon/style/SourceBinding;->d:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p1}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p1

    invoke-static {p1, v1}, Lnet/sf/saxon/value/Cardinality;->subsumes(II)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lnet/sf/saxon/style/SourceBinding;->d:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p1}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v1

    :cond_5
    invoke-static {v0, v1}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/SourceBinding;->e:Lnet/sf/saxon/value/SequenceType;

    return-object p1

    :cond_6
    if-eqz p1, :cond_a

    iget-object p1, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->hasChildNodes()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lnet/sf/saxon/style/SourceBinding;->d:Lnet/sf/saxon/value/SequenceType;

    if-nez p0, :cond_7

    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->DOCUMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    const/16 p1, 0x4000

    invoke-static {p0, p1}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    :cond_7
    return-object p0

    :cond_8
    iget-object p0, p0, Lnet/sf/saxon/style/SourceBinding;->d:Lnet/sf/saxon/value/SequenceType;

    if-nez p0, :cond_9

    sget-object p0, Lnet/sf/saxon/value/SequenceType;->SINGLE_STRING:Lnet/sf/saxon/value/SequenceType;

    :cond_9
    return-object p0

    :cond_a
    iget-object p0, p0, Lnet/sf/saxon/style/SourceBinding;->d:Lnet/sf/saxon/value/SequenceType;

    return-object p0

    :cond_b
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/SourceBinding;->getDeclaredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p1

    if-nez p1, :cond_c

    sget-object p1, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    :cond_c
    iput-object p1, p0, Lnet/sf/saxon/style/SourceBinding;->e:Lnet/sf/saxon/value/SequenceType;

    return-object p1
.end method

.method public getReferences()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/BindingReference;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/style/SourceBinding;->i:Ljava/util/List;

    return-object p0
.end method

.method public getSelectExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public getSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/SourceBinding;->slotManager:Lnet/sf/saxon/expr/instruct/SlotManager;

    return-object p0
.end method

.method public getSourceElement()Lnet/sf/saxon/style/StyleElement;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    return-object p0
.end method

.method public getVariableQName()Lnet/sf/saxon/om/StructuredQName;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->b:Lnet/sf/saxon/om/StructuredQName;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    const-string v1, ""

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/SourceBinding;->c(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/style/SourceBinding;->b:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public handleSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->d:Lnet/sf/saxon/value/SequenceType;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v0, p1, p2, v1}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p1

    :cond_0
    sget-object p2, Lnet/sf/saxon/type/UType;->TEXT:Lnet/sf/saxon/type/UType;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result p2

    if-eqz p2, :cond_1

    instance-of v0, p1, Lnet/sf/saxon/expr/instruct/ValueOf;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/expr/instruct/ValueOf;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/StringLiteral;->getString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lnet/sf/saxon/expr/instruct/DocumentInstr;

    invoke-direct {v1, p2, v0}, Lnet/sf/saxon/expr/instruct/DocumentInstr;-><init>(ZLnet/sf/saxon/str/UnicodeString;)V

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setContentExpression(Lnet/sf/saxon/expr/Expression;)V

    iget-object p1, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p1}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    iput-object v1, p0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v0, p1, p2, v1}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;

    if-nez p1, :cond_3

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;

    :cond_3
    :try_start_0
    new-instance p1, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    iget-object p2, p0, Lnet/sf/saxon/style/SourceBinding;->b:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p2}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p1, v1, p2, v0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    const-string p2, "XTTE0570"

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->setErrorCode(Ljava/lang/String;)V

    iget-object p2, p0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;

    iget-object p2, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p2}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-virtual {p2, v0}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object p2

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;

    iget-object v1, p0, Lnet/sf/saxon/style/SourceBinding;->d:Lnet/sf/saxon/value/SequenceType;

    iget-object v2, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v2}, Lnet/sf/saxon/style/StyleElement;->makeExpressionVisitor()Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v2

    invoke-virtual {p2, v0, v1, p1, v2}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p1, p2}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    new-instance p2, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {p2, p1}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    iget-object p1, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    new-instance p1, Lnet/sf/saxon/expr/ErrorExpression;

    invoke-direct {p1, p2}, Lnet/sf/saxon/expr/ErrorExpression;-><init>(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    iput-object p1, p0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;

    :cond_4
    :goto_1
    return-void
.end method

.method public hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/SourceBinding;->h:Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isStatic()Z
    .locals 1

    sget-object v0, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->STATIC:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/SourceBinding;->hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z

    move-result p0

    return p0
.end method

.method public postValidate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->d:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/SourceBinding;->checkAgainstRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;

    if-nez v0, :cond_5

    sget-object v0, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->DISALLOWS_CONTENT:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/SourceBinding;->hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->f:Lnet/sf/saxon/trans/Visibility;

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->ABSTRACT:Lnet/sf/saxon/trans/Visibility;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lnet/sf/saxon/tree/linked/NodeImpl;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->d:Lnet/sf/saxon/value/SequenceType;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/StringLiteral;

    sget-object v1, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    iput-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;

    iget-object v1, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v1}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    instance-of v2, v1, Lnet/sf/saxon/style/XSLLocalParam;

    if-nez v2, :cond_3

    instance-of v1, v1, Lnet/sf/saxon/style/XSLGlobalParam;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;

    iget-object v1, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v1}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    const-string v1, "The implicit value () is not valid for the declared type"

    const-string v2, "XTTE0570"

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    sget-object v0, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->REQUIRED:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/SourceBinding;->hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->d:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;

    iget-object v1, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v1}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    goto :goto_1

    :cond_4
    sget-object v0, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->IMPLICITLY_REQUIRED:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/SourceBinding;->setProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;Z)V

    :cond_5
    :goto_1
    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    const-string v1, "select"

    iget-object v2, p0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;

    return-void
.end method

.method public prepareAttributes(Ljava/util/EnumSet;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lnet/sf/saxon/style/SourceBinding$BindingProperty;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v2}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const-string v12, "required"

    const-string v13, "name"

    const-string v14, "visibility"

    const-string v15, "tunnel"

    move-object/from16 v16, v10

    const-string v10, "static"

    if-eqz v11, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v11}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v17

    move-object/from16 v18, v2

    invoke-interface/range {v17 .. v17}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    iget-object v2, v0, Lnet/sf/saxon/style/SourceBinding;->b:Lnet/sf/saxon/om/StructuredQName;

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/SourceBinding;->b()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v10

    invoke-virtual {v2, v10}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v11}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/style/SourceBinding;->c(Ljava/lang/String;)V

    :cond_1
    :goto_1
    move-object/from16 v19, v8

    goto/16 :goto_3

    :cond_2
    const-string v13, "select"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    sget-object v2, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->SELECT:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v3, v11

    :goto_2
    move-object/from16 v10, v16

    goto/16 :goto_5

    :cond_3
    iget-object v2, v0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    const-string v10, "The select attribute is not permitted on a function parameter"

    const-string v11, "XTSE0760"

    invoke-virtual {v2, v10, v11, v13}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v13, "as"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 v19, v8

    sget-object v8, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->AS:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {v1, v8}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v11}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_2

    :cond_5
    move-object/from16 v19, v8

    :cond_6
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v8, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->REQUIRED:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {v1, v8}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v11}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v11}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto/16 :goto_3

    :cond_8
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    sget-object v8, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->STATIC:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {v1, v8}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v11}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_3

    :cond_9
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->VISIBILITY:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v11}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    goto :goto_4

    :cond_a
    const-string v2, "http://saxon.sf.net/"

    invoke-interface/range {v17 .. v17}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-interface/range {v17 .. v17}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lnet/sf/saxon/style/StyleElement;->isExtensionAttributeAllowed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface/range {v17 .. v17}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    const-string v8, "assignable"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->ASSIGNABLE:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v11}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_3

    :cond_b
    invoke-interface/range {v17 .. v17}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v11}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    goto :goto_3

    :cond_c
    iget-object v2, v0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v11}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v8

    invoke-virtual {v2, v8}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_3

    :cond_d
    iget-object v2, v0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v11}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v8

    invoke-virtual {v2, v8}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    :cond_e
    :goto_3
    move-object/from16 v10, v16

    :goto_4
    move-object/from16 v8, v19

    :goto_5
    move-object/from16 v2, v18

    goto/16 :goto_0

    :cond_f
    move-object/from16 v19, v8

    iget-object v2, v0, Lnet/sf/saxon/style/SourceBinding;->b:Lnet/sf/saxon/om/StructuredQName;

    if-nez v2, :cond_10

    iget-object v2, v0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v2, v13}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/SourceBinding;->b()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    iput-object v2, v0, Lnet/sf/saxon/style/SourceBinding;->b:Lnet/sf/saxon/om/StructuredQName;

    :cond_10
    if-eqz v3, :cond_11

    iget-object v2, v0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v3}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iput-object v2, v0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;

    :cond_11
    if-eqz v4, :cond_12

    iget-object v2, v0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v2, v12, v4}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    sget-object v3, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->REQUIRED:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {v0, v3, v2}, Lnet/sf/saxon/style/SourceBinding;->setProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;Z)V

    if-eqz v2, :cond_12

    iget-object v2, v0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;

    if-eqz v2, :cond_12

    iget-object v2, v0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    const-string v3, "xsl:param: cannot supply a default value when required=\'yes\'"

    invoke-virtual {v2, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    :cond_12
    const-string v2, "XTSE0020"

    if-eqz v5, :cond_14

    iget-object v3, v0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v3, v15, v5}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    sget-object v4, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->TUNNEL:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, v0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    const-string v4, "The only permitted value of the \'tunnel\' attribute is \'no\'"

    invoke-virtual {v1, v4, v2, v15}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    sget-object v1, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->TUNNEL:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {v0, v1, v3}, Lnet/sf/saxon/style/SourceBinding;->setProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;Z)V

    :cond_14
    if-eqz v6, :cond_15

    iget-object v1, v0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    const-string v3, "saxon:assignable"

    invoke-virtual {v1, v3, v6}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sget-object v3, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->ASSIGNABLE:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {v0, v3, v1}, Lnet/sf/saxon/style/SourceBinding;->setProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;Z)V

    :cond_15
    if-eqz v7, :cond_17

    iget-object v1, v0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v1, v10, v7}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sget-object v3, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->STATIC:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {v0, v3, v1}, Lnet/sf/saxon/style/SourceBinding;->setProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;Z)V

    if-eqz v1, :cond_16

    sget-object v3, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->DISALLOWS_CONTENT:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lnet/sf/saxon/style/SourceBinding;->setProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;Z)V

    :cond_16
    if-eqz v1, :cond_17

    sget-object v1, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->GLOBAL:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/SourceBinding;->hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    const-string v3, "Only global declarations can be static"

    invoke-virtual {v1, v3, v2, v10}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    move-object/from16 v3, v19

    invoke-virtual {v0, v3, v9}, Lnet/sf/saxon/style/SourceBinding;->a(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/style/SourceBinding;->d:Lnet/sf/saxon/value/SequenceType;

    if-eqz v16, :cond_19

    sget-object v1, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->PARAM:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/SourceBinding;->hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    const-string v3, "The visibility attribute is not allowed on xsl:param"

    invoke-virtual {v1, v3, v2, v14}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v16

    goto :goto_6

    :cond_18
    iget-object v1, v0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    const-string v3, ""

    move-object/from16 v4, v16

    invoke-virtual {v1, v4, v3}, Lnet/sf/saxon/style/StyleElement;->E(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/trans/Visibility;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/style/SourceBinding;->f:Lnet/sf/saxon/trans/Visibility;

    :goto_6
    sget-object v1, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->GLOBAL:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/SourceBinding;->hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, v0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    const-string v3, "The visibility attribute is allowed only on global declarations"

    invoke-virtual {v1, v3, v2, v14}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_19
    move-object/from16 v4, v16

    :cond_1a
    :goto_7
    sget-object v1, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->STATIC:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/SourceBinding;->hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lnet/sf/saxon/style/SourceBinding;->f:Lnet/sf/saxon/trans/Visibility;

    sget-object v3, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    if-eq v1, v3, :cond_1b

    if-eqz v4, :cond_1b

    iget-object v0, v0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    const-string v1, "A static variable or parameter must be private"

    invoke-virtual {v0, v1, v2, v10}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public prepareTemplateSignatureAttributes()V
    .locals 9

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "name"

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v5

    invoke-interface {v5}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lnet/sf/saxon/style/SourceBinding;->b:Lnet/sf/saxon/om/StructuredQName;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/style/SourceBinding;->b()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/style/SourceBinding;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v4, "as"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v7, "required"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v4, v7, v3}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    sget-object v4, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->REQUIRED:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {p0, v4, v3}, Lnet/sf/saxon/style/SourceBinding;->setProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;Z)V

    goto :goto_0

    :cond_4
    const-string v7, "tunnel"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v4, v7, v3}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    sget-object v4, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->TUNNEL:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {p0, v4, v3}, Lnet/sf/saxon/style/SourceBinding;->setProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;Z)V

    goto :goto_0

    :cond_5
    const-string v6, "http://saxon.sf.net/"

    invoke-interface {v5}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->b:Lnet/sf/saxon/om/StructuredQName;

    if-nez v0, :cond_7

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v0, v4}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/SourceBinding;->b()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->b:Lnet/sf/saxon/om/StructuredQName;

    :cond_7
    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/style/SourceBinding;->a(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->d:Lnet/sf/saxon/value/SequenceType;

    return-void
.end method

.method public registerReference(Lnet/sf/saxon/expr/BindingReference;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/SourceBinding;->i:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDeclaredType(Lnet/sf/saxon/value/SequenceType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/style/SourceBinding;->d:Lnet/sf/saxon/value/SequenceType;

    return-void
.end method

.method public setProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/style/SourceBinding;->h:Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/style/SourceBinding;->h:Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/style/SourceBinding;->b:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public validate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;

    const-string v1, "XTSE0620"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v3}, Lnet/sf/saxon/tree/linked/NodeImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " element with a select attribute must be empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->DISALLOWS_CONTENT:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/SourceBinding;->hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/style/SourceBinding;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    const-string v2, "A static variable or parameter must have no content"

    const-string v3, "XTSE0010"

    invoke-virtual {v0, v2, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    const-string v2, "Within xsl:function, an xsl:param element must have no content"

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->f:Lnet/sf/saxon/trans/Visibility;

    sget-object v2, Lnet/sf/saxon/trans/Visibility;->ABSTRACT:Lnet/sf/saxon/trans/Visibility;

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->c:Lnet/sf/saxon/expr/Expression;

    if-nez v0, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object p0, p0, Lnet/sf/saxon/style/SourceBinding;->a:Lnet/sf/saxon/style/StyleElement;

    const-string v0, "An abstract variable must have no select attribute and no content"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
