.class public final synthetic Lcom/sunia/HTREnginev2/qln;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/s9api/Action;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/functions/TransformFn$d;

.field public final synthetic b:Lnet/sf/saxon/s9api/RawDestination;

.field public final synthetic c:Ljava/net/URI;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/functions/TransformFn$d;Lnet/sf/saxon/s9api/RawDestination;Ljava/net/URI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qln;->a:Lnet/sf/saxon/functions/TransformFn$d;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/qln;->b:Lnet/sf/saxon/s9api/RawDestination;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/qln;->c:Ljava/net/URI;

    return-void
.end method


# virtual methods
.method public final act()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/qln;->a:Lnet/sf/saxon/functions/TransformFn$d;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/qln;->b:Lnet/sf/saxon/s9api/RawDestination;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qln;->c:Ljava/net/URI;

    invoke-static {v0, v1, p0}, Lnet/sf/saxon/functions/TransformFn$d;->l(Lnet/sf/saxon/functions/TransformFn$d;Lnet/sf/saxon/s9api/RawDestination;Ljava/net/URI;)V

    return-void
.end method
