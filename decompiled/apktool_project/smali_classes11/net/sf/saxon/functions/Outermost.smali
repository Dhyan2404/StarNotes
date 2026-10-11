.class public Lnet/sf/saxon/functions/Outermost;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/Outermost$a;
    }
.end annotation


# instance fields
.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/functions/Outermost;->h:Z

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p1, 0x0

    aget-object p1, p2, p1

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    iget-boolean p2, p0, Lnet/sf/saxon/functions/Outermost;->h:Z

    if-nez p2, :cond_0

    new-instance p2, Lnet/sf/saxon/expr/sort/DocumentOrderIterator;

    invoke-static {}, Lnet/sf/saxon/expr/sort/GlobalOrderComparer;->getInstance()Lnet/sf/saxon/expr/sort/GlobalOrderComparer;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lnet/sf/saxon/expr/sort/DocumentOrderIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Ljava/util/Comparator;)V

    move-object p1, p2

    :cond_0
    new-instance p2, Lnet/sf/saxon/functions/Outermost$a;

    invoke-direct {p2, p0, p1}, Lnet/sf/saxon/functions/Outermost$a;-><init>(Lnet/sf/saxon/functions/Outermost;Lnet/sf/saxon/om/SequenceIterator;)V

    invoke-static {p2}, Lnet/sf/saxon/om/SequenceTool;->toLazySequence(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public exportAttributes(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1

    invoke-super {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->exportAttributes(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    iget-boolean p0, p0, Lnet/sf/saxon/functions/Outermost;->h:Z

    if-eqz p0, :cond_0

    const-string p0, "flags"

    const-string v0, "p"

    invoke-virtual {p1, p0, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getSpecialProperties([Lnet/sf/saxon/expr/Expression;)I
    .locals 0

    const/high16 p0, 0xa0000

    return p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "Outermost"

    return-object p0
.end method

.method public importAttributes(Ljava/util/Properties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->importAttributes(Ljava/util/Properties;)V

    const-string v0, "flags"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/saxon/functions/Outermost;->h:Z

    :cond_0
    return-void
.end method

.method public varargs makeOptimizedFunctionCall(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p1, 0x0

    aget-object p2, p3, p1

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result p2

    const/high16 v0, 0x80000

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    aget-object p0, p3, p1

    return-object p0

    :cond_0
    aget-object p2, p3, p1

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result p2

    const/high16 p3, 0x20000

    and-int/2addr p2, p3

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    :cond_1
    iput-boolean p1, p0, Lnet/sf/saxon/functions/Outermost;->h:Z

    const/4 p0, 0x0

    return-object p0
.end method
