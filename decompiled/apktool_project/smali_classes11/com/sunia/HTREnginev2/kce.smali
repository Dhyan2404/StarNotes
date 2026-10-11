.class public final synthetic Lcom/sunia/HTREnginev2/kce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/ItemConsumer;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/expr/instruct/CopyOf;

.field public final synthetic b:Lnet/sf/saxon/expr/XPathContext;

.field public final synthetic c:Lnet/sf/saxon/event/Outputter;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/expr/instruct/CopyOf;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/event/Outputter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kce;->a:Lnet/sf/saxon/expr/instruct/CopyOf;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/kce;->b:Lnet/sf/saxon/expr/XPathContext;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/kce;->c:Lnet/sf/saxon/event/Outputter;

    iput p4, p0, Lcom/sunia/HTREnginev2/kce;->d:I

    return-void
.end method


# virtual methods
.method public final accept(Lnet/sf/saxon/om/Item;)V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/kce;->a:Lnet/sf/saxon/expr/instruct/CopyOf;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/kce;->b:Lnet/sf/saxon/expr/XPathContext;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/kce;->c:Lnet/sf/saxon/event/Outputter;

    iget p0, p0, Lcom/sunia/HTREnginev2/kce;->d:I

    invoke-static {v0, v1, v2, p0, p1}, Lnet/sf/saxon/expr/instruct/CopyOf;->j(Lnet/sf/saxon/expr/instruct/CopyOf;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/event/Outputter;ILnet/sf/saxon/om/Item;)V

    return-void
.end method
