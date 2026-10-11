.class public final Lorg/apache/commons/collections4/IterableUtils$i;
.super Lorg/apache/commons/collections4/FluentIterable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections4/IterableUtils;->filteredIterable(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Ljava/lang/Iterable;
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
.field public final synthetic f:Ljava/lang/Iterable;

.field public final synthetic g:Lorg/apache/commons/collections4/Predicate;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/collections4/IterableUtils$i;->f:Ljava/lang/Iterable;

    iput-object p2, p0, Lorg/apache/commons/collections4/IterableUtils$i;->g:Lorg/apache/commons/collections4/Predicate;

    invoke-direct {p0}, Lorg/apache/commons/collections4/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/IterableUtils$i;->f:Ljava/lang/Iterable;

    invoke-static {v0}, Lorg/apache/commons/collections4/IterableUtils;->a(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/commons/collections4/IterableUtils$i;->g:Lorg/apache/commons/collections4/Predicate;

    invoke-static {v0, p0}, Lorg/apache/commons/collections4/IteratorUtils;->filteredIterator(Ljava/util/Iterator;Lorg/apache/commons/collections4/Predicate;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
