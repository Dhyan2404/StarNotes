.class public Lnet/sf/saxon/tree/util/Navigator$ChildrenAsIterable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/tree/util/Navigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildrenAsIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lnet/sf/saxon/om/NodeInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/om/NodeInfo;

.field public f:Lnet/sf/saxon/pattern/NodePredicate;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NodeInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/sf/saxon/tree/util/Navigator$ChildrenAsIterable;->f:Lnet/sf/saxon/pattern/NodePredicate;

    .line 3
    iput-object p1, p0, Lnet/sf/saxon/tree/util/Navigator$ChildrenAsIterable;->e:Lnet/sf/saxon/om/NodeInfo;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodePredicate;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lnet/sf/saxon/tree/util/Navigator$ChildrenAsIterable;->e:Lnet/sf/saxon/om/NodeInfo;

    .line 6
    iput-object p2, p0, Lnet/sf/saxon/tree/util/Navigator$ChildrenAsIterable;->f:Lnet/sf/saxon/pattern/NodePredicate;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/om/NodeInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/tree/util/Navigator$ChildrenAsIterable;->f:Lnet/sf/saxon/pattern/NodePredicate;

    const/4 v1, 0x3

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/tree/util/Navigator$ChildrenAsIterable;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0, v1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/util/Navigator$ChildrenAsIterable;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    :goto_0
    new-instance v0, Lnet/sf/saxon/tree/jiter/WrappingJavaIterator;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/jiter/WrappingJavaIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    return-object v0
.end method
