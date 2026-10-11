.class public final Lorg/apache/commons/collections4/IterableUtils$h;
.super Lorg/apache/commons/collections4/FluentIterable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections4/IterableUtils;->collatedIterable(Ljava/util/Comparator;Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;
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
.field public final synthetic f:Ljava/util/Comparator;

.field public final synthetic g:Ljava/lang/Iterable;

.field public final synthetic h:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/collections4/IterableUtils$h;->f:Ljava/util/Comparator;

    iput-object p2, p0, Lorg/apache/commons/collections4/IterableUtils$h;->g:Ljava/lang/Iterable;

    iput-object p3, p0, Lorg/apache/commons/collections4/IterableUtils$h;->h:Ljava/lang/Iterable;

    invoke-direct {p0}, Lorg/apache/commons/collections4/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/IterableUtils$h;->f:Ljava/util/Comparator;

    iget-object v1, p0, Lorg/apache/commons/collections4/IterableUtils$h;->g:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object p0, p0, Lorg/apache/commons/collections4/IterableUtils$h;->h:Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lorg/apache/commons/collections4/IteratorUtils;->collatedIterator(Ljava/util/Comparator;Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
