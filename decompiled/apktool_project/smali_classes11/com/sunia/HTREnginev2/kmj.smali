.class public final synthetic Lcom/sunia/HTREnginev2/kmj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ItemMapper$Lambda;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/expr/sort/MergeInstr;

.field public final synthetic b:Lnet/sf/saxon/lib/ParseOptions;

.field public final synthetic c:Lnet/sf/saxon/expr/XPathContextMajor;

.field public final synthetic d:Lnet/sf/saxon/expr/accum/AccumulatorManager;

.field public final synthetic e:Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/expr/accum/AccumulatorManager;Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kmj;->a:Lnet/sf/saxon/expr/sort/MergeInstr;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/kmj;->b:Lnet/sf/saxon/lib/ParseOptions;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/kmj;->c:Lnet/sf/saxon/expr/XPathContextMajor;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/kmj;->d:Lnet/sf/saxon/expr/accum/AccumulatorManager;

    iput-object p5, p0, Lcom/sunia/HTREnginev2/kmj;->e:Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    return-void
.end method


# virtual methods
.method public final map(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/kmj;->a:Lnet/sf/saxon/expr/sort/MergeInstr;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/kmj;->b:Lnet/sf/saxon/lib/ParseOptions;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/kmj;->c:Lnet/sf/saxon/expr/XPathContextMajor;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/kmj;->d:Lnet/sf/saxon/expr/accum/AccumulatorManager;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/kmj;->e:Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lnet/sf/saxon/expr/sort/MergeInstr;->g(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/expr/accum/AccumulatorManager;Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method
