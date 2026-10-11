.class public final synthetic Lcom/sunia/HTREnginev2/uwf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lnet/sf/saxon/expr/XPathContext;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/uwf;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/uwf;->f:Lnet/sf/saxon/expr/XPathContext;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/uwf;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uwf;->f:Lnet/sf/saxon/expr/XPathContext;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lnet/sf/saxon/s9api/Location;

    invoke-static {v0, p0, p1, p2}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->e(Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    return-void
.end method
