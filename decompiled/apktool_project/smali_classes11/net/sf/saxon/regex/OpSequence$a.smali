.class public Lnet/sf/saxon/regex/OpSequence$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/z/IntIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/regex/OpSequence;->iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public final synthetic c:Ljava/util/Stack;

.field public final synthetic d:Lnet/sf/saxon/regex/REMatcher;

.field public final synthetic e:I

.field public final synthetic f:Lnet/sf/saxon/regex/REMatcher$State;

.field public final synthetic g:I

.field public final synthetic h:Lnet/sf/saxon/regex/OpSequence;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/regex/OpSequence;Ljava/util/Stack;Lnet/sf/saxon/regex/REMatcher;ILnet/sf/saxon/regex/REMatcher$State;I)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/regex/OpSequence$a;->h:Lnet/sf/saxon/regex/OpSequence;

    iput-object p2, p0, Lnet/sf/saxon/regex/OpSequence$a;->c:Ljava/util/Stack;

    iput-object p3, p0, Lnet/sf/saxon/regex/OpSequence$a;->d:Lnet/sf/saxon/regex/REMatcher;

    iput p4, p0, Lnet/sf/saxon/regex/OpSequence$a;->e:I

    iput-object p5, p0, Lnet/sf/saxon/regex/OpSequence$a;->f:Lnet/sf/saxon/regex/REMatcher$State;

    iput p6, p0, Lnet/sf/saxon/regex/OpSequence$a;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/regex/OpSequence$a;->a:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-object v1, p0, Lnet/sf/saxon/regex/OpSequence$a;->c:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lnet/sf/saxon/regex/OpSequence$a;->c:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/z/IntIterator;

    :goto_1
    invoke-interface {v1}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v1

    iget-object v2, p0, Lnet/sf/saxon/regex/OpSequence$a;->d:Lnet/sf/saxon/regex/REMatcher;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/regex/REMatcher;->clearCapturedGroupsBeyond(I)V

    iget-object v2, p0, Lnet/sf/saxon/regex/OpSequence$a;->c:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    iget-object v3, p0, Lnet/sf/saxon/regex/OpSequence$a;->h:Lnet/sf/saxon/regex/OpSequence;

    iget-object v3, v3, Lnet/sf/saxon/regex/OpSequence;->operations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    return v1

    :cond_1
    iget-object v3, p0, Lnet/sf/saxon/regex/OpSequence$a;->h:Lnet/sf/saxon/regex/OpSequence;

    iget-object v3, v3, Lnet/sf/saxon/regex/OpSequence;->operations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/regex/Operation;

    iget-object v3, p0, Lnet/sf/saxon/regex/OpSequence$a;->d:Lnet/sf/saxon/regex/REMatcher;

    invoke-virtual {v2, v3, v1}, Lnet/sf/saxon/regex/Operation;->iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/regex/OpSequence$a;->c:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lnet/sf/saxon/regex/OpSequence$a;->c:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget v1, p0, Lnet/sf/saxon/regex/OpSequence$a;->e:I

    if-ltz v1, :cond_0

    add-int/lit8 v2, v0, 0x1

    if-gt v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    new-instance v0, Lnet/sf/saxon/trans/UncheckedXPathException;

    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Regex backtracking limit exceeded processing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/regex/OpSequence$a;->d:Lnet/sf/saxon/regex/REMatcher;

    iget-object p0, p0, Lnet/sf/saxon/regex/REMatcher;->h:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {p0}, Lnet/sf/saxon/regex/Operation;->display()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Simplify the regular expression, or set Feature.REGEX_BACKTRACKING_LIMIT to -1 to remove this limit."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lnet/sf/saxon/regex/OpSequence$a;->f:Lnet/sf/saxon/regex/REMatcher$State;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lnet/sf/saxon/regex/OpSequence$a;->d:Lnet/sf/saxon/regex/REMatcher;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/regex/REMatcher;->resetState(Lnet/sf/saxon/regex/REMatcher$State;)V

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method public hasNext()Z
    .locals 6

    iget-boolean v0, p0, Lnet/sf/saxon/regex/OpSequence$a;->a:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/regex/OpSequence$a;->c:Ljava/util/Stack;

    iget-object v3, p0, Lnet/sf/saxon/regex/OpSequence$a;->h:Lnet/sf/saxon/regex/OpSequence;

    iget-object v3, v3, Lnet/sf/saxon/regex/OpSequence;->operations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/regex/Operation;

    iget-object v4, p0, Lnet/sf/saxon/regex/OpSequence$a;->d:Lnet/sf/saxon/regex/REMatcher;

    iget v5, p0, Lnet/sf/saxon/regex/OpSequence$a;->g:I

    invoke-virtual {v3, v4, v5}, Lnet/sf/saxon/regex/Operation;->iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v1, p0, Lnet/sf/saxon/regex/OpSequence$a;->a:Z

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/regex/OpSequence$a;->a()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/regex/OpSequence$a;->b:I

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public next()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/regex/OpSequence$a;->b:I

    return p0
.end method
