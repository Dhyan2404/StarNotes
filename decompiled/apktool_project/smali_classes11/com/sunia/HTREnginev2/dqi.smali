.class public final synthetic Lcom/sunia/HTREnginev2/dqi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/expr/ItemChecker;

.field public final synthetic f:Lnet/sf/saxon/type/TypeHierarchy;

.field public final synthetic g:Lnet/sf/saxon/expr/Expression;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/expr/ItemChecker;Lnet/sf/saxon/type/TypeHierarchy;Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/dqi;->e:Lnet/sf/saxon/expr/ItemChecker;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/dqi;->f:Lnet/sf/saxon/type/TypeHierarchy;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/dqi;->g:Lnet/sf/saxon/expr/Expression;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/dqi;->e:Lnet/sf/saxon/expr/ItemChecker;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/dqi;->f:Lnet/sf/saxon/type/TypeHierarchy;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/dqi;->g:Lnet/sf/saxon/expr/Expression;

    check-cast p1, Lnet/sf/saxon/om/Item;

    invoke-static {v0, v1, p0, p1}, Lnet/sf/saxon/expr/ItemChecker;->d(Lnet/sf/saxon/expr/ItemChecker;Lnet/sf/saxon/type/TypeHierarchy;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/Item;)V

    return-void
.end method
