.class public Lnet/sf/saxon/tree/iter/NodeWrappingAxisIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AxisIterator;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/sf/saxon/tree/iter/AxisIterator;",
        "Lnet/sf/saxon/tree/iter/LookaheadIterator;"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TB;>;"
        }
    .end annotation
.end field

.field public final f:Lnet/sf/saxon/tree/iter/NodeWrappingFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/tree/iter/NodeWrappingFunction<",
            "-TB;",
            "Lnet/sf/saxon/om/NodeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lnet/sf/saxon/tree/iter/NodeWrappingFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TB;>;",
            "Lnet/sf/saxon/tree/iter/NodeWrappingFunction<",
            "-TB;",
            "Lnet/sf/saxon/om/NodeInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/iter/NodeWrappingAxisIterator;->e:Ljava/util/Iterator;

    iput-object p2, p0, Lnet/sf/saxon/tree/iter/NodeWrappingAxisIterator;->f:Lnet/sf/saxon/tree/iter/NodeWrappingFunction;

    return-void
.end method


# virtual methods
.method public getBaseIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+TB;>;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/NodeWrappingAxisIterator;->e:Ljava/util/Iterator;

    return-object p0
.end method

.method public getNodeWrappingFunction()Lnet/sf/saxon/tree/iter/NodeWrappingFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/tree/iter/NodeWrappingFunction<",
            "-TB;",
            "Lnet/sf/saxon/om/NodeInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/NodeWrappingAxisIterator;->f:Lnet/sf/saxon/tree/iter/NodeWrappingFunction;

    return-object p0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/NodeWrappingAxisIterator;->e:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public isIgnorable(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/NodeWrappingAxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/NodeInfo;
    .locals 2

    .line 2
    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/iter/NodeWrappingAxisIterator;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lnet/sf/saxon/tree/iter/NodeWrappingAxisIterator;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/iter/NodeWrappingAxisIterator;->isIgnorable(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object p0, p0, Lnet/sf/saxon/tree/iter/NodeWrappingAxisIterator;->f:Lnet/sf/saxon/tree/iter/NodeWrappingFunction;

    invoke-interface {p0, v0}, Lnet/sf/saxon/tree/iter/NodeWrappingFunction;->wrap(Ljava/lang/Object;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public supportsHasNext()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
