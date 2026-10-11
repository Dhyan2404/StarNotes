.class public Lnet/sf/saxon/functions/CurrentMergeGroup;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# instance fields
.field public h:Z

.field public i:Lnet/sf/saxon/expr/sort/MergeInstr;

.field public final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/functions/CurrentMergeGroup;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/functions/CurrentMergeGroup;->i:Lnet/sf/saxon/expr/sort/MergeInstr;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/functions/CurrentMergeGroup;->j:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getCurrentMergeGroupIterator()Lnet/sf/saxon/expr/sort/GroupIterator;

    move-result-object p2

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    invoke-interface {p2}, Lnet/sf/saxon/expr/sort/GroupIterator;->iterateCurrentGroup()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/functions/CurrentMergeGroup;->j:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    check-cast p2, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;

    invoke-virtual {p2, p1}, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->iterateCurrentGroup(Ljava/lang/String;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Supplied argument ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is not the name of any xsl:merge-source in the containing xsl:merge instruction"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XTDE3490"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "There is no current merge group"

    const-string p2, "XTDE3480"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/functions/CurrentMergeGroup;->a(Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toLazySequence(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public getControllingInstruction()Lnet/sf/saxon/expr/sort/MergeInstr;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/CurrentMergeGroup;->i:Lnet/sf/saxon/expr/sort/MergeInstr;

    return-object p0
.end method

.method public getResultItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0
.end method

.method public getSpecialProperties([Lnet/sf/saxon/expr/Expression;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "CurrentMergeGroup"

    return-object p0
.end method

.method public isInLoop()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/functions/CurrentMergeGroup;->h:Z

    return p0
.end method

.method public varargs makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    new-instance v0, Lnet/sf/saxon/functions/CurrentMergeGroup$a;

    invoke-direct {v0, p0, p0, p1}, Lnet/sf/saxon/functions/CurrentMergeGroup$a;-><init>(Lnet/sf/saxon/functions/CurrentMergeGroup;Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public setControllingInstruction(Lnet/sf/saxon/expr/sort/MergeInstr;Z)V
    .locals 3

    iput-object p1, p0, Lnet/sf/saxon/functions/CurrentMergeGroup;->i:Lnet/sf/saxon/expr/sort/MergeInstr;

    iput-boolean p2, p0, Lnet/sf/saxon/functions/CurrentMergeGroup;->h:Z

    invoke-virtual {p1}, Lnet/sf/saxon/expr/sort/MergeInstr;->getMergeSources()[Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    iget-object v1, v1, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->sourceName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/functions/CurrentMergeGroup;->j:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
