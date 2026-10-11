.class public final synthetic Lcom/sunia/HTREnginev2/lsg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ContextMappingFunction;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/expr/instruct/ForEach;

.field public final synthetic b:Lnet/sf/saxon/om/NodeInfo;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/expr/instruct/ForEach;Lnet/sf/saxon/om/NodeInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lsg;->a:Lnet/sf/saxon/expr/instruct/ForEach;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/lsg;->b:Lnet/sf/saxon/om/NodeInfo;

    return-void
.end method


# virtual methods
.method public final map(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lsg;->a:Lnet/sf/saxon/expr/instruct/ForEach;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lsg;->b:Lnet/sf/saxon/om/NodeInfo;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/expr/instruct/ForEach;->d(Lnet/sf/saxon/expr/instruct/ForEach;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method
