.class public Lnet/sf/saxon/regex/OpRepeat$b;
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
.field public a:I

.field public b:I

.field public final synthetic c:I

.field public final synthetic d:Lnet/sf/saxon/regex/REMatcher;

.field public final synthetic e:Lnet/sf/saxon/regex/OpRepeat;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/regex/OpRepeat;ILnet/sf/saxon/regex/REMatcher;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/regex/OpRepeat$b;->e:Lnet/sf/saxon/regex/OpRepeat;

    iput p2, p0, Lnet/sf/saxon/regex/OpRepeat$b;->c:I

    iput-object p3, p0, Lnet/sf/saxon/regex/OpRepeat$b;->d:Lnet/sf/saxon/regex/REMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lnet/sf/saxon/regex/OpRepeat$b;->a:I

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/regex/OpRepeat$b;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/regex/OpRepeat$b;->e:Lnet/sf/saxon/regex/OpRepeat;

    iget-object v0, v0, Lnet/sf/saxon/regex/OpRepeat;->op:Lnet/sf/saxon/regex/Operation;

    iget-object v1, p0, Lnet/sf/saxon/regex/OpRepeat$b;->d:Lnet/sf/saxon/regex/REMatcher;

    iget v2, p0, Lnet/sf/saxon/regex/OpRepeat$b;->a:I

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/regex/Operation;->iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/regex/OpRepeat$b;->a:I

    iget v0, p0, Lnet/sf/saxon/regex/OpRepeat$b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/regex/OpRepeat$b;->b:I

    iget-object v1, p0, Lnet/sf/saxon/regex/OpRepeat$b;->e:Lnet/sf/saxon/regex/OpRepeat;

    iget v1, v1, Lnet/sf/saxon/regex/OpRepeat;->max:I

    if-le v0, v1, :cond_2

    iput v2, p0, Lnet/sf/saxon/regex/OpRepeat$b;->a:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/regex/OpRepeat$b;->e:Lnet/sf/saxon/regex/OpRepeat;

    iget v0, v0, Lnet/sf/saxon/regex/OpRepeat;->min:I

    if-nez v0, :cond_1

    iget v0, p0, Lnet/sf/saxon/regex/OpRepeat$b;->b:I

    if-nez v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/regex/OpRepeat$b;->b:I

    goto :goto_0

    :cond_1
    iput v2, p0, Lnet/sf/saxon/regex/OpRepeat$b;->a:I

    :cond_2
    :goto_0
    return-void
.end method

.method public hasNext()Z
    .locals 2

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/regex/OpRepeat$b;->a()V

    iget v0, p0, Lnet/sf/saxon/regex/OpRepeat$b;->b:I

    iget-object v1, p0, Lnet/sf/saxon/regex/OpRepeat$b;->e:Lnet/sf/saxon/regex/OpRepeat;

    iget v1, v1, Lnet/sf/saxon/regex/OpRepeat;->min:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lnet/sf/saxon/regex/OpRepeat$b;->a:I

    if-gez v0, :cond_0

    :cond_1
    iget p0, p0, Lnet/sf/saxon/regex/OpRepeat$b;->a:I

    if-ltz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/regex/OpRepeat$b;->a:I

    return p0
.end method
