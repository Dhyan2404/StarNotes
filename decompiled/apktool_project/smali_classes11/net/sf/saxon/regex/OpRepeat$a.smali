.class public Lnet/sf/saxon/regex/OpRepeat$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/z/IntIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/regex/OpRepeat;->iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Ljava/util/Stack;

.field public final synthetic c:Ljava/util/Stack;

.field public final synthetic d:I

.field public final synthetic e:Lnet/sf/saxon/regex/REMatcher;

.field public final synthetic f:Lnet/sf/saxon/regex/OpRepeat;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/regex/OpRepeat;Ljava/util/Stack;Ljava/util/Stack;ILnet/sf/saxon/regex/REMatcher;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/regex/OpRepeat$a;->f:Lnet/sf/saxon/regex/OpRepeat;

    iput-object p2, p0, Lnet/sf/saxon/regex/OpRepeat$a;->b:Ljava/util/Stack;

    iput-object p3, p0, Lnet/sf/saxon/regex/OpRepeat$a;->c:Ljava/util/Stack;

    iput p4, p0, Lnet/sf/saxon/regex/OpRepeat$a;->d:I

    iput-object p5, p0, Lnet/sf/saxon/regex/OpRepeat$a;->e:Lnet/sf/saxon/regex/REMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/saxon/regex/OpRepeat$a;->a:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/regex/OpRepeat$a;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/z/IntIterator;

    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v0

    iget-object v1, p0, Lnet/sf/saxon/regex/OpRepeat$a;->c:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v1, p0, Lnet/sf/saxon/regex/OpRepeat$a;->c:Ljava/util/Stack;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v1, p0, Lnet/sf/saxon/regex/OpRepeat$a;->b:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    iget v2, p0, Lnet/sf/saxon/regex/OpRepeat$a;->d:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/regex/OpRepeat$a;->f:Lnet/sf/saxon/regex/OpRepeat;

    iget-object v1, v1, Lnet/sf/saxon/regex/OpRepeat;->op:Lnet/sf/saxon/regex/Operation;

    iget-object v2, p0, Lnet/sf/saxon/regex/OpRepeat$a;->e:Lnet/sf/saxon/regex/REMatcher;

    invoke-virtual {v1, v2, v0}, Lnet/sf/saxon/regex/Operation;->iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v1

    iget-object v2, p0, Lnet/sf/saxon/regex/OpRepeat$a;->b:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lnet/sf/saxon/regex/OpRepeat$a;->c:Ljava/util/Stack;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/regex/OpRepeat$a;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object p0, p0, Lnet/sf/saxon/regex/OpRepeat$a;->c:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public hasNext()Z
    .locals 2

    iget-boolean v0, p0, Lnet/sf/saxon/regex/OpRepeat$a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/regex/OpRepeat$a;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    iget-object v1, p0, Lnet/sf/saxon/regex/OpRepeat$a;->f:Lnet/sf/saxon/regex/OpRepeat;

    iget v1, v1, Lnet/sf/saxon/regex/OpRepeat;->min:I

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/regex/OpRepeat$a;->b:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/regex/OpRepeat$a;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/regex/OpRepeat$a;->a()V

    iget-object v0, p0, Lnet/sf/saxon/regex/OpRepeat$a;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    iget-object v1, p0, Lnet/sf/saxon/regex/OpRepeat$a;->f:Lnet/sf/saxon/regex/OpRepeat;

    iget v1, v1, Lnet/sf/saxon/regex/OpRepeat;->min:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/regex/OpRepeat$a;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    iget-object p0, p0, Lnet/sf/saxon/regex/OpRepeat$a;->b:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public next()I
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/regex/OpRepeat$a;->a:Z

    iget-object p0, p0, Lnet/sf/saxon/regex/OpRepeat$a;->c:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
