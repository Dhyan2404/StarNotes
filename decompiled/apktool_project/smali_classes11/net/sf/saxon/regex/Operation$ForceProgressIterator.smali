.class public Lnet/sf/saxon/regex/Operation$ForceProgressIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/z/IntIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/regex/Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForceProgressIterator"
.end annotation


# instance fields
.field public final a:Lnet/sf/saxon/z/IntIterator;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/z/IntIterator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/regex/Operation$ForceProgressIterator;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/regex/Operation$ForceProgressIterator;->c:I

    iput-object p1, p0, Lnet/sf/saxon/regex/Operation$ForceProgressIterator;->a:Lnet/sf/saxon/z/IntIterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lnet/sf/saxon/regex/Operation$ForceProgressIterator;->b:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/regex/Operation$ForceProgressIterator;->a:Lnet/sf/saxon/z/IntIterator;

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()I
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/regex/Operation$ForceProgressIterator;->a:Lnet/sf/saxon/z/IntIterator;

    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v0

    iget v1, p0, Lnet/sf/saxon/regex/Operation$ForceProgressIterator;->c:I

    if-ne v0, v1, :cond_0

    iget v1, p0, Lnet/sf/saxon/regex/Operation$ForceProgressIterator;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/saxon/regex/Operation$ForceProgressIterator;->b:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lnet/sf/saxon/regex/Operation$ForceProgressIterator;->b:I

    iput v0, p0, Lnet/sf/saxon/regex/Operation$ForceProgressIterator;->c:I

    :goto_0
    return v0
.end method
