.class public final synthetic Lcom/sunia/HTREnginev2/s5j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/SequenceMapper$Lambda;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lnet/sf/saxon/value/IntegerValue;


# direct methods
.method public synthetic constructor <init>(ILnet/sf/saxon/value/IntegerValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/s5j;->a:I

    iput-object p2, p0, Lcom/sunia/HTREnginev2/s5j;->b:Lnet/sf/saxon/value/IntegerValue;

    return-void
.end method


# virtual methods
.method public final map(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/s5j;->a:I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/s5j;->b:Lnet/sf/saxon/value/IntegerValue;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/expr/LookupExpression;->o(ILnet/sf/saxon/value/IntegerValue;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method
