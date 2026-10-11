.class public Lnet/sf/saxon/expr/instruct/BlockIterator;
.super Lnet/sf/saxon/expr/instruct/AbstractBlockIterator;
.source "SourceFile"


# instance fields
.field public final f:[Lnet/sf/saxon/expr/Operand;


# direct methods
.method public constructor <init>([Lnet/sf/saxon/expr/Operand;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 1

    array-length v0, p1

    invoke-direct {p0, v0, p2}, Lnet/sf/saxon/expr/instruct/AbstractBlockIterator;-><init>(ILnet/sf/saxon/expr/XPathContext;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/BlockIterator;->f:[Lnet/sf/saxon/expr/Operand;

    return-void
.end method


# virtual methods
.method public getNthChildIterator(I)Lnet/sf/saxon/om/SequenceIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/BlockIterator;->f:[Lnet/sf/saxon/expr/Operand;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/AbstractBlockIterator;->context:Lnet/sf/saxon/expr/XPathContext;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method
