.class public final synthetic Lcom/sunia/HTREnginev2/u5j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/SequenceMapper$Lambda;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/value/AtomicValue;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/value/AtomicValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/u5j;->a:Lnet/sf/saxon/value/AtomicValue;

    return-void
.end method


# virtual methods
.method public final map(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/u5j;->a:Lnet/sf/saxon/value/AtomicValue;

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/LookupExpression;->j(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method
