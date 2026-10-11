.class public Lnet/sf/saxon/expr/accum/AccumulatorRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/trans/rules/RuleTarget;


# instance fields
.field public final e:Lnet/sf/saxon/expr/Expression;

.field public final f:Lnet/sf/saxon/expr/instruct/SlotManager;

.field public final g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/SlotManager;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/accum/AccumulatorRule;->e:Lnet/sf/saxon/expr/Expression;

    iput-object p2, p0, Lnet/sf/saxon/expr/accum/AccumulatorRule;->f:Lnet/sf/saxon/expr/instruct/SlotManager;

    iput-boolean p3, p0, Lnet/sf/saxon/expr/accum/AccumulatorRule;->g:Z

    return-void
.end method


# virtual methods
.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/accum/AccumulatorRule;->e:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    return-void
.end method

.method public getNewValueExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/accum/AccumulatorRule;->e:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/accum/AccumulatorRule;->f:Lnet/sf/saxon/expr/instruct/SlotManager;

    return-object p0
.end method

.method public isCapturing()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/accum/AccumulatorRule;->h:Z

    return p0
.end method

.method public isPostDescent()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/accum/AccumulatorRule;->g:Z

    return p0
.end method

.method public registerRule(Lnet/sf/saxon/trans/rules/Rule;)V
    .locals 0

    return-void
.end method

.method public setCapturing(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/accum/AccumulatorRule;->h:Z

    return-void
.end method
