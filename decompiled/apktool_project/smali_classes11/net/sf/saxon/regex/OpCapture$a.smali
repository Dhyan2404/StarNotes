.class public Lnet/sf/saxon/regex/OpCapture$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/z/IntIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/regex/OpCapture;->iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnet/sf/saxon/z/IntIterator;

.field public final synthetic b:Lnet/sf/saxon/regex/REMatcher;

.field public final synthetic c:I

.field public final synthetic d:Lnet/sf/saxon/regex/OpCapture;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/regex/OpCapture;Lnet/sf/saxon/z/IntIterator;Lnet/sf/saxon/regex/REMatcher;I)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/regex/OpCapture$a;->d:Lnet/sf/saxon/regex/OpCapture;

    iput-object p2, p0, Lnet/sf/saxon/regex/OpCapture$a;->a:Lnet/sf/saxon/z/IntIterator;

    iput-object p3, p0, Lnet/sf/saxon/regex/OpCapture$a;->b:Lnet/sf/saxon/regex/REMatcher;

    iput p4, p0, Lnet/sf/saxon/regex/OpCapture$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/regex/OpCapture$a;->a:Lnet/sf/saxon/z/IntIterator;

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()I
    .locals 5

    iget-object v0, p0, Lnet/sf/saxon/regex/OpCapture$a;->a:Lnet/sf/saxon/z/IntIterator;

    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v0

    iget-object v1, p0, Lnet/sf/saxon/regex/OpCapture$a;->d:Lnet/sf/saxon/regex/OpCapture;

    iget v1, v1, Lnet/sf/saxon/regex/OpCapture;->a:I

    iget-object v2, p0, Lnet/sf/saxon/regex/OpCapture$a;->b:Lnet/sf/saxon/regex/REMatcher;

    iget-object v3, v2, Lnet/sf/saxon/regex/REMatcher;->e:Lnet/sf/saxon/regex/REMatcher$State;

    iget v4, v3, Lnet/sf/saxon/regex/REMatcher$State;->a:I

    if-lt v1, v4, :cond_0

    add-int/lit8 v4, v1, 0x1

    iput v4, v3, Lnet/sf/saxon/regex/REMatcher$State;->a:I

    :cond_0
    iget v3, p0, Lnet/sf/saxon/regex/OpCapture$a;->c:I

    invoke-virtual {v2, v1, v3}, Lnet/sf/saxon/regex/REMatcher;->setParenStart(II)V

    iget-object v1, p0, Lnet/sf/saxon/regex/OpCapture$a;->b:Lnet/sf/saxon/regex/REMatcher;

    iget-object v2, p0, Lnet/sf/saxon/regex/OpCapture$a;->d:Lnet/sf/saxon/regex/OpCapture;

    iget v2, v2, Lnet/sf/saxon/regex/OpCapture;->a:I

    invoke-virtual {v1, v2, v0}, Lnet/sf/saxon/regex/REMatcher;->setParenEnd(II)V

    iget-object v1, p0, Lnet/sf/saxon/regex/OpCapture$a;->b:Lnet/sf/saxon/regex/REMatcher;

    iget-object v2, v1, Lnet/sf/saxon/regex/REMatcher;->a:Lnet/sf/saxon/regex/REProgram;

    iget v2, v2, Lnet/sf/saxon/regex/REProgram;->optimizationFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v2, v1, Lnet/sf/saxon/regex/REMatcher;->f:[I

    iget-object v3, p0, Lnet/sf/saxon/regex/OpCapture$a;->d:Lnet/sf/saxon/regex/OpCapture;

    iget v3, v3, Lnet/sf/saxon/regex/OpCapture;->a:I

    iget p0, p0, Lnet/sf/saxon/regex/OpCapture$a;->c:I

    aput p0, v2, v3

    iget-object p0, v1, Lnet/sf/saxon/regex/REMatcher;->g:[I

    aput v0, p0, v3

    :cond_1
    return v0
.end method
