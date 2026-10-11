.class public final synthetic Lcom/sunia/HTREnginev2/umd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/expr/XPathContext;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/umd;->e:Lnet/sf/saxon/expr/XPathContext;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/umd;->e:Lnet/sf/saxon/expr/XPathContext;

    invoke-static {p0}, Lnet/sf/saxon/functions/hof/CallableWithBoundFocus;->a(Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
