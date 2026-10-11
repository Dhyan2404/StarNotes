.class public Lnet/sf/saxon/functions/Idref;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/Idref$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static getIdrefMultiple(Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/functions/Idref$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/saxon/functions/Idref$b;-><init>(Lnet/sf/saxon/functions/Idref$a;)V

    iput-object p0, v0, Lnet/sf/saxon/functions/Idref$b;->e:Lnet/sf/saxon/om/TreeInfo;

    iput-object p2, v0, Lnet/sf/saxon/functions/Idref$b;->f:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Executable;->getTopLevelPackage()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->getKeyManager()Lnet/sf/saxon/trans/KeyManager;

    move-result-object p0

    iput-object p0, v0, Lnet/sf/saxon/functions/Idref$b;->g:Lnet/sf/saxon/trans/KeyManager;

    const/16 p2, 0x232

    invoke-static {p2}, Lnet/sf/saxon/om/StandardNames;->getStructuredQName(I)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/KeyManager;->getKeyDefinitionSet(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/trans/KeyDefinitionSet;

    move-result-object p0

    iput-object p0, v0, Lnet/sf/saxon/functions/Idref$b;->h:Lnet/sf/saxon/trans/KeyDefinitionSet;

    new-instance p0, Lnet/sf/saxon/expr/MappingIterator;

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/expr/MappingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/MappingFunction;)V

    new-instance p1, Lnet/sf/saxon/expr/sort/DocumentOrderIterator;

    invoke-static {}, Lnet/sf/saxon/expr/sort/LocalOrderComparer;->getInstance()Lnet/sf/saxon/expr/sort/LocalOrderComparer;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/expr/sort/DocumentOrderIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Ljava/util/Comparator;)V

    return-object p1
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->getContextNode(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    aget-object p0, p2, v1

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/NodeInfo;

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    new-instance v0, Lnet/sf/saxon/om/LazySequence;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object p0

    const/4 v1, 0x0

    aget-object p2, p2, v1

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lnet/sf/saxon/functions/Idref;->getIdrefMultiple(Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/om/LazySequence;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    return-object v0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "In the idref() function, the tree being searched must be one whose root is a document node"

    const-string v0, "FODC0001"

    invoke-direct {p0, p2, v0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    throw p0
.end method

.method public getSpecialProperties([Lnet/sf/saxon/expr/Expression;)I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    aget-object p0, p1, v0

    const/high16 p1, 0x10000

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->hasSpecialProperty(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x1820000

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 p0, 0x1830000

    :goto_1
    return p0
.end method
