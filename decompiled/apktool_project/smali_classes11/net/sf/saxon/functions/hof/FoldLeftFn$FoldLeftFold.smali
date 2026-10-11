.class public Lnet/sf/saxon/functions/hof/FoldLeftFn$FoldLeftFold;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/functions/Fold;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/hof/FoldLeftFn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FoldLeftFold"
.end annotation


# instance fields
.field public final a:Lnet/sf/saxon/expr/XPathContext;

.field public final b:Lnet/sf/saxon/om/Function;

.field public c:Lnet/sf/saxon/om/Sequence;

.field public d:I

.field public final synthetic e:Lnet/sf/saxon/functions/hof/FoldLeftFn;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/functions/hof/FoldLeftFn;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/om/Function;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/functions/hof/FoldLeftFn$FoldLeftFold;->e:Lnet/sf/saxon/functions/hof/FoldLeftFn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/sf/saxon/functions/hof/FoldLeftFn$FoldLeftFold;->a:Lnet/sf/saxon/expr/XPathContext;

    iput-object p4, p0, Lnet/sf/saxon/functions/hof/FoldLeftFn$FoldLeftFold;->b:Lnet/sf/saxon/om/Function;

    iput-object p3, p0, Lnet/sf/saxon/functions/hof/FoldLeftFn$FoldLeftFold;->c:Lnet/sf/saxon/om/Sequence;

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/functions/hof/FoldLeftFn$FoldLeftFold;->d:I

    return-void
.end method


# virtual methods
.method public isFinished()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public processItem(Lnet/sf/saxon/om/Item;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/sf/saxon/om/Sequence;

    const/4 v1, 0x0

    iget-object v2, p0, Lnet/sf/saxon/functions/hof/FoldLeftFn$FoldLeftFold;->c:Lnet/sf/saxon/om/Sequence;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    iget-object p1, p0, Lnet/sf/saxon/functions/hof/FoldLeftFn$FoldLeftFold;->b:Lnet/sf/saxon/om/Function;

    iget-object v1, p0, Lnet/sf/saxon/functions/hof/FoldLeftFn$FoldLeftFold;->a:Lnet/sf/saxon/expr/XPathContext;

    invoke-static {p1, v1, v0}, Lnet/sf/saxon/functions/SystemFunction;->dynamicCall(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p1

    iget v0, p0, Lnet/sf/saxon/functions/hof/FoldLeftFn$FoldLeftFold;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/sf/saxon/functions/hof/FoldLeftFn$FoldLeftFold;->d:I

    rem-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/functions/hof/FoldLeftFn$FoldLeftFold;->c:Lnet/sf/saxon/om/Sequence;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lnet/sf/saxon/functions/hof/FoldLeftFn$FoldLeftFold;->c:Lnet/sf/saxon/om/Sequence;

    :goto_0
    return-void
.end method

.method public result()Lnet/sf/saxon/om/Sequence;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/FoldLeftFn$FoldLeftFold;->c:Lnet/sf/saxon/om/Sequence;

    return-object p0
.end method
