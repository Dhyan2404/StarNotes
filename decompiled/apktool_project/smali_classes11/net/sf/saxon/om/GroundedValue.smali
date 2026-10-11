.class public interface abstract Lnet/sf/saxon/om/GroundedValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/Sequence;


# virtual methods
.method public asIterable()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lnet/sf/saxon/om/Item;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/om/GroundedValueAsIterable;

    invoke-direct {v0, p0}, Lnet/sf/saxon/om/GroundedValueAsIterable;-><init>(Lnet/sf/saxon/om/GroundedValue;)V

    return-object v0
.end method

.method public varargs concatenate([Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/om/GroundedValue;
    .locals 3

    new-instance v0, Lnet/sf/saxon/ma/zeno/ZenoChain;

    invoke-direct {v0}, Lnet/sf/saxon/ma/zeno/ZenoChain;-><init>()V

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->asIterable()Ljava/lang/Iterable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/ma/zeno/ZenoChain;->addAll(Ljava/lang/Iterable;)Lnet/sf/saxon/ma/zeno/ZenoChain;

    move-result-object p0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-interface {v2}, Lnet/sf/saxon/om/GroundedValue;->asIterable()Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/ma/zeno/ZenoChain;->addAll(Ljava/lang/Iterable;)Lnet/sf/saxon/ma/zeno/ZenoChain;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/sf/saxon/ma/zeno/ZenoSequence;

    invoke-direct {p1, p0}, Lnet/sf/saxon/ma/zeno/ZenoSequence;-><init>(Lnet/sf/saxon/ma/zeno/ZenoChain;)V

    return-object p1
.end method

.method public containsNode(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/SingletonIntersectExpression;->containsNode(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    return p0
.end method

.method public effectiveBooleanValue()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->effectiveBooleanValue(Lnet/sf/saxon/om/SequenceIterator;)Z

    move-result p0

    return p0
.end method

.method public abstract getLength()I
.end method

.method public abstract getStringValue()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract head()Lnet/sf/saxon/om/Item;
.end method

.method public abstract itemAt(I)Lnet/sf/saxon/om/Item;
.end method

.method public abstract iterate()Lnet/sf/saxon/om/SequenceIterator;
.end method

.method public materialize()Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    return-object p0
.end method

.method public reduce()Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    return-object p0
.end method

.method public abstract subsequence(II)Lnet/sf/saxon/om/GroundedValue;
.end method

.method public toShortString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/trans/Err;->depictSequence(Lnet/sf/saxon/om/Sequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
