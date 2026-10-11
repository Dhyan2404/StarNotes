.class public final synthetic Lcom/sunia/HTREnginev2/vwf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/ItemConsumer;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/sxpath/IndependentContext;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/sxpath/IndependentContext;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vwf;->a:Lnet/sf/saxon/sxpath/IndependentContext;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/vwf;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Lnet/sf/saxon/om/Item;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vwf;->a:Lnet/sf/saxon/sxpath/IndependentContext;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vwf;->b:Ljava/util/Map;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->g(Lnet/sf/saxon/sxpath/IndependentContext;Ljava/util/Map;Lnet/sf/saxon/om/Item;)V

    return-void
.end method
