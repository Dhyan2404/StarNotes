.class public Lnet/sf/saxon/expr/sort/ObjectToBeSorted;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public originalPosition:I

.field public sortKeyValues:[Lnet/sf/saxon/value/AtomicValue;

.field public value:Lnet/sf/saxon/om/Item;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [Lnet/sf/saxon/value/AtomicValue;

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/ObjectToBeSorted;->sortKeyValues:[Lnet/sf/saxon/value/AtomicValue;

    return-void
.end method
