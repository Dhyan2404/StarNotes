.class public Lnet/sf/saxon/z/IntHashSet$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/z/IntIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/z/IntHashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lnet/sf/saxon/z/IntHashSet;

.field public b:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/z/IntHashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/z/IntHashSet$a;->a:Lnet/sf/saxon/z/IntHashSet;

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/z/IntHashSet$a;->b:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    :goto_0
    iget v0, p0, Lnet/sf/saxon/z/IntHashSet$a;->b:I

    iget-object v1, p0, Lnet/sf/saxon/z/IntHashSet$a;->a:Lnet/sf/saxon/z/IntHashSet;

    invoke-static {v1}, Lnet/sf/saxon/z/IntHashSet;->a(Lnet/sf/saxon/z/IntHashSet;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/z/IntHashSet$a;->a:Lnet/sf/saxon/z/IntHashSet;

    invoke-static {v0}, Lnet/sf/saxon/z/IntHashSet;->a(Lnet/sf/saxon/z/IntHashSet;)[I

    move-result-object v0

    iget v1, p0, Lnet/sf/saxon/z/IntHashSet$a;->b:I

    aget v0, v0, v1

    iget-object v1, p0, Lnet/sf/saxon/z/IntHashSet$a;->a:Lnet/sf/saxon/z/IntHashSet;

    invoke-static {v1}, Lnet/sf/saxon/z/IntHashSet;->b(Lnet/sf/saxon/z/IntHashSet;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lnet/sf/saxon/z/IntHashSet$a;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lnet/sf/saxon/z/IntHashSet$a;->b:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public next()I
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/z/IntHashSet$a;->a:Lnet/sf/saxon/z/IntHashSet;

    invoke-static {v0}, Lnet/sf/saxon/z/IntHashSet;->a(Lnet/sf/saxon/z/IntHashSet;)[I

    move-result-object v0

    iget v1, p0, Lnet/sf/saxon/z/IntHashSet$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/sf/saxon/z/IntHashSet$a;->b:I

    aget p0, v0, v1

    return p0
.end method
