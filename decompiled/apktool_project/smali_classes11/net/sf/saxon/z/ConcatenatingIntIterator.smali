.class public Lnet/sf/saxon/z/ConcatenatingIntIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/z/IntIterator;


# instance fields
.field public a:Lnet/sf/saxon/z/IntIterator;

.field public b:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lnet/sf/saxon/z/IntIterator;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lnet/sf/saxon/z/IntIterator;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/z/IntIterator;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/z/IntIterator;",
            "Ljava/util/function/Supplier<",
            "Lnet/sf/saxon/z/IntIterator;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/z/ConcatenatingIntIterator;->a:Lnet/sf/saxon/z/IntIterator;

    iput-object p2, p0, Lnet/sf/saxon/z/ConcatenatingIntIterator;->b:Ljava/util/function/Supplier;

    iput-object p1, p0, Lnet/sf/saxon/z/ConcatenatingIntIterator;->c:Lnet/sf/saxon/z/IntIterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/z/ConcatenatingIntIterator;->c:Lnet/sf/saxon/z/IntIterator;

    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/z/ConcatenatingIntIterator;->c:Lnet/sf/saxon/z/IntIterator;

    iget-object v1, p0, Lnet/sf/saxon/z/ConcatenatingIntIterator;->a:Lnet/sf/saxon/z/IntIterator;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/z/ConcatenatingIntIterator;->a:Lnet/sf/saxon/z/IntIterator;

    iget-object v0, p0, Lnet/sf/saxon/z/ConcatenatingIntIterator;->b:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/z/IntIterator;

    iput-object v0, p0, Lnet/sf/saxon/z/ConcatenatingIntIterator;->c:Lnet/sf/saxon/z/IntIterator;

    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public next()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/z/ConcatenatingIntIterator;->c:Lnet/sf/saxon/z/IntIterator;

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result p0

    return p0
.end method
