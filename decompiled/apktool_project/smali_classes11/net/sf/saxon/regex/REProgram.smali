.class public Lnet/sf/saxon/regex/REProgram;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final OPT_HASBACKREFS:I = 0x1

.field protected static final OPT_HASBOL:I = 0x2


# instance fields
.field protected backtrackingLimit:I

.field protected fixedLength:I

.field protected flags:Lnet/sf/saxon/regex/REFlags;

.field protected initialCharClass:Lnet/sf/saxon/z/IntPredicateProxy;

.field protected maxParens:I

.field protected minimumLength:I

.field protected operation:Lnet/sf/saxon/regex/Operation;

.field protected optimizationFlags:I

.field protected preconditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/regex/RegexPrecondition;",
            ">;"
        }
    .end annotation
.end field

.field protected prefix:Lnet/sf/saxon/str/UnicodeString;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/regex/Operation;ILnet/sf/saxon/regex/REFlags;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/regex/REProgram;->preconditions:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/regex/REProgram;->minimumLength:I

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/regex/REProgram;->fixedLength:I

    iput v0, p0, Lnet/sf/saxon/regex/REProgram;->maxParens:I

    iput v0, p0, Lnet/sf/saxon/regex/REProgram;->backtrackingLimit:I

    iput-object p3, p0, Lnet/sf/saxon/regex/REProgram;->flags:Lnet/sf/saxon/regex/REFlags;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/regex/REProgram;->b(Lnet/sf/saxon/regex/Operation;)V

    iput p2, p0, Lnet/sf/saxon/regex/REProgram;->maxParens:I

    return-void
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/regex/Operation;II)V
    .locals 4

    instance-of v0, p1, Lnet/sf/saxon/regex/OpAtom;

    if-nez v0, :cond_8

    instance-of v0, p1, Lnet/sf/saxon/regex/OpCharClass;

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/regex/OpRepeat;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/regex/OpRepeat;

    iget v1, v0, Lnet/sf/saxon/regex/OpRepeat;->min:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_4

    iget-object p1, v0, Lnet/sf/saxon/regex/OpRepeat;->op:Lnet/sf/saxon/regex/Operation;

    instance-of v3, p1, Lnet/sf/saxon/regex/OpAtom;

    if-nez v3, :cond_2

    instance-of v3, p1, Lnet/sf/saxon/regex/OpCharClass;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/regex/REProgram;->a(Lnet/sf/saxon/regex/Operation;II)V

    goto/16 :goto_4

    :cond_2
    :goto_0
    if-ne v1, v2, :cond_3

    iget-object p0, p0, Lnet/sf/saxon/regex/REProgram;->preconditions:Ljava/util/List;

    new-instance p1, Lnet/sf/saxon/regex/RegexPrecondition;

    invoke-direct {p1, v0, p2, p3}, Lnet/sf/saxon/regex/RegexPrecondition;-><init>(Lnet/sf/saxon/regex/Operation;II)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    new-instance v0, Lnet/sf/saxon/regex/OpRepeat;

    invoke-direct {v0, p1, v1, v1, v2}, Lnet/sf/saxon/regex/OpRepeat;-><init>(Lnet/sf/saxon/regex/Operation;IIZ)V

    iget-object p0, p0, Lnet/sf/saxon/regex/REProgram;->preconditions:Ljava/util/List;

    new-instance p1, Lnet/sf/saxon/regex/RegexPrecondition;

    invoke-direct {p1, v0, p2, p3}, Lnet/sf/saxon/regex/RegexPrecondition;-><init>(Lnet/sf/saxon/regex/Operation;II)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    instance-of v0, p1, Lnet/sf/saxon/regex/OpCapture;

    if-eqz v0, :cond_5

    check-cast p1, Lnet/sf/saxon/regex/OpCapture;

    iget-object p1, p1, Lnet/sf/saxon/regex/OpCapture;->b:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/regex/REProgram;->a(Lnet/sf/saxon/regex/Operation;II)V

    goto :goto_4

    :cond_5
    instance-of v0, p1, Lnet/sf/saxon/regex/OpSequence;

    if-eqz v0, :cond_9

    check-cast p1, Lnet/sf/saxon/regex/OpSequence;

    invoke-virtual {p1}, Lnet/sf/saxon/regex/OpSequence;->getOperations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/regex/Operation;

    instance-of v1, v0, Lnet/sf/saxon/regex/OpBOL;

    if-eqz v1, :cond_6

    const/4 p2, 0x0

    :cond_6
    invoke-virtual {p0, v0, p2, p3}, Lnet/sf/saxon/regex/REProgram;->a(Lnet/sf/saxon/regex/Operation;II)V

    const/4 v1, -0x1

    if-eq p2, v1, :cond_7

    invoke-virtual {v0}, Lnet/sf/saxon/regex/Operation;->getMatchLength()I

    move-result v2

    if-eq v2, v1, :cond_7

    invoke-virtual {v0}, Lnet/sf/saxon/regex/Operation;->getMatchLength()I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_2

    :cond_7
    move p2, v1

    :goto_2
    invoke-virtual {v0}, Lnet/sf/saxon/regex/Operation;->getMinimumMatchLength()I

    move-result v0

    add-int/2addr p3, v0

    goto :goto_1

    :cond_8
    :goto_3
    iget-object p0, p0, Lnet/sf/saxon/regex/REProgram;->preconditions:Ljava/util/List;

    new-instance v0, Lnet/sf/saxon/regex/RegexPrecondition;

    invoke-direct {v0, p1, p2, p3}, Lnet/sf/saxon/regex/RegexPrecondition;-><init>(Lnet/sf/saxon/regex/Operation;II)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_4
    return-void
.end method

.method public final b(Lnet/sf/saxon/regex/Operation;)V
    .locals 3

    iput-object p1, p0, Lnet/sf/saxon/regex/REProgram;->operation:Lnet/sf/saxon/regex/Operation;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/regex/REProgram;->optimizationFlags:I

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sf/saxon/regex/REProgram;->prefix:Lnet/sf/saxon/str/UnicodeString;

    iget-object v1, p0, Lnet/sf/saxon/regex/REProgram;->flags:Lnet/sf/saxon/regex/REFlags;

    invoke-virtual {p1, p0, v1}, Lnet/sf/saxon/regex/Operation;->optimize(Lnet/sf/saxon/regex/REProgram;Lnet/sf/saxon/regex/REFlags;)Lnet/sf/saxon/regex/Operation;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/regex/REProgram;->operation:Lnet/sf/saxon/regex/Operation;

    instance-of v1, p1, Lnet/sf/saxon/regex/OpSequence;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lnet/sf/saxon/regex/OpSequence;

    invoke-virtual {v1}, Lnet/sf/saxon/regex/OpSequence;->getOperations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/regex/Operation;

    instance-of v2, v1, Lnet/sf/saxon/regex/OpBOL;

    if-eqz v2, :cond_0

    iget v1, p0, Lnet/sf/saxon/regex/REProgram;->optimizationFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lnet/sf/saxon/regex/REProgram;->optimizationFlags:I

    goto :goto_0

    :cond_0
    instance-of v2, v1, Lnet/sf/saxon/regex/OpAtom;

    if-eqz v2, :cond_1

    check-cast v1, Lnet/sf/saxon/regex/OpAtom;

    invoke-virtual {v1}, Lnet/sf/saxon/regex/OpAtom;->a()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/regex/REProgram;->prefix:Lnet/sf/saxon/str/UnicodeString;

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lnet/sf/saxon/regex/OpCharClass;

    if-eqz v2, :cond_2

    check-cast v1, Lnet/sf/saxon/regex/OpCharClass;

    invoke-virtual {v1}, Lnet/sf/saxon/regex/OpCharClass;->getPredicate()Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/regex/REProgram;->initialCharClass:Lnet/sf/saxon/z/IntPredicateProxy;

    :cond_2
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Lnet/sf/saxon/regex/REProgram;->a(Lnet/sf/saxon/regex/Operation;II)V

    :cond_3
    invoke-virtual {p1}, Lnet/sf/saxon/regex/Operation;->getMinimumMatchLength()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/regex/REProgram;->minimumLength:I

    invoke-virtual {p1}, Lnet/sf/saxon/regex/Operation;->getMatchLength()I

    move-result p1

    iput p1, p0, Lnet/sf/saxon/regex/REProgram;->fixedLength:I

    return-void
.end method

.method public getBacktrackingLimit()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/regex/REProgram;->backtrackingLimit:I

    return p0
.end method

.method public getPrefix()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/regex/REProgram;->prefix:Lnet/sf/saxon/str/UnicodeString;

    return-object p0
.end method

.method public isNullable()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/regex/REProgram;->operation:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {p0}, Lnet/sf/saxon/regex/Operation;->matchesEmptyString()I

    move-result p0

    and-int/lit8 p0, p0, 0x7

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setBacktrackingLimit(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/regex/REProgram;->backtrackingLimit:I

    return-void
.end method
