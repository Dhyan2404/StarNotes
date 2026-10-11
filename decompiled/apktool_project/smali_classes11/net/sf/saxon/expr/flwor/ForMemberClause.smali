.class public Lnet/sf/saxon/expr/flwor/ForMemberClause;
.super Lnet/sf/saxon/expr/flwor/ForClause;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/flwor/ForClause;-><init>()V

    return-void
.end method


# virtual methods
.method public addPredicate(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;Lnet/sf/saxon/expr/Expression;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)V
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object p2

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/ForClause;->rangeVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-virtual {p1, p0, p2}, Lnet/sf/saxon/expr/parser/PathMap;->registerPathForVariable(Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)V

    return-void
.end method

.method public bridge synthetic copy(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/flwor/Clause;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/flwor/ForMemberClause;->copy(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/flwor/ForMemberClause;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/flwor/ForClause;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/flwor/ForMemberClause;->copy(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/flwor/ForMemberClause;

    move-result-object p0

    return-object p0
.end method

.method public copy(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/flwor/ForMemberClause;
    .locals 2

    .line 3
    new-instance v0, Lnet/sf/saxon/expr/flwor/ForMemberClause;

    invoke-direct {v0}, Lnet/sf/saxon/expr/flwor/ForMemberClause;-><init>()V

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/flwor/Clause;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 5
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/flwor/Clause;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    .line 6
    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/ForClause;->rangeVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->copy()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/expr/flwor/ForClause;->rangeVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    .line 7
    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/ForClause;->positionVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->copy()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/expr/flwor/ForClause;->positionVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    .line 9
    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p2}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/flwor/ForClause;->initSequence(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/Expression;)V

    .line 10
    iget-boolean p0, p0, Lnet/sf/saxon/expr/flwor/ForClause;->allowsEmpty:Z

    iput-boolean p0, v0, Lnet/sf/saxon/expr/flwor/ForClause;->allowsEmpty:Z

    return-object v0
.end method

.method public getClauseKey()Lnet/sf/saxon/expr/flwor/Clause$ClauseName;
    .locals 0

    sget-object p0, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;->FOR_MEMBER:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    return-object p0
.end method

.method public getPullStream(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/TuplePull;
    .locals 0

    new-instance p2, Lnet/sf/saxon/expr/flwor/ForMemberClausePull;

    invoke-direct {p2, p1, p0}, Lnet/sf/saxon/expr/flwor/ForMemberClausePull;-><init>(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/flwor/ForMemberClause;)V

    return-object p2
.end method

.method public getPushStream(Lnet/sf/saxon/expr/flwor/TuplePush;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/TuplePush;
    .locals 0

    new-instance p3, Lnet/sf/saxon/expr/flwor/ForMemberClausePush;

    invoke-direct {p3, p2, p1, p0}, Lnet/sf/saxon/expr/flwor/ForMemberClausePush;-><init>(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/flwor/TuplePush;Lnet/sf/saxon/expr/flwor/ForClause;)V

    return-object p3
.end method

.method public refineVariableType(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Ljava/util/List;Lnet/sf/saxon/expr/Expression;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/parser/ExpressionVisitor;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/VariableReference;",
            ">;",
            "Lnet/sf/saxon/expr/Expression;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    instance-of p3, p1, Lnet/sf/saxon/ma/arrays/ArrayItemType;

    if-eqz p3, :cond_0

    check-cast p1, Lnet/sf/saxon/ma/arrays/ArrayItemType;

    invoke-virtual {p1}, Lnet/sf/saxon/ma/arrays/ArrayItemType;->getMemberType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/sf/saxon/expr/VariableReference;

    invoke-virtual {p1}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p3, v0, v1, v3, v2}, Lnet/sf/saxon/expr/VariableReference;->refineVariableType(Lnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/GroundedValue;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p2, p0, Lnet/sf/saxon/expr/flwor/ForClause;->rangeVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p2

    iget-boolean v0, p0, Lnet/sf/saxon/expr/flwor/ForClause;->allowsEmpty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/ForClause;->rangeVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v0, v3, v2, v1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    const v3, 0xc000

    invoke-static {v2, v3, v0}, Lnet/sf/saxon/expr/CardinalityChecker;->makeCardinalityChecker(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/flwor/ForClause;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    new-instance v0, Lnet/sf/saxon/ma/arrays/ArrayItemType;

    invoke-direct {v0, p2}, Lnet/sf/saxon/ma/arrays/ArrayItemType;-><init>(Lnet/sf/saxon/value/SequenceType;)V

    const/16 p2, 0x4000

    invoke-static {v0, p2}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object p2

    new-instance v0, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/ForClause;->rangeVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x11

    invoke-direct {v0, v3, v2, v1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p1

    invoke-static {v1, p2, v0, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->strictTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/flwor/ForClause;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method
