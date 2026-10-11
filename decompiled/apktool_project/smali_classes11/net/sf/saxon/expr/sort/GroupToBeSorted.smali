.class public Lnet/sf/saxon/expr/sort/GroupToBeSorted;
.super Lnet/sf/saxon/expr/sort/ObjectToBeSorted;
.source "SourceFile"


# instance fields
.field public currentGroup:Lnet/sf/saxon/om/MemoSequence;

.field public currentGroupingKey:Lnet/sf/saxon/om/AtomicSequence;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/sort/ObjectToBeSorted;-><init>(I)V

    return-void
.end method
