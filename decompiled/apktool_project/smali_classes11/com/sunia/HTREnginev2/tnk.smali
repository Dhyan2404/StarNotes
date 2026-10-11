.class public final synthetic Lcom/sunia/HTREnginev2/tnk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/Action;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/functions/SystemFunction;

.field public final synthetic b:[Lnet/sf/saxon/expr/Expression;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tnk;->a:Lnet/sf/saxon/functions/SystemFunction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/tnk;->b:[Lnet/sf/saxon/expr/Expression;

    return-void
.end method


# virtual methods
.method public final doAction()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tnk;->a:Lnet/sf/saxon/functions/SystemFunction;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tnk;->b:[Lnet/sf/saxon/expr/Expression;

    invoke-static {v0, p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->A0(Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method
