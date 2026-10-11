.class public final synthetic Lcom/sunia/HTREnginev2/b3g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/om/StructuredQName;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/b3g;->e:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/b3g;->e:Lnet/sf/saxon/om/StructuredQName;

    check-cast p1, Lnet/sf/saxon/expr/Expression;

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->c(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    return p0
.end method
