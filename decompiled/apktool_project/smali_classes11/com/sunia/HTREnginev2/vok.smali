.class public final synthetic Lcom/sunia/HTREnginev2/vok;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/Action;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/expr/instruct/UserFunction;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/expr/instruct/UserFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vok;->a:Lnet/sf/saxon/expr/instruct/UserFunction;

    return-void
.end method


# virtual methods
.method public final doAction()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vok;->a:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-static {p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->e(Lnet/sf/saxon/expr/instruct/UserFunction;)V

    return-void
.end method
