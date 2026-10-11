.class public Lnet/sf/saxon/sxpath/XPathExpression;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnet/sf/saxon/expr/StaticContext;

.field public final b:Lnet/sf/saxon/expr/Expression;

.field public c:Lnet/sf/saxon/expr/instruct/SlotManager;

.field public final d:Lnet/sf/saxon/expr/instruct/Executable;

.field public e:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/StaticContext;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/Executable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/sf/saxon/sxpath/XPathExpression;->b:Lnet/sf/saxon/expr/Expression;

    iput-object p1, p0, Lnet/sf/saxon/sxpath/XPathExpression;->a:Lnet/sf/saxon/expr/StaticContext;

    iput-object p3, p0, Lnet/sf/saxon/sxpath/XPathExpression;->d:Lnet/sf/saxon/expr/instruct/Executable;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/sxpath/XPathExpression;->c(Ljava/util/List;Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public static synthetic c(Ljava/util/List;Lnet/sf/saxon/om/Item;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final b(Lnet/sf/saxon/om/Item;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/sxpath/XPathExpression;->a:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getRequiredContextItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathExpression;->a:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lnet/sf/saxon/type/ItemType;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Supplied context item does not match required context item type "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public createDynamicContext()Lnet/sf/saxon/sxpath/XPathDynamicContext;
    .locals 3

    .line 1
    new-instance v0, Lnet/sf/saxon/expr/XPathContextMajor;

    const/4 v1, 0x0

    iget-object v2, p0, Lnet/sf/saxon/sxpath/XPathExpression;->d:Lnet/sf/saxon/expr/instruct/Executable;

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/expr/XPathContextMajor;-><init>(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/instruct/Executable;)V

    .line 2
    iget-object v1, p0, Lnet/sf/saxon/sxpath/XPathExpression;->c:Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/XPathContextMajor;->openStackFrame(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    .line 3
    new-instance v1, Lnet/sf/saxon/sxpath/XPathDynamicContext;

    iget-object v2, p0, Lnet/sf/saxon/sxpath/XPathExpression;->a:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v2}, Lnet/sf/saxon/expr/StaticContext;->getRequiredContextItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathExpression;->c:Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-direct {v1, v2, v0, p0}, Lnet/sf/saxon/sxpath/XPathDynamicContext;-><init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/expr/instruct/SlotManager;)V

    return-object v1
.end method

.method public createDynamicContext(Lnet/sf/saxon/Controller;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/sxpath/XPathDynamicContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p2}, Lnet/sf/saxon/sxpath/XPathExpression;->b(Lnet/sf/saxon/om/Item;)V

    if-nez p1, :cond_0

    .line 9
    invoke-virtual {p0, p2}, Lnet/sf/saxon/sxpath/XPathExpression;->createDynamicContext(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/sxpath/XPathDynamicContext;

    move-result-object p0

    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->newXPathContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lnet/sf/saxon/sxpath/XPathExpression;->c:Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/XPathContextMajor;->openStackFrame(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    .line 12
    new-instance v0, Lnet/sf/saxon/sxpath/XPathDynamicContext;

    iget-object v1, p0, Lnet/sf/saxon/sxpath/XPathExpression;->a:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v1}, Lnet/sf/saxon/expr/StaticContext;->getRequiredContextItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathExpression;->c:Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-direct {v0, v1, p1, p0}, Lnet/sf/saxon/sxpath/XPathDynamicContext;-><init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/expr/instruct/SlotManager;)V

    if-eqz p2, :cond_1

    .line 13
    invoke-virtual {v0, p2}, Lnet/sf/saxon/sxpath/XPathDynamicContext;->setContextItem(Lnet/sf/saxon/om/Item;)V

    :cond_1
    return-object v0
.end method

.method public createDynamicContext(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/sxpath/XPathDynamicContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lnet/sf/saxon/sxpath/XPathExpression;->b(Lnet/sf/saxon/om/Item;)V

    .line 5
    new-instance v0, Lnet/sf/saxon/expr/XPathContextMajor;

    iget-object v1, p0, Lnet/sf/saxon/sxpath/XPathExpression;->d:Lnet/sf/saxon/expr/instruct/Executable;

    invoke-direct {v0, p1, v1}, Lnet/sf/saxon/expr/XPathContextMajor;-><init>(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/instruct/Executable;)V

    .line 6
    iget-object p1, p0, Lnet/sf/saxon/sxpath/XPathExpression;->c:Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/XPathContextMajor;->openStackFrame(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    .line 7
    new-instance p1, Lnet/sf/saxon/sxpath/XPathDynamicContext;

    iget-object v1, p0, Lnet/sf/saxon/sxpath/XPathExpression;->a:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v1}, Lnet/sf/saxon/expr/StaticContext;->getRequiredContextItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathExpression;->c:Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-direct {p1, v1, v0, p0}, Lnet/sf/saxon/sxpath/XPathDynamicContext;-><init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/expr/instruct/SlotManager;)V

    return-object p1
.end method

.method public effectiveBooleanValue(Lnet/sf/saxon/sxpath/XPathDynamicContext;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathExpression;->b:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p1}, Lnet/sf/saxon/sxpath/XPathDynamicContext;->getXPathContextObject()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    return p0
.end method

.method public evaluate(Lnet/sf/saxon/sxpath/XPathDynamicContext;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/sxpath/XPathDynamicContext;",
            ")",
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/Item;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathExpression;->b:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p1}, Lnet/sf/saxon/sxpath/XPathDynamicContext;->getXPathContextObject()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/cmo;

    invoke-direct {p1, v0}, Lcom/sunia/HTREnginev2/cmo;-><init>(Ljava/util/List;)V

    invoke-static {p0, p1}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    return-object v0
.end method

.method public evaluateSingle(Lnet/sf/saxon/sxpath/XPathDynamicContext;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathExpression;->b:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p1}, Lnet/sf/saxon/sxpath/XPathDynamicContext;->getXPathContextObject()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p1

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-object p1
.end method

.method public getExecutable()Lnet/sf/saxon/expr/instruct/Executable;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathExpression;->d:Lnet/sf/saxon/expr/instruct/Executable;

    return-object p0
.end method

.method public getInternalExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathExpression;->b:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public iterate(Lnet/sf/saxon/sxpath/XPathDynamicContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/sxpath/XPathExpression;->c:Lnet/sf/saxon/expr/instruct/SlotManager;

    iget v1, p0, Lnet/sf/saxon/sxpath/XPathExpression;->e:I

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/sxpath/XPathDynamicContext;->checkExternalVariables(Lnet/sf/saxon/expr/instruct/SlotManager;I)V

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathExpression;->b:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p1}, Lnet/sf/saxon/sxpath/XPathDynamicContext;->getXPathContextObject()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public setStackFrameMap(Lnet/sf/saxon/expr/instruct/SlotManager;I)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/sxpath/XPathExpression;->c:Lnet/sf/saxon/expr/instruct/SlotManager;

    iput p2, p0, Lnet/sf/saxon/sxpath/XPathExpression;->e:I

    return-void
.end method
