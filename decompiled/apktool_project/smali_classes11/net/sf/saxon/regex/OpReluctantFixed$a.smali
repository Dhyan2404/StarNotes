.class public Lnet/sf/saxon/regex/OpReluctantFixed$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/z/IntIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/regex/OpReluctantFixed;->iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public final synthetic d:I

.field public final synthetic e:Lnet/sf/saxon/regex/REMatcher;

.field public final synthetic f:Lnet/sf/saxon/regex/OpReluctantFixed;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/regex/OpReluctantFixed;ILnet/sf/saxon/regex/REMatcher;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/regex/OpReluctantFixed$a;->f:Lnet/sf/saxon/regex/OpReluctantFixed;

    iput p2, p0, Lnet/sf/saxon/regex/OpReluctantFixed$a;->d:I

    iput-object p3, p0, Lnet/sf/saxon/regex/OpReluctantFixed$a;->e:Lnet/sf/saxon/regex/REMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lnet/sf/saxon/regex/OpReluctantFixed$a;->a:I

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/regex/OpReluctantFixed$a;->b:I

    iput-boolean p1, p0, Lnet/sf/saxon/regex/OpReluctantFixed$a;->c:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    iget-boolean v0, p0, Lnet/sf/saxon/regex/OpReluctantFixed$a;->c:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lnet/sf/saxon/regex/OpReluctantFixed$a;->c:Z

    :goto_0
    iget v0, p0, Lnet/sf/saxon/regex/OpReluctantFixed$a;->b:I

    iget-object v3, p0, Lnet/sf/saxon/regex/OpReluctantFixed$a;->f:Lnet/sf/saxon/regex/OpReluctantFixed;

    iget v4, v3, Lnet/sf/saxon/regex/OpRepeat;->min:I

    if-ge v0, v4, :cond_1

    iget-object v0, v3, Lnet/sf/saxon/regex/OpRepeat;->op:Lnet/sf/saxon/regex/Operation;

    iget-object v3, p0, Lnet/sf/saxon/regex/OpReluctantFixed$a;->e:Lnet/sf/saxon/regex/REMatcher;

    iget v4, p0, Lnet/sf/saxon/regex/OpReluctantFixed$a;->a:I

    invoke-virtual {v0, v3, v4}, Lnet/sf/saxon/regex/Operation;->iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/regex/OpReluctantFixed$a;->a:I

    iget v0, p0, Lnet/sf/saxon/regex/OpReluctantFixed$a;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lnet/sf/saxon/regex/OpReluctantFixed$a;->b:I

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    iget v0, p0, Lnet/sf/saxon/regex/OpReluctantFixed$a;->b:I

    iget-object v3, p0, Lnet/sf/saxon/regex/OpReluctantFixed$a;->f:Lnet/sf/saxon/regex/OpReluctantFixed;

    iget v3, v3, Lnet/sf/saxon/regex/OpRepeat;->max:I

    if-ge v0, v3, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/regex/OpReluctantFixed$a;->e:Lnet/sf/saxon/regex/REMatcher;

    iget v3, p0, Lnet/sf/saxon/regex/OpReluctantFixed$a;->a:I

    invoke-virtual {v0, v3}, Lnet/sf/saxon/regex/REMatcher;->clearCapturedGroupsBeyond(I)V

    iget-object v0, p0, Lnet/sf/saxon/regex/OpReluctantFixed$a;->f:Lnet/sf/saxon/regex/OpReluctantFixed;

    iget-object v0, v0, Lnet/sf/saxon/regex/OpRepeat;->op:Lnet/sf/saxon/regex/Operation;

    iget-object v3, p0, Lnet/sf/saxon/regex/OpReluctantFixed$a;->e:Lnet/sf/saxon/regex/REMatcher;

    iget v4, p0, Lnet/sf/saxon/regex/OpReluctantFixed$a;->a:I

    invoke-virtual {v0, v3, v4}, Lnet/sf/saxon/regex/Operation;->iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/regex/OpReluctantFixed$a;->a:I

    iget v0, p0, Lnet/sf/saxon/regex/OpReluctantFixed$a;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lnet/sf/saxon/regex/OpReluctantFixed$a;->b:I

    return v2

    :cond_3
    return v1
.end method

.method public next()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/regex/OpReluctantFixed$a;->a:I

    return p0
.end method
