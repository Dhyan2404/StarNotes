.class public Lnet/sf/saxon/z/IntArraySet$IntArrayIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/z/IntIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/z/IntArraySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntArrayIterator"
.end annotation


# instance fields
.field public final a:[I

.field public final b:I

.field public c:I


# direct methods
.method public constructor <init>([II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/z/IntArraySet$IntArrayIterator;->c:I

    iput-object p1, p0, Lnet/sf/saxon/z/IntArraySet$IntArrayIterator;->a:[I

    iput p2, p0, Lnet/sf/saxon/z/IntArraySet$IntArrayIterator;->b:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lnet/sf/saxon/z/IntArraySet$IntArrayIterator;->c:I

    iget p0, p0, Lnet/sf/saxon/z/IntArraySet$IntArrayIterator;->b:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()I
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/z/IntArraySet$IntArrayIterator;->a:[I

    iget v1, p0, Lnet/sf/saxon/z/IntArraySet$IntArrayIterator;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/sf/saxon/z/IntArraySet$IntArrayIterator;->c:I

    aget p0, v0, v1

    return p0
.end method
