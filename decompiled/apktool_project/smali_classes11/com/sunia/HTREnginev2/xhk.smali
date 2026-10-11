.class public final synthetic Lcom/sunia/HTREnginev2/xhk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/expr/flwor/OrderByClausePull;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/expr/flwor/OrderByClausePull;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xhk;->e:Lnet/sf/saxon/expr/flwor/OrderByClausePull;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xhk;->e:Lnet/sf/saxon/expr/flwor/OrderByClausePull;

    check-cast p1, Lnet/sf/saxon/expr/sort/ItemToBeSorted;

    check-cast p2, Lnet/sf/saxon/expr/sort/ItemToBeSorted;

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/expr/flwor/OrderByClausePull;->a(Lnet/sf/saxon/expr/flwor/OrderByClausePull;Lnet/sf/saxon/expr/sort/ItemToBeSorted;Lnet/sf/saxon/expr/sort/ItemToBeSorted;)I

    move-result p0

    return p0
.end method
