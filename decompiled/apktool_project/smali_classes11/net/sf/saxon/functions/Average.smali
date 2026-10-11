.class public Lnet/sf/saxon/functions/Average;
.super Lnet/sf/saxon/functions/FoldingFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/Average$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/FoldingFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardinality([Lnet/sf/saxon/expr/Expression;)I
    .locals 1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, 0x4000

    return p0

    :cond_0
    invoke-super {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->getCardinality([Lnet/sf/saxon/expr/Expression;)I

    move-result p0

    return p0
.end method

.method public varargs getFold(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/Fold;
    .locals 0

    new-instance p2, Lnet/sf/saxon/functions/Average$a;

    invoke-direct {p2, p0, p1}, Lnet/sf/saxon/functions/Average$a;-><init>(Lnet/sf/saxon/functions/Average;Lnet/sf/saxon/expr/XPathContext;)V

    return-object p2
.end method
