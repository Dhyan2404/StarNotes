.class public final synthetic Lcom/sunia/HTREnginev2/d8e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/Action;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lnet/sf/saxon/event/Outputter;

.field public final synthetic c:Lnet/sf/saxon/expr/XPathContext;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/d8e;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/d8e;->b:Lnet/sf/saxon/event/Outputter;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/d8e;->c:Lnet/sf/saxon/expr/XPathContext;

    return-void
.end method


# virtual methods
.method public final doAction()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/d8e;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/d8e;->b:Lnet/sf/saxon/event/Outputter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/d8e;->c:Lnet/sf/saxon/expr/XPathContext;

    invoke-static {v0, v1, p0}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->d(Ljava/util/List;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    return-void
.end method
