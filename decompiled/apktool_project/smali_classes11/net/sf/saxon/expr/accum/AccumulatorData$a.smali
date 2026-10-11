.class public Lnet/sf/saxon/expr/accum/AccumulatorData$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/accum/AccumulatorData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/expr/accum/AccumulatorData$b;

.field public b:Lnet/sf/saxon/om/Sequence;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/accum/AccumulatorData$b;Lnet/sf/saxon/om/Sequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/accum/AccumulatorData$a;->a:Lnet/sf/saxon/expr/accum/AccumulatorData$b;

    iput-object p2, p0, Lnet/sf/saxon/expr/accum/AccumulatorData$a;->b:Lnet/sf/saxon/om/Sequence;

    return-void
.end method
