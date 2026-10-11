.class public Lnet/sf/saxon/expr/accum/AccumulatorData$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/accum/AccumulatorData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnet/sf/saxon/expr/accum/AccumulatorData$b;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Lnet/sf/saxon/om/NodeInfo;

.field public f:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NodeInfo;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/accum/AccumulatorData$b;->e:Lnet/sf/saxon/om/NodeInfo;

    iput-boolean p2, p0, Lnet/sf/saxon/expr/accum/AccumulatorData$b;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lnet/sf/saxon/expr/accum/AccumulatorData$b;)I
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/expr/accum/AccumulatorData$b;->e:Lnet/sf/saxon/om/NodeInfo;

    iget-object v1, p1, Lnet/sf/saxon/expr/accum/AccumulatorData$b;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-static {v0, v1}, Lnet/sf/saxon/tree/util/Navigator;->comparePosition(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    const/4 v3, 0x4

    if-eq v0, v3, :cond_5

    const/4 v3, 0x6

    if-eq v0, v3, :cond_4

    const/16 v3, 0xa

    if-eq v0, v3, :cond_3

    const/16 v3, 0xc

    if-ne v0, v3, :cond_2

    iget-boolean p0, p0, Lnet/sf/saxon/expr/accum/AccumulatorData$b;->f:Z

    iget-boolean p1, p1, Lnet/sf/saxon/expr/accum/AccumulatorData$b;->f:Z

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_3
    return v1

    :cond_4
    return v2

    :cond_5
    iget-boolean p0, p1, Lnet/sf/saxon/expr/accum/AccumulatorData$b;->f:Z

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    move v1, v2

    :goto_0
    return v1

    :cond_7
    iget-boolean p0, p0, Lnet/sf/saxon/expr/accum/AccumulatorData$b;->f:Z

    if-eqz p0, :cond_8

    move v1, v2

    :cond_8
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lnet/sf/saxon/expr/accum/AccumulatorData$b;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/accum/AccumulatorData$b;->a(Lnet/sf/saxon/expr/accum/AccumulatorData$b;)I

    move-result p0

    return p0
.end method
