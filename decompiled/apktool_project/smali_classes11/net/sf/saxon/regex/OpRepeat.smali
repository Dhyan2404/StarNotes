.class public Lnet/sf/saxon/regex/OpRepeat;
.super Lnet/sf/saxon/regex/Operation;
.source "SourceFile"


# instance fields
.field public a:Z

.field protected max:I

.field protected min:I

.field protected op:Lnet/sf/saxon/regex/Operation;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/regex/Operation;IIZ)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/regex/Operation;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/regex/OpRepeat;->op:Lnet/sf/saxon/regex/Operation;

    iput p2, p0, Lnet/sf/saxon/regex/OpRepeat;->min:I

    iput p3, p0, Lnet/sf/saxon/regex/OpRepeat;->max:I

    iput-boolean p4, p0, Lnet/sf/saxon/regex/OpRepeat;->a:Z

    return-void
.end method


# virtual methods
.method public a()Lnet/sf/saxon/regex/Operation;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/regex/OpRepeat;->op:Lnet/sf/saxon/regex/Operation;

    return-object p0
.end method

.method public containsCapturingExpressions()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/regex/OpRepeat;->op:Lnet/sf/saxon/regex/Operation;

    instance-of v0, p0, Lnet/sf/saxon/regex/OpCapture;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/regex/Operation;->containsCapturingExpressions()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public display()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lnet/sf/saxon/regex/OpRepeat;->min:I

    const-string v1, "?"

    const v2, 0x7fffffff

    if-nez v0, :cond_0

    iget v3, p0, Lnet/sf/saxon/regex/OpRepeat;->max:I

    if-ne v3, v2, :cond_0

    const-string v0, "*"

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    iget v4, p0, Lnet/sf/saxon/regex/OpRepeat;->max:I

    if-ne v4, v2, :cond_1

    const-string v0, "+"

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget v0, p0, Lnet/sf/saxon/regex/OpRepeat;->max:I

    if-ne v0, v3, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/sf/saxon/regex/OpRepeat;->min:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/sf/saxon/regex/OpRepeat;->max:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-boolean v2, p0, Lnet/sf/saxon/regex/OpRepeat;->a:Z

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lnet/sf/saxon/regex/OpRepeat;->op:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {p0}, Lnet/sf/saxon/regex/Operation;->display()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInitialCharacterClass(Z)Lnet/sf/saxon/regex/charclass/CharacterClass;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/regex/OpRepeat;->op:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/regex/Operation;->getInitialCharacterClass(Z)Lnet/sf/saxon/regex/charclass/CharacterClass;

    move-result-object p0

    return-object p0
.end method

.method public getMatchLength()I
    .locals 2

    iget v0, p0, Lnet/sf/saxon/regex/OpRepeat;->min:I

    iget v1, p0, Lnet/sf/saxon/regex/OpRepeat;->max:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/regex/OpRepeat;->op:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v0}, Lnet/sf/saxon/regex/Operation;->getMatchLength()I

    move-result v0

    if-ltz v0, :cond_0

    iget v0, p0, Lnet/sf/saxon/regex/OpRepeat;->min:I

    iget-object p0, p0, Lnet/sf/saxon/regex/OpRepeat;->op:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {p0}, Lnet/sf/saxon/regex/Operation;->getMatchLength()I

    move-result p0

    mul-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getMinimumMatchLength()I
    .locals 1

    iget v0, p0, Lnet/sf/saxon/regex/OpRepeat;->min:I

    iget-object p0, p0, Lnet/sf/saxon/regex/OpRepeat;->op:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {p0}, Lnet/sf/saxon/regex/Operation;->getMinimumMatchLength()I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method

.method public iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;
    .locals 6

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iget v0, p0, Lnet/sf/saxon/regex/OpRepeat;->max:I

    iget-object v1, p1, Lnet/sf/saxon/regex/REMatcher;->b:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v1

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-boolean v0, p0, Lnet/sf/saxon/regex/OpRepeat;->a:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lnet/sf/saxon/regex/OpRepeat;->min:I

    if-nez v0, :cond_0

    iget-object v0, p1, Lnet/sf/saxon/regex/REMatcher;->c:Lnet/sf/saxon/regex/History;

    invoke-virtual {v0, p0, p2}, Lnet/sf/saxon/regex/History;->isDuplicateZeroLengthMatch(Lnet/sf/saxon/regex/Operation;I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/z/IntSingletonIterator;

    invoke-direct {v0, p2}, Lnet/sf/saxon/z/IntSingletonIterator;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_2

    iget-object v1, p0, Lnet/sf/saxon/regex/OpRepeat;->op:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/regex/Operation;->iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v1

    invoke-virtual {v2, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lnet/sf/saxon/expr/sort/EmptyIntIterator;->getInstance()Lnet/sf/saxon/expr/sort/EmptyIntIterator;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p2, Lnet/sf/saxon/regex/OpRepeat$a;

    move-object v0, p2

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lnet/sf/saxon/regex/OpRepeat$a;-><init>(Lnet/sf/saxon/regex/OpRepeat;Ljava/util/Stack;Ljava/util/Stack;ILnet/sf/saxon/regex/REMatcher;)V

    new-instance p0, Lnet/sf/saxon/regex/Operation$ForceProgressIterator;

    invoke-direct {p0, p2}, Lnet/sf/saxon/regex/Operation$ForceProgressIterator;-><init>(Lnet/sf/saxon/z/IntIterator;)V

    return-object p0

    :cond_3
    new-instance v0, Lnet/sf/saxon/regex/OpRepeat$b;

    invoke-direct {v0, p0, p2, p1}, Lnet/sf/saxon/regex/OpRepeat$b;-><init>(Lnet/sf/saxon/regex/OpRepeat;ILnet/sf/saxon/regex/REMatcher;)V

    new-instance p0, Lnet/sf/saxon/regex/Operation$ForceProgressIterator;

    invoke-direct {p0, v0}, Lnet/sf/saxon/regex/Operation$ForceProgressIterator;-><init>(Lnet/sf/saxon/z/IntIterator;)V

    return-object p0
.end method

.method public matchesEmptyString()I
    .locals 1

    iget v0, p0, Lnet/sf/saxon/regex/OpRepeat;->min:I

    if-nez v0, :cond_0

    const/4 p0, 0x7

    return p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/regex/OpRepeat;->op:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {p0}, Lnet/sf/saxon/regex/Operation;->matchesEmptyString()I

    move-result p0

    return p0
.end method

.method public optimize(Lnet/sf/saxon/regex/REProgram;Lnet/sf/saxon/regex/REFlags;)Lnet/sf/saxon/regex/Operation;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/regex/OpRepeat;->op:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/regex/Operation;->optimize(Lnet/sf/saxon/regex/REProgram;Lnet/sf/saxon/regex/REFlags;)Lnet/sf/saxon/regex/Operation;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/regex/OpRepeat;->op:Lnet/sf/saxon/regex/Operation;

    iget p2, p0, Lnet/sf/saxon/regex/OpRepeat;->min:I

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/regex/Operation;->matchesEmptyString()I

    move-result p1

    const/4 p2, 0x7

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lnet/sf/saxon/regex/OpRepeat;->min:I

    :cond_0
    return-object p0
.end method
