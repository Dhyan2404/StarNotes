.class public Lnet/sf/saxon/tree/jiter/ConcatenatingIterable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public e:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+TE;>;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/jiter/ConcatenatingIterable;->e:Ljava/lang/Iterable;

    iput-object p2, p0, Lnet/sf/saxon/tree/jiter/ConcatenatingIterable;->f:Ljava/lang/Iterable;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/tree/jiter/ConcatenatingIterable;)Ljava/util/Iterator;
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/tree/jiter/ConcatenatingIterable;->b()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private synthetic b()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/jiter/ConcatenatingIterable;->f:Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/tree/jiter/ConcatenatingIterator;

    iget-object v1, p0, Lnet/sf/saxon/tree/jiter/ConcatenatingIterable;->e:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/y7e;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/y7e;-><init>(Lnet/sf/saxon/tree/jiter/ConcatenatingIterable;)V

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/tree/jiter/ConcatenatingIterator;-><init>(Ljava/util/Iterator;Ljava/util/function/Supplier;)V

    return-object v0
.end method
