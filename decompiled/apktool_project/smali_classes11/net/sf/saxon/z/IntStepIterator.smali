.class public Lnet/sf/saxon/z/IntStepIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/z/IntIterator;


# instance fields
.field public a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/sf/saxon/z/IntStepIterator;->a:I

    iput p2, p0, Lnet/sf/saxon/z/IntStepIterator;->b:I

    iput p3, p0, Lnet/sf/saxon/z/IntStepIterator;->c:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    iget v0, p0, Lnet/sf/saxon/z/IntStepIterator;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget v0, p0, Lnet/sf/saxon/z/IntStepIterator;->a:I

    iget p0, p0, Lnet/sf/saxon/z/IntStepIterator;->c:I

    if-gt v0, p0, :cond_1

    goto :goto_0

    :cond_0
    iget v0, p0, Lnet/sf/saxon/z/IntStepIterator;->a:I

    iget p0, p0, Lnet/sf/saxon/z/IntStepIterator;->c:I

    if-lt v0, p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public next()I
    .locals 2

    iget v0, p0, Lnet/sf/saxon/z/IntStepIterator;->a:I

    iget v1, p0, Lnet/sf/saxon/z/IntStepIterator;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lnet/sf/saxon/z/IntStepIterator;->a:I

    return v0
.end method
