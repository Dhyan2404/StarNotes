.class public Lnet/sf/saxon/regex/OpChoice$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/z/IntIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/regex/OpChoice;->iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/regex/Operation;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lnet/sf/saxon/z/IntIterator;

.field public c:Lnet/sf/saxon/regex/Operation;

.field public final synthetic d:Lnet/sf/saxon/regex/REMatcher;

.field public final synthetic e:I

.field public final synthetic f:Lnet/sf/saxon/regex/OpChoice;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/regex/OpChoice;Lnet/sf/saxon/regex/REMatcher;I)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/regex/OpChoice$a;->f:Lnet/sf/saxon/regex/OpChoice;

    iput-object p2, p0, Lnet/sf/saxon/regex/OpChoice$a;->d:Lnet/sf/saxon/regex/REMatcher;

    iput p3, p0, Lnet/sf/saxon/regex/OpChoice$a;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lnet/sf/saxon/regex/OpChoice;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/regex/OpChoice$a;->a:Ljava/util/Iterator;

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sf/saxon/regex/OpChoice$a;->b:Lnet/sf/saxon/z/IntIterator;

    iput-object p1, p0, Lnet/sf/saxon/regex/OpChoice$a;->c:Lnet/sf/saxon/regex/Operation;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/regex/OpChoice$a;->b:Lnet/sf/saxon/z/IntIterator;

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/regex/OpChoice$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/regex/OpChoice$a;->d:Lnet/sf/saxon/regex/REMatcher;

    iget v1, p0, Lnet/sf/saxon/regex/OpChoice$a;->e:I

    invoke-virtual {v0, v1}, Lnet/sf/saxon/regex/REMatcher;->clearCapturedGroupsBeyond(I)V

    iget-object v0, p0, Lnet/sf/saxon/regex/OpChoice$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/regex/Operation;

    iput-object v0, p0, Lnet/sf/saxon/regex/OpChoice$a;->c:Lnet/sf/saxon/regex/Operation;

    iget-object v1, p0, Lnet/sf/saxon/regex/OpChoice$a;->d:Lnet/sf/saxon/regex/REMatcher;

    iget v2, p0, Lnet/sf/saxon/regex/OpChoice$a;->e:I

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/regex/Operation;->iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/regex/OpChoice$a;->b:Lnet/sf/saxon/z/IntIterator;

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_1
    iget-object v0, p0, Lnet/sf/saxon/regex/OpChoice$a;->b:Lnet/sf/saxon/z/IntIterator;

    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/regex/OpChoice$a;->b:Lnet/sf/saxon/z/IntIterator;

    goto :goto_0
.end method

.method public next()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/regex/OpChoice$a;->b:Lnet/sf/saxon/z/IntIterator;

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result p0

    return p0
.end method
