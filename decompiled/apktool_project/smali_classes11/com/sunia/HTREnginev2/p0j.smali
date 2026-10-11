.class public final synthetic Lcom/sunia/HTREnginev2/p0j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/z/IntSet;

.field public final synthetic b:[I

.field public final synthetic c:[B


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/z/IntSet;[I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/p0j;->a:Lnet/sf/saxon/z/IntSet;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/p0j;->b:[I

    iput-object p3, p0, Lcom/sunia/HTREnginev2/p0j;->c:[B

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/p0j;->a:Lnet/sf/saxon/z/IntSet;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/p0j;->b:[I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/p0j;->c:[B

    invoke-static {v0, v1, p0, p1}, Lnet/sf/saxon/pattern/LocalNameTest;->c(Lnet/sf/saxon/z/IntSet;[I[BI)Z

    move-result p0

    return p0
.end method
