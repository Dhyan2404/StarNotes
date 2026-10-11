.class public Lnet/sf/saxon/tree/util/Navigator$AxisFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AxisIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/tree/util/Navigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AxisFilter"
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/tree/iter/AxisIterator;

.field public final f:Lnet/sf/saxon/pattern/NodePredicate;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/pattern/NodePredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;->e:Lnet/sf/saxon/tree/iter/AxisIterator;

    iput-object p2, p0, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;->f:Lnet/sf/saxon/pattern/NodePredicate;

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/NodeInfo;
    .locals 2

    .line 2
    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;->e:Lnet/sf/saxon/tree/iter/AxisIterator;

    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;->f:Lnet/sf/saxon/pattern/NodePredicate;

    invoke-interface {v1, v0}, Lnet/sf/saxon/pattern/NodePredicate;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method
