.class public Lnet/sf/saxon/regex/OpSequence;
.super Lnet/sf/saxon/regex/Operation;
.source "SourceFile"


# instance fields
.field protected final operations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/regex/Operation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/regex/Operation;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/sf/saxon/regex/Operation;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/regex/OpSequence;->operations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public containsCapturingExpressions()Z
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/regex/OpSequence;->operations:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/regex/Operation;

    instance-of v1, v0, Lnet/sf/saxon/regex/OpCapture;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/regex/Operation;->containsCapturingExpressions()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public display()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object p0, p0, Lnet/sf/saxon/regex/OpSequence;->operations:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v1}, Lnet/sf/saxon/regex/Operation;->display()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInitialCharacterClass(Z)Lnet/sf/saxon/regex/charclass/CharacterClass;
    .locals 3

    invoke-static {}, Lnet/sf/saxon/regex/charclass/EmptyCharacterClass;->getInstance()Lnet/sf/saxon/regex/charclass/EmptyCharacterClass;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/regex/OpSequence;->operations:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v1, p1}, Lnet/sf/saxon/regex/Operation;->getInitialCharacterClass(Z)Lnet/sf/saxon/regex/charclass/CharacterClass;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/sf/saxon/regex/RECompiler;->makeUnion(Lnet/sf/saxon/regex/charclass/CharacterClass;Lnet/sf/saxon/regex/charclass/CharacterClass;)Lnet/sf/saxon/regex/charclass/CharacterClass;

    move-result-object v0

    invoke-virtual {v1}, Lnet/sf/saxon/regex/Operation;->matchesEmptyString()I

    move-result v1

    const/16 v2, 0x400

    if-ne v1, v2, :cond_0

    :cond_1
    return-object v0
.end method

.method public getMatchLength()I
    .locals 3

    iget-object p0, p0, Lnet/sf/saxon/regex/OpSequence;->operations:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v1}, Lnet/sf/saxon/regex/Operation;->getMatchLength()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getMinimumMatchLength()I
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/regex/OpSequence;->operations:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v1}, Lnet/sf/saxon/regex/Operation;->getMinimumMatchLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getOperations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/regex/Operation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/regex/OpSequence;->operations:Ljava/util/List;

    return-object p0
.end method

.method public iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;
    .locals 8

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/regex/OpSequence;->containsCapturingExpressions()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/regex/REMatcher;->captureState()Lnet/sf/saxon/regex/REMatcher$State;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    invoke-virtual {p1}, Lnet/sf/saxon/regex/REMatcher;->getProgram()Lnet/sf/saxon/regex/REProgram;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/regex/REProgram;->getBacktrackingLimit()I

    move-result v4

    new-instance v7, Lnet/sf/saxon/regex/OpSequence$a;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lnet/sf/saxon/regex/OpSequence$a;-><init>(Lnet/sf/saxon/regex/OpSequence;Ljava/util/Stack;Lnet/sf/saxon/regex/REMatcher;ILnet/sf/saxon/regex/REMatcher$State;I)V

    return-object v7
.end method

.method public matchesEmptyString()I
    .locals 6

    iget-object v0, p0, Lnet/sf/saxon/regex/OpSequence;->operations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v1}, Lnet/sf/saxon/regex/Operation;->matchesEmptyString()I

    move-result v1

    const/16 v5, 0x400

    if-ne v1, v5, :cond_1

    return v5

    :cond_1
    if-eq v1, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    if-eqz v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/regex/OpSequence;->operations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v1}, Lnet/sf/saxon/regex/Operation;->matchesEmptyString()I

    move-result v1

    and-int/2addr v1, v4

    if-nez v1, :cond_4

    move v0, v3

    goto :goto_1

    :cond_5
    move v0, v4

    :goto_1
    if-eqz v0, :cond_6

    return v4

    :cond_6
    iget-object p0, p0, Lnet/sf/saxon/regex/OpSequence;->operations:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v0}, Lnet/sf/saxon/regex/Operation;->matchesEmptyString()I

    move-result v0

    and-int/2addr v0, v1

    if-nez v0, :cond_7

    move v4, v3

    :cond_8
    if-eqz v4, :cond_9

    return v1

    :cond_9
    return v3
.end method

.method public optimize(Lnet/sf/saxon/regex/REProgram;Lnet/sf/saxon/regex/REFlags;)Lnet/sf/saxon/regex/Operation;
    .locals 7

    iget-object v0, p0, Lnet/sf/saxon/regex/OpSequence;->operations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Lnet/sf/saxon/regex/OpNothing;

    invoke-direct {p0}, Lnet/sf/saxon/regex/OpNothing;-><init>()V

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/regex/OpSequence;->operations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/regex/OpSequence;->operations:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/regex/Operation;

    return-object p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/regex/OpSequence;->operations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lnet/sf/saxon/regex/OpSequence;->operations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/regex/Operation;->optimize(Lnet/sf/saxon/regex/REProgram;Lnet/sf/saxon/regex/REFlags;)Lnet/sf/saxon/regex/Operation;

    move-result-object v3

    if-eq v0, v3, :cond_2

    iget-object v4, p0, Lnet/sf/saxon/regex/OpSequence;->operations:Ljava/util/List;

    invoke-interface {v4, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    instance-of v3, v3, Lnet/sf/saxon/regex/OpRepeat;

    if-eqz v3, :cond_5

    check-cast v0, Lnet/sf/saxon/regex/OpRepeat;

    invoke-virtual {v0}, Lnet/sf/saxon/regex/OpRepeat;->a()Lnet/sf/saxon/regex/Operation;

    move-result-object v3

    instance-of v4, v3, Lnet/sf/saxon/regex/OpAtom;

    if-nez v4, :cond_3

    instance-of v4, v3, Lnet/sf/saxon/regex/OpCharClass;

    if-eqz v4, :cond_5

    :cond_3
    iget-object v4, p0, Lnet/sf/saxon/regex/OpSequence;->operations:Ljava/util/List;

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/regex/Operation;

    iget v5, v0, Lnet/sf/saxon/regex/OpRepeat;->min:I

    iget v6, v0, Lnet/sf/saxon/regex/OpRepeat;->max:I

    if-eq v5, v6, :cond_4

    invoke-virtual {p2}, Lnet/sf/saxon/regex/REFlags;->isCaseIndependent()Z

    move-result v5

    iget-boolean v6, v0, Lnet/sf/saxon/regex/OpRepeat;->a:Z

    xor-int/2addr v6, v2

    invoke-static {v3, v4, v5, v6}, Lnet/sf/saxon/regex/RECompiler;->noAmbiguity(Lnet/sf/saxon/regex/Operation;Lnet/sf/saxon/regex/Operation;ZZ)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    iget-object v4, p0, Lnet/sf/saxon/regex/OpSequence;->operations:Ljava/util/List;

    new-instance v5, Lnet/sf/saxon/regex/OpUnambiguousRepeat;

    iget v6, v0, Lnet/sf/saxon/regex/OpRepeat;->min:I

    iget v0, v0, Lnet/sf/saxon/regex/OpRepeat;->max:I

    invoke-direct {v5, v3, v6, v0}, Lnet/sf/saxon/regex/OpUnambiguousRepeat;-><init>(Lnet/sf/saxon/regex/Operation;II)V

    invoke-interface {v4, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-object p0
.end method
