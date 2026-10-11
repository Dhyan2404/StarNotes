.class public final Lnet/sf/saxon/expr/FilterIterator$NonNumeric;
.super Lnet/sf/saxon/expr/FilterIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/FilterIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NonNumeric"
.end annotation


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/expr/FilterIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)V

    return-void
.end method


# virtual methods
.method public matches()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/FilterIterator;->filter:Lnet/sf/saxon/expr/Expression;

    iget-object p0, p0, Lnet/sf/saxon/expr/FilterIterator;->filterContext:Lnet/sf/saxon/expr/XPathContext;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/Expression;->effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    return p0
.end method
