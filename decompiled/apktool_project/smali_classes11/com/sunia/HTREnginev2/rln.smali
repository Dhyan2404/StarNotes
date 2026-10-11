.class public final synthetic Lcom/sunia/HTREnginev2/rln;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/s9api/Action;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/functions/TransformFn$e;

.field public final synthetic b:Ljava/net/URI;

.field public final synthetic c:Ljava/io/StringWriter;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/functions/TransformFn$e;Ljava/net/URI;Ljava/io/StringWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rln;->a:Lnet/sf/saxon/functions/TransformFn$e;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/rln;->b:Ljava/net/URI;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/rln;->c:Ljava/io/StringWriter;

    return-void
.end method


# virtual methods
.method public final act()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/rln;->a:Lnet/sf/saxon/functions/TransformFn$e;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/rln;->b:Ljava/net/URI;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rln;->c:Ljava/io/StringWriter;

    invoke-static {v0, v1, p0}, Lnet/sf/saxon/functions/TransformFn$e;->l(Lnet/sf/saxon/functions/TransformFn$e;Ljava/net/URI;Ljava/io/StringWriter;)V

    return-void
.end method
