.class public Lnet/sf/saxon/regex/OpChoice;
.super Lnet/sf/saxon/regex/Operation;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;
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

    iput-object p1, p0, Lnet/sf/saxon/regex/OpChoice;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public containsCapturingExpressions()Z
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/regex/OpChoice;->a:Ljava/util/List;

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
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "(?:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/regex/OpChoice;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/regex/Operation;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    const/16 v3, 0x7c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2}, Lnet/sf/saxon/regex/Operation;->display()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInitialCharacterClass(Z)Lnet/sf/saxon/regex/charclass/CharacterClass;
    .locals 2

    invoke-static {}, Lnet/sf/saxon/regex/charclass/EmptyCharacterClass;->getInstance()Lnet/sf/saxon/regex/charclass/EmptyCharacterClass;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/regex/OpChoice;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v1, p1}, Lnet/sf/saxon/regex/Operation;->getInitialCharacterClass(Z)Lnet/sf/saxon/regex/charclass/CharacterClass;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sf/saxon/regex/RECompiler;->makeUnion(Lnet/sf/saxon/regex/charclass/CharacterClass;Lnet/sf/saxon/regex/charclass/CharacterClass;)Lnet/sf/saxon/regex/charclass/CharacterClass;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getMatchLength()I
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/regex/OpChoice;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v0}, Lnet/sf/saxon/regex/Operation;->getMatchLength()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/regex/OpChoice;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/regex/OpChoice;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v2}, Lnet/sf/saxon/regex/Operation;->getMatchLength()I

    move-result v2

    if-eq v2, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getMinimumMatchLength()I
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/regex/OpChoice;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v0}, Lnet/sf/saxon/regex/Operation;->getMinimumMatchLength()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/regex/OpChoice;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/regex/OpChoice;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v2}, Lnet/sf/saxon/regex/Operation;->getMinimumMatchLength()I

    move-result v2

    if-ge v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/regex/OpChoice$a;

    invoke-direct {v0, p0, p1, p2}, Lnet/sf/saxon/regex/OpChoice$a;-><init>(Lnet/sf/saxon/regex/OpChoice;Lnet/sf/saxon/regex/REMatcher;I)V

    return-object v0
.end method

.method public matchesEmptyString()I
    .locals 3

    iget-object p0, p0, Lnet/sf/saxon/regex/OpChoice;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v1}, Lnet/sf/saxon/regex/Operation;->matchesEmptyString()I

    move-result v1

    const/16 v2, 0x400

    if-eq v1, v2, :cond_0

    or-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public optimize(Lnet/sf/saxon/regex/REProgram;Lnet/sf/saxon/regex/REFlags;)Lnet/sf/saxon/regex/Operation;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnet/sf/saxon/regex/OpChoice;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/regex/OpChoice;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/regex/Operation;->optimize(Lnet/sf/saxon/regex/REProgram;Lnet/sf/saxon/regex/REFlags;)Lnet/sf/saxon/regex/Operation;

    move-result-object v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/regex/OpChoice;->a:Ljava/util/List;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
