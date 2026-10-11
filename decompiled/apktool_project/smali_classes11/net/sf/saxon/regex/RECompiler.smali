.class public Lnet/sf/saxon/regex/RECompiler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/regex/RECompiler$a;
    }
.end annotation


# static fields
.field public static final n:I = 0x0

.field public static final o:I = 0x2

.field public static final p:Z


# instance fields
.field public a:Lnet/sf/saxon/str/UnicodeString;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Lnet/sf/saxon/z/IntHashSet;

.field public k:Z

.field public l:Lnet/sf/saxon/regex/REFlags;

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/regex/RECompiler;->g:Z

    iput-boolean v0, p0, Lnet/sf/saxon/regex/RECompiler;->h:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/regex/RECompiler;->i:Z

    new-instance v1, Lnet/sf/saxon/z/IntHashSet;

    invoke-direct {v1}, Lnet/sf/saxon/z/IntHashSet;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/regex/RECompiler;->j:Lnet/sf/saxon/z/IntHashSet;

    iput-boolean v0, p0, Lnet/sf/saxon/regex/RECompiler;->k:Z

    return-void
.end method

.method public static synthetic a(I)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/regex/RECompiler;->j(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lnet/sf/saxon/regex/charclass/CharacterClass;Lnet/sf/saxon/regex/charclass/CharacterClass;I)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/regex/RECompiler;->i(Lnet/sf/saxon/regex/charclass/CharacterClass;Lnet/sf/saxon/regex/charclass/CharacterClass;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lnet/sf/saxon/regex/charclass/CharacterClass;Lnet/sf/saxon/regex/charclass/CharacterClass;I)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/regex/RECompiler;->h(Lnet/sf/saxon/regex/charclass/CharacterClass;Lnet/sf/saxon/regex/charclass/CharacterClass;I)Z

    move-result p0

    return p0
.end method

.method public static g(I)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic h(Lnet/sf/saxon/regex/charclass/CharacterClass;Lnet/sf/saxon/regex/charclass/CharacterClass;I)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/z/IntExceptPredicate;->makeDifference(Lnet/sf/saxon/z/IntPredicateProxy;Lnet/sf/saxon/z/IntPredicateProxy;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p0

    invoke-interface {p0, p2}, Lnet/sf/saxon/z/IntPredicateProxy;->test(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lnet/sf/saxon/regex/charclass/CharacterClass;Lnet/sf/saxon/regex/charclass/CharacterClass;I)Z
    .locals 0

    invoke-interface {p0, p2}, Lnet/sf/saxon/regex/charclass/CharacterClass;->test(I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1, p2}, Lnet/sf/saxon/regex/charclass/CharacterClass;->test(I)Z

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

.method public static synthetic j(I)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static k(Lnet/sf/saxon/regex/Operation;Lnet/sf/saxon/regex/Operation;)Lnet/sf/saxon/regex/Operation;
    .locals 2

    instance-of v0, p0, Lnet/sf/saxon/regex/OpSequence;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lnet/sf/saxon/regex/OpSequence;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/regex/OpSequence;

    invoke-virtual {v0}, Lnet/sf/saxon/regex/OpSequence;->getOperations()Ljava/util/List;

    move-result-object v0

    check-cast p1, Lnet/sf/saxon/regex/OpSequence;

    invoke-virtual {p1}, Lnet/sf/saxon/regex/OpSequence;->getOperations()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0

    :cond_0
    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/regex/OpSequence;

    invoke-virtual {v0}, Lnet/sf/saxon/regex/OpSequence;->getOperations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    instance-of v0, p1, Lnet/sf/saxon/regex/OpSequence;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/regex/OpSequence;

    invoke-virtual {v0}, Lnet/sf/saxon/regex/OpSequence;->getOperations()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lnet/sf/saxon/regex/OpSequence;

    invoke-direct {p0, v0}, Lnet/sf/saxon/regex/OpSequence;-><init>(Ljava/util/List;)V

    invoke-static {p0}, Lnet/sf/saxon/regex/RECompiler;->t(Lnet/sf/saxon/regex/Operation;)Lnet/sf/saxon/regex/Operation;

    move-result-object p0

    return-object p0
.end method

.method public static makeComplement(Lnet/sf/saxon/regex/charclass/CharacterClass;)Lnet/sf/saxon/regex/charclass/CharacterClass;
    .locals 1

    instance-of v0, p0, Lnet/sf/saxon/regex/charclass/InverseCharacterClass;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/regex/charclass/InverseCharacterClass;

    invoke-virtual {p0}, Lnet/sf/saxon/regex/charclass/InverseCharacterClass;->getComplement()Lnet/sf/saxon/regex/charclass/CharacterClass;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/regex/charclass/InverseCharacterClass;

    invoke-direct {v0, p0}, Lnet/sf/saxon/regex/charclass/InverseCharacterClass;-><init>(Lnet/sf/saxon/regex/charclass/CharacterClass;)V

    return-object v0
.end method

.method public static makeDifference(Lnet/sf/saxon/regex/charclass/CharacterClass;Lnet/sf/saxon/regex/charclass/CharacterClass;)Lnet/sf/saxon/regex/charclass/CharacterClass;
    .locals 2

    invoke-static {}, Lnet/sf/saxon/regex/charclass/EmptyCharacterClass;->getInstance()Lnet/sf/saxon/regex/charclass/EmptyCharacterClass;

    move-result-object v0

    if-ne p0, v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/regex/charclass/EmptyCharacterClass;->getInstance()Lnet/sf/saxon/regex/charclass/EmptyCharacterClass;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p0

    :cond_1
    invoke-interface {p0}, Lnet/sf/saxon/regex/charclass/CharacterClass;->getIntSet()Lnet/sf/saxon/z/IntSet;

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/regex/charclass/CharacterClass;->getIntSet()Lnet/sf/saxon/z/IntSet;

    move-result-object v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Lnet/sf/saxon/regex/charclass/IntSetCharacterClass;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->except(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/regex/charclass/IntSetCharacterClass;-><init>(Lnet/sf/saxon/z/IntSet;)V

    return-object p0

    :cond_3
    :goto_0
    new-instance v0, Lnet/sf/saxon/regex/charclass/PredicateCharacterClass;

    new-instance v1, Lcom/sunia/HTREnginev2/xbl;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/xbl;-><init>(Lnet/sf/saxon/regex/charclass/CharacterClass;Lnet/sf/saxon/regex/charclass/CharacterClass;)V

    invoke-direct {v0, v1}, Lnet/sf/saxon/regex/charclass/PredicateCharacterClass;-><init>(Ljava/util/function/IntPredicate;)V

    return-object v0
.end method

.method public static makeUnion(Lnet/sf/saxon/regex/charclass/CharacterClass;Lnet/sf/saxon/regex/charclass/CharacterClass;)Lnet/sf/saxon/regex/charclass/CharacterClass;
    .locals 2

    invoke-static {}, Lnet/sf/saxon/regex/charclass/EmptyCharacterClass;->getInstance()Lnet/sf/saxon/regex/charclass/EmptyCharacterClass;

    move-result-object v0

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {}, Lnet/sf/saxon/regex/charclass/EmptyCharacterClass;->getInstance()Lnet/sf/saxon/regex/charclass/EmptyCharacterClass;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p0

    :cond_1
    invoke-interface {p0}, Lnet/sf/saxon/regex/charclass/CharacterClass;->getIntSet()Lnet/sf/saxon/z/IntSet;

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/regex/charclass/CharacterClass;->getIntSet()Lnet/sf/saxon/z/IntSet;

    move-result-object v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Lnet/sf/saxon/regex/charclass/IntSetCharacterClass;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->union(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/regex/charclass/IntSetCharacterClass;-><init>(Lnet/sf/saxon/z/IntSet;)V

    return-object p0

    :cond_3
    :goto_0
    new-instance v0, Lnet/sf/saxon/regex/charclass/PredicateCharacterClass;

    new-instance v1, Lcom/sunia/HTREnginev2/ybl;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/ybl;-><init>(Lnet/sf/saxon/regex/charclass/CharacterClass;Lnet/sf/saxon/regex/charclass/CharacterClass;)V

    invoke-direct {v0, v1}, Lnet/sf/saxon/regex/charclass/PredicateCharacterClass;-><init>(Ljava/util/function/IntPredicate;)V

    return-object v0
.end method

.method public static noAmbiguity(Lnet/sf/saxon/regex/Operation;Lnet/sf/saxon/regex/Operation;ZZ)Z
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/regex/OpEndProgram;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    xor-int/lit8 p0, p3, 0x1

    return p0

    :cond_0
    instance-of p3, p1, Lnet/sf/saxon/regex/OpBOL;

    if-nez p3, :cond_3

    instance-of p3, p1, Lnet/sf/saxon/regex/OpEOL;

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    instance-of p3, p1, Lnet/sf/saxon/regex/OpRepeat;

    if-eqz p3, :cond_2

    move-object p3, p1

    check-cast p3, Lnet/sf/saxon/regex/OpRepeat;

    iget p3, p3, Lnet/sf/saxon/regex/OpRepeat;->min:I

    if-nez p3, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {p0, p2}, Lnet/sf/saxon/regex/Operation;->getInitialCharacterClass(Z)Lnet/sf/saxon/regex/charclass/CharacterClass;

    move-result-object p0

    invoke-virtual {p1, p2}, Lnet/sf/saxon/regex/Operation;->getInitialCharacterClass(Z)Lnet/sf/saxon/regex/charclass/CharacterClass;

    move-result-object p1

    invoke-interface {p0, p1}, Lnet/sf/saxon/regex/charclass/CharacterClass;->isDisjoint(Lnet/sf/saxon/regex/charclass/CharacterClass;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public static t(Lnet/sf/saxon/regex/Operation;)Lnet/sf/saxon/regex/Operation;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public compile(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/regex/REProgram;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/regex/RESyntaxException;
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/regex/RECompiler;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    const/4 v1, 0x1

    iput v1, p0, Lnet/sf/saxon/regex/RECompiler;->d:I

    iget-object v2, p0, Lnet/sf/saxon/regex/RECompiler;->l:Lnet/sf/saxon/regex/REFlags;

    invoke-virtual {v2}, Lnet/sf/saxon/regex/REFlags;->isLiteral()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Lnet/sf/saxon/regex/OpAtom;

    iget-object v0, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    invoke-direct {p1, v0}, Lnet/sf/saxon/regex/OpAtom;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    new-instance v0, Lnet/sf/saxon/regex/OpEndProgram;

    invoke-direct {v0}, Lnet/sf/saxon/regex/OpEndProgram;-><init>()V

    invoke-static {p1, v0}, Lnet/sf/saxon/regex/RECompiler;->k(Lnet/sf/saxon/regex/Operation;Lnet/sf/saxon/regex/Operation;)Lnet/sf/saxon/regex/Operation;

    move-result-object p1

    new-instance v0, Lnet/sf/saxon/regex/REProgram;

    iget v1, p0, Lnet/sf/saxon/regex/RECompiler;->d:I

    iget-object p0, p0, Lnet/sf/saxon/regex/RECompiler;->l:Lnet/sf/saxon/regex/REFlags;

    invoke-direct {v0, p1, v1, p0}, Lnet/sf/saxon/regex/REProgram;-><init>(Lnet/sf/saxon/regex/Operation;ILnet/sf/saxon/regex/REFlags;)V

    return-object v0

    :cond_0
    iget-object v2, p0, Lnet/sf/saxon/regex/RECompiler;->l:Lnet/sf/saxon/regex/REFlags;

    invoke-virtual {v2}, Lnet/sf/saxon/regex/REFlags;->isAllowWhitespace()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {v2}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object v3

    move v4, v0

    move v5, v4

    :goto_0
    invoke-interface {v3}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v6

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_1

    if-nez v4, :cond_1

    invoke-virtual {v2, v6}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    move v4, v1

    goto :goto_0

    :cond_1
    const/16 v7, 0x5b

    if-ne v6, v7, :cond_2

    if-nez v4, :cond_2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v6}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    :goto_1
    move v4, v0

    goto :goto_0

    :cond_2
    const/16 v7, 0x5d

    if-ne v6, v7, :cond_3

    if-nez v4, :cond_3

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v6}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_1

    :cond_3
    if-nez v5, :cond_4

    invoke-static {v6}, Lnet/sf/saxon/value/Whitespace;->isWhite(I)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v6}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/regex/RECompiler;->b:I

    :cond_6
    const/4 v0, 0x2

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/regex/RECompiler;->o([I)Lnet/sf/saxon/regex/Operation;

    move-result-object v0

    iget v2, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    iget v3, p0, Lnet/sf/saxon/regex/RECompiler;->b:I

    if-eq v2, v3, :cond_8

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result p1

    const/16 v2, 0x29

    if-ne p1, v2, :cond_7

    const-string p1, "Unmatched close paren"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    :cond_7
    const-string p1, "Unexpected input remains"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    :cond_8
    new-instance p1, Lnet/sf/saxon/regex/REProgram;

    iget v2, p0, Lnet/sf/saxon/regex/RECompiler;->d:I

    iget-object v3, p0, Lnet/sf/saxon/regex/RECompiler;->l:Lnet/sf/saxon/regex/REFlags;

    invoke-direct {p1, v0, v2, v3}, Lnet/sf/saxon/regex/REProgram;-><init>(Lnet/sf/saxon/regex/Operation;ILnet/sf/saxon/regex/REFlags;)V

    iget-boolean p0, p0, Lnet/sf/saxon/regex/RECompiler;->k:Z

    if-eqz p0, :cond_9

    iget p0, p1, Lnet/sf/saxon/regex/REProgram;->optimizationFlags:I

    or-int/2addr p0, v1

    iput p0, p1, Lnet/sf/saxon/regex/REProgram;->optimizationFlags:I

    :cond_9
    return-object p1
.end method

.method public d()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/regex/RESyntaxException;
        }
    .end annotation

    const-string v0, "Expected valid number"

    iget v1, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    iget v2, p0, Lnet/sf/saxon/regex/RECompiler;->b:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v1

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/regex/RECompiler;->f()V

    :cond_1
    iget v1, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    iget v2, p0, Lnet/sf/saxon/regex/RECompiler;->b:I

    const-string v3, "Expected digit"

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v1

    invoke-static {v1}, Lnet/sf/saxon/regex/RECompiler;->g(I)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {p0, v3}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    iget v2, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    iget v4, p0, Lnet/sf/saxon/regex/RECompiler;->b:I

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    int-to-long v5, v2

    invoke-virtual {v4, v5, v6}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v2

    invoke-static {v2}, Lnet/sf/saxon/regex/RECompiler;->g(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    iget v4, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lnet/sf/saxon/regex/RECompiler;->e:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    :goto_1
    iget v2, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    iget v4, p0, Lnet/sf/saxon/regex/RECompiler;->b:I

    const-string v5, "Expected comma or right bracket"

    if-lt v2, v4, :cond_5

    invoke-virtual {p0, v5}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    :cond_5
    iget-object v2, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    iget v4, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    int-to-long v6, v4

    invoke-virtual {v2, v6, v7}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v2

    const/16 v4, 0x7d

    if-ne v2, v4, :cond_6

    iget v0, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    iget v0, p0, Lnet/sf/saxon/regex/RECompiler;->e:I

    iput v0, p0, Lnet/sf/saxon/regex/RECompiler;->f:I

    return-void

    :cond_6
    iget v2, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    iget v6, p0, Lnet/sf/saxon/regex/RECompiler;->b:I

    if-ge v2, v6, :cond_7

    iget-object v6, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    add-int/lit8 v7, v2, 0x1

    iput v7, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    int-to-long v7, v2

    invoke-virtual {v6, v7, v8}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v2

    const/16 v6, 0x2c

    if-eq v2, v6, :cond_8

    :cond_7
    const-string v2, "Expected comma"

    invoke-virtual {p0, v2}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    :cond_8
    iget v2, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    iget v6, p0, Lnet/sf/saxon/regex/RECompiler;->b:I

    if-lt v2, v6, :cond_9

    invoke-virtual {p0, v5}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    :cond_9
    iget-object v2, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    iget v5, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v2

    if-ne v2, v4, :cond_a

    iget v0, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    const v0, 0x7fffffff

    iput v0, p0, Lnet/sf/saxon/regex/RECompiler;->f:I

    return-void

    :cond_a
    iget v2, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    iget v5, p0, Lnet/sf/saxon/regex/RECompiler;->b:I

    if-ge v2, v5, :cond_b

    iget-object v5, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v2

    invoke-static {v2}, Lnet/sf/saxon/regex/RECompiler;->g(I)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    invoke-virtual {p0, v3}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    :cond_c
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_2
    iget v2, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    iget v3, p0, Lnet/sf/saxon/regex/RECompiler;->b:I

    if-ge v2, v3, :cond_d

    iget-object v3, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    int-to-long v5, v2

    invoke-virtual {v3, v5, v6}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v2

    invoke-static {v2}, Lnet/sf/saxon/regex/RECompiler;->g(I)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    iget v3, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    int-to-long v5, v3

    invoke-virtual {v2, v5, v6}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_d
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lnet/sf/saxon/regex/RECompiler;->f:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    invoke-virtual {p0, v0}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    :goto_3
    iget v0, p0, Lnet/sf/saxon/regex/RECompiler;->f:I

    iget v1, p0, Lnet/sf/saxon/regex/RECompiler;->e:I

    if-ge v0, v1, :cond_e

    const-string v0, "Bad range"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    :cond_e
    iget v0, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    iget v1, p0, Lnet/sf/saxon/regex/RECompiler;->b:I

    if-ge v0, v1, :cond_f

    iget-object v1, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v0

    if-eq v0, v4, :cond_10

    :cond_f
    const-string v0, "Missing close brace"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public e(Z)Lnet/sf/saxon/regex/charclass/CharacterClass;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/regex/RESyntaxException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    iget v1, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v0

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/regex/RECompiler;->f()V

    :cond_0
    iget v0, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lnet/sf/saxon/regex/RECompiler;->b:I

    if-ne v0, v2, :cond_1

    const-string v0, "Escape terminates string"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    const/4 v2, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    iget-object v3, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    sub-int/2addr v0, v1

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v0

    const/16 v3, 0x24

    if-eq v0, v3, :cond_20

    const/16 v3, 0x3f

    if-eq v0, v3, :cond_1f

    const/16 v3, 0x49

    if-eq v0, v3, :cond_1e

    const/16 v3, 0x50

    const/16 v4, 0x70

    if-eq v0, v3, :cond_12

    const/16 v3, 0x53

    if-eq v0, v3, :cond_11

    const/16 v3, 0x57

    if-eq v0, v3, :cond_10

    const/16 v3, 0x69

    if-eq v0, v3, :cond_f

    const/16 v3, 0x6e

    if-eq v0, v3, :cond_e

    if-eq v0, v4, :cond_12

    const/16 v2, 0x77

    if-eq v0, v2, :cond_d

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_1f

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_1f

    const/16 v2, 0x43

    if-eq v0, v2, :cond_c

    const/16 v2, 0x44

    if-eq v0, v2, :cond_b

    const/16 v2, 0x63

    if-eq v0, v2, :cond_a

    const/16 v2, 0x64

    if-eq v0, v2, :cond_9

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Escape character \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\' not allowed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_0
    new-instance p0, Lnet/sf/saxon/regex/charclass/SingletonCharacterClass;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lnet/sf/saxon/regex/charclass/SingletonCharacterClass;-><init>(I)V

    return-object p0

    :pswitch_1
    sget-object p0, Lnet/sf/saxon/regex/charclass/Categories;->ESCAPE_s:Lnet/sf/saxon/regex/charclass/CharacterClass;

    return-object p0

    :pswitch_2
    new-instance p0, Lnet/sf/saxon/regex/charclass/SingletonCharacterClass;

    const/16 p1, 0xd

    invoke-direct {p0, p1}, Lnet/sf/saxon/regex/charclass/SingletonCharacterClass;-><init>(I)V

    return-object p0

    :pswitch_3
    if-eqz p1, :cond_2

    const-string p1, "Backreference not allowed within character class"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_2
    iget-boolean p1, p0, Lnet/sf/saxon/regex/RECompiler;->g:Z

    if-eqz p1, :cond_8

    add-int/lit8 v0, v0, -0x30

    :goto_0
    iget p1, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    iget v2, p0, Lnet/sf/saxon/regex/RECompiler;->b:I

    if-ge p1, v2, :cond_5

    sget-object v2, Lnet/sf/saxon/str/StringConstants;->ZERO_TO_NINE:Lnet/sf/saxon/str/UnicodeString;

    iget-object v3, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result p1

    invoke-virtual {v2, p1}, Lnet/sf/saxon/str/UnicodeString;->indexOf(I)J

    move-result-wide v2

    long-to-int p1, v2

    if-gez p1, :cond_3

    goto :goto_1

    :cond_3
    mul-int/lit8 v2, v0, 0xa

    add-int/2addr p1, v2

    iget v2, p0, Lnet/sf/saxon/regex/RECompiler;->d:I

    sub-int/2addr v2, v1

    if-le p1, v2, :cond_4

    goto :goto_1

    :cond_4
    iget v0, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    move v0, p1

    goto :goto_0

    :cond_5
    :goto_1
    iget-object p1, p0, Lnet/sf/saxon/regex/RECompiler;->j:Lnet/sf/saxon/z/IntHashSet;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/z/IntHashSet;->contains(I)Z

    move-result p1

    if-nez p1, :cond_7

    iget p1, p0, Lnet/sf/saxon/regex/RECompiler;->d:I

    sub-int/2addr p1, v1

    if-le v0, p1, :cond_6

    const-string p1, "(no such group)"

    goto :goto_2

    :cond_6
    const-string p1, "(group not yet closed)"

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid backreference \\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    :cond_7
    iput-boolean v1, p0, Lnet/sf/saxon/regex/RECompiler;->k:Z

    new-instance p1, Lnet/sf/saxon/regex/RECompiler$a;

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/regex/RECompiler$a;-><init>(Lnet/sf/saxon/regex/RECompiler;I)V

    return-object p1

    :cond_8
    const-string p1, "digit not allowed after \\"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_4
    const-string p1, "Octal escapes not allowed"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_9
    sget-object p0, Lnet/sf/saxon/regex/charclass/Categories;->ESCAPE_d:Lnet/sf/saxon/regex/charclass/Categories$Category;

    return-object p0

    :cond_a
    sget-object p0, Lnet/sf/saxon/regex/charclass/Categories;->ESCAPE_c:Lnet/sf/saxon/regex/charclass/PredicateCharacterClass;

    return-object p0

    :cond_b
    sget-object p0, Lnet/sf/saxon/regex/charclass/Categories;->ESCAPE_D:Lnet/sf/saxon/regex/charclass/CharacterClass;

    return-object p0

    :cond_c
    sget-object p0, Lnet/sf/saxon/regex/charclass/Categories;->ESCAPE_C:Lnet/sf/saxon/regex/charclass/CharacterClass;

    return-object p0

    :cond_d
    sget-object p0, Lnet/sf/saxon/regex/charclass/Categories;->ESCAPE_w:Lnet/sf/saxon/regex/charclass/PredicateCharacterClass;

    return-object p0

    :cond_e
    new-instance p0, Lnet/sf/saxon/regex/charclass/SingletonCharacterClass;

    const/16 p1, 0xa

    invoke-direct {p0, p1}, Lnet/sf/saxon/regex/charclass/SingletonCharacterClass;-><init>(I)V

    return-object p0

    :cond_f
    sget-object p0, Lnet/sf/saxon/regex/charclass/Categories;->ESCAPE_i:Lnet/sf/saxon/regex/charclass/PredicateCharacterClass;

    return-object p0

    :cond_10
    sget-object p0, Lnet/sf/saxon/regex/charclass/Categories;->ESCAPE_W:Lnet/sf/saxon/regex/charclass/CharacterClass;

    return-object p0

    :cond_11
    sget-object p0, Lnet/sf/saxon/regex/charclass/Categories;->ESCAPE_S:Lnet/sf/saxon/regex/charclass/CharacterClass;

    return-object p0

    :cond_12
    iget p1, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    iget v3, p0, Lnet/sf/saxon/regex/RECompiler;->b:I

    const-string v5, "Expected \'{\' after \\"

    if-ne p1, v3, :cond_13

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    :cond_13
    iget-object p1, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    iget v3, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    int-to-long v6, v3

    invoke-virtual {p1, v6, v7}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result p1

    const/16 v3, 0x7b

    if-eq p1, v3, :cond_14

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    :cond_14
    iget p1, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    add-int/lit8 v3, p1, 0x1

    iput v3, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    iget-object v3, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    const/16 v5, 0x7d

    int-to-long v6, p1

    invoke-virtual {v3, v5, v6, v7}, Lnet/sf/saxon/str/UnicodeString;->indexOf(IJ)J

    move-result-wide v5

    long-to-int p1, v5

    const/4 v3, -0x1

    if-ne p1, v3, :cond_15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No closing \'}\' after \\"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    :cond_15
    iget-object v3, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    iget v5, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    int-to-long v5, v5

    int-to-long v7, p1

    invoke-virtual {v3, v5, v6, v7, v8}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v1, :cond_1b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v2, :cond_16

    goto :goto_3

    :cond_16
    const-string v5, "Is"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/regex/UnicodeBlocks;->getBlock(Ljava/lang/String;)Lnet/sf/saxon/z/IntSet;

    move-result-object v3

    if-nez v3, :cond_18

    iget-object v5, p0, Lnet/sf/saxon/regex/RECompiler;->l:Lnet/sf/saxon/regex/REFlags;

    invoke-virtual {v5}, Lnet/sf/saxon/regex/REFlags;->isAllowUnknownBlockNames()Z

    move-result v5

    const-string v6, "Unknown Unicode block: "

    if-eqz v5, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/regex/RECompiler;->u(Ljava/lang/String;)V

    add-int/2addr p1, v1

    iput p1, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    invoke-static {}, Lnet/sf/saxon/regex/charclass/EmptyCharacterClass;->getComplement()Lnet/sf/saxon/regex/charclass/CharacterClass;

    move-result-object p0

    return-object p0

    :cond_17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    :cond_18
    add-int/2addr p1, v1

    iput p1, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    new-instance p0, Lnet/sf/saxon/regex/charclass/IntSetCharacterClass;

    invoke-direct {p0, v3}, Lnet/sf/saxon/regex/charclass/IntSetCharacterClass;-><init>(Lnet/sf/saxon/z/IntSet;)V

    if-ne v0, v4, :cond_19

    return-object p0

    :cond_19
    invoke-static {p0}, Lnet/sf/saxon/regex/RECompiler;->makeComplement(Lnet/sf/saxon/regex/charclass/CharacterClass;)Lnet/sf/saxon/regex/charclass/CharacterClass;

    move-result-object p0

    return-object p0

    :cond_1a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown character category: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    goto :goto_4

    :cond_1b
    :goto_3
    invoke-static {v3}, Lnet/sf/saxon/regex/charclass/Categories;->getCategory(Ljava/lang/String;)Lnet/sf/saxon/regex/charclass/Categories$Category;

    move-result-object v2

    if-nez v2, :cond_1c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown character category "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    :cond_1c
    add-int/2addr p1, v1

    iput p1, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    if-ne v0, v4, :cond_1d

    return-object v2

    :cond_1d
    invoke-static {v2}, Lnet/sf/saxon/regex/RECompiler;->makeComplement(Lnet/sf/saxon/regex/charclass/CharacterClass;)Lnet/sf/saxon/regex/charclass/CharacterClass;

    move-result-object p0

    return-object p0

    :cond_1e
    sget-object p0, Lnet/sf/saxon/regex/charclass/Categories;->ESCAPE_I:Lnet/sf/saxon/regex/charclass/CharacterClass;

    return-object p0

    :cond_1f
    :pswitch_5
    new-instance p0, Lnet/sf/saxon/regex/charclass/SingletonCharacterClass;

    invoke-direct {p0, v0}, Lnet/sf/saxon/regex/charclass/SingletonCharacterClass;-><init>(I)V

    return-object p0

    :cond_20
    iget-boolean p1, p0, Lnet/sf/saxon/regex/RECompiler;->g:Z

    if-eqz p1, :cond_21

    new-instance p0, Lnet/sf/saxon/regex/charclass/SingletonCharacterClass;

    invoke-direct {p0, v0}, Lnet/sf/saxon/regex/charclass/SingletonCharacterClass;-><init>(I)V

    return-object p0

    :cond_21
    const-string p1, "In XSD, \'$\' must not be escaped"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    :goto_4
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x72
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7b
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Internal error!"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public getWarnings()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/regex/RECompiler;->m:Ljava/util/List;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public l()Lnet/sf/saxon/regex/Operation;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/regex/RESyntaxException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {v0}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    iget v4, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    iget v5, p0, Lnet/sf/saxon/regex/RECompiler;->b:I

    if-ge v4, v5, :cond_b

    add-int/lit8 v6, v4, 0x1

    const/16 v7, 0x3f

    const/4 v8, 0x1

    if-ge v6, v5, :cond_4

    iget-object v5, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    add-int/lit8 v4, v4, 0x1

    int-to-long v9, v4

    invoke-virtual {v5, v9, v10}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v4

    iget-object v5, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    iget v6, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    int-to-long v9, v6

    invoke-virtual {v5, v9, v10}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_2

    iget v5, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    invoke-virtual {p0, v1}, Lnet/sf/saxon/regex/RECompiler;->e(Z)Lnet/sf/saxon/regex/charclass/CharacterClass;

    iget v6, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    iget v9, p0, Lnet/sf/saxon/regex/RECompiler;->b:I

    if-ge v6, v9, :cond_1

    iget-object v4, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    int-to-long v9, v6

    invoke-virtual {v4, v9, v10}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v4

    :cond_1
    iput v5, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    :cond_2
    const/16 v5, 0x2a

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_3

    if-eq v4, v7, :cond_3

    const/16 v5, 0x7b

    if-eq v4, v5, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    move v3, v8

    :cond_4
    :goto_0
    if-eqz v3, :cond_5

    goto :goto_5

    :cond_5
    iget-object v4, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    iget v5, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v4

    const/16 v5, 0x24

    if-eq v4, v5, :cond_9

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_8

    if-eq v4, v7, :cond_7

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    goto :goto_2

    :pswitch_0
    const-string v3, "Unescaped right curly brace"

    invoke-virtual {p0, v3}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget v4, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    invoke-virtual {p0, v1}, Lnet/sf/saxon/regex/RECompiler;->e(Z)Lnet/sf/saxon/regex/charclass/CharacterClass;

    move-result-object v5

    instance-of v6, v5, Lnet/sf/saxon/z/IntValuePredicate;

    if-nez v6, :cond_6

    iput v4, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    goto :goto_1

    :cond_6
    check-cast v5, Lnet/sf/saxon/z/IntValuePredicate;

    invoke-virtual {v5}, Lnet/sf/saxon/z/IntValuePredicate;->getTarget()I

    move-result v4

    invoke-virtual {v0, v4}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_3

    :cond_7
    :pswitch_2
    if-nez v2, :cond_8

    const-string v3, "No expression before quantifier"

    invoke-virtual {p0, v3}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    :cond_8
    :goto_1
    :pswitch_3
    move v3, v8

    goto :goto_4

    :cond_9
    :pswitch_4
    iget-boolean v4, p0, Lnet/sf/saxon/regex/RECompiler;->g:Z

    if-eqz v4, :cond_a

    goto :goto_1

    :cond_a
    const-string v4, "goto default;"

    invoke-static {v4}, Lnet/sf/saxon/transpile/CSharp;->emitCode(Ljava/lang/String;)V

    :goto_2
    iget v4, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    iget-object v5, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v4

    invoke-virtual {v0, v4}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    :goto_4
    if-eqz v3, :cond_0

    :cond_b
    :goto_5
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lnet/sf/saxon/regex/RECompiler;->f()V

    :cond_c
    new-instance p0, Lnet/sf/saxon/regex/OpAtom;

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/regex/OpAtom;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-static {p0}, Lnet/sf/saxon/regex/RECompiler;->t(Lnet/sf/saxon/regex/Operation;)Lnet/sf/saxon/regex/Operation;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7b
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public m()Lnet/sf/saxon/regex/Operation;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/regex/RESyntaxException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    iget v3, p0, Lnet/sf/saxon/regex/RECompiler;->b:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v2

    const/16 v3, 0x7c

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    iget v3, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v2

    const/16 v3, 0x29

    if-eq v2, v3, :cond_1

    const/4 v2, 0x0

    aput v2, v0, v2

    invoke-virtual {p0, v0}, Lnet/sf/saxon/regex/RECompiler;->q([I)Lnet/sf/saxon/regex/Operation;

    move-result-object v2

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Lnet/sf/saxon/regex/RECompiler;->k(Lnet/sf/saxon/regex/Operation;Lnet/sf/saxon/regex/Operation;)Lnet/sf/saxon/regex/Operation;

    move-result-object v1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    new-instance p0, Lnet/sf/saxon/regex/OpNothing;

    invoke-direct {p0}, Lnet/sf/saxon/regex/OpNothing;-><init>()V

    return-object p0

    :cond_2
    return-object v1
.end method

.method public n()Lnet/sf/saxon/regex/charclass/CharacterClass;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/regex/RESyntaxException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    iget v2, v0, Lnet/sf/saxon/regex/RECompiler;->c:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/regex/RECompiler;->f()V

    :cond_0
    iget v1, v0, Lnet/sf/saxon/regex/RECompiler;->c:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lnet/sf/saxon/regex/RECompiler;->c:I

    add-int/lit8 v4, v1, 0x1

    iget v5, v0, Lnet/sf/saxon/regex/RECompiler;->b:I

    const/16 v6, 0x5d

    if-ge v4, v5, :cond_1

    iget-object v4, v0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    int-to-long v7, v1

    invoke-virtual {v4, v7, v8}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v1

    if-ne v1, v6, :cond_2

    :cond_1
    const-string v1, "Missing \']\'"

    invoke-virtual {v0, v1}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    :cond_2
    new-instance v1, Lnet/sf/saxon/z/IntRangeSet;

    invoke-direct {v1}, Lnet/sf/saxon/z/IntRangeSet;-><init>()V

    const/16 v4, 0x5e

    filled-new-array {v4}, [I

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/sf/saxon/regex/RECompiler;->s([I)Z

    move-result v5

    const-string v7, "Nothing before subtraction operator"

    const/4 v8, 0x0

    const/16 v11, 0x2d

    if-eqz v5, :cond_5

    filled-new-array {v4, v11, v2}, [I

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/sf/saxon/regex/RECompiler;->s([I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0, v7}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    filled-new-array {v4, v6}, [I

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/sf/saxon/regex/RECompiler;->s([I)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "Empty negative character group"

    invoke-virtual {v0, v5}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget v5, v0, Lnet/sf/saxon/regex/RECompiler;->c:I

    add-int/2addr v5, v3

    iput v5, v0, Lnet/sf/saxon/regex/RECompiler;->c:I

    move-object v5, v8

    const/4 v7, 0x0

    goto :goto_1

    :cond_5
    filled-new-array {v11, v2}, [I

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/sf/saxon/regex/RECompiler;->s([I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v0, v7}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    :cond_6
    :goto_0
    move v7, v3

    move-object v5, v8

    :cond_7
    :goto_1
    const/4 v12, 0x0

    const/4 v13, -0x1

    :cond_8
    :goto_2
    iget v14, v0, Lnet/sf/saxon/regex/RECompiler;->c:I

    iget v15, v0, Lnet/sf/saxon/regex/RECompiler;->b:I

    if-ge v14, v15, :cond_20

    iget-object v15, v0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    int-to-long v9, v14

    invoke-virtual {v15, v9, v10}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v9

    if-eq v9, v6, :cond_20

    iget-object v9, v0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    iget v10, v0, Lnet/sf/saxon/regex/RECompiler;->c:I

    int-to-long v14, v10

    invoke-virtual {v9, v14, v15}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v9

    if-eq v9, v11, :cond_e

    if-eq v9, v2, :cond_d

    const/16 v10, 0x5c

    if-eq v9, v10, :cond_9

    iget v10, v0, Lnet/sf/saxon/regex/RECompiler;->c:I

    add-int/2addr v10, v3

    iput v10, v0, Lnet/sf/saxon/regex/RECompiler;->c:I

    goto/16 :goto_5

    :cond_9
    invoke-virtual {v0, v3}, Lnet/sf/saxon/regex/RECompiler;->e(Z)Lnet/sf/saxon/regex/charclass/CharacterClass;

    move-result-object v9

    instance-of v10, v9, Lnet/sf/saxon/regex/charclass/SingletonCharacterClass;

    if-eqz v10, :cond_a

    check-cast v9, Lnet/sf/saxon/regex/charclass/SingletonCharacterClass;

    invoke-virtual {v9}, Lnet/sf/saxon/regex/charclass/SingletonCharacterClass;->getCodepoint()I

    move-result v9

    goto/16 :goto_5

    :cond_a
    if-eqz v12, :cond_b

    const-string v9, "Multi-character escape cannot follow \'-\'"

    invoke-virtual {v0, v9}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    if-nez v8, :cond_c

    move-object v8, v9

    goto :goto_2

    :cond_c
    invoke-static {v8, v9}, Lnet/sf/saxon/regex/RECompiler;->makeUnion(Lnet/sf/saxon/regex/charclass/CharacterClass;Lnet/sf/saxon/regex/charclass/CharacterClass;)Lnet/sf/saxon/regex/charclass/CharacterClass;

    move-result-object v8

    goto :goto_2

    :cond_d
    const-string v9, "Unescaped \'[\' within square brackets"

    invoke-virtual {v0, v9}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_e
    filled-new-array {v11, v2}, [I

    move-result-object v9

    invoke-virtual {v0, v9}, Lnet/sf/saxon/regex/RECompiler;->s([I)Z

    move-result v9

    if-eqz v9, :cond_f

    iget v5, v0, Lnet/sf/saxon/regex/RECompiler;->c:I

    add-int/2addr v5, v3

    iput v5, v0, Lnet/sf/saxon/regex/RECompiler;->c:I

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/regex/RECompiler;->n()Lnet/sf/saxon/regex/charclass/CharacterClass;

    move-result-object v5

    filled-new-array {v6}, [I

    move-result-object v9

    invoke-virtual {v0, v9}, Lnet/sf/saxon/regex/RECompiler;->s([I)Z

    move-result v9

    if-nez v9, :cond_14

    const-string v9, "Expected closing \']\' after subtraction"

    invoke-virtual {v0, v9}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_f
    filled-new-array {v11, v6}, [I

    move-result-object v9

    invoke-virtual {v0, v9}, Lnet/sf/saxon/regex/RECompiler;->s([I)Z

    move-result v9

    if-eqz v9, :cond_10

    iget v9, v0, Lnet/sf/saxon/regex/RECompiler;->c:I

    add-int/2addr v9, v3

    iput v9, v0, Lnet/sf/saxon/regex/RECompiler;->c:I

    :goto_3
    move v9, v11

    goto/16 :goto_5

    :cond_10
    if-ltz v13, :cond_11

    iget v9, v0, Lnet/sf/saxon/regex/RECompiler;->c:I

    add-int/2addr v9, v3

    iput v9, v0, Lnet/sf/saxon/regex/RECompiler;->c:I

    move v12, v3

    goto/16 :goto_2

    :cond_11
    if-eqz v12, :cond_12

    const-string v9, "Bad range"

    invoke-virtual {v0, v9}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    goto :goto_4

    :cond_12
    filled-new-array {v11, v11}, [I

    move-result-object v9

    invoke-virtual {v0, v9}, Lnet/sf/saxon/regex/RECompiler;->s([I)Z

    move-result v9

    if-eqz v9, :cond_13

    filled-new-array {v11, v11, v2}, [I

    move-result-object v9

    invoke-virtual {v0, v9}, Lnet/sf/saxon/regex/RECompiler;->s([I)Z

    move-result v9

    if-nez v9, :cond_13

    const-string v9, "Unescaped hyphen as start of range"

    invoke-virtual {v0, v9}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    goto :goto_4

    :cond_13
    iget-boolean v9, v0, Lnet/sf/saxon/regex/RECompiler;->i:Z

    if-nez v9, :cond_15

    iget-object v9, v0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    iget v10, v0, Lnet/sf/saxon/regex/RECompiler;->c:I

    sub-int/2addr v10, v3

    int-to-long v14, v10

    invoke-virtual {v9, v14, v15}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v9

    if-eq v9, v2, :cond_15

    iget-object v9, v0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    iget v10, v0, Lnet/sf/saxon/regex/RECompiler;->c:I

    sub-int/2addr v10, v3

    int-to-long v14, v10

    invoke-virtual {v9, v14, v15}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v9

    if-eq v9, v4, :cond_15

    filled-new-array {v6}, [I

    move-result-object v9

    invoke-virtual {v0, v9}, Lnet/sf/saxon/regex/RECompiler;->s([I)Z

    move-result v9

    if-nez v9, :cond_15

    filled-new-array {v11, v2}, [I

    move-result-object v9

    invoke-virtual {v0, v9}, Lnet/sf/saxon/regex/RECompiler;->s([I)Z

    move-result v9

    if-nez v9, :cond_15

    const-string v9, "In XSD 1.0, hyphen is allowed only at the beginning or end of a positive character group"

    invoke-virtual {v0, v9}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    :cond_14
    :goto_4
    const/4 v9, -0x1

    goto :goto_5

    :cond_15
    iget v9, v0, Lnet/sf/saxon/regex/RECompiler;->c:I

    add-int/2addr v9, v3

    iput v9, v0, Lnet/sf/saxon/regex/RECompiler;->c:I

    goto :goto_3

    :goto_5
    if-eqz v12, :cond_1a

    if-le v13, v9, :cond_16

    const-string v10, "Bad character range: start > end"

    invoke-virtual {v0, v10}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    :cond_16
    invoke-virtual {v1, v13, v9}, Lnet/sf/saxon/z/IntRangeSet;->addRange(II)V

    iget-object v10, v0, Lnet/sf/saxon/regex/RECompiler;->l:Lnet/sf/saxon/regex/REFlags;

    invoke-virtual {v10}, Lnet/sf/saxon/regex/REFlags;->isCaseIndependent()Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x5a

    const/16 v12, 0x7a

    const/16 v14, 0x41

    const/16 v15, 0x61

    if-ne v13, v15, :cond_17

    if-ne v9, v12, :cond_17

    invoke-virtual {v1, v14, v10}, Lnet/sf/saxon/z/IntRangeSet;->addRange(II)V

    const/4 v9, 0x0

    :goto_6
    sget-object v10, Lnet/sf/saxon/regex/CaseVariants;->ROMAN_VARIANTS:[I

    array-length v12, v10

    if-ge v9, v12, :cond_7

    aget v10, v10, v9

    invoke-virtual {v1, v10}, Lnet/sf/saxon/z/IntRangeSet;->add(I)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_17
    if-ne v13, v14, :cond_18

    if-ne v9, v10, :cond_18

    invoke-virtual {v1, v15, v12}, Lnet/sf/saxon/z/IntRangeSet;->addRange(II)V

    const/4 v9, 0x0

    :goto_7
    sget-object v10, Lnet/sf/saxon/regex/CaseVariants;->ROMAN_VARIANTS:[I

    array-length v12, v10

    if-ge v9, v12, :cond_7

    aget v10, v10, v9

    invoke-virtual {v1, v10}, Lnet/sf/saxon/z/IntRangeSet;->add(I)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_18
    :goto_8
    if-gt v13, v9, :cond_7

    invoke-static {v13}, Lnet/sf/saxon/regex/CaseVariants;->getCaseVariants(I)[I

    move-result-object v10

    array-length v12, v10

    const/4 v14, 0x0

    :goto_9
    if-ge v14, v12, :cond_19

    aget v15, v10, v14

    invoke-virtual {v1, v15}, Lnet/sf/saxon/z/IntRangeSet;->add(I)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_19
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_1a
    filled-new-array {v11}, [I

    move-result-object v10

    invoke-virtual {v0, v10}, Lnet/sf/saxon/regex/RECompiler;->s([I)Z

    move-result v10

    if-eqz v10, :cond_1f

    filled-new-array {v11, v2}, [I

    move-result-object v10

    invoke-virtual {v0, v10}, Lnet/sf/saxon/regex/RECompiler;->s([I)Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-virtual {v1, v9}, Lnet/sf/saxon/z/IntRangeSet;->add(I)Z

    goto/16 :goto_2

    :cond_1b
    filled-new-array {v11, v6}, [I

    move-result-object v10

    invoke-virtual {v0, v10}, Lnet/sf/saxon/regex/RECompiler;->s([I)Z

    move-result v10

    if-eqz v10, :cond_1c

    invoke-virtual {v1, v9}, Lnet/sf/saxon/z/IntRangeSet;->add(I)Z

    goto/16 :goto_2

    :cond_1c
    filled-new-array {v11, v11, v2}, [I

    move-result-object v10

    invoke-virtual {v0, v10}, Lnet/sf/saxon/regex/RECompiler;->s([I)Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-virtual {v1, v9}, Lnet/sf/saxon/z/IntRangeSet;->add(I)Z

    goto/16 :goto_2

    :cond_1d
    filled-new-array {v11, v11}, [I

    move-result-object v10

    invoke-virtual {v0, v10}, Lnet/sf/saxon/regex/RECompiler;->s([I)Z

    move-result v10

    if-eqz v10, :cond_1e

    const-string v9, "Unescaped hyphen cannot act as end of range"

    invoke-virtual {v0, v9}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1e
    move v13, v9

    goto/16 :goto_2

    :cond_1f
    invoke-virtual {v1, v9}, Lnet/sf/saxon/z/IntRangeSet;->add(I)Z

    iget-object v10, v0, Lnet/sf/saxon/regex/RECompiler;->l:Lnet/sf/saxon/regex/REFlags;

    invoke-virtual {v10}, Lnet/sf/saxon/regex/REFlags;->isCaseIndependent()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {v9}, Lnet/sf/saxon/regex/CaseVariants;->getCaseVariants(I)[I

    move-result-object v9

    array-length v10, v9

    const/4 v14, 0x0

    :goto_a
    if-ge v14, v10, :cond_8

    aget v15, v9, v14

    invoke-virtual {v1, v15}, Lnet/sf/saxon/z/IntRangeSet;->add(I)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    :cond_20
    iget v2, v0, Lnet/sf/saxon/regex/RECompiler;->c:I

    iget v4, v0, Lnet/sf/saxon/regex/RECompiler;->b:I

    if-ne v2, v4, :cond_21

    const-string v2, "Unterminated character class"

    invoke-virtual {v0, v2}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    :cond_21
    iget v2, v0, Lnet/sf/saxon/regex/RECompiler;->c:I

    add-int/2addr v2, v3

    iput v2, v0, Lnet/sf/saxon/regex/RECompiler;->c:I

    new-instance v0, Lnet/sf/saxon/regex/charclass/IntSetCharacterClass;

    invoke-direct {v0, v1}, Lnet/sf/saxon/regex/charclass/IntSetCharacterClass;-><init>(Lnet/sf/saxon/z/IntSet;)V

    if-eqz v8, :cond_22

    invoke-static {v0, v8}, Lnet/sf/saxon/regex/RECompiler;->makeUnion(Lnet/sf/saxon/regex/charclass/CharacterClass;Lnet/sf/saxon/regex/charclass/CharacterClass;)Lnet/sf/saxon/regex/charclass/CharacterClass;

    move-result-object v0

    :cond_22
    if-nez v7, :cond_23

    invoke-static {v0}, Lnet/sf/saxon/regex/RECompiler;->makeComplement(Lnet/sf/saxon/regex/charclass/CharacterClass;)Lnet/sf/saxon/regex/charclass/CharacterClass;

    move-result-object v0

    :cond_23
    if-eqz v5, :cond_24

    invoke-static {v0, v5}, Lnet/sf/saxon/regex/RECompiler;->makeDifference(Lnet/sf/saxon/regex/charclass/CharacterClass;Lnet/sf/saxon/regex/charclass/CharacterClass;)Lnet/sf/saxon/regex/charclass/CharacterClass;

    move-result-object v0

    :cond_24
    return-object v0
.end method

.method public final o([I)Lnet/sf/saxon/regex/Operation;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/regex/RESyntaxException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lnet/sf/saxon/regex/RECompiler;->d:I

    const/4 v2, 0x0

    aget v3, p1, v2

    const/4 v4, 0x2

    and-int/2addr v3, v4

    const/4 v5, 0x1

    if-nez v3, :cond_2

    iget-object v3, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    iget v6, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v3

    const/16 v6, 0x28

    if-ne v3, v6, :cond_2

    iget v3, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    add-int/lit8 v6, v3, 0x2

    iget v7, p0, Lnet/sf/saxon/regex/RECompiler;->b:I

    if-ge v6, v7, :cond_1

    iget-object v6, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    add-int/2addr v3, v5

    int-to-long v7, v3

    invoke-virtual {v6, v7, v8}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v3

    const/16 v6, 0x3f

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    iget v6, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    add-int/2addr v6, v4

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v3

    const/16 v6, 0x3a

    if-ne v3, v6, :cond_1

    iget-boolean v3, p0, Lnet/sf/saxon/regex/RECompiler;->h:Z

    if-nez v3, :cond_0

    const-string v3, "Non-capturing groups allowed only in XPath3.0"

    invoke-virtual {p0, v3}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    :cond_0
    iget v3, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    add-int/lit8 v3, v3, 0x3

    iput v3, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    move v3, v2

    move v6, v3

    goto :goto_0

    :cond_1
    iget v3, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    add-int/2addr v3, v5

    iput v3, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    iget v3, p0, Lnet/sf/saxon/regex/RECompiler;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lnet/sf/saxon/regex/RECompiler;->d:I

    move v4, v5

    move v6, v4

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    move v3, v2

    move v6, v5

    :goto_0
    aget v7, p1, v2

    and-int/lit8 v7, v7, -0x3

    aput v7, p1, v2

    invoke-virtual {p0}, Lnet/sf/saxon/regex/RECompiler;->m()Lnet/sf/saxon/regex/Operation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget p1, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    iget v7, p0, Lnet/sf/saxon/regex/RECompiler;->b:I

    if-ge p1, v7, :cond_3

    iget-object v7, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    int-to-long v8, p1

    invoke-virtual {v7, v8, v9}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result p1

    const/16 v7, 0x7c

    if-ne p1, v7, :cond_3

    iget p1, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    add-int/2addr p1, v5

    iput p1, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    invoke-virtual {p0}, Lnet/sf/saxon/regex/RECompiler;->m()Lnet/sf/saxon/regex/Operation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v5, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/regex/Operation;

    goto :goto_2

    :cond_4
    new-instance p1, Lnet/sf/saxon/regex/OpChoice;

    invoke-direct {p1, v0}, Lnet/sf/saxon/regex/OpChoice;-><init>(Ljava/util/List;)V

    :goto_2
    if-lez v4, :cond_6

    iget v0, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    iget v2, p0, Lnet/sf/saxon/regex/RECompiler;->b:I

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    int-to-long v7, v0

    invoke-virtual {v2, v7, v8}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v0

    const/16 v2, 0x29

    if-ne v0, v2, :cond_5

    iget v0, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    add-int/2addr v0, v5

    iput v0, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    goto :goto_3

    :cond_5
    const-string v0, "Missing close paren"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    :goto_3
    if-eqz v6, :cond_7

    new-instance v0, Lnet/sf/saxon/regex/OpCapture;

    invoke-direct {v0, p1, v3}, Lnet/sf/saxon/regex/OpCapture;-><init>(Lnet/sf/saxon/regex/Operation;I)V

    iget-object p0, p0, Lnet/sf/saxon/regex/RECompiler;->j:Lnet/sf/saxon/z/IntHashSet;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/z/IntHashSet;->add(I)Z

    move-object p1, v0

    goto :goto_4

    :cond_6
    new-instance p0, Lnet/sf/saxon/regex/OpEndProgram;

    invoke-direct {p0}, Lnet/sf/saxon/regex/OpEndProgram;-><init>()V

    invoke-static {p1, p0}, Lnet/sf/saxon/regex/RECompiler;->k(Lnet/sf/saxon/regex/Operation;Lnet/sf/saxon/regex/Operation;)Lnet/sf/saxon/regex/Operation;

    move-result-object p1

    :cond_7
    :goto_4
    return-object p1
.end method

.method public p([I)Lnet/sf/saxon/regex/Operation;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/regex/RESyntaxException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    iget v1, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0x24

    if-eq v0, v1, :cond_7

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7c

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_0
    iget-boolean p1, p0, Lnet/sf/saxon/regex/RECompiler;->g:Z

    if-eqz p1, :cond_9

    iget p1, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    new-instance p0, Lnet/sf/saxon/regex/OpBOL;

    invoke-direct {p0}, Lnet/sf/saxon/regex/OpBOL;-><init>()V

    invoke-static {p0}, Lnet/sf/saxon/regex/RECompiler;->t(Lnet/sf/saxon/regex/Operation;)Lnet/sf/saxon/regex/Operation;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p1, "Unexpected closing \']\'"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2
    iget p1, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/regex/RECompiler;->e(Z)Lnet/sf/saxon/regex/charclass/CharacterClass;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/regex/RECompiler$a;

    if-eqz v1, :cond_1

    check-cast v0, Lnet/sf/saxon/regex/RECompiler$a;

    invoke-virtual {v0}, Lnet/sf/saxon/regex/charclass/SingletonCharacterClass;->getCodepoint()I

    move-result p1

    iget v0, p0, Lnet/sf/saxon/regex/RECompiler;->d:I

    if-gt v0, p1, :cond_0

    const-string v0, "Bad backreference"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    :cond_0
    new-instance p0, Lnet/sf/saxon/regex/OpBackReference;

    invoke-direct {p0, p1}, Lnet/sf/saxon/regex/OpBackReference;-><init>(I)V

    invoke-static {p0}, Lnet/sf/saxon/regex/RECompiler;->t(Lnet/sf/saxon/regex/Operation;)Lnet/sf/saxon/regex/Operation;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v1, v0, Lnet/sf/saxon/z/IntSingletonSet;

    if-eqz v1, :cond_2

    iput p1, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    goto :goto_1

    :cond_2
    new-instance p0, Lnet/sf/saxon/regex/OpCharClass;

    invoke-direct {p0, v0}, Lnet/sf/saxon/regex/OpCharClass;-><init>(Lnet/sf/saxon/z/IntPredicateProxy;)V

    invoke-static {p0}, Lnet/sf/saxon/regex/RECompiler;->t(Lnet/sf/saxon/regex/Operation;)Lnet/sf/saxon/regex/Operation;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lnet/sf/saxon/regex/RECompiler;->n()Lnet/sf/saxon/regex/charclass/CharacterClass;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/regex/OpCharClass;

    invoke-direct {p1, p0}, Lnet/sf/saxon/regex/OpCharClass;-><init>(Lnet/sf/saxon/z/IntPredicateProxy;)V

    invoke-static {p1}, Lnet/sf/saxon/regex/RECompiler;->t(Lnet/sf/saxon/regex/Operation;)Lnet/sf/saxon/regex/Operation;

    move-result-object p0

    return-object p0

    :pswitch_4
    const-string p1, "Unexpected closing \')\'"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, p1}, Lnet/sf/saxon/regex/RECompiler;->o([I)Lnet/sf/saxon/regex/Operation;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/regex/RECompiler;->f()V

    goto :goto_1

    :cond_4
    :pswitch_6
    const-string p1, "No expression before quantifier"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget p1, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    iget-object p0, p0, Lnet/sf/saxon/regex/RECompiler;->l:Lnet/sf/saxon/regex/REFlags;

    invoke-virtual {p0}, Lnet/sf/saxon/regex/REFlags;->isSingleLine()Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lnet/sf/saxon/z/IntSetPredicate;->ALWAYS_TRUE:Lnet/sf/saxon/z/IntPredicateProxy;

    goto :goto_0

    :cond_6
    new-instance p0, Lcom/sunia/HTREnginev2/wbl;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/wbl;-><init>()V

    invoke-static {p0}, Lnet/sf/saxon/z/IntPredicateLambda;->of(Ljava/util/function/IntPredicate;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p0

    :goto_0
    new-instance p1, Lnet/sf/saxon/regex/OpCharClass;

    invoke-direct {p1, p0}, Lnet/sf/saxon/regex/OpCharClass;-><init>(Lnet/sf/saxon/z/IntPredicateProxy;)V

    invoke-static {p1}, Lnet/sf/saxon/regex/RECompiler;->t(Lnet/sf/saxon/regex/Operation;)Lnet/sf/saxon/regex/Operation;

    move-result-object p0

    return-object p0

    :cond_7
    iget-boolean p1, p0, Lnet/sf/saxon/regex/RECompiler;->g:Z

    if-eqz p1, :cond_9

    iget p1, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    new-instance p0, Lnet/sf/saxon/regex/OpEOL;

    invoke-direct {p0}, Lnet/sf/saxon/regex/OpEOL;-><init>()V

    invoke-static {p0}, Lnet/sf/saxon/regex/RECompiler;->t(Lnet/sf/saxon/regex/Operation;)Lnet/sf/saxon/regex/Operation;

    move-result-object p0

    return-object p0

    :cond_8
    const-string p1, "Unexpected end of input"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    :cond_9
    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/regex/RECompiler;->l()Lnet/sf/saxon/regex/Operation;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public q([I)Lnet/sf/saxon/regex/Operation;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/regex/RESyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/regex/RECompiler;->p([I)Lnet/sf/saxon/regex/Operation;

    move-result-object v2

    aget v3, p1, v0

    aget v1, v1, v0

    or-int/2addr v1, v3

    aput v1, p1, v0

    iget p1, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    iget v1, p0, Lnet/sf/saxon/regex/RECompiler;->b:I

    if-lt p1, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    int-to-long v3, p1

    invoke-virtual {v1, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result p1

    const/16 v1, 0x2b

    const/16 v3, 0x7b

    const/16 v4, 0x3f

    const/16 v5, 0x2a

    const/4 v6, 0x1

    if-eq p1, v5, :cond_1

    if-eq p1, v1, :cond_1

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_2

    goto :goto_1

    :cond_1
    iget v7, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    add-int/2addr v7, v6

    iput v7, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    const-string v7, "goto case \'{\';"

    invoke-static {v7}, Lnet/sf/saxon/transpile/CSharp;->emitCode(Ljava/lang/String;)V

    :cond_2
    if-ne p1, v3, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/regex/RECompiler;->d()V

    :cond_3
    instance-of v7, v2, Lnet/sf/saxon/regex/OpBOL;

    if-nez v7, :cond_4

    instance-of v7, v2, Lnet/sf/saxon/regex/OpEOL;

    if-eqz v7, :cond_6

    :cond_4
    if-eq p1, v4, :cond_15

    if-eq p1, v5, :cond_15

    if-ne p1, v3, :cond_5

    iget p1, p0, Lnet/sf/saxon/regex/RECompiler;->e:I

    if-nez p1, :cond_5

    goto/16 :goto_5

    :cond_5
    move p1, v0

    :cond_6
    invoke-virtual {v2}, Lnet/sf/saxon/regex/Operation;->matchesEmptyString()I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_9

    if-ne p1, v4, :cond_7

    move p1, v0

    goto :goto_1

    :cond_7
    if-ne p1, v1, :cond_8

    :goto_0
    move p1, v5

    goto :goto_1

    :cond_8
    if-ne p1, v3, :cond_9

    goto :goto_0

    :cond_9
    :goto_1
    iget v7, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    iget v8, p0, Lnet/sf/saxon/regex/RECompiler;->b:I

    if-ge v7, v8, :cond_b

    iget-object v8, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    int-to-long v9, v7

    invoke-virtual {v8, v9, v10}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v7

    if-ne v7, v4, :cond_b

    iget-boolean v7, p0, Lnet/sf/saxon/regex/RECompiler;->g:Z

    if-nez v7, :cond_a

    const-string v7, "Reluctant quantifiers are not allowed in XSD"

    invoke-virtual {p0, v7}, Lnet/sf/saxon/regex/RECompiler;->r(Ljava/lang/String;)V

    :cond_a
    iget v7, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    add-int/2addr v7, v6

    iput v7, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    move v7, v0

    goto :goto_2

    :cond_b
    move v7, v6

    :goto_2
    const v8, 0x7fffffff

    if-eq p1, v5, :cond_f

    if-eq p1, v1, :cond_e

    if-eq p1, v4, :cond_d

    if-eq p1, v3, :cond_c

    move p1, v6

    move v8, p1

    goto :goto_3

    :cond_c
    iget p1, p0, Lnet/sf/saxon/regex/RECompiler;->e:I

    iget v8, p0, Lnet/sf/saxon/regex/RECompiler;->f:I

    goto :goto_3

    :cond_d
    move p1, v0

    move v8, v6

    goto :goto_3

    :cond_e
    move p1, v6

    goto :goto_3

    :cond_f
    move p1, v0

    :goto_3
    if-nez v8, :cond_10

    new-instance p0, Lnet/sf/saxon/regex/OpNothing;

    invoke-direct {p0}, Lnet/sf/saxon/regex/OpNothing;-><init>()V

    goto :goto_4

    :cond_10
    if-ne p1, v6, :cond_11

    if-ne v8, v6, :cond_11

    return-object v2

    :cond_11
    const/4 p0, -0x1

    if-eqz v7, :cond_13

    invoke-virtual {v2}, Lnet/sf/saxon/regex/Operation;->getMatchLength()I

    move-result v0

    if-ne v0, p0, :cond_12

    new-instance p0, Lnet/sf/saxon/regex/OpRepeat;

    invoke-direct {p0, v2, p1, v8, v6}, Lnet/sf/saxon/regex/OpRepeat;-><init>(Lnet/sf/saxon/regex/Operation;IIZ)V

    invoke-static {p0}, Lnet/sf/saxon/regex/RECompiler;->t(Lnet/sf/saxon/regex/Operation;)Lnet/sf/saxon/regex/Operation;

    move-result-object p0

    goto :goto_4

    :cond_12
    new-instance p0, Lnet/sf/saxon/regex/OpGreedyFixed;

    invoke-virtual {v2}, Lnet/sf/saxon/regex/Operation;->getMatchLength()I

    move-result v0

    invoke-direct {p0, v2, p1, v8, v0}, Lnet/sf/saxon/regex/OpGreedyFixed;-><init>(Lnet/sf/saxon/regex/Operation;III)V

    goto :goto_4

    :cond_13
    invoke-virtual {v2}, Lnet/sf/saxon/regex/Operation;->getMatchLength()I

    move-result v1

    if-ne v1, p0, :cond_14

    new-instance p0, Lnet/sf/saxon/regex/OpRepeat;

    invoke-direct {p0, v2, p1, v8, v0}, Lnet/sf/saxon/regex/OpRepeat;-><init>(Lnet/sf/saxon/regex/Operation;IIZ)V

    goto :goto_4

    :cond_14
    new-instance p0, Lnet/sf/saxon/regex/OpReluctantFixed;

    invoke-virtual {v2}, Lnet/sf/saxon/regex/Operation;->getMatchLength()I

    move-result v0

    invoke-direct {p0, v2, p1, v8, v0}, Lnet/sf/saxon/regex/OpReluctantFixed;-><init>(Lnet/sf/saxon/regex/Operation;III)V

    :goto_4
    invoke-static {p0}, Lnet/sf/saxon/regex/RECompiler;->t(Lnet/sf/saxon/regex/Operation;)Lnet/sf/saxon/regex/Operation;

    move-result-object p0

    return-object p0

    :cond_15
    :goto_5
    new-instance p0, Lnet/sf/saxon/regex/OpNothing;

    invoke-direct {p0}, Lnet/sf/saxon/regex/OpNothing;-><init>()V

    return-object p0
.end method

.method public r(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/regex/RESyntaxException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/regex/RESyntaxException;

    iget p0, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    invoke-direct {v0, p1, p0}, Lnet/sf/saxon/regex/RESyntaxException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final varargs s([I)Z
    .locals 5

    iget v0, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    array-length v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lnet/sf/saxon/regex/RECompiler;->b:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lnet/sf/saxon/regex/RECompiler;->a:Lnet/sf/saxon/str/UnicodeString;

    iget v3, p0, Lnet/sf/saxon/regex/RECompiler;->c:I

    add-int/2addr v3, v0

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v1

    aget v3, p1, v0

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public setFlags(Lnet/sf/saxon/regex/REFlags;)V
    .locals 1

    iput-object p1, p0, Lnet/sf/saxon/regex/RECompiler;->l:Lnet/sf/saxon/regex/REFlags;

    invoke-virtual {p1}, Lnet/sf/saxon/regex/REFlags;->isAllowsXPath20Extensions()Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/regex/RECompiler;->g:Z

    invoke-virtual {p1}, Lnet/sf/saxon/regex/REFlags;->isAllowsXPath30Extensions()Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/regex/RECompiler;->h:Z

    invoke-virtual {p1}, Lnet/sf/saxon/regex/REFlags;->isAllowsXSD11Syntax()Z

    move-result p1

    iput-boolean p1, p0, Lnet/sf/saxon/regex/RECompiler;->i:Z

    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/regex/RECompiler;->m:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/regex/RECompiler;->m:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/regex/RECompiler;->m:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
