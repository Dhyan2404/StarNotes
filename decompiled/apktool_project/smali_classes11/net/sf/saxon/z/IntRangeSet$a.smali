.class public Lnet/sf/saxon/z/IntRangeSet$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/z/IntIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/z/IntRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/z/IntRangeSet;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/z/IntRangeSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/z/IntRangeSet$a;->a:Lnet/sf/saxon/z/IntRangeSet;

    const/4 p1, -0x1

    iput p1, p0, Lnet/sf/saxon/z/IntRangeSet$a;->b:I

    const/high16 p1, -0x80000000

    iput p1, p0, Lnet/sf/saxon/z/IntRangeSet$a;->c:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    iget v0, p0, Lnet/sf/saxon/z/IntRangeSet$a;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/z/IntRangeSet$a;->a:Lnet/sf/saxon/z/IntRangeSet;

    invoke-static {p0}, Lnet/sf/saxon/z/IntRangeSet;->a(Lnet/sf/saxon/z/IntRangeSet;)I

    move-result p0

    if-lez p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lnet/sf/saxon/z/IntRangeSet$a;->c:I

    iget-object v3, p0, Lnet/sf/saxon/z/IntRangeSet$a;->a:Lnet/sf/saxon/z/IntRangeSet;

    invoke-static {v3}, Lnet/sf/saxon/z/IntRangeSet;->b(Lnet/sf/saxon/z/IntRangeSet;)[I

    move-result-object v3

    iget-object p0, p0, Lnet/sf/saxon/z/IntRangeSet$a;->a:Lnet/sf/saxon/z/IntRangeSet;

    invoke-static {p0}, Lnet/sf/saxon/z/IntRangeSet;->c(Lnet/sf/saxon/z/IntRangeSet;)I

    move-result p0

    sub-int/2addr p0, v2

    aget p0, v3, p0

    if-ge v0, p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public next()I
    .locals 3

    iget v0, p0, Lnet/sf/saxon/z/IntRangeSet$a;->b:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/z/IntRangeSet$a;->b:I

    iget-object v1, p0, Lnet/sf/saxon/z/IntRangeSet$a;->a:Lnet/sf/saxon/z/IntRangeSet;

    invoke-static {v1}, Lnet/sf/saxon/z/IntRangeSet;->d(Lnet/sf/saxon/z/IntRangeSet;)[I

    move-result-object v1

    aget v0, v1, v0

    iput v0, p0, Lnet/sf/saxon/z/IntRangeSet$a;->c:I

    return v0

    :cond_0
    iget v0, p0, Lnet/sf/saxon/z/IntRangeSet$a;->c:I

    iget-object v1, p0, Lnet/sf/saxon/z/IntRangeSet$a;->a:Lnet/sf/saxon/z/IntRangeSet;

    invoke-static {v1}, Lnet/sf/saxon/z/IntRangeSet;->b(Lnet/sf/saxon/z/IntRangeSet;)[I

    move-result-object v1

    iget v2, p0, Lnet/sf/saxon/z/IntRangeSet$a;->b:I

    aget v1, v1, v2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeSet$a;->a:Lnet/sf/saxon/z/IntRangeSet;

    invoke-static {v0}, Lnet/sf/saxon/z/IntRangeSet;->d(Lnet/sf/saxon/z/IntRangeSet;)[I

    move-result-object v0

    iget v1, p0, Lnet/sf/saxon/z/IntRangeSet$a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/saxon/z/IntRangeSet$a;->b:I

    aget v0, v0, v1

    iput v0, p0, Lnet/sf/saxon/z/IntRangeSet$a;->c:I

    return v0

    :cond_1
    iget v0, p0, Lnet/sf/saxon/z/IntRangeSet$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/z/IntRangeSet$a;->c:I

    return v0
.end method
