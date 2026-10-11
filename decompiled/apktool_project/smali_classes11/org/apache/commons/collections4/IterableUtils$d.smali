.class public final Lorg/apache/commons/collections4/IterableUtils$d;
.super Lorg/apache/commons/collections4/FluentIterable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections4/IterableUtils;->zippingIterable(Ljava/lang/Iterable;[Ljava/lang/Iterable;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/FluentIterable<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:[Ljava/lang/Iterable;

.field public final synthetic g:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>([Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/collections4/IterableUtils$d;->f:[Ljava/lang/Iterable;

    iput-object p2, p0, Lorg/apache/commons/collections4/IterableUtils$d;->g:Ljava/lang/Iterable;

    invoke-direct {p0}, Lorg/apache/commons/collections4/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/IterableUtils$d;->f:[Ljava/lang/Iterable;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/util/Iterator;

    iget-object v1, p0, Lorg/apache/commons/collections4/IterableUtils$d;->g:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections4/IterableUtils$d;->f:[Ljava/lang/Iterable;

    array-length v3, v1

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    aput-object v1, v0, v3

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/apache/commons/collections4/IteratorUtils;->zippingIterator([Ljava/util/Iterator;)Lorg/apache/commons/collections4/iterators/ZippingIterator;

    move-result-object p0

    return-object p0
.end method
