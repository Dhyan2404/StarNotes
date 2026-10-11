.class public final synthetic Lcom/sunia/HTREnginev2/frl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/event/FilterFactory;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/expr/instruct/ResultDocument;

.field public final synthetic b:Lnet/sf/saxon/Configuration;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/expr/instruct/ResultDocument;Lnet/sf/saxon/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/frl;->a:Lnet/sf/saxon/expr/instruct/ResultDocument;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/frl;->b:Lnet/sf/saxon/Configuration;

    return-void
.end method


# virtual methods
.method public final makeFilter(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/frl;->a:Lnet/sf/saxon/expr/instruct/ResultDocument;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/frl;->b:Lnet/sf/saxon/Configuration;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/expr/instruct/ResultDocument;->d(Lnet/sf/saxon/expr/instruct/ResultDocument;Lnet/sf/saxon/Configuration;Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    return-object p0
.end method
