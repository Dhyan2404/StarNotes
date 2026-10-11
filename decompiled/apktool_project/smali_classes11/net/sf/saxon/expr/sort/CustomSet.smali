.class public Lnet/sf/saxon/expr/sort/CustomSet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lnet/sf/saxon/z/IntHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/z/IntHashMap<",
            "Lcom/sunia/HTREnginev2/noe<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final b:Lnet/sf/saxon/expr/sort/EqualityMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/expr/sort/EqualityMatcher<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/sort/EqualityMatcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/sort/EqualityMatcher<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/sf/saxon/z/IntHashMap;

    invoke-direct {v0}, Lnet/sf/saxon/z/IntHashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/CustomSet;->a:Lnet/sf/saxon/z/IntHashMap;

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/CustomSet;->b:Lnet/sf/saxon/expr/sort/EqualityMatcher;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/CustomSet;->b:Lnet/sf/saxon/expr/sort/EqualityMatcher;

    invoke-interface {v0, p1}, Lnet/sf/saxon/expr/sort/EqualityMatcher;->hash(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/CustomSet;->a:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/noe;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    new-instance v1, Lcom/sunia/HTREnginev2/noe;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/noe;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/CustomSet;->a:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/expr/sort/CustomSet;->b:Lnet/sf/saxon/expr/sort/EqualityMatcher;

    iget-object v3, v1, Lcom/sunia/HTREnginev2/noe;->a:Ljava/lang/Object;

    invoke-interface {v0, v3, p1}, Lnet/sf/saxon/expr/sort/EqualityMatcher;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v0, v1, Lcom/sunia/HTREnginev2/noe;->b:Lcom/sunia/HTREnginev2/noe;

    if-nez v0, :cond_2

    new-instance p0, Lcom/sunia/HTREnginev2/noe;

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/noe;-><init>(Ljava/lang/Object;)V

    iput-object p0, v1, Lcom/sunia/HTREnginev2/noe;->b:Lcom/sunia/HTREnginev2/noe;

    return v2

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/CustomSet;->b:Lnet/sf/saxon/expr/sort/EqualityMatcher;

    invoke-interface {v0, p1}, Lnet/sf/saxon/expr/sort/EqualityMatcher;->hash(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/CustomSet;->a:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/noe;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lnet/sf/saxon/expr/sort/CustomSet;->b:Lnet/sf/saxon/expr/sort/EqualityMatcher;

    iget-object v3, v0, Lcom/sunia/HTREnginev2/noe;->a:Ljava/lang/Object;

    invoke-interface {v2, v3, p1}, Lnet/sf/saxon/expr/sort/EqualityMatcher;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object v0, v0, Lcom/sunia/HTREnginev2/noe;->b:Lcom/sunia/HTREnginev2/noe;

    if-nez v0, :cond_0

    return v1
.end method
