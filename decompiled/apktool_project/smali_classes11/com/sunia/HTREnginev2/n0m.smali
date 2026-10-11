.class public final synthetic Lcom/sunia/HTREnginev2/n0m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/pattern/SameNameTest;

.field public final synthetic b:[B

.field public final synthetic c:[I

.field public final synthetic d:Lnet/sf/saxon/tree/tiny/NodeVectorTree;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/pattern/SameNameTest;[B[ILnet/sf/saxon/tree/tiny/NodeVectorTree;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/n0m;->a:Lnet/sf/saxon/pattern/SameNameTest;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/n0m;->b:[B

    iput-object p3, p0, Lcom/sunia/HTREnginev2/n0m;->c:[I

    iput-object p4, p0, Lcom/sunia/HTREnginev2/n0m;->d:Lnet/sf/saxon/tree/tiny/NodeVectorTree;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/n0m;->a:Lnet/sf/saxon/pattern/SameNameTest;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/n0m;->b:[B

    iget-object v2, p0, Lcom/sunia/HTREnginev2/n0m;->c:[I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/n0m;->d:Lnet/sf/saxon/tree/tiny/NodeVectorTree;

    invoke-static {v0, v1, v2, p0, p1}, Lnet/sf/saxon/pattern/SameNameTest;->c(Lnet/sf/saxon/pattern/SameNameTest;[B[ILnet/sf/saxon/tree/tiny/NodeVectorTree;I)Z

    move-result p0

    return p0
.end method
