.class public final synthetic Lcom/sunia/HTREnginev2/nqk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/Action;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/functions/hof/CoercedFunction;

.field public final synthetic b:Lnet/sf/saxon/trans/PackageLoaderHE;

.field public final synthetic c:Lnet/sf/saxon/trans/SymbolicName;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/functions/hof/CoercedFunction;Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/trans/SymbolicName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nqk;->a:Lnet/sf/saxon/functions/hof/CoercedFunction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/nqk;->b:Lnet/sf/saxon/trans/PackageLoaderHE;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/nqk;->c:Lnet/sf/saxon/trans/SymbolicName;

    return-void
.end method


# virtual methods
.method public final doAction()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/nqk;->a:Lnet/sf/saxon/functions/hof/CoercedFunction;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/nqk;->b:Lnet/sf/saxon/trans/PackageLoaderHE;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nqk;->c:Lnet/sf/saxon/trans/SymbolicName;

    invoke-static {v0, v1, p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->m(Lnet/sf/saxon/functions/hof/CoercedFunction;Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/trans/SymbolicName;)V

    return-void
.end method
