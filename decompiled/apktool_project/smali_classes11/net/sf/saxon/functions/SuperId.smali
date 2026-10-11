.class public abstract Lnet/sf/saxon/functions/SuperId;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/SuperId$ElementWithId;,
        Lnet/sf/saxon/functions/SuperId$Id;,
        Lnet/sf/saxon/functions/SuperId$b;
    }
.end annotation


# static fields
.field public static final ELEMENT_WITH_ID:I = 0x1

.field public static final ID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static getIdMultiple(Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/om/SequenceIterator;I)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/functions/SuperId$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/saxon/functions/SuperId$b;-><init>(Lnet/sf/saxon/functions/SuperId$a;)V

    iput-object p0, v0, Lnet/sf/saxon/functions/SuperId$b;->e:Lnet/sf/saxon/om/TreeInfo;

    iput p2, v0, Lnet/sf/saxon/functions/SuperId$b;->f:I

    new-instance p0, Lnet/sf/saxon/expr/MappingIterator;

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/expr/MappingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/MappingFunction;)V

    new-instance p1, Lnet/sf/saxon/expr/sort/DocumentOrderIterator;

    invoke-static {}, Lnet/sf/saxon/expr/sort/LocalOrderComparer;->getInstance()Lnet/sf/saxon/expr/sort/LocalOrderComparer;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/expr/sort/DocumentOrderIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Ljava/util/Comparator;)V

    return-object p1
.end method

.method public static getIdSingle(Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/str/UnicodeString;I)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->containsWhitespace(Lnet/sf/saxon/z/IntIterator;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/value/Whitespace$Tokenizer;

    invoke-direct {v0, p1}, Lnet/sf/saxon/value/Whitespace$Tokenizer;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    new-instance p1, Lnet/sf/saxon/functions/SuperId$b;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lnet/sf/saxon/functions/SuperId$b;-><init>(Lnet/sf/saxon/functions/SuperId$a;)V

    iput-object p0, p1, Lnet/sf/saxon/functions/SuperId$b;->e:Lnet/sf/saxon/om/TreeInfo;

    iput p2, p1, Lnet/sf/saxon/functions/SuperId$b;->f:I

    new-instance p0, Lnet/sf/saxon/expr/MappingIterator;

    invoke-direct {p0, v0, p1}, Lnet/sf/saxon/expr/MappingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/MappingFunction;)V

    new-instance p1, Lnet/sf/saxon/expr/sort/DocumentOrderIterator;

    invoke-static {}, Lnet/sf/saxon/expr/sort/LocalOrderComparer;->getInstance()Lnet/sf/saxon/expr/sort/LocalOrderComparer;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/expr/sort/DocumentOrderIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Ljava/util/Comparator;)V

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0, p1, v0}, Lnet/sf/saxon/om/TreeInfo;->selectID(Ljava/lang/String;Z)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->getContextNode(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    aget-object v0, p2, v1

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    :goto_0
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p2, p2, v0

    instance-of v0, p2, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v0, :cond_1

    check-cast p2, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SuperId;->getOp()I

    move-result p0

    invoke-static {p1, p2, p0}, Lnet/sf/saxon/functions/SuperId;->getIdSingle(Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/str/UnicodeString;I)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SuperId;->getOp()I

    move-result p0

    invoke-static {p1, p2, p0}, Lnet/sf/saxon/functions/SuperId;->getIdMultiple(Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/om/SequenceIterator;I)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toLazySequence(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "() function, the tree being searched must be one whose root is a document node"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FODC0001"

    invoke-direct {p2, p0, v0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    throw p2
.end method

.method public abstract getOp()I
.end method

.method public getSpecialProperties([Lnet/sf/saxon/expr/Expression;)I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    aget-object p0, p1, v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result p0

    const/high16 p1, 0x10000

    and-int/2addr p0, p1

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
