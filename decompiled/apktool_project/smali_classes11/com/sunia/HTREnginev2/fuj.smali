.class public final synthetic Lcom/sunia/HTREnginev2/fuj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/pattern/NodeTest;

.field public final synthetic b:Lnet/sf/saxon/tree/tiny/NodeVectorTree;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/pattern/NodeTest;Lnet/sf/saxon/tree/tiny/NodeVectorTree;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fuj;->a:Lnet/sf/saxon/pattern/NodeTest;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/fuj;->b:Lnet/sf/saxon/tree/tiny/NodeVectorTree;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/fuj;->a:Lnet/sf/saxon/pattern/NodeTest;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fuj;->b:Lnet/sf/saxon/tree/tiny/NodeVectorTree;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/pattern/NodeTest;->a(Lnet/sf/saxon/pattern/NodeTest;Lnet/sf/saxon/tree/tiny/NodeVectorTree;I)Z

    move-result p0

    return p0
.end method
