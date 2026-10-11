.class public Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;
.super Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DIAGNOSE_MULTISTEPLIST:Z = false

.field public static final DIAGNOSE_NUM_PATHS_REDUCED:Z = false

.field static final PSUEDOVARNAMESPACE:Ljava/lang/String; = "http://xml.apache.org/xalan/psuedovar"

.field private static m_uniquePseudoVarID:I = 0x1


# instance fields
.field m_absPathChecker:Lcom/sun/org/apache/xalan/internal/templates/AbsPathChecker;

.field m_absPaths:Ljava/util/Vector;

.field m_isSameContext:Z

.field m_paths:Ljava/util/Vector;

.field m_varNameCollector:Lcom/sun/org/apache/xalan/internal/templates/VarNameCollector;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;-><init>()V

    new-instance v0, Lcom/sun/org/apache/xalan/internal/templates/AbsPathChecker;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/templates/AbsPathChecker;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_absPathChecker:Lcom/sun/org/apache/xalan/internal/templates/AbsPathChecker;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/templates/VarNameCollector;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/templates/VarNameCollector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_varNameCollector:Lcom/sun/org/apache/xalan/internal/templates/VarNameCollector;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_isSameContext:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    return-void
.end method

.method private final assertIsLocPathIterator(Lcom/sun/org/apache/xpath/internal/Expression;Lcom/sun/org/apache/xpath/internal/ExpressionOwner;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    instance-of p0, p1, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    if-nez p0, :cond_1

    instance-of p0, p1, Lcom/sun/org/apache/xpath/internal/operations/Variable;

    const-string v0, "Programmer\'s assertion: expr1 not an iterator: "

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xpath/internal/operations/Variable;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/operations/Variable;->getQName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/Expression;->exprGetParent()Lcom/sun/org/apache/xpath/internal/ExpressionNode;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static assertion(ZLjava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ER_ASSERT_REDUNDENT_EXPR_ELIMINATOR"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static declared-synchronized getPseudoVarID()I
    .locals 3

    const-class v0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_uniquePseudoVarID:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_uniquePseudoVarID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static validateNewAddition(Ljava/util/Vector;Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/sun/org/apache/xpath/internal/ExpressionOwner;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "owner.getExpression() != path!!!"

    invoke-static {v0, v3}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_3

    invoke-virtual {p0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xpath/internal/ExpressionOwner;

    if-eq v4, p1, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    const-string v6, "duplicate owner on the list!!!"

    invoke-static {v5, v6}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    invoke-interface {v4}, Lcom/sun/org/apache/xpath/internal/ExpressionOwner;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v4

    if-eq v4, p2, :cond_2

    move v4, v1

    goto :goto_3

    :cond_2
    move v4, v2

    :goto_3
    const-string v5, "duplicate expression on the list!!!"

    invoke-static {v4, v5}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public addVarDeclToElem(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;)Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getFirstChildElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_varNameCollector:Lcom/sun/org/apache/xalan/internal/templates/VarNameCollector;

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_varNameCollector:Lcom/sun/org/apache/xalan/internal/templates/VarNameCollector;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/VarNameCollector;->getVarCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->getElemFromExpression(Lcom/sun/org/apache/xpath/internal/Expression;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->getPrevVariableElem(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_varNameCollector:Lcom/sun/org/apache/xalan/internal/templates/VarNameCollector;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xalan/internal/templates/VarNameCollector;->doesOccur(Lcom/sun/org/apache/xml/internal/utils/QName;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getParentElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p1

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNextSiblingElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->getPrevVariableElem(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;

    move-result-object v1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getXSLToken()I

    move-result v1

    const/16 v3, 0x29

    if-ne v3, v1, :cond_3

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->isParam(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object v2

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNextSiblingElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getXSLToken()I

    move-result p2

    if-eq v3, p2, :cond_2

    :cond_3
    invoke-virtual {p1, p3, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_varNameCollector:Lcom/sun/org/apache/xalan/internal/templates/VarNameCollector;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/VarNameCollector;->reset()V

    return-object p3
.end method

.method public changePartToRef(Lcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;IZ)Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;
    .locals 4

    new-instance v0, Lcom/sun/org/apache/xpath/internal/operations/Variable;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/operations/Variable;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/operations/Variable;->setQName(Lcom/sun/org/apache/xml/internal/utils/QName;)V

    invoke-virtual {v0, p4}, Lcom/sun/org/apache/xpath/internal/operations/Variable;->setIsGlobal(Z)V

    const/4 p1, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->getElemFromExpression(Lcom/sun/org/apache/xpath/internal/Expression;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getStylesheetRoot()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getVariablesAndParamsComposed()Ljava/util/Vector;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    sub-int/2addr p0, p1

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xpath/internal/operations/Variable;->setIndex(I)V

    :cond_0
    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->getFirstWalker()Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object p0

    const/4 p4, 0x0

    move v1, p4

    :goto_0
    if-ge v1, p3, :cond_2

    if-eqz p0, :cond_1

    move v2, p1

    goto :goto_1

    :cond_1
    move v2, p4

    :goto_1
    const-string v3, "Walker should not be null!"

    invoke-static {v2, v3}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->getNextWalker()Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    new-instance p1, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;

    invoke-direct {p1, p2}, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;-><init>(Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;)V

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;->setInnerExpression(Lcom/sun/org/apache/xpath/internal/Expression;)V

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->setNextWalker(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->setPrevWalker(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;)V

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->setFirstWalker(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;)V

    return-object p2

    :cond_3
    new-instance p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple;-><init>(Lcom/sun/org/apache/xpath/internal/Expression;)V

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/Expression;->exprGetParent()Lcom/sun/org/apache/xpath/internal/ExpressionNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    return-object p0
.end method

.method public changeToVarRef(Lcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Ljava/util/Vector;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    if-ne p3, v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xpath/internal/operations/VariableSafeAbsRef;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/operations/VariableSafeAbsRef;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xpath/internal/operations/Variable;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/operations/Variable;-><init>()V

    :goto_0
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/operations/Variable;->setQName(Lcom/sun/org/apache/xml/internal/utils/QName;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    if-ne p3, p0, :cond_1

    check-cast p4, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    invoke-virtual {p4}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getVariablesAndParamsComposed()Ljava/util/Vector;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    const/4 p1, 0x1

    sub-int/2addr p0, p1

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xpath/internal/operations/Variable;->setIndex(I)V

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/operations/Variable;->setIsGlobal(Z)V

    :cond_1
    invoke-interface {p2, v0}, Lcom/sun/org/apache/xpath/internal/ExpressionOwner;->setExpression(Lcom/sun/org/apache/xpath/internal/Expression;)V

    return-void
.end method

.method public countAncestors(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)I
    .locals 0

    const/4 p0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getParentElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p1

    goto :goto_0

    :cond_0
    return p0
.end method

.method public countSteps(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;)I
    .locals 0

    instance-of p0, p1, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->getFirstWalker()Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    if-eqz p0, :cond_0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->getNextWalker()Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object p0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public createGlobalPseudoVarDecl(Lcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;)Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->setIsTopLevel(Z)V

    new-instance v0, Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-direct {v0, p3}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Lcom/sun/org/apache/xpath/internal/Expression;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->setSelect(Lcom/sun/org/apache/xpath/internal/XPath;)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->setName(Lcom/sun/org/apache/xml/internal/utils/QName;)V

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getVariablesAndParamsComposed()Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->setIndex(I)V

    invoke-virtual {p1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public createIteratorFromSteps(Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;I)Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;
    .locals 2

    new-instance p0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getPrefixResolver()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;-><init>(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->getFirstWalker()Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->setFirstWalker(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;)V

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->setLocPathIterator(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;)V

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->getNextWalker()Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->setNextWalker(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->setLocPathIterator(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;)V

    add-int/lit8 v0, v0, 0x1

    move-object p1, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->setNextWalker(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public createLocalPseudoVarDecl(Lcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;)Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariablePsuedo;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariablePsuedo;-><init>()V

    new-instance v1, Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-direct {v1, p3}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Lcom/sun/org/apache/xpath/internal/Expression;)V

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->setSelect(Lcom/sun/org/apache/xpath/internal/XPath;)V

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->setName(Lcom/sun/org/apache/xml/internal/utils/QName;)V

    invoke-virtual {p0, p2, p3, v0}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->addVarDeclToElem(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;)Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    return-object p0
.end method

.method public createMultistepExprList(Ljava/util/Vector;)Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;
    .locals 7

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xpath/internal/ExpressionOwner;

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v5}, Lcom/sun/org/apache/xpath/internal/ExpressionOwner;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v6

    check-cast v6, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    invoke-virtual {p0, v6}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->countSteps(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;)I

    move-result v6

    if-le v6, v4, :cond_2

    if-nez v3, :cond_1

    new-instance v3, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    invoke-direct {v3, p0, v5, v6, v1}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;Lcom/sun/org/apache/xpath/internal/ExpressionOwner;ILcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v5, v6}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->addInSortedOrder(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;I)Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    move-result-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->getLength()I

    move-result p0

    if-gt p0, v4, :cond_4

    goto :goto_2

    :cond_4
    return-object v3

    :cond_5
    :goto_2
    return-object v1
.end method

.method public createPseudoVarDecl(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;Z)Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/QName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->getPseudoVarID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://xml.apache.org/xalan/psuedovar"

    invoke-direct {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    check-cast p1, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->createGlobalPseudoVarDecl(Lcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;)Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->createLocalPseudoVarDecl(Lcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;)Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;

    move-result-object p0

    return-object p0
.end method

.method public diagnoseLineNumber(Lcom/sun/org/apache/xpath/internal/Expression;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->getElemFromExpression(Lcom/sun/org/apache/xpath/internal/Expression;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getLineNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public diagnoseMultistepList(IIZ)V
    .locals 2

    if-lez p1, :cond_1

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found multistep matches: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " length"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, " (global)"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    :cond_1
    :goto_0
    return-void
.end method

.method public diagnoseNumPaths(Ljava/util/Vector;II)V
    .locals 2

    if-lez p2, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    const-string v0, "Consolodated "

    const-string v1, "Eliminated "

    if-ne p1, p0, :cond_0

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " total paths!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " redundent paths!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " total global paths!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " redundent global paths!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public eleminateRedundent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Ljava/util/Vector;)V
    .locals 8

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/sun/org/apache/xpath/internal/ExpressionOwner;

    if-eqz v5, :cond_0

    add-int/lit8 v3, v1, 0x1

    move-object v2, p0

    move v4, v1

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->findAndEliminateRedundant(IILcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Ljava/util/Vector;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->eleminateSharedPartialPaths(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Ljava/util/Vector;)V

    return-void
.end method

.method public eleminateRedundentGlobals(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->eleminateRedundent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Ljava/util/Vector;)V

    return-void
.end method

.method public eleminateRedundentLocals(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->eleminateRedundent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Ljava/util/Vector;)V

    return-void
.end method

.method public eleminateSharedPartialPaths(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Ljava/util/Vector;)V
    .locals 9

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->createMultistepExprList(Ljava/util/Vector;)Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget v1, v0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_stepCount:I

    sub-int/2addr v1, v2

    :goto_1
    if-lt v1, v2, :cond_3

    move-object v5, v0

    :goto_2
    if-eqz v0, :cond_2

    iget v3, v0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_stepCount:I

    if-ge v3, v1, :cond_1

    goto :goto_3

    :cond_1
    move-object v3, p0

    move-object v4, v0

    move v6, p2

    move v7, v1

    move-object v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->matchAndEliminatePartialPaths(Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;ZILcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    move-result-object v5

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, -0x1

    move-object v0, v5

    goto :goto_1

    :cond_3
    return-void
.end method

.method public findAndEliminateRedundant(IILcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Ljava/util/Vector;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-virtual/range {p5 .. p5}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-interface/range {p3 .. p3}, Lcom/sun/org/apache/xpath/internal/ExpressionOwner;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v4

    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v2, v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    check-cast v4, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    invoke-virtual {v0, v4}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->countSteps(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;)I

    move-result v8

    const/4 v9, 0x0

    move v10, v7

    move-object v11, v9

    move-object v12, v11

    move/from16 v7, p1

    :goto_1
    if-ge v7, v3, :cond_3

    invoke-virtual {v2, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sun/org/apache/xpath/internal/ExpressionOwner;

    if-eqz v13, :cond_2

    invoke-interface {v13}, Lcom/sun/org/apache/xpath/internal/ExpressionOwner;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/sun/org/apache/xpath/internal/Expression;->deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z

    move-result v15

    if-eqz v15, :cond_2

    check-cast v14, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    if-nez v11, :cond_1

    new-instance v12, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    invoke-direct {v12, v0, v1, v8, v9}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;Lcom/sun/org/apache/xpath/internal/ExpressionOwner;ILcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;)V

    add-int/lit8 v10, v10, 0x1

    move-object v11, v12

    :cond_1
    new-instance v14, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    invoke-direct {v14, v0, v13, v8, v9}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;Lcom/sun/org/apache/xpath/internal/ExpressionOwner;ILcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;)V

    iput-object v14, v12, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    invoke-virtual {v2, v9, v7}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/2addr v10, v6

    move-object v12, v14

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    if-nez v10, :cond_4

    if-eqz v5, :cond_4

    new-instance v11, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    invoke-direct {v11, v0, v1, v8, v9}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;Lcom/sun/org/apache/xpath/internal/ExpressionOwner;ILcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;)V

    add-int/lit8 v10, v10, 0x1

    :cond_4
    if-eqz v11, :cond_7

    if-eqz v5, :cond_5

    move-object/from16 v1, p4

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v11}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->findCommonAncestor(Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v1

    :goto_2
    iget-object v3, v11, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lcom/sun/org/apache/xpath/internal/ExpressionOwner;

    invoke-interface {v3}, Lcom/sun/org/apache/xpath/internal/ExpressionOwner;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    invoke-virtual {v0, v1, v3, v5}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->createPseudoVarDecl(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;Z)Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v4

    :goto_3
    if-eqz v11, :cond_6

    iget-object v5, v11, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lcom/sun/org/apache/xpath/internal/ExpressionOwner;

    invoke-virtual {v0, v4, v5, v2, v1}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->changeToVarRef(Lcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Ljava/util/Vector;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    iget-object v11, v11, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->getSelect()Lcom/sun/org/apache/xpath/internal/XPath;

    move-result-object v0

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :cond_7
    return v10
.end method

.method public findCommonAncestor(Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
    .locals 9

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->getLength()I

    move-result v0

    new-array v1, v0, [Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    new-array v2, v0, [I

    const/16 v3, 0x2710

    const/4 v4, 0x0

    move-object v6, p1

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_1

    iget-object v7, v6, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lcom/sun/org/apache/xpath/internal/ExpressionOwner;

    invoke-interface {v7}, Lcom/sun/org/apache/xpath/internal/ExpressionOwner;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->getElemFromExpression(Lcom/sun/org/apache/xpath/internal/Expression;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v7

    aput-object v7, v1, v5

    invoke-virtual {p0, v7}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->countAncestors(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)I

    move-result v7

    aput v7, v2, v5

    if-ge v7, v3, :cond_0

    move v3, v7

    :cond_0
    iget-object v6, v6, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_1
    if-ge v5, v0, :cond_3

    aget v6, v2, v5

    if-le v6, v3, :cond_2

    sub-int/2addr v6, v3

    move v7, v4

    :goto_2
    if-ge v7, v6, :cond_2

    aget-object v8, v1, v5

    invoke-virtual {v8}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getParentElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v8

    aput-object v8, v1, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v2, v3, -0x1

    if-ltz v3, :cond_8

    aget-object v3, v1, v4

    const/4 v5, 0x1

    move v6, v5

    :goto_4
    if-ge v6, v0, :cond_5

    aget-object v7, v1, v6

    if-eq v3, v7, :cond_4

    move v5, v4

    goto :goto_5

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    if-eqz v5, :cond_6

    invoke-virtual {p0, p1, v3}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->isNotSameAsOwner(Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->canAcceptVariables()Z

    move-result v5

    if-eqz v5, :cond_6

    return-object v3

    :cond_6
    move v3, v4

    :goto_6
    if-ge v3, v0, :cond_7

    aget-object v5, v1, v3

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getParentElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v5

    aput-object v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    move v3, v2

    goto :goto_3

    :cond_8
    const-string p0, "Could not find common ancestor!!!"

    invoke-static {v4, p0}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getElemFromExpression(Lcom/sun/org/apache/xpath/internal/Expression;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
    .locals 1

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/Expression;->exprGetParent()Lcom/sun/org/apache/xpath/internal/ExpressionNode;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    instance-of p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/sun/org/apache/xpath/internal/ExpressionNode;->exprGetParent()Lcom/sun/org/apache/xpath/internal/ExpressionNode;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_ASSERT_NO_TEMPLATE_PARENT"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPrevElementWithinContext(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
    .locals 1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getPreviousSiblingElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getParentElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p0

    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getXSLToken()I

    move-result p1

    const/16 v0, 0x1c

    if-eq v0, p1, :cond_1

    const/16 v0, 0x13

    if-eq v0, p1, :cond_1

    const/16 v0, 0x19

    if-ne v0, p1, :cond_2

    :cond_1
    const/4 p0, 0x0

    :cond_2
    return-object p0
.end method

.method public getPrevVariableElem(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;
    .locals 2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->getPrevElementWithinContext(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/16 v1, 0x49

    if-eq v1, v0, :cond_1

    const/16 v1, 0x29

    if-ne v1, v0, :cond_0

    :cond_1
    check-cast p1, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;

    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public isAbsolute(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getAnalysisBits()I

    move-result v0

    const/high16 v1, 0x8000000

    invoke-static {v0, v1}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isSet(II)Z

    move-result v1

    if-nez v1, :cond_1

    const/high16 v1, 0x20000000

    invoke-static {v0, v1}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_absPathChecker:Lcom/sun/org/apache/xalan/internal/templates/AbsPathChecker;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/AbsPathChecker;->checkAbsolute(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;)Z

    move-result v0

    :cond_2
    return v0
.end method

.method public isNotSameAsOwner(Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Z
    .locals 1

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lcom/sun/org/apache/xpath/internal/ExpressionOwner;

    invoke-interface {v0}, Lcom/sun/org/apache/xpath/internal/ExpressionOwner;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->getElemFromExpression(Lcom/sun/org/apache/xpath/internal/Expression;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p1, p1, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public isParam(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)Z
    .locals 2

    :goto_0
    if-eqz p1, :cond_1

    instance-of p0, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lcom/sun/org/apache/xpath/internal/ExpressionNode;->exprGetParent()Lcom/sun/org/apache/xpath/internal/ExpressionNode;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    if-eqz p1, :cond_3

    check-cast p1, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_3

    const/16 v1, 0x19

    if-eq v0, v1, :cond_3

    const/16 v1, 0x29

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getParentElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p0, 0x1

    :cond_3
    return p0
.end method

.method public matchAndEliminatePartialPaths(Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;ZILcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;
    .locals 6

    iget-object v0, p1, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lcom/sun/org/apache/xpath/internal/ExpressionOwner;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    invoke-interface {v0}, Lcom/sun/org/apache/xpath/internal/ExpressionOwner;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    invoke-virtual {p0, p1, p4}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->partialIsVariable(Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;I)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p2

    :cond_1
    const/4 v1, 0x0

    move-object v2, p2

    move-object v3, v1

    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_4

    if-eq v2, p1, :cond_3

    iget-object v5, v2, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lcom/sun/org/apache/xpath/internal/ExpressionOwner;

    if-eqz v5, :cond_3

    invoke-interface {v5}, Lcom/sun/org/apache/xpath/internal/ExpressionOwner;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    invoke-virtual {p0, v0, v5, p4}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->stepsEqual(Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;I)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v3, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iput-object v1, p1, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lcom/sun/org/apache/xpath/internal/ExpressionOwner;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object v3, v4

    :catch_1
    move-object v4, v3

    :goto_1
    iput-object v1, v4, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    move-object v3, v4

    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    iput-object v5, v4, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    iput-object v1, v2, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lcom/sun/org/apache/xpath/internal/ExpressionOwner;
    :try_end_2
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    iget-object v4, v4, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    iput-object v1, v4, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    :cond_3
    iget-object v2, v2, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_6

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->findCommonAncestor(Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p5

    :goto_2
    iget-object p1, v3, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lcom/sun/org/apache/xpath/internal/ExpressionOwner;

    invoke-interface {p1}, Lcom/sun/org/apache/xpath/internal/ExpressionOwner;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    invoke-virtual {p0, p1, p4}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->createIteratorFromSteps(Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;I)Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    move-result-object p1

    invoke-virtual {p0, p5, p1, p3}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->createPseudoVarDecl(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;Z)Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;

    move-result-object p1

    :goto_3
    if-eqz v3, :cond_6

    iget-object p5, v3, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lcom/sun/org/apache/xpath/internal/ExpressionOwner;

    invoke-interface {p5}, Lcom/sun/org/apache/xpath/internal/ExpressionOwner;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p4, p3}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->changePartToRef(Lcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;IZ)Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/sun/org/apache/xpath/internal/ExpressionOwner;->setExpression(Lcom/sun/org/apache/xpath/internal/Expression;)V

    iget-object v3, v3, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_3

    :cond_6
    return-object p2
.end method

.method public oldFindAndEliminateRedundant(IILcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Ljava/util/Vector;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {p5 .. p5}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-interface/range {p3 .. p3}, Lcom/sun/org/apache/xpath/internal/ExpressionOwner;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v6

    iget-object v7, v0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    const/4 v9, 0x0

    if-ne v4, v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    move v7, v9

    :goto_0
    check-cast v6, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    const/4 v10, 0x0

    move/from16 v11, p1

    move v12, v9

    move v13, v12

    move-object v14, v10

    :goto_1
    if-ge v11, v5, :cond_4

    invoke-virtual {v4, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sun/org/apache/xpath/internal/ExpressionOwner;

    if-eqz v15, :cond_3

    invoke-interface {v15}, Lcom/sun/org/apache/xpath/internal/ExpressionOwner;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/sun/org/apache/xpath/internal/Expression;->deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z

    move-result v16

    if-eqz v16, :cond_3

    check-cast v8, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    if-nez v13, :cond_2

    invoke-virtual {v0, v3, v6, v7}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->createPseudoVarDecl(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;Z)Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;

    move-result-object v8

    if-nez v8, :cond_1

    return v9

    :cond_1
    invoke-virtual {v8}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v13

    invoke-virtual {v0, v13, v2, v4, v3}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->changeToVarRef(Lcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Ljava/util/Vector;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    invoke-virtual {v8}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->getSelect()Lcom/sun/org/apache/xpath/internal/XPath;

    move-result-object v8

    invoke-virtual {v4, v8, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v12, v12, 0x1

    move-object v14, v13

    const/4 v13, 0x1

    :cond_2
    invoke-virtual {v0, v14, v15, v4, v3}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->changeToVarRef(Lcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Ljava/util/Vector;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    invoke-virtual {v4, v10, v11}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    const/4 v8, 0x1

    add-int/2addr v12, v8

    goto :goto_2

    :cond_3
    const/4 v8, 0x1

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, 0x1

    if-nez v12, :cond_6

    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    if-ne v4, v5, :cond_6

    invoke-virtual {v0, v3, v6, v8}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->createPseudoVarDecl(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;Z)Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;

    move-result-object v5

    if-nez v5, :cond_5

    return v9

    :cond_5
    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v6

    invoke-virtual {v0, v6, v2, v4, v3}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->changeToVarRef(Lcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Ljava/util/Vector;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->getSelect()Lcom/sun/org/apache/xpath/internal/XPath;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v12, v12, 0x1

    :cond_6
    return v12
.end method

.method public partialIsVariable(Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;I)Z
    .locals 0

    const/4 p0, 0x1

    if-ne p0, p2, :cond_0

    iget-object p1, p1, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lcom/sun/org/apache/xpath/internal/ExpressionOwner;

    invoke-interface {p1}, Lcom/sun/org/apache/xpath/internal/ExpressionOwner;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->getFirstWalker()Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object p1

    instance-of p1, p1, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;

    if-eqz p1, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public stepsEqual(Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;I)Z
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->getFirstWalker()Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->getFirstWalker()Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_3

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z

    move-result v1

    if-nez v1, :cond_1

    return p2

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->getNextWalker()Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->getNextWalker()Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p2

    :cond_3
    const/4 p3, 0x1

    if-nez p0, :cond_4

    if-eqz p1, :cond_5

    :cond_4
    move p2, p3

    :cond_5
    const-string p0, "Total match is incorrect!"

    invoke-static {p2, p0}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    return p3
.end method

.method public visitInstruction(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/16 v1, 0x11

    const/16 v2, 0x1c

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_isSameContext:Z

    iput-boolean v3, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_isSameContext:Z

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->callChildVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;)V

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_isSameContext:Z

    return v3

    :cond_1
    if-ne v0, v2, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->getSelect()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Lcom/sun/org/apache/xpath/internal/XPathVisitable;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    invoke-virtual {p1, p0, v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->callChildVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;Z)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->eleminateRedundentLocals(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    return v3
.end method

.method public visitLocationPath(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;)Z
    .locals 3

    instance-of v0, p2, Lcom/sun/org/apache/xpath/internal/axes/SelfIteratorNoPredicate;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p2, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->getFirstWalker()Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object v0

    instance-of v2, v0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->getNextWalker()Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object v2

    if-nez v2, :cond_1

    check-cast v0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;->getInnerExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/xpath/internal/operations/Variable;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->isAbsolute(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_isSameContext:Z

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return v1
.end method

.method public visitPredicate(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/Expression;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_isSameContext:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_isSameContext:Z

    invoke-interface {p2, p1, p0}, Lcom/sun/org/apache/xpath/internal/XPathVisitable;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->m_isSameContext:Z

    return v1
.end method

.method public visitTopLevelInstruction(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/RedundentExprEliminator;->visitInstruction(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Z

    move-result p0

    return p0
.end method
