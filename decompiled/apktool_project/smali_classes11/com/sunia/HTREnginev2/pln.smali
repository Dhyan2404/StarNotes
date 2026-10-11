.class public final synthetic Lcom/sunia/HTREnginev2/pln;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/s9api/Action;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/functions/TransformFn$c;

.field public final synthetic b:Lnet/sf/saxon/s9api/XdmDestination;

.field public final synthetic c:Ljava/net/URI;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/functions/TransformFn$c;Lnet/sf/saxon/s9api/XdmDestination;Ljava/net/URI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pln;->a:Lnet/sf/saxon/functions/TransformFn$c;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/pln;->b:Lnet/sf/saxon/s9api/XdmDestination;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/pln;->c:Ljava/net/URI;

    return-void
.end method


# virtual methods
.method public final act()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/pln;->a:Lnet/sf/saxon/functions/TransformFn$c;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/pln;->b:Lnet/sf/saxon/s9api/XdmDestination;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pln;->c:Ljava/net/URI;

    invoke-static {v0, v1, p0}, Lnet/sf/saxon/functions/TransformFn$c;->l(Lnet/sf/saxon/functions/TransformFn$c;Lnet/sf/saxon/s9api/XdmDestination;Ljava/net/URI;)V

    return-void
.end method
