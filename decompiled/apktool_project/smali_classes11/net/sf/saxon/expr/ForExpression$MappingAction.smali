.class public Lnet/sf/saxon/expr/ForExpression$MappingAction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/MappingFunction;
.implements Lnet/sf/saxon/expr/ItemMappingFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/ForExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MappingAction"
.end annotation


# instance fields
.field protected context:Lnet/sf/saxon/expr/XPathContext;

.field public final e:I

.field public final f:Lnet/sf/saxon/expr/Expression;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/XPathContext;ILnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/ForExpression$MappingAction;->context:Lnet/sf/saxon/expr/XPathContext;

    iput p2, p0, Lnet/sf/saxon/expr/ForExpression$MappingAction;->e:I

    iput-object p3, p0, Lnet/sf/saxon/expr/ForExpression$MappingAction;->f:Lnet/sf/saxon/expr/Expression;

    return-void
.end method


# virtual methods
.method public map(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/ForExpression$MappingAction;->context:Lnet/sf/saxon/expr/XPathContext;

    iget v1, p0, Lnet/sf/saxon/expr/ForExpression$MappingAction;->e:I

    invoke-interface {v0, v1, p1}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    iget-object p1, p0, Lnet/sf/saxon/expr/ForExpression$MappingAction;->f:Lnet/sf/saxon/expr/Expression;

    iget-object p0, p0, Lnet/sf/saxon/expr/ForExpression$MappingAction;->context:Lnet/sf/saxon/expr/XPathContext;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public mapItem(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/ForExpression$MappingAction;->context:Lnet/sf/saxon/expr/XPathContext;

    iget v1, p0, Lnet/sf/saxon/expr/ForExpression$MappingAction;->e:I

    invoke-interface {v0, v1, p1}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    iget-object p1, p0, Lnet/sf/saxon/expr/ForExpression$MappingAction;->f:Lnet/sf/saxon/expr/Expression;

    iget-object p0, p0, Lnet/sf/saxon/expr/ForExpression$MappingAction;->context:Lnet/sf/saxon/expr/XPathContext;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method
