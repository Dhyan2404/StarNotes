.class public final synthetic Lcom/sunia/HTREnginev2/snk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/Action;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/expr/Expression;

.field public final synthetic b:[Lnet/sf/saxon/expr/Expression;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/snk;->a:Lnet/sf/saxon/expr/Expression;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/snk;->b:[Lnet/sf/saxon/expr/Expression;

    return-void
.end method


# virtual methods
.method public final doAction()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/snk;->a:Lnet/sf/saxon/expr/Expression;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/snk;->b:[Lnet/sf/saxon/expr/Expression;

    invoke-static {v0, p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->D1(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method
