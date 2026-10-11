.class public final synthetic Lcom/sunia/HTREnginev2/q0j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/pattern/LocalNameTest;

.field public final synthetic b:[B

.field public final synthetic c:[I


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/pattern/LocalNameTest;[B[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/q0j;->a:Lnet/sf/saxon/pattern/LocalNameTest;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/q0j;->b:[B

    iput-object p3, p0, Lcom/sunia/HTREnginev2/q0j;->c:[I

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q0j;->a:Lnet/sf/saxon/pattern/LocalNameTest;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/q0j;->b:[B

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q0j;->c:[I

    invoke-static {v0, v1, p0, p1}, Lnet/sf/saxon/pattern/LocalNameTest;->e(Lnet/sf/saxon/pattern/LocalNameTest;[B[II)Z

    move-result p0

    return p0
.end method
