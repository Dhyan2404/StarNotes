.class public Lnet/sf/saxon/expr/UnionIterator$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/UnionIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lnet/sf/saxon/expr/UnionIterator$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-",
            "Lnet/sf/saxon/om/NodeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-",
            "Lnet/sf/saxon/om/NodeInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/UnionIterator$b;->e:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public a(Lnet/sf/saxon/expr/UnionIterator$a;Lnet/sf/saxon/expr/UnionIterator$a;)I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/UnionIterator$b;->e:Ljava/util/Comparator;

    iget-object p1, p1, Lnet/sf/saxon/expr/UnionIterator$a;->b:Lnet/sf/saxon/om/NodeInfo;

    iget-object p2, p2, Lnet/sf/saxon/expr/UnionIterator$a;->b:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lnet/sf/saxon/expr/UnionIterator$a;

    check-cast p2, Lnet/sf/saxon/expr/UnionIterator$a;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/UnionIterator$b;->a(Lnet/sf/saxon/expr/UnionIterator$a;Lnet/sf/saxon/expr/UnionIterator$a;)I

    move-result p0

    return p0
.end method
