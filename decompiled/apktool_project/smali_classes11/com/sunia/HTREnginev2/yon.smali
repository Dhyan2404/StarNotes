.class public final synthetic Lcom/sunia/HTREnginev2/yon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ItemMapper$Lambda;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/type/TypeHierarchy;

.field public final synthetic b:Lnet/sf/saxon/expr/parser/RoleDiagnostic;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/type/TypeHierarchy;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yon;->a:Lnet/sf/saxon/type/TypeHierarchy;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/yon;->b:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    return-void
.end method


# virtual methods
.method public final map(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yon;->a:Lnet/sf/saxon/type/TypeHierarchy;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yon;->b:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/type/TypeHierarchy;->d(Lnet/sf/saxon/type/TypeHierarchy;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method
