.class public final synthetic Lcom/sunia/HTREnginev2/lni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ItemMapper$Lambda;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/functions/IntegratedFunctionCall;

.field public final synthetic b:Lnet/sf/saxon/type/ItemType;

.field public final synthetic c:Lnet/sf/saxon/type/TypeHierarchy;

.field public final synthetic d:Lnet/sf/saxon/expr/parser/RoleDiagnostic;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/functions/IntegratedFunctionCall;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/TypeHierarchy;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lni;->a:Lnet/sf/saxon/functions/IntegratedFunctionCall;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/lni;->b:Lnet/sf/saxon/type/ItemType;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/lni;->c:Lnet/sf/saxon/type/TypeHierarchy;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/lni;->d:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    return-void
.end method


# virtual methods
.method public final map(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lni;->a:Lnet/sf/saxon/functions/IntegratedFunctionCall;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/lni;->b:Lnet/sf/saxon/type/ItemType;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/lni;->c:Lnet/sf/saxon/type/TypeHierarchy;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lni;->d:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-static {v0, v1, v2, p0, p1}, Lnet/sf/saxon/functions/IntegratedFunctionCall;->d(Lnet/sf/saxon/functions/IntegratedFunctionCall;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/TypeHierarchy;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method
