.class public Lnet/sf/saxon/trans/SimpleMode$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/trans/SimpleMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Lnet/sf/saxon/trace/ExpressionPresenter;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/trans/SimpleMode$b;->b:Lnet/sf/saxon/trace/ExpressionPresenter;

    return-void
.end method


# virtual methods
.method public end()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/SimpleMode$b;->b:Lnet/sf/saxon/trace/ExpressionPresenter;

    invoke-virtual {p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/SimpleMode$b;->a:Ljava/lang/String;

    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode$b;->b:Lnet/sf/saxon/trace/ExpressionPresenter;

    const-string v1, "ruleSet"

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode$b;->b:Lnet/sf/saxon/trace/ExpressionPresenter;

    const-string v1, "type"

    iget-object p0, p0, Lnet/sf/saxon/trans/SimpleMode$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public start(I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode$b;->b:Lnet/sf/saxon/trace/ExpressionPresenter;

    const-string v1, "ruleChain"

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    .line 4
    iget-object p0, p0, Lnet/sf/saxon/trans/SimpleMode$b;->b:Lnet/sf/saxon/trace/ExpressionPresenter;

    invoke-virtual {p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/om/NamePool;->getClarkName(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "key"

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
